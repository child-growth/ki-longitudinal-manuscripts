##########################################
# ki longitudinal manuscripts
# stunting analysis

# This script reads in clean DHS z-score
# data, estimates means by age in months
# and estimates kernel densities
# the script creates two figures that
# compare DHS estimates to those from
# the KI cohorts.

# This script is limited to LAZ for the
# linear growth paper. It includes
# KI cohorts with measurement frequency
# at least quarterly

# Outputs:
# fig-laz-2-mean_dhs-overall_region--allage-primary.png
# fig-laz-2-density_dhs-overall_region--allage-primary.png
# figdata-laz-2-mean_dhs-overall_region--allage-primary.RDS
# figdata-laz-2-density_dhs-overall_region--allage-primary.RDS

##########################################

#---------------------------------------
# input files:
#   0-config.R : configuration file
#
#   clean-DHS-haz.rds  : clean DHS LAZ data
#
#   desc_data_cleaned.Rdata       : KI mean Z-scores by age
#   ki.density.fits.quarterly.rds : KI kernel densities of Z-scores for quarterly cohorts
#
# output files:
#   fig_dhs_ki_laz_byage.png
#   fig_dhs_ki_laz_density.png
#---------------------------------------

#---------------------------------------
# source configuration file
#---------------------------------------
source(paste0(here::here(), "/0-config.R"))

# set up for parallel computing
# configure for a laptop (use only 3 cores)
registerDoParallel(cores=3)


#----------------------------------
# simulataneous CIs for GAMs
# estimated by resampling the
# Baysian posterior estimates of
# the variance-covariance matrix
# assuming that it is multivariate normal
# the function below also estimates
# the unconditional variance-covariance
# matrix, Vb=vcov(x,unconditional=TRUE),
# which allows for undertainty in the actual
# estimated mean as well
# (Marra & Wood 2012 Scandinavian Journal of Statistics,
#  Vol. 39: 53–74, 2012, doi: 10.1111/j.1467-9469.2011.00760.x )
# simultaneous CIs provide much better coverage than pointwise CIs
# see: http://www.fromthebottomoftheheap.net/2016/12/15/simultaneous-interval-revisited/
#----------------------------------
gamCI <- function(m,newdata,nreps=10000) {
  require(mgcv)
  require(dplyr)
  Vb <- vcov(m,unconditional = TRUE)
  pred <- predict(m, newdata, se.fit = TRUE)
  fit <- pred$fit
  se.fit <- pred$se.fit
  BUdiff <- MASS::mvrnorm(n=nreps, mu = rep(0, nrow(Vb)), Sigma = Vb)
  Cg <- predict(m, newdata, type = "lpmatrix")
  simDev <- Cg %*% t(BUdiff)
  absDev <- abs(sweep(simDev, 1, se.fit, FUN = "/"))
  masd <- apply(absDev, 2L, max)
  crit <- quantile(masd, prob = 0.95, type = 8)
  pred <- data.frame(newdata,fit=pred$fit,se.fit=pred$se.fit)
  pred <- mutate(pred,
                 uprP = fit + (2 * se.fit),
                 lwrP = fit - (2 * se.fit),
                 uprS = fit + (crit * se.fit),
                 lwrS = fit - (crit * se.fit)
  )
  return(pred)
}

#---------------------------------------
# load cleaned DHS anthro data
# created by 7_DHS-data-cleaning.R
#---------------------------------------
dhaz <- readRDS(file = (here::here("data", "clean-DHS-haz.rds")))

#---------------------------------------
# compute weights per instructions from
# DHS
#---------------------------------------
dhsz <- dhaz %>%
  mutate(wgt=weight/1000000)

#---------------------------------------
# make a WHO region variable
# flag countries that overlap with the
# ki cohorts
#
# Note: Philippines (Western Pacific)
# and Pakistan (Middle East) are classified
# into SEARO
#---------------------------------------
dhsz$region <- rep(NA, nrow(dhsz))
dhsz <- dhsz %>%
  mutate(region = case_when(country == "BD6" | country == "IA6" | country == "ID6" | country == "LK" | country == "MM7" | country == "MV7" | country == "NP7" | country == "PH7" | country == "PK7" | country == "TH" | country == "TL7" | country == "AF7" | country == "KH6" | country == "VNT" ~ "SEARO",
                            country == "BO5" | country == "BR3" | country == "CO7" | country == "DR6" | country == "EC" | country == "ES" | country == "GU6" | country == "GY5" | country == "HN6" | country == "HT7" | country == "MX" | country == "NC4" | country == "PE6" | country == "PY2" | country == "TT" ~ "PAHO",
                            is.na(region) ~ "AFRO")) %>%

  mutate(inghap = ifelse(
    country == "BD6" | country == "BF6" | country == "BR3" | country == "GM6" | country == "GU6" | country == "IA6" | country == "KE6" | country == "MW7" | country == "NP7" | country == "PE6" | country == "PH7" | country == "PK7" | country == "TZ7" | country == "ZA7" | country == "ZW7",1,0)
  )

