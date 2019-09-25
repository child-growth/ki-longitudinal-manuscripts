##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# plots of mean LAZ, stunting prevalence,
# and stunting incidence

# includes primary analysis, fixed effects analysis, and
# sensitivity analysis that subsets cohorts to those with
# monthly measurements each month from 0 to 24 months

# inputs: desc_data_cleaned.RDS, quantile_data_stunting_monthly24.RDS

##########################################

#-----------------------------------
# preamble
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Plot themes
theme_set(theme_ki())

#Load data
d <- readRDS(paste0(here::here(),"/results/desc_data_cleaned.RDS"))

#Quantile data (object: quantile_d)
quantile_d <- readRDS(paste0(here::here(),"/results/quantile_data_stunting_monthly24.RDS"))

d$nmeas.f <- clean_nmeans(d$nmeas)

# subset to primary analysis
d_primary <- d %>% filter(analysis == "Primary")

# scale cohort-specific estimates
d_primary = d_primary %>% mutate(
  est = ifelse(disease=="Stunting"  & cohort!="pooled",
               est*100, est),
  lb = ifelse(disease=="Stunting"  & cohort!="pooled",
              lb*100, lb),
  ub = ifelse(disease=="Stunting"  & cohort!="pooled",
              ub*100, ub)
)

# subset to primary analysis, monthly measurements from 0 to 24 months
d_monthly <- d %>% filter(analysis == "Cohorts monthly 0-24 m")

# subset to fixed effects analysis
d_fe <- d %>% filter(analysis == "Fixed effects")

#-------------------------------------------------------------------------------------------
# Mean LAZ by month (primary & monthly from 0-24 months)
#-------------------------------------------------------------------------------------------

filter_df <- function(df, meas) {
  new <- df %>% filter(
    disease == "Stunting" &
      measure == meas &
      birth == "yes" &
      severe == "no" &
      age_range == "1 month" &
      cohort == "pooled"
  )
  
  new <- droplevels(new)
  
  new <- new %>%
    arrange(agecat) %>%
    filter(!is.na(agecat)) %>%
    filter(!is.na(region)) %>%
    mutate(agecat = as.character(agecat)) %>%
    mutate(agecat = ifelse(agecat == "Two weeks", ".5", agecat)) %>%
    mutate(agecat = gsub(" month", "", agecat)) %>%
    mutate(agecat = gsub(" months", "", agecat)) %>%
    mutate(agecat = gsub("s", "", agecat)) %>%
    mutate(agecat = ifelse(agecat == "One", "1", agecat)) %>%
    mutate(agecat = as.numeric(agecat))
  
  return(new)
}

df_primary <- filter_df(d_primary, "Mean LAZ")

df_monthly <- filter_df(d_monthly, "Mean LAZ - monthly cohorts")


#-------------------------------------------------------------------------------------------
# Mean LAZ by month (primary & monthly from 0-24 months)
#-------------------------------------------------------------------------------------------

plot_mean_laz <- function(df) {
  plt <- ggplot(df,aes(y=est,x=agecat, group=region)) +
    stat_smooth(aes(fill=region, color=region), se=F, span = 0.5) +
    geom_hline(yintercept = 0, colour = "black") +
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10), 
                       limits = c(-2.2, 0.5)) + 
    scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
    scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                      name = 'Region') +
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                       name = 'Region') +
    xlab("Child age, months")+
    ylab("Length-for-age Z-score") +
    ggtitle("") +
    theme(legend.position="right")
  
  return(plt)
}

mean_laz_plot_primary <- plot_mean_laz(df_primary)

mean_laz_plot_monthly <- plot_mean_laz(df_monthly)

# define standardized plot names
mean_laz_plot_name_primary = create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "mean",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

mean_laz_plot_name_monthly = create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "mean",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "monthly cohorts measured each month from 0 to 24"
)

