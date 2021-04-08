##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# plots of mean LAZ, stunting incidence, 
# and stunting prevalence

# fixed effects analysis 

# inputs: desc_data_cleaned.Rdata

# outputs: 
# fig-laz-2-mean-overall_region--allage-fixed effects_no_probit.png
# fig-stunt-2-prev-overall_region--allage-fixed effects_no_probit.png
# fig-stunt-3-prev-overall_region--allage-fixed effects_no_probit.png
# fig-stunt-2-inc-overall_region--allage-fixed effects_no_probit.png
# fig-stunt-3-inc-overall_region--allage-fixed effects_no_probit.png

# figdata-laz-2-mean-overall_region--allage-fixed effects_no_probit.RDS
# figdata-stunt-2-prev-overall_region--allage-fixed effects_no_probit.RDS
# figdata-stunt-3-prev-overall_region--allage-fixed effects_no_probit.RDS
# figdata-stunt-2-inc-overall_region--allage-fixed effects_no_probit.RDS
# figdata-stunt-3-inc-overall_region--allage-fixed effects_no_probit.RDS

##########################################

#-----------------------------------
# preamble
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
expand_scale = function(mult = 0, add = 0) {
  stopifnot(is.numeric(mult) && is.numeric(add))
  stopifnot((length(mult) %in% 1:2) && (length(add) %in% 1:2))
  
  mult <- rep(mult, length.out = 2)
  add <- rep(add, length.out = 2)
  c(mult[1], add[1], mult[2], add[2])
}

#Plot themes
theme_set(theme_ki())

#Load data
d <- readRDS(paste0(here::here(),"/results/desc_data_cleaned.rds"))

d$nmeas.f <- clean_nmeans(d$nmeas)

# subset to probit analysis
d <- d %>% filter(analysis == "No Probit - Fixed effects")

#-------------------------------------------------------------------------------------------
# Stunting prevalence - 3 months
#-------------------------------------------------------------------------------------------
prev_plot <- ki_desc_plot_fe(d,
                          Disease="Stunting",
                          Measure="Prevalence", 
                          Birth="yes", 
                          Severe="no", 
                          Age_range="3 months", 
                          Cohort="pooled",
                          xlabel="Child age, months",
                          ylabel='Point Prevalence (95% CI)',
                          h1=69,
                          h2=72,
                          returnData=T)
prev_plot$plot



# get N's for figure caption
prev_n = d %>%
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
prev_plot_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "prevalence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "fixed effects"
)

# save plot and underlying data
ggsave(prev_plot$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_name, "_no_probit.png"), width=14, height=4)

saveRDS(prev_plot$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_name,"_no_probit.RDS"))



#-------------------------------------------------------------------------------------------
# Stunting prevalence - severe 
#-------------------------------------------------------------------------------------------
prev_plot_sev <- ki_desc_plot_fe(d,
                              Disease="Stunting",
                              Measure="Prevalence", 
                              Birth="yes", 
                              Severe="yes", 
                              Age_range="3 months", 
                              Cohort="pooled",
                              xlabel="Child age, months",
                              ylabel='Point Prevalence (95% CI)',
                              h1=69,
                              h2=72,
                              returnData=T)
prev_plot_sev$plot


# define standardized plot names
prev_plot_sev_name = create_name(
  outcome = "stunting",
  cutoff = 3,
  measure = "prevalence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "fixed effects"
)

# save plot and underlying data
ggsave(prev_plot_sev$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_sev_name, "_no_probit.png"), width=14, height=4)

saveRDS(prev_plot_sev$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_sev_name,"_no_probit.RDS"))



#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion
#-------------------------------------------------------------------------------------------
ci_inc_plot <- ki_combo_plot(d,
                             Disease="Stunting",
                             Measure=c("Cumulative incidence", "Incidence proportion"), 
                             Birth="strat", 
                             Severe="no", 
                             Age_range="3 months", 
                             Cohort="pooled",
                             xlabel="Child age, months",
                             h1=90,
                             h2=90,
                             returnData=T)
ci_inc_plot$plot


# get N's for figure caption
inc_n = d %>%
  filter(disease == "Stunting" & 
           (measure == "Cumulative incidence" | measure== "Incidence proportion") & 
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
ci_inc_plot_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "incidence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "fixed effects"
)

# save plot and underlying data
ggsave(ci_inc_plot$plot, file=paste0(fig_dir, "stunting/fig-",ci_inc_plot_name,"_no_probit.png"), width=16, height=4)

saveRDS(ci_inc_plot$data, file=paste0(figdata_dir_stunting, "figdata-",ci_inc_plot_name,"_no_probit.RDS"))

#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion - severe
#-------------------------------------------------------------------------------------------

ci_inc_plot_sev <- ki_combo_plot(d,
                                 Disease="Stunting",
                                 Measure=c("Cumulative incidence", "Incidence proportion"), 
                                 Birth="yes", 
                                 Severe="yes", 
                                 Age_range="3 months", 
                                 Cohort="pooled",
                                 xlabel="Child age, months",
                                 h1=85,
                                 h2=90,
                                 returnData=T)
ci_inc_plot_sev$plot


# define standardized plot names
ci_inc_plot_sev_name = create_name(
  outcome = "stunting",
  cutoff = 3,
  measure = "incidence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "fixed effects"
)

# save plot and underlying data
ggsave(ci_inc_plot_sev$plot, file=paste0(fig_dir, "stunting/fig-",ci_inc_plot_sev_name,"_no_probit.png"), width=14, height=4)

saveRDS(ci_inc_plot_sev$data, file=paste0(figdata_dir_stunting, "figdata-",ci_inc_plot_sev_name,"_no_probit.RDS"))