dhsz <- dhsz %>%
  mutate(region=factor(region,levels=c("OVERALL","SEARO","AFRO","PAHO")))

#---------------------------------------
#---------------------------------------
# estimate z-scores by age
#---------------------------------------
#---------------------------------------

#---------------------------------------
# estimate mean z-scores by age
# including all countries in each region
#---------------------------------------
dhsallfits <- foreach(rgn=c("AFRO","SEARO","PAHO"),.combine=rbind) %dopar% {
    di <- dhsz %>% filter(region==rgn)
    fiti <- mgcv::gam(zscore~s(agem,bs="cr"),weights=wgt,data=di)
    newd <- data.frame(agem=0:24)
    # estimate approximate simultaneous confidence intervals
    fitci <- gamCI(m=fiti,newdata=newd,nreps=1000)
    dfit <- data.frame(measure="LAZ",region=rgn,agem=0:24,fit=fitci$fit,fit_se=fitci$se.fit,fit_lb=fitci$lwrS,fit_ub=fitci$uprS)
    dfit
  }

# estimate a pooled fit, over all regions
fitpool <- mgcv::gam(zscore~s(agem,bs="cr"),weights=wgt,data=dhsz)
newd <- data.frame(agem=0:24)
fitpoolci <- gamCI(m=fitpool,newdata=newd,nreps=1000)
dhsall_pool <- data.frame(measure="LAZ",region="OVERALL",agem=0:24,fit=fitpoolci$fit,fit_se=fitpoolci$se.fit,fit_lb=fitpoolci$lwrS,fit_ub=fitpoolci$uprS)


dhsallfits <- bind_rows(dhsallfits,dhsall_pool) %>%
  mutate(region=factor(region,levels=c("OVERALL","AFRO","SEARO","PAHO")))

#---------------------------------------
# for each region, do the cluster based pooling for each child age
#---------------------------------------
library(survey)
# The most conservative approach would be to center any single-PSU strata around
# the sample grand mean rather than the stratum mean
options(survey.lonely.psu = "adjust")
# alternatively, most proprietary statistical software packages have single-PSU
# strata make no contribution to the variance by default
# options(survey.lonely.psu = "certainty")
do_one_combination <- function(measure_here, region_here) {
  # Complex sample design parameters
  df_one_combination <- dhsz %>%
    filter(measure == measure_here & region == region_here)
  DHSdesign <- svydesign(
    id = df_one_combination$cluster_no,
    strata = df_one_combination$stratification,
    weights = df_one_combination$wgt,
    data = df_one_combination,
    nest = TRUE
  )
  # tabulate indicator by region
  df_survey <- svyby(~zscore, ~agem, DHSdesign, svymean, vartype = c("se", "ci"))
  df_survey$measure <- measure_here
  df_survey$region <- region_here
  df_n <- df_one_combination %>% group_by(agem) %>% summarise(wgt_sum = sum(wgt))
  df_survey <- dplyr::left_join(df_survey, df_n, by = "agem")
  return(df_survey)
}

df_survey <- foreach(measure = unique(dhsz$measure), .combine = rbind) %:%
  foreach(region = c("AFRO", "SEARO", "PAHO"), .combine = rbind) %dopar% {
    do_one_combination(measure_here = measure, region_here = region)
  }
# meta analysis using fixed effects or random effects based pooling
fit.cont.rma <- function(data, age, yi, vi, ni, nlab, method = "REML") {
  data <- filter(data, agecat == age)
  fit <- NULL
  try(fit <- rma(yi = data[[yi]], vi = data[[vi]], method = method, measure = "GEN"))
  if (is.null(fit)) {
    try(fit <- rma(yi = data[[yi]], vi = data[[vi]], method = "ML", measure = "GEN"))
  }
  if (is.null(fit)) {
    try(fit <- rma(yi = data[[yi]], vi = data[[vi]], method = "DL", measure = "GEN"))
  }
  if (is.null(fit)) {
    try(fit <- rma(yi = data[[yi]], vi = data[[vi]], method = "HE", measure = "GEN"))
  }
  out <- data %>%
    ungroup() %>%
    summarise(
      nstudies = length(unique(studyid)),
      nmeas = sum(data[[ni]][agecat == age])
    ) %>%
    mutate(
      agecat = age, est = fit$beta, se = fit$se, lb = fit$ci.lb, ub = fit$ci.ub,
      nmeas.f = paste0(
        "N=", format(sum(data[[ni]]), big.mark = ",", scientific = FALSE),
        " ", nlab
      ),
      nstudy.f = paste0("N=", nstudies, " studies")
    )
  return(out)
}