# save plot and underlying data
if (test_desc_epi_figure(df_primary)) {
  saveRDS(df_primary, file=paste0(figdata_dir, "figdata-",mean_laz_plot_name_primary,".RDS"))
  ggsave(mean_laz_plot_primary, file=paste0(fig_dir, "stunting/fig-",mean_laz_plot_name_primary,".png"), width=10, height=4) 
}

if (test_desc_epi_figure(mean_laz_plot_monthly)) {
  saveRDS(df_monthly, file=paste0(figdata_dir, "figdata-",mean_laz_plot_name_monthly,".RDS"))
  ggsave(mean_laz_plot_monthly, file=paste0(fig_dir, "stunting/fig-",mean_laz_plot_name_monthly,".png"), width=10, height=4)
}

#-------------------------------------------------------------------------------------------
# Mean LAZ by month - seattle april 2019 presentation figure
#-------------------------------------------------------------------------------------------
dfgates = df_primary %>% filter(region!="Overall")

orange = "#FF7F0E"
green = "#2CA02C"

mean_laz_plot_gates <- ggplot(dfgates,aes(y=est,x=agecat, group=region)) +
  stat_smooth(aes(fill=region, color=region), se=F, span = 0.5) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10),
                     limits = c(-2.5, 1.5)) +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) +
  scale_fill_manual(values=c(orange, "black",green), drop=TRUE, limits = levels(df_primary$measure),
                    name = 'Region') +
  scale_color_manual(values=c(orange, "black",green), drop=TRUE, limits = levels(df_primary$measure),
                     name = 'Region') +
  xlab("Child age, months")+
  ylab("Length-for-age Z-score") +
  ggtitle("") +
  theme(legend.position="bottom")

# save plot and underlying data
ggsave(mean_laz_plot_gates, file=paste0(fig_dir, "stunting/fig-",mean_laz_plot_name_primary,"-gates.png"), width=5, height=4)


#-------------------------------------------------------------------------------------------
# Mean LAZ by month with quantiles
#-------------------------------------------------------------------------------------------

df_quantile <- quantile_d

df_quantile$agecat <- factor(df_quantile$agecat,
                             levels=c("Two weeks", "One month",
                                      paste0(2:24," months")))

df_quantile <- df_quantile %>%
  arrange(agecat) %>%
  filter(region!="Europe")
df_quantile <-droplevels(df_quantile)


df_quantile <- df_quantile %>%
  ungroup(agecat) %>%
  arrange(agecat) %>%
  filter(!is.na(agecat)) %>%
  filter(!is.na(region)) %>%
  mutate(agecat = as.character(agecat)) %>%
  mutate(agecat = ifelse(agecat == "Two weeks", ".5", agecat)) %>%
  mutate(agecat = gsub(" month", "", agecat)) %>%
  mutate(agecat = gsub(" months", "", agecat)) %>%
  mutate(agecat = gsub("s", "", agecat)) %>%
  mutate(agecat = ifelse(agecat == "One", "1", agecat)) %>%
  mutate(agecat = as.numeric(agecat)) %>%
  mutate(region = ifelse(region=="Asia", "South Asia", region)) %>%
  gather(`ninetyfifth_perc`, `fiftieth_perc`, `fifth_perc`, key = "interval", value = "LAZ") %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "Latin America", "South Asia"))) %>%
  mutate(region_who = case_when(
    region == "Overall" ~ "OVERALL",
    region == "Africa" ~ "AFRO",
    region == "South Asia" ~ "SEARO",
    region == "Latin America" ~ "PAHO"
  )) %>%
  mutate(region_who = factor(region_who, levels = c("OVERALL", "AFRO", "SEARO", "PAHO")))

