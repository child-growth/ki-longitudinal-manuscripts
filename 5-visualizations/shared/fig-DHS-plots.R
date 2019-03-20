#---------------------------------------
#Ki DHS Analysis
#Spring 2019

# This script plots age by HAZ and WHZ for DHS data
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
dwaz <- readRDS(file = (here::here("data", "clean-DHS-waz.rds")))
dwhz <- readRDS(file = (here::here("data", "clean-DHS-whz.rds")))

#---------------------------------------
# combine all of the DHS data 
# into a single dataframe
#---------------------------------------
dhsz <- bind_rows(dhaz,dwaz,dwhz) %>%
  mutate(measure=factor(measure,levels=c("HAZ","WAZ","WHZ"),labels=c("LAZ","WAZ","WHZ")))

#---------------------------------------
# compute weights per instructions from
# DHS
#---------------------------------------
dhsz <- dhsz %>%
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
dhsallfits <- foreach(zmeas=levels(dhsz$measure),.combine=rbind) %:% 
  foreach(rgn=c("AFRO","SEARO","PAHO"),.combine=rbind) %dopar% {
    di <- dhsz %>% filter(measure==zmeas & region==rgn)
    fiti <- mgcv::gam(zscore~s(agem,bs="cr"),weights=wgt,data=di)
    newd <- data.frame(agem=0:24)
    fitci <- gamCI(m=fiti,newdata=newd,nreps=1000)
    dfit <- data.frame(measure=zmeas,region=rgn,agem=0:24,fit=fitci$fit,fit_se=fitci$se.fit,fit_lb=fitci$lwrS,fit_ub=fitci$uprS)
    dfit
  }

# estimate a pooled fit, over all regions
dhsall_pool <- foreach(zmeas=levels(dhsz$measure),.combine=rbind) %dopar% {
  di <- dhsz %>% filter(measure==zmeas)
  fiti <- mgcv::gam(zscore~s(agem,bs="cr"),weights=wgt,data=di)
  newd <- data.frame(agem=0:24)
  fitci <- gamCI(m=fiti,newdata=newd,nreps=1000)
  dfit <- data.frame(measure=zmeas,region="OVERALL",agem=0:24,fit=fitci$fit,fit_se=fitci$se.fit,fit_lb=fitci$lwrS,fit_ub=fitci$uprS)
  dfit
}

dhsallfits <- bind_rows(dhsallfits,dhsall_pool) %>%
  mutate(region=factor(region,levels=c("OVERALL","AFRO","SEARO","PAHO")))


#---------------------------------------
# estimate mean z-scores by age
# subset to countries that overlap the
# ki cohorts
#---------------------------------------
dhssubfits <- foreach(zmeas=levels(dhsz$measure),.combine=rbind) %:% 
  foreach(rgn=c("AFRO","SEARO","PAHO"),.combine=rbind) %dopar% {
    di <- dhsz %>% filter(measure==zmeas & region==rgn & inghap==1)
    fiti <- mgcv::gam(zscore~s(agem,bs="cr"),weights=wgt,data=di)
    newd <- data.frame(agem=0:24)
    fitci <- gamCI(m=fiti,newdata=newd,nreps=1000)
    dfit <- data.frame(measure=zmeas,region=rgn,agem=0:24,fit=fitci$fit,fit_se=fitci$se.fit,fit_lb=fitci$lwrS,fit_ub=fitci$uprS)
    dfit
  }

# estimate a pooled fit, over all regions
dhssub_pool <- foreach(zmeas=levels(dhsz$measure),.combine=rbind) %dopar% {
  di <- dhsz %>% filter(measure==zmeas & inghap==1)
  fiti <- mgcv::gam(zscore~s(agem,bs="cr"),weights=wgt,data=di)
  newd <- data.frame(agem=0:24)
  fitci <- gamCI(m=fiti,newdata=newd,nreps=1000)
  dfit <- data.frame(measure=zmeas,region="OVERALL",agem=0:24,fit=fitci$fit,fit_se=fitci$se.fit,fit_lb=fitci$lwrS,fit_ub=fitci$uprS)
  dfit
}

dhssubfits <- bind_rows(dhssubfits,dhssub_pool) %>%
  mutate(region=factor(region,levels=c("OVERALL","AFRO","SEARO","PAHO")))