df_random_effects <- list()
for (measure_here in "HAZ") {
  for (age_here in 0:24) {
    df_random_effect <- fit.cont.rma(
      data = df_survey %>%
        mutate(variance = se^2, studyid = region, agecat = agem) %>%
        filter(measure == measure_here),
      age = age_here,
      yi = "zscore",
      vi = "variance",
      ni = "wgt_sum",
      nlab = "observations",
      # method = "REML"
      method = "FE"
    )
    df_random_effect$measure <- measure_here
    df_random_effect$agem <- age_here
    df_random_effect$region <- "OVERALL"
    df_random_effects <- c(df_random_effects, list(df_random_effect))
  }
}
df_random_effects <- do.call(rbind, df_random_effects)

df_survey <- df_survey %>%
  rename(fit = zscore, fit_lb = ci_l, fit_ub = ci_u, fit_se = se) %>%
  select(measure, region, agem, fit, fit_se, fit_lb, fit_ub)
df_random_effects <- df_random_effects %>%
  rename(fit = est, fit_lb = lb, fit_ub = ub, fit_se = se) %>%
  select(measure, region, agem, fit, fit_se, fit_lb, fit_ub)
df_survey_output <- bind_rows(df_survey, df_random_effects) %>%
  mutate(region = factor(region, levels = c("OVERALL", "AFRO", "SEARO", "PAHO")))
df_survey_output$measure <- "LAZ" # rename HAZ to LAZ

#---------------------------------------
# estimate mean z-scores by age
# subset to countries that overlap the
# ki cohorts
#---------------------------------------
dhssubfits <- foreach(rgn=c("AFRO","SEARO","PAHO"),.combine=rbind) %dopar% {
    di <- dhsz %>% filter(region==rgn & inghap==1)
    fiti <- mgcv::gam(zscore~s(agem,bs="cr"),weights=wgt,data=di)
    newd <- data.frame(agem=0:24)
    # estimate approximate simultaneous confidence intervals
    fitci <- gamCI(m=fiti,newdata=newd,nreps=1000)
    dfit <- data.frame(measure="LAZ",region=rgn,agem=0:24,fit=fitci$fit,fit_se=fitci$se.fit,fit_lb=fitci$lwrS,fit_ub=fitci$uprS)
    dfit
  }

# estimate a pooled fit, over all regions
fitsubpool <- mgcv::gam(zscore~s(agem,bs="cr"),weights=wgt,data=filter(dhsz,inghap==1))
newd <- data.frame(agem=0:24)
fitsubpoolci <- gamCI(m=fitsubpool,newdata=newd,nreps=1000)
dhssub_pool <- data.frame(measure="LAZ",region="OVERALL",agem=0:24,fit=fitsubpoolci$fit,fit_se=fitsubpoolci$se.fit,fit_lb=fitsubpoolci$lwrS,fit_ub=fitsubpoolci$uprS)

dhssubfits <- bind_rows(dhssubfits,dhssub_pool) %>%
  mutate(region=factor(region,levels=c("OVERALL","AFRO","SEARO","PAHO")))


#---------------------------------------
# Grab GHAP KI cohort estimated mean Z-scores
# by age, and format the data for this analysis
#---------------------------------------
load(paste0(here::here(),"/results/desc_data_cleaned.Rdata"))
# load(paste0(here::here(),"/results/co_desc_data.Rdata"))
ghapd <- d %>%
  filter(measure %in% c("Mean LAZ"),
         birth=="yes",
         age_range=="1 month",
         cohort=="pooled") %>%
  mutate(measure = str_sub(measure,6,9),
         measure = factor(measure,levels=c("LAZ","WAZ","WLZ"),labels=c("LAZ","WAZ","WHZ")),
         whoregion = case_when(
           region=="Africa" ~ "AFRO",
           region=="South Asia" ~ "SEARO",
           region=="Latin America" ~ "PAHO",
           region=="Overall" ~ "OVERALL"),
         whoregion=factor(whoregion,levels=c("OVERALL","AFRO","SEARO","PAHO")),
         agecat2=as.character(agecat),
         agems=str_trim(str_sub(agecat2,1,2)),
         agem = as.integer(
           case_when(agems=="Tw" ~ "0",
                          agems=="On" ~ "1",
                          !is.na(agems) ~ agems)
           )
  )