mean_laz_quantile_plot <- ggplot(df_quantile,aes(x = agecat, group = region)) +
  
  geom_smooth(aes(y = LAZ, color = region, group = interval, linetype = interval), se = F, span = 0.5) +
  
  
  facet_grid(~region_who) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,6), labels = seq(0,24,6)) +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
  
  scale_color_manual(values=c("Black", "#1F77B4", "#FF7F0E", "#2CA02C"), drop=TRUE, limits = levels(df_quantile$measure),
                     name = 'Region') +
  scale_linetype_manual(name = "interval", values = c("fiftieth_perc" = "solid",
                                                      "ninetyfifth_perc" = "dashed",
                                                      "fifth_perc" = "dotted"),
                        breaks = c("fiftieth_perc",
                                   "ninetyfifth_perc",
                                   "fifth_perc"),
                        labels = c("Mean", "95th percentile", "5th percentile")) +
  xlab("Child age, months") +
  ylab("Length-for-age Z-score") +
  ggtitle("") +
  theme(strip.text = element_text(margin=margin(t=5))) +
  guides(linetype = guide_legend(override.aes = list(col = 'black'),
                                 keywidth = 3, keyheight = 1),
         colour = FALSE) +
  theme(legend.position = "bottom",
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"))


# define standardized plot names
mean_laz_quantile_plot_name = create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "quantile",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "monthly cohorts measured each month from 0 to 24"
)

# save plot and underlying data
ggsave(mean_laz_quantile_plot,
       file=paste0(fig_dir, "stunting/fig-",mean_laz_quantile_plot_name,".png"),
       width=14, height=4)

saveRDS(df_quantile, file=paste0(figdata_dir, "figdata-",mean_laz_quantile_plot_name,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting prevalence (monthly from 0 to 24 months)
#-------------------------------------------------------------------------------------------
plot_prev <- function(d, meas="Prevalence", sev, ...) {
  ki_desc_plot(d,
               Disease="Stunting",
               Measure=meas, 
               Birth="yes", 
               Severe=sev, 
               Age_range="3 months", 
               Cohort="pooled",
               xlabel="Child age, months",
               ylabel='Point Prevalence (95% CI)',
               h1=69,
               h2=72, 
               ...)
}

prev_plot_monthly <- plot_prev(d_monthly, meas="Prevalence - monthly cohorts", sev="no")
prev_plot_monthly

# define standardized plot names
name_prev_plots <- function(cut=2, pop, loc="", ana) {
  create_name(
    outcome = "stunting",
    cutoff = cut,
    measure = "prevalence",
    population = pop,
    location = loc,
    age = "All ages",
    analysis = ana
  )
}

pop_list = list(c="cohort-stratified", o="overall and region-stratified")
analysis_list = list(p="primary", m="monthly cohorts measured each month from 0 to 24", f="fixed effects")

prev_plot_name_monthly = name_prev_plots(cut=2, pop=pop_list$o, loc="", ana=analysis_list$m)

# save plot and underlying data
ggsave(prev_plot_monthly$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_name_monthly, ".png"), width=14, height=3)
saveRDS(d_monthly, file=paste0(figdata_dir, "figdata-",prev_plot_name_monthly,".RDS"))

#-------------------------------------------------------------------------------------------
# Stunting prevalence - 3 months (primary)
#-------------------------------------------------------------------------------------------
prev_plot_primary <- plot_prev(d_primary, sev="no", returnData=T)

prev_plot_primary$plot


# get N's for figure caption
prev_n = d_primary %>%
  filter(disease == "Stunting" &
           measure == "Prevalence" &
           age_range == "3 months" &
           cohort == "pooled" &
           severe == "no") %>%
  group_by(region) %>%
  summarise(min_study = min(nstudies, na.rm=TRUE),
            max_study = max(nstudies, na.rm=TRUE),
            min_n = min(nmeas, na.rm=TRUE),
            max_n = max(nmeas, na.rm=TRUE))

# define standardized plot names

prev_plot_name_primary = name_prev_plots(cut=2, pop=pop_list$o, loc="", ana=analysis_list$p)

# save plot and underlying data
ggsave(prev_plot_primary$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_name_primary, ".png"), width=14, height=4)
saveRDS(prev_plot_primary$data, file=paste0(figdata_dir, "figdata-",prev_plot_name_primary,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting prevalence - 3 months (fixed effects)
#-------------------------------------------------------------------------------------------

prev_plot_fe <- plot_prev(d_fe, sev="no", returnData=T)
prev_plot_fe$plot


# get N's for figure caption
prev_n_fe = d_fe %>%
  filter(disease == "Stunting" & 
           measure == "Prevalence" & 
           age_range == "3 months" &
           cohort == "pooled" &
           severe == "no") %>% 
  group_by(region) %>% 
  summarise(min_study = min(nstudies, na.rm=TRUE), 
            max_study = max(nstudies, na.rm=TRUE),
            min_n = min(nmeas, na.rm=TRUE), 
            max_n = max(nmeas, na.rm=TRUE))

# define standardized plot names
prev_plot_name_fe <- name_prev_plots(cut=2, pop=pop_list$o, loc="", ana=analysis_list$f)

# save plot and underlying data
ggsave(prev_plot_fe$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_name_fe, ".png"), width=14, height=4)

saveRDS(prev_plot_fe$data, file=paste0(figdata_dir, "figdata-",prev_plot_name_fe,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting prevalence - 3 months - stratified by cohort (primary)
#-------------------------------------------------------------------------------------------

prev_plot_africa <- plot_prev(d_primary, sev="no", strip.text.size=14, returnData=T, Region="Africa")
prev_plot_lam <- plot_prev(d_primary, sev="no", strip.text.size=14, returnData=T, Region="Latin America")
prev_plot_sasia <- plot_prev(d_primary, sev="no", strip.text.size=14, returnData=T, Region="South Asia")

prev_plot_africa$plot
prev_plot_lam$plot
prev_plot_sasia$plot

# define standardized plot names
prev_plot_africa_name = name_prev_plots(cut=2, pop=pop_list$c, loc="Africa", ana=analysis_list$p)
prev_plot_latam_name = name_prev_plots(cut=2, pop=pop_list$c, loc="Latin America", ana=analysis_list$p)
prev_plot_sasia_name = name_prev_plots(cut=2, pop=pop_list$c, loc="South Asia", ana=analysis_list$p)


# save plot and underlying data
ggsave(prev_plot_africa$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_africa_name, ".png"), width=10, height=5)
ggsave(prev_plot_lam$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_latam_name, ".png"), width=10, height=5)
ggsave(prev_plot_sasia$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_sasia_name, ".png"), width=15, height=7)

