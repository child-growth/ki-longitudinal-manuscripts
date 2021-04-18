##########################################
# ki longitudinal manuscripts
# stunting analysis

# plots of mean LAZ

# includes primary analysis, fixed effects analysis, and
# sensitivity analysis that subsets cohorts to those with
# monthly measurements each month from 0 to 24 months

# inputs: desc_data_cleaned.RDS

##########################################


#-----------------------------------
# preamble
#-----------------------------------
rm(list=ls()) 
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/5-visualizations/stunting/fig-stunting-plot-desc-epi-functions.R"))

#Load data
d <- readRDS(paste0(here::here(),"/results/desc_data_cleaned.rds"))

d$nmeas.f <- clean_nmeans(d$nmeas)

# subset to primary analysis
d_primary <- d %>% filter(analysis == "Primary", disease=="Stunting", measure == "Mean LAZ", age_range=="3 months")

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

df_primary <- filter_df(d_primary, "Mean LAZ", agerange="3 months")

df_monthly <- filter_df(d_monthly, "Mean LAZ - monthly cohorts")

df_monthly %>% group_by(region) %>% summarize(min(nstudies), max(nstudies), min(nmeas), max(nmeas))

#-------------------------------------------------------------------------------------------
# Mean LAZ by month (primary & monthly from 0-24 months)
#-------------------------------------------------------------------------------------------

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
ggsave(mean_laz_plot_primary, file=paste0(fig_dir, "stunting/fig-",mean_laz_plot_name_primary,".png"), width=10, height=4) 
ggsave(mean_laz_plot_monthly, file=paste0(fig_dir, "stunting/fig-",mean_laz_plot_name_monthly,".png"), width=10, height=4)

saveRDS(df_primary, file=paste0(figdata_dir_stunting, "figdata-",mean_laz_plot_name_primary,".RDS"))
saveRDS(df_monthly, file=paste0(figdata_dir_stunting, "figdata-",mean_laz_plot_name_monthly,".RDS"))

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