#---------------------------------------
# Grab GHAP KI cohort estimated mean Z-scores
# by age, and format the data for this analysis
#---------------------------------------
load(paste0(here::here(),"/results/desc_data_cleaned.Rdata"))
# load(paste0(here::here(),"/results/co_desc_data.Rdata"))
ghapd <- d %>%
  filter(measure %in% c("Mean LAZ","Mean WAZ","Mean WLZ"),
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
ghapfits <- foreach(zmeas=c("LAZ","WAZ","WHZ"),.combine=rbind) %:% 
  foreach(rgn=levels(ghapd$whoregion),.combine=rbind) %do% {
    di <- ghapd %>% filter(measure==zmeas & whoregion==rgn)
    fiti <- mgcv::gam(est~s(agem,bs="cr"),data=di)
    newd <- data.frame(agem=0:24)
    fitci <- gamCI(m=fiti,newdata=newd,nreps=1000)
    dfit <- data.frame(measure=zmeas,region=rgn,agem=0:24,fit=fitci$fit,fit_se=fitci$se.fit,fit_lb=fitci$lwrS,fit_ub=fitci$uprS)
    dfit
  }


#---------------------------------------
# Append the fits into a single data frame
# for plotting
#---------------------------------------
ghapfits   <- ghapfits   %>% mutate(dsource="ki cohorts")
dhssubfits <- dhssubfits %>% mutate(dsource="DHS, ki countries")
dhsallfits <- dhsallfits %>% mutate(dsource="DHS")
dhsfits <- bind_rows(ghapfits,dhssubfits,dhsallfits) %>%
  mutate(dsource=factor(dsource,levels=c("ki cohorts","DHS, ki countries","DHS")),
         region=factor(region,levels=c("OVERALL","AFRO","SEARO","PAHO") )
         )

#---------------------------------------
# make z-score by age figure
# after preliminary inspection, the
# DHS and DHS subset estimates are so
# similar in nearly every case that it 
# doesn't add much to the plot.
# Simplify to only include GHAP and 
# DHS overall estimates
#---------------------------------------
dhs_plotd <- dhsfits %>%
  filter(dsource %in% c("ki cohorts","DHS"))

# standard region colors used in other plots
tableau10 <- tableau_color_pal("Tableau 10")
pcols <- c("black",tableau10(10)[c(1,5,2)])

dhsp <- ggplot(data=dhs_plotd,aes(x=agem,y=fit,color=region,fill=region,linetype=dsource))+
  facet_grid(measure~region,switch="y")+
  geom_abline(intercept=0,slope=0,color="gray70")+

  geom_ribbon(aes(ymin=fit_lb,ymax=fit_ub),color=NA,alpha=0.2)+
  geom_line(alpha=1)+
  scale_x_continuous(breaks=seq(0,24,by=6))+
  scale_y_continuous(breaks=seq(-2,1,by=1))+
  scale_color_manual(values=pcols,guide=FALSE)+
  scale_fill_manual(values=pcols,guide=FALSE)+
  scale_linetype_manual(values=c("solid","dashed","dotdash"))+
  labs(x="child age, months",y="anthropometric z-score")+
  coord_cartesian(ylim=c(-2,1))+
  theme_minimal()+
  theme(legend.position = "bottom",
        strip.placement="outside",
        strip.background = element_rect(fill=NA,color=NA),
        # strip.text.y = element_text(angle=180),
        panel.spacing = unit(0.5, "lines"),
        panel.grid.minor.x = element_blank()
        )

dhsp

# output a file to png
ggsave(here("figures/dhs","dhs-ghap-zscore-byage.png"),plot=dhsp,device="png",width=6,height=6)

#---------------------------------------
# create a solo LAZ figure for the
# length manuscript, tailored to LAZ
#---------------------------------------
# LAZ by age
laz_ageplot <- ggplot(data=filter(dhs_plotd,measure=="LAZ"),aes(x=agem,y=fit,color=region,fill=region,linetype=dsource))+
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


# output a file to png
ggsave(here("figures/dhs","dhs-ghap-laz-byage.png"),plot=laz_ageplot,device="png",width=8,height=3)

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
dhsallden <- foreach(zmeas=levels(dhsz$measure),.combine=rbind) %:% 
  foreach(rgn=c("AFRO","SEARO","PAHO"),.combine=rbind) %dopar% {
    di <- dhsz %>% filter(measure==zmeas & region==rgn)
    deni <- density(di$zscore)
    denid <- data.frame(x=deni$x,y=deni$y,measure=zmeas,region=rgn)
    denid
  }
dhsallden_pool <- foreach(zmeas=levels(dhsz$measure),.combine=rbind) %dopar% {
  di <- dhsz %>% filter(measure==zmeas)
  deni <- density(di$zscore)
  denid <- data.frame(x=deni$x,y=deni$y,measure=zmeas,region="OVERALL")
  denid
}
dhsallden <- bind_rows(dhsallden,dhsallden_pool) %>%
  mutate(region=factor(region,levels=c("OVERALL","AFRO","SEARO","PAHO")))

#---------------------------------------
# estimate DHS z-score densities 
# by region and overall
# subset to countries that overlap KI cohorts
#---------------------------------------
dhssubden <- foreach(zmeas=levels(dhsz$measure),.combine=rbind) %:% 
  foreach(rgn=c("AFRO","SEARO","PAHO"),.combine=rbind) %dopar% {
    di <- dhsz %>% filter(measure==zmeas & region==rgn & inghap==1)
    deni <- density(di$zscore)
    denid <- data.frame(x=deni$x,y=deni$y,measure=zmeas,region=rgn)
    denid
  }
dhssubden_pool <- foreach(zmeas=levels(dhsz$measure),.combine=rbind) %dopar% {
  di <- dhsz %>% filter(measure==zmeas & inghap==1)
  deni <- density(di$zscore)
  denid <- data.frame(x=deni$x,y=deni$y,measure=zmeas,region="OVERALL")
  denid
}
dhssubden <- bind_rows(dhssubden,dhssubden_pool) %>%
  mutate(region=factor(region,levels=c("OVERALL","AFRO","SEARO","PAHO")))


#---------------------------------------
# read in saved GHAP density estimates
# for z-scores, stratified by
# region
#---------------------------------------
kiden <- readRDS(paste0(here(),"/results/ki.density.fits.quarterly.rds"))
kiden <- kiden %>%
  mutate(region=factor(region,levels=c("Overall","AFRO","SEARO","PAHO"),labels=c("OVERALL","AFRO","SEARO","PAHO")),
         measure=factor(measure,levels=c("haz","waz","whz"),labels=c("LAZ","WAZ","WHZ"))
  )

#---------------------------------------
# Append the fits into a single data frame
# for plotting
#---------------------------------------
kiden   <- kiden   %>% mutate(dsource="ki cohorts")
dhssubden <- dhssubden %>% mutate(dsource="DHS, ki countries")
dhsallden <- dhsallden %>% mutate(dsource="DHS")
dhsden <- bind_rows(kiden,dhssubden,dhsallden) %>%
  mutate(dsource=factor(dsource,levels=c("ki cohorts","DHS, ki countries","DHS")),
         region=factor(region,levels=c("OVERALL","AFRO","SEARO","PAHO") )
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
tableau10 <- tableau_color_pal("Tableau 10")
pcols <- c("black",tableau10(10)[c(1,5,2)])

#---------------------------------------
# LAZ density by region
#---------------------------------------
laz_dplot <- ggplot(data=filter(dhsden_plot,measure=="LAZ"),aes(x=x,y=y,color=region,linetype=dsource))+
  facet_grid(~region)+
  geom_line()+
  scale_color_manual(values=pcols,guide=FALSE)+
  scale_fill_manual(values=pcols,guide=FALSE)+
  scale_linetype_manual(values=c("solid","dashed","dotdash"))+
  scale_x_continuous(breaks=seq(-6,6,by=2))+
  coord_cartesian(xlim=c(-6,6))+
  labs(y="density",x="length-for-age z-score")+
  theme_minimal()+
  theme(legend.position="none",
    panel.grid.minor.y=element_blank(),
    axis.ticks.y=element_blank(),
    axis.text.y=element_blank()
        )

laz_dplot

# output a file to png
ggsave(here("figures/dhs","dhs-ghap-laz-density.png"),plot=laz_dplot,device="png",width=8,height=2)



#---------------------------------------
# WAZ density by region
#---------------------------------------
waz_dplot <- ggplot(data=filter(dhsden_plot,measure=="WAZ"),aes(x=x,y=y,color=region,linetype=dsource))+
  facet_grid(~region)+
  geom_line()+
  scale_color_manual(values=pcols,guide=FALSE)+
  scale_fill_manual(values=pcols,guide=FALSE)+
  scale_linetype_manual(values=c("solid","dashed","dotdash"))+
  scale_x_continuous(breaks=seq(-6,6,by=2))+
  coord_cartesian(xlim=c(-6,6))+
  labs(y="relative density",x="weight-for-age z-score")+
  theme_minimal()+
  theme(legend.position="none",
        panel.grid.minor.y=element_blank(),
        axis.ticks.y=element_blank(),
        axis.text.y=element_blank()
  )

waz_dplot

# output a file to png
ggsave(here("figures/dhs","dhs-ghap-waz-density.png"),plot=waz_dplot,device="png",width=8,height=2)

#---------------------------------------
# WHZ density by region
#---------------------------------------
whz_dplot <- ggplot(data=filter(dhsden_plot,measure=="WHZ"),aes(x=x,y=y,color=region,linetype=dsource))+
  facet_grid(~region)+
  geom_line()+
  scale_color_manual(values=pcols,guide=FALSE)+
  scale_fill_manual(values=pcols,guide=FALSE)+
  scale_linetype_manual(values=c("solid","dashed","dotdash"))+
  scale_x_continuous(breaks=seq(-6,6,by=2))+
  coord_cartesian(xlim=c(-6,6))+
  labs(y="relative density",x="weight-for-height z-score")+
  theme_minimal()+
  theme(legend.position="none",
        panel.grid.minor.y=element_blank(),
        axis.ticks.y=element_blank(),
        axis.text.y=element_blank()
  )

whz_dplot

# output a file to png
ggsave(here("figures/dhs","dhs-ghap-whz-density.png"),plot=whz_dplot,device="png",width=8,height=2)





