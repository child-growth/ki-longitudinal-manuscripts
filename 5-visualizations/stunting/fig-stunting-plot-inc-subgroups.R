#-----------------------------------
# stunting incidence by age plots with 
# subgroup analyses requested
# in manuscript revision 2
#-----------------------------------

#-----------------------------------
# preamble
#-----------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/5-visualizations/stunting/fig-stunting-plot-desc-epi-functions.R"))

# Load data --------------------------------
decade_data <- readRDS(paste0(res_dir,"stunting/stunt_decade_pool.RDS")) %>% 
  mutate(country_cat = factor(country_cat, levels = c(
    "Overall", "90s", "2000s", "2010s"
  ))) 

gdp_data <- readRDS(paste0(res_dir,"stunting/stunt_gdp_pool.RDS")) %>% 
  mutate(country_cat = factor(country_cat, levels = c(
    "Overall", "Low income", "Middle income"
  )))

gdi_data <- readRDS(paste0(res_dir, "stunting/stunt_gdi_pool.RDS")) %>% 
  mutate(country_cat = factor(country_cat, levels = c(
    "Overall", "Very-low", "Low", "Medium"
  )))
  
gii_data <- readRDS(paste0(res_dir, "stunting/stunt_gii_pool.RDS")) %>% 
  mutate(country_cat = factor(country_cat, levels = c(
    "Overall", "Low", "Medium", "High"
  )))

chi_data <- readRDS(paste0(res_dir, "stunting/stunt_chi_pool.RDS")) %>% 
  mutate(country_cat = factor(country_cat, levels = c(
    "Overall", "Low", "Medium", "High"
  )))

gini_data <- readRDS(paste0(res_dir, "stunting/stunt_gini_pool.RDS")) %>% 
  mutate(country_cat = factor(country_cat, levels = c(
    "Overall", "Low", "Medium", "High"
  )))

he_data <- readRDS(paste0(res_dir, "stunting/stunt_he_pool.RDS")) %>% 
  mutate(country_cat = factor(country_cat, levels = c(
    "Overall", "Low", "Medium", "High"
  )))

pov_data <- readRDS(paste0(res_dir, "stunting/stunt_pov_pool.RDS")) %>% 
  mutate(country_cat = factor(country_cat, levels = c(
    "Overall", "Low", "Medium", "High"
  )))


# Pre-process data --------------------------------
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

# pre-process data
preprocess <- function(d){
  d <- d %>% filter(!is.na(agecat))
  d <- droplevels(d)
  d <- d %>% filter(cohort!="iLiNS-Zinc-BURKINA FASO")
  d$nmeas.f <- clean_nmeans(d$nmeas)
  
  # subset to primary analysis
  d_primary <- d %>% filter(cohort!="PROBIT-BELARUS")
  d_primary = scale_estimates(d_primary)
  return(d_primary)
}

decade = preprocess(decade_data)
gdp = preprocess(gdp_data)
gdi = preprocess(gdi_data)
gii = preprocess(gii_data)
chi = preprocess(chi_data)
gini = preprocess(gini_data)
he = preprocess(he_data)
pov = preprocess(pov_data)

#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by decade
#-------------------------------------------------------------------------------------------

ip_plot_primary_decade <- plot_ip_subgroup(d = decade, birth="strat", sev="no", 
                                  subgroup="country_cat", returnData=T,
                                  title = "Incidence pooled by decade")

ip_plot_primary_decade$plot

# get N's for figure caption
inc_n_decade = get_N_subgroup(d = decade, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_decade = "stunt-2-inc-overall_decade--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_decade$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_decade,".png"), width=16, height=4)
saveRDS(ip_plot_primary_decade$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_decade,".RDS"))

#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by GDP 
#-------------------------------------------------------------------------------------------

ip_plot_primary_gdp <- plot_ip_subgroup(d = gdp, birth="strat", sev="no", 
                                           subgroup="country_cat", returnData=T,
                                        title = "Incidence pooled by GDP")