#---------------------------------------
# fit smooths to GHAP data
#---------------------------------------
ghapfits <- foreach(rgn=levels(ghapd$whoregion),.combine=rbind) %do% {
    di <- ghapd %>% filter(whoregion==rgn)
    fiti <- mgcv::gam(est~s(agem,bs="cr"),data=di)
    newd <- data.frame(agem=0:24)
    fitci <- gamCI(m=fiti,newdata=newd,nreps=1000)
    dfit <- data.frame(measure="LAZ",region=rgn,agem=0:24,fit=fitci$fit,fit_se=fitci$se.fit,fit_lb=fitci$lwrS,fit_ub=fitci$uprS)
    dfit
  }


#---------------------------------------
# Append the fits into a single data frame
# for plotting
#---------------------------------------
ghapfits   <- ghapfits   %>% mutate(dsource="ki cohorts")
dhssubfits <- dhssubfits %>% mutate(dsource="DHS, ki countries")
# dhsallfits <- dhsallfits %>% mutate(dsource="DHS") # std_err based on bootstrapping GAM
dhsallfits <- df_survey_output %>% mutate(dsource="DHS") # std_err based on survey_avg using sampling weight
dhsfits <- bind_rows(ghapfits,dhssubfits,dhsallfits) %>%
  mutate(dsource=factor(dsource,levels=c("ki cohorts","DHS, ki countries","DHS")),
         region=factor(region,levels=c("OVERALL","AFRO","SEARO","PAHO") )
         )

#---------------------------------------
# make LAZ  by age figure
# after preliminary inspection, the
# DHS and DHS subset estimates are so
# similar in nearly every case that it
# doesn't add much to the plot.
# Simplify to only include GHAP and
# DHS overall estimates
#---------------------------------------
dhs_plotd <- dhsfits %>%
  filter(dsource %in% c("ki cohorts","DHS")) %>%
  mutate(region = factor(region, levels = c("OVERALL", "AFRO", "PAHO", "SEARO")))

# standard region colors used in other plots
tableau10 <- tableau_color_pal("tableau10")
pcols <- c("black",tableau10(10)[c(1,2,3)])

blue = 1
orange = 2
green = 3

dhs_plotd_laz = filter(dhs_plotd,measure=="LAZ")

laz_ageplot <- ggplot(dhs_plotd_laz,
                      aes(x=agem,y=fit,color=region,fill=region,linetype=dsource))+
  facet_grid(~region)+
  geom_abline(intercept=0,slope=0,color="gray70")+
  geom_ribbon(aes(ymin=fit_lb,ymax=fit_ub),color=NA,alpha=0.2)+
  geom_line(alpha=1)+
  scale_x_continuous(breaks=seq(0,24,by=6))+
  scale_y_continuous(breaks=seq(-2,0,by=0.5))+
  scale_color_manual(values=pcols,guide=FALSE)+
  scale_fill_manual(values=pcols,guide=FALSE)+
  scale_linetype_manual(values=c("solid","dashed","dotdash"))+
  labs(x="child age, months",y="length-for-age z-score")+
  coord_cartesian(ylim=c(-2,0))+
  theme_minimal()+
  theme(legend.position = "bottom",
        strip.placement="outside",
        strip.background = element_rect(fill=NA,color=NA),
        # strip.text.y = element_text(angle=180),
        panel.spacing = unit(0.5, "lines"),
        panel.grid.minor.x = element_blank()
  )

laz_ageplot

# define standardized plot names
laz_ageplot_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "mean DHS",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(laz_ageplot, file=paste0("figures/stunting/fig-",laz_ageplot_name,".png"), width=8, height=3)
saveRDS(dhs_plotd_laz, file=paste0("results/figure-data/figdata-",laz_ageplot_name,".RDS"))

#---------------------------------------
#---------------------------------------
# estimate z-score densities
# for subpanels in the figure
#---------------------------------------
#---------------------------------------

