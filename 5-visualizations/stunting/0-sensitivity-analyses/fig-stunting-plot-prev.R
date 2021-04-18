##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# plots of stunting prevalence

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
d_primary <- d %>% filter(analysis == "Primary", disease=="Stunting", measure == "Prevalence")

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
# Stunting prevalence (monthly from 0 to 24 months)
#-------------------------------------------------------------------------------------------
prev_plot_monthly <- plot_prev(d_monthly, meas="Prevalence - monthly cohorts", sev="no")
prev_plot_monthly

# define standardized plot names
prev_plot_name_monthly = name_prev_plots(cut=2, pop=pop_list$o, loc="", ana=analysis_list$m)

# save plot and underlying data
ggsave(prev_plot_monthly$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_name_monthly, ".png"), width=14, height=3)
saveRDS(d_monthly, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_name_monthly,".RDS"))

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
saveRDS(prev_plot_primary$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_name_primary,".RDS"))

ggsave(prev_plot_primary$plot + ggtitle("Stunting prevalence"), file=paste0(fig_dir, "stunting/fig-",prev_plot_name_primary, "_presentation.png"), width=13, height=3)


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

saveRDS(prev_plot_fe$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_name_fe,".RDS"))


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

saveRDS(prev_plot_africa$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_africa_name,".RDS"))
saveRDS(prev_plot_lam$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_latam_name,".RDS"))
saveRDS(prev_plot_sasia$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_sasia_name,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting prevalence - severe (primary)
#-------------------------------------------------------------------------------------------
prev_plot_sev_primary <- plot_prev(d_primary, sev="yes", returnData=T)
prev_plot_sev_primary$plot


# define standardized plot names
prev_plot_sev_name_primary = name_prev_plots(cut=3, pop=pop_list$o, loc="", ana=analysis_list$p)

# save plot and underlying data
ggsave(prev_plot_sev_primary$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_sev_name_primary, ".png"), width=14, height=4)
saveRDS(prev_plot_sev_primary$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_sev_name_primary,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting prevalence - severe (monthly from 0-24 months)
#-------------------------------------------------------------------------------------------
prev_plot_sev_monthly <- plot_prev(d_monthly, meas="Prevalence - monthly cohorts", sev="yes")
prev_plot_sev_monthly


# define standardized plot names
prev_plot_sev_name_monthly = name_prev_plots(cut=3, pop=pop_list$o, loc="", ana=analysis_list$m)

# save plot and underlying data
ggsave(prev_plot_sev_monthly$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_sev_name_monthly, ".png"), width=14, height=3)
saveRDS(d_monthly, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_sev_name_monthly,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting prevalence - severe (fixed effects)
#-------------------------------------------------------------------------------------------
prev_plot_sev_fe <- plot_prev(d_fe, sev="yes", returnData=T)
prev_plot_sev_fe$plot


# define standardized plot names
prev_plot_sev_name_fe <- name_prev_plots(cut=3, pop=pop_list$o, loc="", ana=analysis_list$f)

# save plot and underlying data
ggsave(prev_plot_sev_fe$plot, file=paste0(fig_dir, "stunting/fig-",prev_plot_sev_name_fe, ".png"), width=14, height=4)
saveRDS(prev_plot_sev_fe$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_sev_name_fe,".RDS"))


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

saveRDS(prev_plot_sev_africa$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_sev_africa_name,".RDS"))
saveRDS(prev_plot_sev_lam$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_sev_latam_name,".RDS"))
saveRDS(prev_plot_sev_sasia$data, file=paste0(figdata_dir_stunting, "figdata-",prev_plot_sev_sasia_name,".RDS"))
