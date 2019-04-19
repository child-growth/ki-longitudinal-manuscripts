##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# plots of mean LAZ, stunting incidence, 
# and stunting prevalence

# inputs: desc_data_cleaned.Rdata

# outputs: 
# fig-laz-2-mean-overall_region--allage-primary.png
# fig-stunt-2-prev-overall_region--allage-primary.png
# fig-stunt-3-prev-overall_region--allage-primary.png
# fig-stunt-2-inc-overall_region--allage-primary.png
# fig-stunt-3-inc-overall_region--allage-primary.png

# figdata-laz-2-mean-overall_region--allage-primary.RDS
# figdata-stunt-2-prev-overall_region--allage-primary.RDS
# figdata-stunt-3-prev-overall_region--allage-primary.RDS
# figdata-stunt-2-inc-overall_region--allage-primary.RDS
# figdata-stunt-3-inc-overall_region--allage-primary.RDS

##########################################

#-----------------------------------
# preamble
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Plot themes
theme_set(theme_ki())

#Load data
load(paste0(here::here(),"/results/desc_data_cleaned.Rdata"))

d$nmeas.f <- clean_nmeans(d$nmeas)

# subset to primary analysis
d <- d %>% filter(analysis == "Primary")

#-------------------------------------------------------------------------------------------
# Mean LAZ by month 
#-------------------------------------------------------------------------------------------

df <- d %>% filter(
  disease == "Stunting" &
    measure == "Mean LAZ" &
    birth == "yes" &
    severe == "no" &
    age_range == "1 month" &
    cohort == "pooled" 
)

df <- droplevels(df)

df <- df %>% 
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
  

#-------------------------------------------------------------------------------------------
# Mean LAZ by month 
#-------------------------------------------------------------------------------------------

mean_laz_plot <- ggplot(df,aes(y=est,x=agecat, group=region)) +
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

# define standardized plot names
mean_laz_plot_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "mean",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(mean_laz_plot, file=paste0(fig_dir, "stunting/fig-",mean_laz_plot_name,".png"), width=10, height=4)
saveRDS(df, file=paste0(figdata_dir, "figdata-",mean_laz_plot_name,".RDS"))


#-------------------------------------------------------------------------------------------
# Mean LAZ by month - seattle april 2019 presentation figure
#-------------------------------------------------------------------------------------------
dfgates = df %>% filter(region!="Overall")

orange = "#FF7F0E"
green = "#2CA02C"

mean_laz_plot_gates <- ggplot(dfgates,aes(y=est,x=agecat, group=region)) +
  stat_smooth(aes(fill=region, color=region), se=F, span = 0.5) +
  geom_hline(yintercept = 0, colour = "black") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10), 
                     limits = c(-2.5, 1.5)) + 
  scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
  scale_fill_manual(values=c(orange, "black",green), drop=TRUE, limits = levels(df$measure),
                    name = 'Region') +
  scale_color_manual(values=c(orange, "black",green), drop=TRUE, limits = levels(df$measure), 
                     name = 'Region') +
  xlab("Child age, months")+
  ylab("Length-for-age Z-score") +
  ggtitle("") +
  theme(legend.position="bottom") 

# save plot and underlying data
ggsave(mean_laz_plot_gates, file=paste0(fig_dir, "stunting/fig-",mean_laz_plot_name,"-gates.png"), width=5, height=4)



#-------------------------------------------------------------------------------------------
# Stunting prevalence - 3 months
#-------------------------------------------------------------------------------------------
prev_plot <- ki_desc_plot(d,
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
  analysis = "primary"
)

# save plot and underlying data
ggsave(prev_plot$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_name, ".png"), width=14, height=4)