ip_plot_primary_gdp$plot

# get N's for figure caption
inc_n_gdp = get_N_subgroup(d = gdp, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gdp = "stunt-2-inc-overall_gdp--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gdp$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_gdp,".png"), width=16, height=4)
saveRDS(ip_plot_primary_gdp$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_gdp,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by Gender Development Index 
#-------------------------------------------------------------------------------------------

ip_plot_primary_gdi <- plot_ip_subgroup(d = gdi, birth="strat", sev="no", 
                                        subgroup="country_cat", returnData=T,
                                        title = "Incidence pooled by Gender Development Index")

ip_plot_primary_gdi$plot

# get N's for figure caption
inc_n_gdi = get_N_subgroup(d = gdi, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gdi = "stunt-2-inc-overall_gdi--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gdi$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_gdi,".png"), width=16, height=4)
saveRDS(ip_plot_primary_gdi$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_gdi,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by Gender Inequality Index 
#-------------------------------------------------------------------------------------------
ip_plot_primary_gii <- plot_ip_subgroup(d = gii, birth="strat", sev="no", 
                                        subgroup="country_cat", returnData=T,
                                        title = "Incidence pooled by Gender Inequality Index")

ip_plot_primary_gii$plot

# get N's for figure caption
inc_n_gii = get_N_subgroup(d = gii, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gii = "stunt-2-inc-overall_gii--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gii$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_gii,".png"), width=16, height=4)
saveRDS(ip_plot_primary_gii$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_gii,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by Coefficient of Human Inequality
#-------------------------------------------------------------------------------------------
ip_plot_primary_chi <- plot_ip_subgroup(d = chi, birth="strat", sev="no", 
                                        subgroup="country_cat", returnData=T,
                                        title = "Incidence pooled by Coefficient of Human Inequality")

ip_plot_primary_chi$plot

# get N's for figure caption
inc_n_chi = get_N_subgroup(d = chi, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_chi = "stunt-2-inc-overall_chi--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_chi$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_chi,".png"), width=16, height=4)
saveRDS(ip_plot_primary_chi$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_chi,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by Gini coefficient
#-------------------------------------------------------------------------------------------
ip_plot_primary_gini <- plot_ip_subgroup(d = gini, birth="strat", sev="no", 
                                         subgroup="country_cat", returnData=T,
                                         title = "Incidence pooled by Gini Coefficient")

ip_plot_primary_gini$plot

# get N's for figure caption
inc_n_gini = get_N_subgroup(d = gini, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gini = "stunt-2-inc-overall_gini--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gini$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_gini,".png"), width=16, height=4)
saveRDS(ip_plot_primary_gini$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_gini,".RDS"))

#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by health expenditure
#-------------------------------------------------------------------------------------------
ip_plot_primary_he <- plot_ip_subgroup(d = he, birth="strat", sev="no", 
                                       subgroup="country_cat", returnData=T,
                                       title = "Incidence pooled by Health Expenditure\nas a % of GDP")

ip_plot_primary_he$plot

# get N's for figure caption
inc_n_he = get_N_subgroup(d = he, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_he = "stunt-2-inc-overall_he--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_he$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_he,".png"), width=16, height=4)
saveRDS(ip_plot_primary_he$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_he,".RDS"))

#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - percent living below poverty line
#-------------------------------------------------------------------------------------------
ip_plot_primary_pov <- plot_ip_subgroup(d = pov, birth="strat", sev="no", 
                                        subgroup="country_cat", returnData=T,
                                        title = "Incidence pooled by % of country living\nbelow povertyline")

ip_plot_primary_pov$plot

# get N's for figure caption
inc_n_pov = get_N_subgroup(d = pov, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_pov = "stunt-2-inc-overall_pov--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_pov$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_pov,".png"), width=16, povight=4)
saveRDS(ip_plot_primary_pov$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_pov,".RDS"))

