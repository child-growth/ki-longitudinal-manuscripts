##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# plots of mean LAZ, stunting incidence

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
d <- readRDS(paste0(res_dir,"/desc_data_cleaned.rds"))
d <- d %>% filter(!is.na(agecat))
d <- droplevels(d)
d <- d %>% filter(cohort!="iLiNS-Zinc-BURKINA FASO")


d$nmeas.f <- clean_nmeans(d$nmeas)

# scale cohort-specific estimates
scale_estimates <- function(d) {
  d = d %>% mutate(
    est = ifelse(disease=="Stunting"  & cohort!="pooled",
                 est*100, est),
    lb = ifelse(disease=="Stunting"  & cohort!="pooled",
                lb*100, lb),
    ub = ifelse(disease=="Stunting"  & cohort!="pooled",
                ub*100, ub)
  )
  return(d)
}

# subset to primary analysis
d_primary <- d %>% filter(analysis == "Primary") %>% filter(cohort!="PROBIT-BELARUS")
d_primary = scale_estimates(d_primary)

# subset to primary analysis, monthly measurements from 0 to 24 months
d_monthly <- d %>% filter(analysis == "Cohorts monthly 0-24 m") %>% filter(cohort!="PROBIT-BELARUS")
d_monthly <- scale_estimates(d_monthly)

# subset to fixed effects analysis
d_fe <- d %>% filter(analysis == "Fixed effects") %>% filter(cohort!="PROBIT-BELARUS")
d_fe <- scale_estimates(d_fe)

#-------------------------------------------------------------------------------------------
# Stunting incidence proportion (primary)
#-------------------------------------------------------------------------------------------

ip_plot_primary <- plot_ip(d_primary, birth="strat", sev="no", returnData=T)
ip_plot_primary$plot

# get N's for figure caption
inc_n_primary = d_primary %>%
  filter(disease == "Stunting" &
           measure== "Incidence proportion" &
           age_range == "3 months" &
           birth == "strat" &
           cohort == "pooled" &
           severe == "no") %>%
  group_by(region) %>%
  summarise(min_study = min(nstudies, na.rm=TRUE),
            max_study = max(nstudies, na.rm=TRUE),
            min_n = min(nmeas, na.rm=TRUE),
            max_n = max(nmeas, na.rm=TRUE))

# define transformations globally if name_inc_plots is not working
ip_plot_name_primary = name_inc_plots(cut=2, pop=pop_list$o, loc="", ana=analysis_list$p)

# save plot and underlying data
ggsave(ip_plot_primary$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_primary,".png"), width=16, height=4)
saveRDS(ip_plot_primary$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_primary,".RDS"))



#-------------------------------------------------------------------------------------------
# Stunting incidence proportion (monthly from 0-24 months)
#-------------------------------------------------------------------------------------------
ip_plot_monthly <- plot_ip(d_monthly, 
                           meas="Incidence proportion - monthly cohorts", 
                           birth="yes", 
                           sev="no")
ip_plot_monthly


# define standardized plot names
ip_plot_name_monthly <- name_inc_plots(cut=2, pop=pop_list$o, loc="", ana=analysis_list$m)

# save plot and underlying data
ggsave(ip_plot_monthly, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_monthly,".png"), width=14, height=3)

saveRDS(d_monthly, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_monthly,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion (fixed effects)
#-------------------------------------------------------------------------------------------
ip_plot_fe <- plot_ip(d_fe, birth="strat", sev="no", returnData=T)
ip_plot_fe$plot


# get N's for figure caption
inc_n_fe = d_fe %>%
  filter(disease == "Stunting" & 
           measure== "Incidence proportion" & 
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
ip_plot_name_fe = name_inc_plots(cut=2, pop=pop_list$o, loc="", ana=analysis_list$f)

# save plot and underlying data
ggsave(ip_plot_fe$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_fe,".png"), width=16, height=4)

saveRDS(ip_plot_fe$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_fe,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion (primary)
#-------------------------------------------------------------------------------------------

# different from line 54 due to birth label
inc_plot <- ip_plot(d_primary,
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
ggsave(inc_plot, file=paste0(fig_dir, "stunting/fig-",inc_plot_name,".png"), width=14, height=3)


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - severe (primary)
#-------------------------------------------------------------------------------------------
ip_plot_sev_primary <- plot_ip(d_primary, birth="yes", sev="yes", returnData=T)
ip_plot_sev_primary$plot


# define standardized plot names
ip_plot_sev_name_primary = name_inc_plots(cut=3, pop=pop_list$o, loc="", ana=analysis_list$p)

# save plot and underlying data
ggsave(ip_plot_sev_primary$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_sev_name_primary,".png"), width=14, height=4)
saveRDS(ip_plot_sev_primary$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_sev_name_primary,".RDS"))

#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - severe (monthly)
#-------------------------------------------------------------------------------------------
ip_plot_sev_monthly <- plot_ip(d_monthly, 
                               meas="Incidence proportion - monthly cohorts",
                               birth="yes", 
                               sev="yes") 
ip_plot_sev_monthly


# define standardized plot names
ip_plot_sev_name_monthly <- name_inc_plots(cut=3, pop=pop_list$o, loc="", ana=analysis_list$m)

# save plot and underlying data
ggsave(ip_plot_sev_monthly, file=paste0(fig_dir, "stunting/fig-",ip_plot_sev_name_monthly,".png"), width=14, height=3)
saveRDS(d_monthly, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_sev_name_monthly,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - severe (fixed effects)
#-------------------------------------------------------------------------------------------

ip_plot_sev_fe <- plot_ip(d_fe, birth="yes", sev="yes", returnData=T)
ip_plot_sev_fe$plot


# define standardized plot names
ip_plot_sev_name_fe = name_inc_plots(cut=3, pop=pop_list$o, loc="", ana=analysis_list$f)

# save plot and underlying data
ggsave(ip_plot_sev_fe$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_sev_name_fe,".png"), width=14, height=4)
saveRDS(ip_plot_sev_fe$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_sev_name_fe,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence - 3 months - stratified by cohort (primary)
#-------------------------------------------------------------------------------------------

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

saveRDS(ip_plot_africa$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_africa_name,".RDS"))
saveRDS(ip_plot_lam$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_latam_name,".RDS"))
saveRDS(ip_plot_sasia$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_sasia_name,".RDS"))
