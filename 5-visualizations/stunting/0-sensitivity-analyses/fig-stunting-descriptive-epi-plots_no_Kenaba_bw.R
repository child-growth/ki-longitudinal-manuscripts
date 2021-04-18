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

# subset to no Kenaba analysis
d <- d %>% filter(analysis == "No Kenaba")

# scale cohort-specific estimates
d = d %>% mutate(
  est = ifelse(disease=="Stunting"  & cohort!="pooled",
               est*100, est),
  lb = ifelse(disease=="Stunting"  & cohort!="pooled",
              lb*100, lb),
  ub = ifelse(disease=="Stunting"  & cohort!="pooled",
              ub*100, ub)
)


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
  outcome = "LAZ",
  cutoff = 2,
  measure = "mean",
  population = "overall and region-stratified",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(mean_laz_plot, file=paste0(fig_dir, "stunting/no-Kenaba-birth/fig-",mean_laz_plot_name,"_no_Kenaba_bw.png"), width=10, height=4)
saveRDS(df, file=paste0(figdata_dir_stunting, "figdata-",mean_laz_plot_name,"_no_Kenaba_bw.RDS"))


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
ggsave(mean_laz_plot_gates, file=paste0(fig_dir, "stunting/no-Kenaba-birth/fig-",mean_laz_plot_name,"-gates_no_Kenaba_bw.png"), width=5, height=4)



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
ggsave(prev_plot$plot, file=paste0(fig_dir, "stunting/no-Kenaba-birth/fig-",prev_plot_name, "_no_Kenaba_bw.png"), width=14, height=4)

saveRDS(prev_plot$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_name,"_no_Kenaba_bw.RDS"))


#-------------------------------------------------------------------------------------------
# Stunting prevalence - 3 months - stratified by cohort
#-------------------------------------------------------------------------------------------
prev_plot_africa <- ki_desc_plot(d,
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
                                 strip.text.size=14,
                                 returnData=T,
                                 Region="Africa")
prev_plot_africa$plot


# define standardized plot names
prev_plot_africa_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "prevalence",
  population = "cohort-stratified",
  location = "Africa",
  age = "All ages",
  analysis = "primary"
)


# save plot and underlying data
ggsave(prev_plot_africa$plot, file=paste0(fig_dir, "stunting/no-Kenaba-birth/fig-",prev_plot_africa_name, "_no_Kenaba_bw.png"), width=10, height=5)

saveRDS(prev_plot_africa$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_africa_name,"_no_Kenaba_bw.RDS"))




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
ggsave(prev_plot_sev$plot, file=paste0(fig_dir, "stunting/no-Kenaba-birth/fig-",prev_plot_sev_name, "_no_Kenaba_bw.png"), width=14, height=4)

saveRDS(prev_plot_sev$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_sev_name,"_no_Kenaba_bw.RDS"))



#-------------------------------------------------------------------------------------------
# Stunting prevalence - severe - cohort specific
#-------------------------------------------------------------------------------------------
prev_plot_sev_africa <- ki_desc_plot(d,
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
                                     strip.text.size=14,
                                     returnData=T,
                                     Region="Africa")
prev_plot_sev_africa$plot


# define standardized plot names
prev_plot_sev_africa_name = create_name(
  outcome = "stunting",
  cutoff = 3,
  measure = "prevalence",
  population = "cohort-stratified",
  location = "Africa",
  age = "All ages",
  analysis = "primary"
)


# save plot and underlying data
ggsave(prev_plot_sev_africa$plot, file=paste0(fig_dir, "stunting/no-Kenaba-birth/fig-",prev_plot_sev_africa_name, "_no_Kenaba_bw.png"), width=10, height=5)

saveRDS(prev_plot_sev_africa$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_sev_africa_name,"_no_Kenaba_bw.RDS"))

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
  analysis = "primary"
)

# save plot and underlying data
ggsave(ci_inc_plot$plot, file=paste0(fig_dir, "stunting/no-Kenaba-birth/fig-",ci_inc_plot_name,"_no_Kenaba_bw.png"), width=16, height=4)

saveRDS(ci_inc_plot$data, file=paste0(figdata_dir_stunting, "figdata-",ci_inc_plot_name,"_no_Kenaba_bw.RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion
#-------------------------------------------------------------------------------------------
inc_plot <- ip_plot(
  d,
  Disease = "Stunting",
  Measure = "Incidence proportion",
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
ggsave(inc_plot, file=paste0(fig_dir, "stunting/no-Kenaba-birth/fig-",inc_plot_name,"_no_Kenaba_bw.png"), width=14, height=3)


#-------------------------------------------------------------------------------------------
# Stunting cumulative incidence + incidence proportion 
# excluding birth
#-------------------------------------------------------------------------------------------
ci_inc_plot_nobirth <- ki_combo_plot(d,
                                     Disease="Stunting",
                                     Measure=c("Cumulative incidence", "Incidence proportion"), 
                                     Birth="strat", 
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
           (measure == "Cumulative incidence" | measure== "Incidence proportion") & 
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
ggsave(ci_inc_plot_nobirth$plot, file=paste0(fig_dir, "stunting/no-Kenaba-birth/fig-",ci_inc_plot_nobirth_name,"_no_Kenaba_bw.png"), width=14, height=4)

saveRDS(ci_inc_plot_nobirth$data, file=paste0(figdata_dir_stunting, "figdata-",ci_inc_plot_nobirth_name,"_no_Kenaba_bw.RDS"))


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
  analysis = "primary"
)

# save plot and underlying data
ggsave(ci_inc_plot_sev$plot, file=paste0(fig_dir, "stunting/no-Kenaba-birth/fig-",ci_inc_plot_sev_name,"_no_Kenaba_bw.png"), width=14, height=4)

saveRDS(ci_inc_plot_sev$data, file=paste0(figdata_dir_stunting, "figdata-",ci_inc_plot_sev_name,"_no_Kenaba_bw.RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence - 3 months - stratified by cohort
#-------------------------------------------------------------------------------------------

ip_plot_africa <- ip_plot(
  d,
  Disease = "Stunting",
  Measure = "Incidence proportion",
  Birth = "strat",
  Severe = "no",
  Age_range = "3 months",
  Cohort = "pooled",
  xlabel = "Child age, months",
  ylabel = 'Incidence proportion (95% CI)',
  h1 = 69,
  h2 = 72,
  returnData = T,
  Region = "Africa"
)
ip_plot_africa$plot


# define standardized plot names
ip_plot_africa_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "incidence",
  population = "cohort-stratified",
  location = "Africa",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(ip_plot_africa$plot, file=paste0(fig_dir, "stunting/no-Kenaba-birth/fig-",ip_plot_africa_name, "_no_Kenaba_bw.png"), width=10, height=5)

saveRDS(ip_plot_africa$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_africa_name,"_no_Kenaba_bw.RDS"))