saveRDS(prev_plot$data, file=paste0(figdata_dir, "figdata-",prev_plot_name,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting prevalence - 3 months - stratified by cohort
#-------------------------------------------------------------------------------------------
# Nolan please update with new cohort specific plot
# prev_plot_cohort <- ki_desc_plot(d,
#                           Disease="Stunting",
#                           Measure="Prevalence", 
#                           Birth="yes", 
#                           Severe="no", 
#                           Age_range="3 months", 
#                           Cohort="pooled",
#                           xlabel="Child age, months",
#                           ylabel='Point Prevalence (95% CI)',
#                           h1=69,
#                           h2=72,
#                           returnData=T)
# prev_plot$plot
# 
# 
# # define standardized plot names
# prev_plot_cohort_name = create_name(
#   outcome = "stunting",
#   cutoff = 2,
#   measure = "prevalence",
#   population = "cohort-stratified",
#   location = "",
#   age = "All ages",
#   analysis = "primary"
# )
# 
# # save plot and underlying data
# ggsave(prev_plot_cohort$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_cohort_name, ".png"), width=14, height=3)
# 
# saveRDS(prev_plot_cohort$data, file=paste0(figdata_dir, "figdata-",prev_plot_cohort_name,".RDS"))
# 




#-------------------------------------------------------------------------------------------
# Stunting prevalence - severe 
#-------------------------------------------------------------------------------------------
prev_plot_sev <- ki_desc_plot(d,
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
  analysis = "primary"
)

# save plot and underlying data
ggsave(prev_plot_sev$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_sev_name, ".png"), width=14, height=4)

saveRDS(prev_plot_sev$data, file=paste0(figdata_dir, "figdata-",prev_plot_sev_name,".RDS"))



#-------------------------------------------------------------------------------------------
# Stunting prevalence - severe - cohort specific
#-------------------------------------------------------------------------------------------
# Nolan please update with new cohort specific plot
# prev_plot_sev_cohort <- ki_desc_plot(d,
#                               Disease="Stunting",
#                               Measure="Prevalence", 
#                               Birth="yes", 
#                               Severe="yes", 
#                               Age_range="3 months", 
#                               Cohort="pooled",
#                               xlabel="Child age, months",
#                               ylabel='Point Prevalence (95% CI)',
#                               h1=69,
#                               h2=72,
#                               returnData=T)
# prev_plot_sev_cohort$plot
# 
# 
# # define standardized plot names
# prev_plot_sev_cohort_name = create_name(
#   outcome = "stunting",
#   cutoff = 3,
#   measure = "prevalence",
#   population = "cohort-stratified",
#   location = "",
#   age = "All ages",
#   analysis = "primary"
# )
# 
# # save plot and underlying data
# ggsave(prev_plot_sev_cohort$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_sev_cohort_name, ".png"), width=14, height=3)
# 
# saveRDS(prev_plot_sev_cohort$data, file=paste0(figdata_dir, "figdata-",prev_plot_sev_cohort_name,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion
#-------------------------------------------------------------------------------------------
ci_inc_plot <- ki_combo_plot(d,
                        Disease="Stunting",
                        Measure=c("Cumulative incidence", "Incidence_proportion"), 
                        Birth="yes", 
                        Severe="no", 
                        Age_range="3 months", 
                        Cohort="pooled",
                        xlabel="Child age, months",
                        h1=85,
                        h2=90,
                        returnData=T)
ci_inc_plot$plot


# get N's for figure caption
inc_n = d %>%
  filter(disease == "Stunting" & 
           (measure == "Cumulative incidence" | measure== "Incidence_proportion") & 
           region!="Overall" &
           age_range == "3 months" &
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
  analysis = "primary"
)

# save plot and underlying data
ggsave(ci_inc_plot$plot, file=paste0(fig_dir, "stunting/fig-",ci_inc_plot_name,".png"), width=14, height=4)

saveRDS(ci_inc_plot$data, file=paste0(figdata_dir, "figdata-",ci_inc_plot_name,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion
#-------------------------------------------------------------------------------------------
inc_plot <- ip_plot(
  d,
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
# Stunting cumulative incidence + incidence proportion - cohort specific
#-------------------------------------------------------------------------------------------
# Nolan please update with new cohort specific plot
# ci_inc_plot_cohort <- ki_combo_plot(d,
#                              Disease="Stunting",
#                              Measure=c("Cumulative incidence", "Incidence_proportion"), 
#                              Birth="yes", 
#                              Severe="no", 
#                              Age_range="3 months", 
#                              Cohort="pooled",
#                              xlabel="Child age, months",
#                              h1=85,
#                              h2=90,
#                              returnData=T)
# ci_inc_plot_cohort$plot
# 
# 
# # get N's for figure caption
# inc_n = d %>%
#   filter(disease == "Stunting" & 
#            (measure == "Cumulative incidence" | measure== "Incidence_proportion") & 
#            region!="Overall" &
#            age_range == "3 months" &
#            cohort == "pooled" &
#            severe == "no") %>% 
#   group_by(region) %>% 
#   summarise(min_study = min(nstudies, na.rm=TRUE), 
#             max_study = max(nstudies, na.rm=TRUE),
#             min_n = min(nmeas, na.rm=TRUE), 
#             max_n = max(nmeas, na.rm=TRUE))
# 
# # define standardized plot names
# ci_inc_plot_cohort_name = create_name(
#   outcome = "stunting",
#   cutoff = 2,
#   measure = "incidence",
#   population = "cohort-stratified",
#   location = "",
#   age = "All ages",
#   analysis = "primary"
# )
# 
# # save plot and underlying data
# ggsave(ci_inc_plot_cohort$plot, file=paste0(fig_dir, "stunting/fig-",ci_inc_plot_cohort_name,".png"), width=14, height=3)
# 
# saveRDS(ci_inc_plot_cohort$data, file=paste0(figdata_dir, "figdata-",ci_inc_plot_cohort_name,".RDS"))

#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion 
# excluding birth
#-------------------------------------------------------------------------------------------
ci_inc_plot_nobirth <- ki_combo_plot(d,
                             Disease="Stunting",
                             Measure=c("Cumulative incidence", "Incidence_proportion"), 
                             Birth="no", 
                             Severe="no", 
                             Age_range="3 months", 
                             Cohort="pooled",
                             xlabel="Child age, months",
                             h1=85,
                             h2=90,
                             returnData=T
                             )

geom_text_adjust_vec = c(c(2, rep(0, 7)), c(-2, rep(0, 7)), 
                         c(2, rep(0, 15)), 
                         c(2, rep(0, 15)), 
                         c(2, rep(0, 15)))
ci_inc_plot_nobirth$plot

# get N's for figure caption
inc_n = d %>%
  filter(disease == "Stunting" & 
           (measure == "Cumulative incidence" | measure== "Incidence_proportion") & 
           age_range == "3 months" &
           cohort == "pooled" &
           severe == "no") %>% 
  group_by(region) %>% 
  summarise(min_study = min(nstudies, na.rm=TRUE), 
            max_study = max(nstudies, na.rm=TRUE),
            min_n = min(nmeas, na.rm=TRUE), 
            max_n = max(nmeas, na.rm=TRUE))

# define standardized plot names
ci_inc_plot_nobirth_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "incidence",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "sensitivity analysis excluding birth"
)

# save plot and underlying data
ggsave(ci_inc_plot_nobirth$plot, file=paste0(fig_dir, "stunting/fig-",ci_inc_plot_nobirth_name,".png"), width=14, height=4)

saveRDS(ci_inc_plot_nobirth$data, file=paste0(figdata_dir, "figdata-",ci_inc_plot_nobirth_name,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion - severe
#-------------------------------------------------------------------------------------------

ci_inc_plot_sev <- ki_combo_plot(d,
                             Disease="Stunting",
                             Measure=c("Cumulative incidence", "Incidence_proportion"), 
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
  analysis = "primary"
)

# save plot and underlying data
ggsave(ci_inc_plot_sev$plot, file=paste0(fig_dir, "stunting/fig-",ci_inc_plot_sev_name,".png"), width=14, height=4)

saveRDS(ci_inc_plot_sev$data, file=paste0(figdata_dir, "figdata-",ci_inc_plot_sev_name,".RDS"))