#---------------------------------------
# estimate DHS z-score densities
# by region and overall
#---------------------------------------
dhsallden <- foreach(rgn=c("AFRO","SEARO","PAHO"),.combine=rbind) %dopar% {
    di <- dhsz %>% filter(region==rgn)
    deni <- density(di$zscore)
    denid <- data.frame(x=deni$x,y=deni$y,measure="LAZ",region=rgn)
    denid
  }
# overall pooled estimate
deni <- density(dhsz$zscore)
dhsallden_pool <- data.frame(x=deni$x,y=deni$y,measure="LAZ",region="OVERALL")

dhsallden <- bind_rows(dhsallden,dhsallden_pool) %>%
  mutate(region=factor(region,levels=c("OVERALL","AFRO","PAHO","SEARO")))

#---------------------------------------
# estimate DHS z-score densities
# by region and overall
# subset to countries that overlap KI cohorts
#---------------------------------------
dhssubden <- foreach(rgn=c("AFRO","SEARO","PAHO"),.combine=rbind) %dopar% {
    di <- dhsz %>% filter(region==rgn & inghap==1)
    deni <- density(di$zscore)
    denid <- data.frame(x=deni$x,y=deni$y,measure="LAZ",region=rgn)
    denid
  }
# overall pooled estimate
subdeni <- density(dhsz$zscore[dhsz$inghap==1])
dhssubden_pool <- data.frame(x=subdeni$x,y=subdeni$y,measure="LAZ",region="OVERALL")

dhssubden <- bind_rows(dhssubden,dhssubden_pool) %>%
  mutate(region=factor(region,levels=c("OVERALL","AFRO","PAHO","SEARO")))


#---------------------------------------
# read in saved GHAP density estimates
# for z-scores, stratified by
# region
#---------------------------------------
kiden <- readRDS(paste0(here(),"/results/ki.density.fits.quarterly.rds"))
kiden <- kiden %>%
  mutate(region=factor(region,levels=c("Overall","AFRO","PAHO","SEARO"),
                       labels=c("OVERALL","AFRO","PAHO","SEARO")),
         measure=factor(measure,levels=c("haz","waz","whz"),labels=c("LAZ","WAZ","WHZ"))
  ) %>%
  filter(measure=="LAZ")

#---------------------------------------
# Append the fits into a single data frame
# for plotting
#---------------------------------------
kiden   <- kiden   %>% mutate(dsource="ki cohorts")
dhssubden <- dhssubden %>% mutate(dsource="DHS, ki countries")
dhsallden <- dhsallden %>% mutate(dsource="DHS")
dhsden <- bind_rows(kiden,dhssubden,dhsallden) %>%
  mutate(dsource=factor(dsource,levels=c("ki cohorts","DHS, ki countries","DHS")),
         region=factor(region,levels=c("OVERALL","AFRO","PAHO","SEARO") )
  )

#---------------------------------------
# plot density subpanels
# create a separate figure for each
# z-score to ensure there are x-axis
# labels on each
#
# after preliminary inspection, the
# DHS and DHS subset estimates are so
# similar in nearly every case that it
# doesn't add much to the plot.
# Simplify to only include GHAP and
# DHS overall estimates
#---------------------------------------
dhsden_plot <- dhsden %>%
  filter(dsource %in% c("ki cohorts","DHS"))

#---------------------------------------
# standard region colors used in other plots
tableau10 <- tableau_color_pal("tableau10")
pcols <- c("black",tableau10(10)[c(1:3)])

#---------------------------------------
# LAZ density by region
#---------------------------------------
dhsden_plot_laz = filter(dhsden_plot,measure=="LAZ")
laz_dplot <- ggplot(data=dhsden_plot_laz,aes(x=x,y=y,color=region,linetype=dsource))+
  facet_grid(~region)+
  geom_line()+
  scale_color_manual(values=pcols,guide=FALSE)+
  scale_fill_manual(values=pcols,guide=FALSE)+
  scale_linetype_manual(values=c("solid","dashed","dotdash"))+
  scale_x_continuous(breaks=seq(-6,6,by=2))+
  coord_cartesian(xlim=c(-6,6),ylim=c(0,0.4))+
  labs(y="density",x="length-for-age z-score")+
  theme_minimal()+
  theme(legend.position="none",
    panel.grid.minor.y=element_blank()
        )

laz_dplot

# define standardized plot names
laz_dplot_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "density DHS",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(laz_dplot, file=paste0("figures/stunting/fig-",laz_dplot_name,".png"), width=8, height=2)
saveRDS(dhsden_plot_laz, file=paste0("results/figure-data/figdata-",laz_dplot_name,".RDS"))