saveRDS(prev_plot_africa$data, file=paste0(figdata_dir, "figdata-",prev_plot_africa_name,".RDS"))
saveRDS(prev_plot_lam$data, file=paste0(figdata_dir, "figdata-",prev_plot_latam_name,".RDS"))
saveRDS(prev_plot_sasia$data, file=paste0(figdata_dir, "figdata-",prev_plot_sasia_name,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting prevalence - severe (primary)
#-------------------------------------------------------------------------------------------
prev_plot_sev_primary <- plot_prev(d_primary, sev="yes", returnData=T)
prev_plot_sev_primary$plot


# define standardized plot names
prev_plot_sev_name_primary = name_prev_plots(cut=3, pop=pop_list$o, loc="", ana=analysis_list$p)

# save plot and underlying data
ggsave(prev_plot_sev_primary$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_sev_name_primary, ".png"), width=14, height=4)
saveRDS(prev_plot_sev_primary$data, file=paste0(figdata_dir, "figdata-",prev_plot_sev_name_primary,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting prevalence - severe (monthly from 0-24 months)
#-------------------------------------------------------------------------------------------
prev_plot_sev_monthly <- plot_prev(d_monthly, meas="Prevalence - monthly cohorts", sev="yes")
prev_plot_sev_monthly


# define standardized plot names
prev_plot_sev_name_monthly = name_prev_plots(cut=3, pop=pop_list$o, loc="", ana=analysis_list$m)

# save plot and underlying data
ggsave(prev_plot_sev_monthly$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_sev_name_monthly, ".png"), width=14, height=3)
saveRDS(d_monthly, file=paste0(figdata_dir, "figdata-",prev_plot_sev_name_monthly,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting prevalence - severe (fixed effects)
#-------------------------------------------------------------------------------------------
prev_plot_sev_fe <- plot_prev(d_fe, sev="yes", returnData=T)
prev_plot_sev_fe$plot


# define standardized plot names
prev_plot_sev_name_fe <- name_prev_plots(cut=3, pop=pop_list$o, loc="", ana=analysis_list$f)

# save plot and underlying data
ggsave(prev_plot_sev_fe$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_sev_name_fe, ".png"), width=14, height=4)
saveRDS(prev_plot_sev_fe$data, file=paste0(figdata_dir, "figdata-",prev_plot_sev_name_fe,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting prevalence - severe - cohort specific (primary)
#-------------------------------------------------------------------------------------------

prev_plot_sev_africa <- plot_prev(d_primary, sev="yes", strip.text.size=14, returnData=T, Region="Africa")
prev_plot_sev_lam <- plot_prev(d_primary, sev="yes", strip.text.size=14, returnData=T, Region="Latin America")
prev_plot_sev_sasia <- plot_prev(d_primary, sev="yes", strip.text.size=14, returnData=T, Region="South Asia")

prev_plot_sev_africa$plot
prev_plot_sev_lam$plot
prev_plot_sev_sasia$plot

# define standardized plot names
prev_plot_sev_africa_name = name_prev_plots(cut=3, pop=pop_list$c, loc="Africa", ana=analysis_list$p)
prev_plot_sev_latam_name = name_prev_plots(cut=3, pop=pop_list$c, loc="Latin America", ana=analysis_list$p)
prev_plot_sev_sasia_name = name_prev_plots(cut=3, pop=pop_list$c, loc="South Asia", ana=analysis_list$p)

# save plot and underlying data
ggsave(prev_plot_sev_africa$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_sev_africa_name, ".png"), width=10, height=5)
ggsave(prev_plot_sev_lam$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_sev_latam_name, ".png"), width=10, height=5)
ggsave(prev_plot_sev_sasia$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_sev_sasia_name, ".png"), width=15, height=7)

saveRDS(prev_plot_sev_africa$data, file=paste0(figdata_dir, "figdata-",prev_plot_sev_africa_name,".RDS"))
saveRDS(prev_plot_sev_lam$data, file=paste0(figdata_dir, "figdata-",prev_plot_sev_latam_name,".RDS"))
saveRDS(prev_plot_sev_sasia$data, file=paste0(figdata_dir, "figdata-",prev_plot_sev_sasia_name,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion (primary)
#-------------------------------------------------------------------------------------------

plot_ci_inc <- function(d, meas=c("Cumulative incidence", "Incidence_proportion"), birth, sev, ...) {
  ki_combo_plot(d,
                Disease="Stunting",
                Measure=meas, 
                Birth=birth, 
                Severe=sev, 
                Age_range="3 months", 
                Cohort="pooled",
                xlabel="Child age, months",
                h1=90,
                h2=90,
                ...)
}

ci_inc_plot_primary <- plot_ci_inc(d_primary, birth="strat", sev="no", returnData=T)
ci_inc_plot_primary$plot


# get N's for figure caption
inc_n_primary = d_primary %>%
  filter(disease == "Stunting" &
           (measure == "Cumulative incidence" | measure== "Incidence_proportion") &
           region!="Overall" &
           age_range == "3 months" &
           birth == "strat" &
           cohort == "pooled" &
           severe == "no") %>%
  group_by(region) %>%
  summarise(min_study = min(nstudies, na.rm=TRUE),
            max_study = max(nstudies, na.rm=TRUE),
            min_n = min(nmeas, na.rm=TRUE),
            max_n = max(nmeas, na.rm=TRUE))

# define standardized plot names
name_inc_plots <- function(cut=2, pop, loc="", ana) {
  create_name(
    outcome = "stunting",
    cutoff = cut,
    measure = "incidence",
    population = pop,
    location = loc,
    age = "All ages",
    analysis = ana
  )
}

ci_inc_plot_name_primary = name_inc_plots(cut=2, pop=pop_list$o, loc="", ana=analysis_list$p)

# save plot and underlying data
ggsave(ci_inc_plot_primary$plot, file=paste0(fig_dir, "stunting/fig-",ci_inc_plot_name_primary,".png"), width=16, height=4)
saveRDS(ci_inc_plot_primary$data, file=paste0(figdata_dir, "figdata-",ci_inc_plot_name_primary,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion (monthly from 0-24 months)
#-------------------------------------------------------------------------------------------
ci_inc_plot_monthly <- plot_ci_inc(d_monthly, 
                                   meas=c("Cumulative incidence - monthly cohorts", "Incidence_proportion - monthly cohorts"), 
                                   birth="yes", 
                                   sev="no")

ci_inc_plot_monthly


# define standardized plot names
ci_inc_plot_name_monthly <- name_inc_plots(cut=2, pop=pop_list$o, loc="", ana=analysis_list$m)

# save plot and underlying data
ggsave(ci_inc_plot_monthly, file=paste0(fig_dir, "stunting/fig-",ci_inc_plot_name_monthly,".png"), width=14, height=3)

saveRDS(d_monthly, file=paste0(figdata_dir, "figdata-",ci_inc_plot_name_monthly,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion (fixed effects)
#-------------------------------------------------------------------------------------------
ci_inc_plot_fe <- plot_ci_inc(d_fe, birth="strat", sev="no", returnData=T)
ci_inc_plot_fe$plot


# get N's for figure caption
inc_n_fe = d_fe %>%
  filter(disease == "Stunting" & 
           (measure == "Cumulative incidence" | measure== "Incidence_proportion") & 
           region!="Overall" &
           age_range == "3 months" &
           birth == "strat" & 
           cohort == "pooled" &
           severe == "no") %>% 
  group_by(region) %>% 
  summarise(min_study = min(nstudies, na.rm=TRUE), 
            max_study = max(nstudies, na.rm=TRUE),
            min_n = min(nmeas, na.rm=TRUE), 
            max_n = max(nmeas, na.rm=TRUE))

# define standardized plot names
ci_inc_plot_name_fe = name_inc_plots(cut=2, pop=pop_list$o, loc="", ana=analysis_list$f)

# save plot and underlying data
ggsave(ci_inc_plot_fe$plot, file=paste0(fig_dir, "stunting/fig-",ci_inc_plot_name_fe,".png"), width=16, height=4)

saveRDS(ci_inc_plot_fe$data, file=paste0(figdata_dir, "figdata-",ci_inc_plot_name_fe,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion (primary)
#-------------------------------------------------------------------------------------------
inc_plot <- ip_plot(d_primary,
                    Disease = "Stunting",
                    Measure = "Incidence_proportion",
                    Birth = "yes",
                    Severe = "no",
                    Age_range = "3 months",
                    Cohort = "pooled",
                    xlabel = "Child age, months",
                    h1 = 85,
                    h2 = 90,
                    returnData = F
)
inc_plot


# define standardized plot names
inc_plot_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "incidence only",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(inc_plot, file=paste0(fig_dir, "stunting/fig-",inc_plot_name,".png"), width=14, height=3)


#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion - severe (primary)
#-------------------------------------------------------------------------------------------
ci_inc_plot_sev_primary <- plot_ci_inc(d_primary, birth="yes", sev="yes", returnData=T) #h1=85,
ci_inc_plot_sev_primary$plot


# define standardized plot names
ci_inc_plot_sev_name_primary = name_inc_plots(cut=3, pop=pop_list$o, loc="", ana=analysis_list$p)

# save plot and underlying data
ggsave(ci_inc_plot_sev_primary$plot, file=paste0(fig_dir, "stunting/fig-",ci_inc_plot_sev_name_primary,".png"), width=14, height=4)
saveRDS(ci_inc_plot_sev_primary$data, file=paste0(figdata_dir, "figdata-",ci_inc_plot_sev_name_primary,".RDS"))

#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion - severe (monthly)
#-------------------------------------------------------------------------------------------
ci_inc_plot_sev_monthly <- plot_ci_inc(d_monthly, 
                                       meas=c("Cumulative incidence - monthly cohorts", "Incidence_proportion - monthly cohorts"),
                                       birth="yes", 
                                       sev="yes") 
ci_inc_plot_sev_monthly


# define standardized plot names
ci_inc_plot_sev_name_monthly <- name_inc_plots(cut=3, pop=pop_list$o, loc="", ana=analysis_list$m)

# save plot and underlying data
ggsave(ci_inc_plot_sev_monthly, file=paste0(fig_dir, "stunting/fig-",ci_inc_plot_sev_name_monthly,".png"), width=14, height=3)
saveRDS(d_monthly, file=paste0(figdata_dir, "figdata-",ci_inc_plot_sev_name_monthly,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion - severe (fixed effects)
#-------------------------------------------------------------------------------------------

ci_inc_plot_sev_fe <- plot_ci_inc(d_fe, birth="yes", sev="yes", returnData=T)
ci_inc_plot_sev_fe$plot


# define standardized plot names
ci_inc_plot_sev_name_fe = name_inc_plots(cut=3, pop=pop_list$o, loc="", ana=analysis_list$f)

# save plot and underlying data
ggsave(ci_inc_plot_sev_fe$plot, file=paste0(fig_dir, "stunting/fig-",ci_inc_plot_sev_name_fe,".png"), width=14, height=4)
saveRDS(ci_inc_plot_sev_fe$data, file=paste0(figdata_dir, "figdata-",ci_inc_plot_sev_name_fe,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence - 3 months - stratified by cohort (primary)
#-------------------------------------------------------------------------------------------
plot_ip_by_reg <- function(reg) {
  ip_plot(
    d_primary,
    Disease = "Stunting",
    Measure = "Incidence_proportion",
    Birth = "strat",
    Severe = "no",
    Age_range = "3 months",
    Cohort = "pooled",
    xlabel = "Child age, months",
    ylabel = 'Incidence proportion (95% CI)',
    h1 = 69,
    h2 = 72,
    returnData = T,
    Region = reg
  )
}

ip_plot_africa <- plot_ip_by_reg(reg="Africa")
ip_plot_lam <- plot_ip_by_reg(reg="Latin America")
ip_plot_sasia <- plot_ip_by_reg(reg="South Asia")

ip_plot_africa$plot
ip_plot_lam$plot
ip_plot_sasia$plot


# define standardized plot names
ip_plot_africa_name = name_inc_plots(cut=2, pop=pop_list$c, loc="Africa", ana=analysis_list$p)
ip_plot_latam_name = name_inc_plots(cut=2, pop=pop_list$c, loc="Latin America", ana=analysis_list$p)
ip_plot_sasia_name = name_inc_plots(cut=2, pop=pop_list$c, loc="South Asia", ana=analysis_list$p)

# save plot and underlying data
ggsave(ip_plot_africa$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_africa_name, ".png"), width=10, height=5)
ggsave(ip_plot_lam$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_latam_name, ".png"), width=10, height=5)
ggsave(ip_plot_sasia$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_sasia_name, ".png"), width=15, height=7)

saveRDS(ip_plot_africa$data, file=paste0(figdata_dir, "figdata-",ip_plot_africa_name,".RDS"))
saveRDS(ip_plot_lam$data, file=paste0(figdata_dir, "figdata-",ip_plot_latam_name,".RDS"))
saveRDS(ip_plot_sasia$data, file=paste0(figdata_dir, "figdata-",ip_plot_sasia_name,".RDS"))
