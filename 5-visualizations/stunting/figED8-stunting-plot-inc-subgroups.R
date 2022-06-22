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

# Load data for cohort-specific points
dinput <- readRDS(paste0(res_dir,"/desc_data_cleaned.rds")) 

data_cohort <- dinput %>% filter(disease=="Stunting" & 
                                cohort!="pooled-country" & 
                                cohort!="pooled" &
                                severe=="no" & 
                                measure=="Incidence proportion" & 
                                analysis=="Primary" & 
                                age_range=="3 months" & 
                                birth=="strat") %>% 
  dplyr::select(-studyid)

country_data <- readRDS("/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-country-metric-categories.rds") %>% 
  ungroup()  %>% 
  mutate(cohort = paste0(studyid, "-", country)) %>% 
  dplyr::select(c(cohort, decade, gii_cat, chi_cat, gdp_cat, gdi_cat, 
                  gini_cat, he_cat, pov_cat, mort_cat)) %>% 
  distinct()  %>% 
  mutate(gdi_cat = case_when(
    gdi_cat == "Overall" ~ "Overall",
    gdi_cat == "Very low" ~ "69-84%",
    gdi_cat == "Low" ~ "84-90%",
    gdi_cat == "High/Medium" ~ "90-100%"
  ))  %>% 
  mutate(gdi_cat = factor(gdi_cat, levels = c(
    "Overall", "69-84%", "84-90%", "90-100%"
  )))  %>% 
  mutate(gii_cat = case_when(
    gii_cat == "Overall" ~ "Overall",
    gii_cat == "Low" ~ "0.43-0.59",
    gii_cat == "Medium" ~ "0.59-0.61",
    gii_cat == "High" ~ "0.61-0.76"
  ))  %>% 
  mutate(gii_cat = factor(gii_cat, levels = c(
    "Overall", "0.43-0.59", "0.59-0.61", "0.61-0.76"
  ))) %>% 
  mutate(he_cat = case_when(
    he_cat == "Overall" ~ "Overall",
    he_cat == "Low" ~ "1-3%",
    he_cat == "Medium" ~ "3-5%",
    he_cat == "High" ~ "5-42%"
  )) %>% 
  mutate(he_cat = factor(he_cat, levels = c(
    "Overall", "1-3%", "3-5%", "5-42%"
  )))%>% 
  mutate(pov_cat = case_when(
    pov_cat == "Overall" ~ "Overall",
    pov_cat == "Low" ~ "0-18%",
    pov_cat == "Medium" ~ "18-28%",
    pov_cat == "High" ~ "28-100%"
  )) %>% 
  mutate(pov_cat = factor(pov_cat, levels = c(
    "Overall", "0-18%", "18-28%", "28-100%"
  )))

d_cohort <- left_join(data_cohort, country_data, 
                        by = c("cohort")) %>% 
  droplevels() %>% 
  mutate(est=est*100) 

# Remove 'months' from x axis labels  
d_cohort <- d_cohort %>% arrange(agecat)
d_cohort$agecat <- as.character(d_cohort$agecat)
d_cohort$agecat <- gsub(" months", "", d_cohort$agecat)
d_cohort$agecat <- factor(d_cohort$agecat, levels=unique(d_cohort$agecat))

# recode age categories
d_cohort <- d_cohort %>% 
  mutate(agecat = as.character(agecat)) %>%
  mutate(agecat = ifelse(agecat=="8 days-3", "0-3", agecat)) %>%
  mutate(agecat = factor(agecat, levels = c(
    "Birth",
    "0-3", 
    "3-6",
    "6-9",
    "9-12",
    "12-15",
    "15-18",
    "18-21",
    "21-24"
  )))

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
  mutate(country_cat = case_when(
    country_cat == "Overall" ~ "Overall",
    country_cat == "Very low" ~ "69-84%",
    country_cat == "Low" ~ "84-90%",
    country_cat == "High/Medium" ~ "90-100%"
  ))  %>% 
  mutate(country_cat = factor(country_cat, levels = c(
    "Overall", "69-84%", "84-90%", "90-100%"
  ))) 
  
gii_data <- readRDS(paste0(res_dir, "stunting/stunt_gii_pool.RDS")) %>% 
  mutate(country_cat = case_when(
    country_cat == "Overall" ~ "Overall",
    country_cat == "Low" ~ "0.43-0.59",
    country_cat == "Medium" ~ "0.59-0.61",
    country_cat == "High" ~ "0.61-0.76"
  ))  %>% 
  mutate(country_cat = factor(country_cat, levels = c(
    "Overall", "0.43-0.59", "0.59-0.61", "0.61-0.76"
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
  mutate(country_cat = case_when(
    country_cat == "Overall" ~ "Overall",
    country_cat == "Low" ~ "1-3%",
    country_cat == "Medium" ~ "3-5%",
    country_cat == "High" ~ "5-42%"
  )) %>% 
  mutate(country_cat = factor(country_cat, levels = c(
    "Overall", "1-3%", "3-5%", "5-42%"
  )))

pov_data <- readRDS(paste0(res_dir, "stunting/stunt_pov_pool.RDS")) %>% 
  mutate(country_cat = case_when(
    country_cat == "Overall" ~ "Overall",
    country_cat == "Low" ~ "0-18%",
    country_cat == "Medium" ~ "18-28%",
    country_cat == "High" ~ "28-100%"
  )) %>% 
  mutate(country_cat = factor(country_cat, levels = c(
    "Overall", "0-18%", "18-28%", "28-100%"
  )))

birthlaz_data <- readRDS(paste0(res_dir,"stunting/stunt_birth_laz_pool.RDS")) %>% 
  mutate(country_cat = factor(country_cat, levels = c(
    "Overall", "[-6,-2]", "(-2,-1]", 
    "(-1,0]", "0,6"
  )))

mort_data <- readRDS(paste0(res_dir,"stunting/stunt_mort_pool.RDS"))  %>% 
  mutate(country_cat = factor(country_cat, levels = c(
    "Overall", "<50 per 100,000", "50-95 per 100,000",
    ">95 per 100,000"
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
birthlaz = preprocess(birthlaz_data)
mort = preprocess(mort_data)

#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by decade
#-------------------------------------------------------------------------------------------

ip_plot_primary_decade <- plot_ip_subgroup(d = decade, 
                                           d_cohort = d_cohort, 
                                           subgroup_name="decade",
                                           birth="strat", sev="no", 
                                  subgroup="country_cat", returnData=T,
                                  title = "Incidence pooled by decade")

ip_plot_primary_decade$plot

# get N's for figure caption
inc_n_decade = get_N_subgroup(d = decade, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_decade = "stunt-2-inc-overall_decade--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_decade$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_decade,".png"), width=10, height=4)
saveRDS(ip_plot_primary_decade$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_decade,".RDS"))

#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by GDP 
#-------------------------------------------------------------------------------------------

ip_plot_primary_gdp <- plot_ip_subgroup(d = gdp, 
                                        d_cohort = d_cohort, 
                                        subgroup_name="gdp_cat",
                                        birth="strat", sev="no", 
                                           subgroup="country_cat", returnData=T,
                                        title = "Incidence pooled by GDP")

ip_plot_primary_gdp$plot

# get N's for figure caption
inc_n_gdp = get_N_subgroup(d = gdp, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gdp = "stunt-2-inc-overall_gdp--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gdp$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_gdp,".png"), width=10, height=4)
saveRDS(ip_plot_primary_gdp$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_gdp,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by Gender Development Index 
#-------------------------------------------------------------------------------------------

ip_plot_primary_gdi <- plot_ip_subgroup(d = gdi, 
                                        d_cohort = d_cohort, 
                                        subgroup_name="gdi_cat",
                                        birth="strat", sev="no", 
                                        subgroup="country_cat", returnData=T,
                                        title = "Incidence pooled by Gender Development Index")

ip_plot_primary_gdi$plot

# get N's for figure caption
inc_n_gdi = get_N_subgroup(d = gdi, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gdi = "stunt-2-inc-overall_gdi--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gdi$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_gdi,".png"), width=10, height=4)
saveRDS(ip_plot_primary_gdi$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_gdi,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by Gender Inequality Index 
#-------------------------------------------------------------------------------------------
ip_plot_primary_gii <- plot_ip_subgroup(d = gii, 
                                        d_cohort = d_cohort, 
                                        subgroup_name="gii_cat",
                                        birth="strat", sev="no", 
                                        subgroup="country_cat", returnData=T,
                                        title = "Incidence pooled by Gender Inequality Index")

ip_plot_primary_gii$plot

# get N's for figure caption
inc_n_gii = get_N_subgroup(d = gii, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gii = "stunt-2-inc-overall_gii--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gii$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_gii,".png"), width=10, height=4)
saveRDS(ip_plot_primary_gii$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_gii,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by Coefficient of Human Inequality
#-------------------------------------------------------------------------------------------
ip_plot_primary_chi <- plot_ip_subgroup(d = chi, 
                                        d_cohort = d_cohort, 
                                        subgroup_name="chi_cat",
                                        birth="strat", sev="no", 
                                        subgroup="country_cat", returnData=T,
                                        title = "Incidence pooled by Coefficient of Human Inequality")

ip_plot_primary_chi$plot

# get N's for figure caption
inc_n_chi = get_N_subgroup(d = chi, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_chi = "stunt-2-inc-overall_chi--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_chi$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_chi,".png"), width=10, height=4)
saveRDS(ip_plot_primary_chi$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_chi,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by Gini coefficient
#-------------------------------------------------------------------------------------------
ip_plot_primary_gini <- plot_ip_subgroup(d = gini, 
                                         d_cohort = d_cohort, 
                                         subgroup_name="gini_cat",
                                         birth="strat", sev="no", 
                                         subgroup="country_cat", returnData=T,
                                         title = "Incidence pooled by Gini Coefficient")

ip_plot_primary_gini$plot

# get N's for figure caption
inc_n_gini = get_N_subgroup(d = gini, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gini = "stunt-2-inc-overall_gini--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gini$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_gini,".png"), width=10, height=4)
saveRDS(ip_plot_primary_gini$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_gini,".RDS"))

#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by health expenditure
#-------------------------------------------------------------------------------------------
ip_plot_primary_he <- plot_ip_subgroup(d = he, 
                                       d_cohort = d_cohort, 
                                       subgroup_name="he_cat",
                                       subgroup_colors = c("#01C18C","#018D66","#025941"),
                                       birth="strat", sev="no", 
                                       subgroup="country_cat", returnData=T,
                                       reverse_color = T,
                                       title = "a) National health expenditures (% of gross domestic product)")

ip_plot_primary_he$plot

# get N's for figure caption
inc_n_he = get_N_subgroup(d = he, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_he = "stunt-2-inc-overall_he--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_he$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_he,".png"), width=10, height=4)
saveRDS(ip_plot_primary_he$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_he,".RDS"))

#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - percent living below poverty line
#-------------------------------------------------------------------------------------------
ip_plot_primary_pov <- plot_ip_subgroup(d = pov, 
                                        d_cohort = d_cohort, 
                                        subgroup_name="pov_cat",
                                        subgroup_colors = c("#0458F9","#0441B6","#03338F"),
                                        birth="strat", sev="no", 
                                        subgroup="country_cat", returnData=T,
                                        title = "b) National percentage of individuals living on less than $1.90 per day")

ip_plot_primary_pov$plot

# get N's for figure caption
inc_n_pov = get_N_subgroup(d = pov, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_pov = "stunt-2-inc-overall_pov--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_pov$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_pov,".png"), width=10, height=4)
saveRDS(ip_plot_primary_pov$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_pov,".RDS"))



#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by birth LAZ
#-------------------------------------------------------------------------------------------
ip_plot_primary_birthlaz <- plot_ip_subgroup(d = birthlaz, 
                                             # d_cohort = d_cohort,  # NOT WORKING!
                                             # subgroup_name="decade",
                                             birth="strat", sev="no", 
                                           subgroup="country_cat", returnData=T,
                                           title = "Incidence pooled by birth LAZ")

ip_plot_primary_birthlaz$plot

# get N's for figure caption
inc_n_decade = get_N_subgroup(d = decade, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_decade = "stunt-2-inc-overall_decade--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_decade$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_decade,".png"), width=10, height=4)
saveRDS(ip_plot_primary_decade$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_decade,".RDS"))


#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - pooled by country mortality level 
#-------------------------------------------------------------------------------------------
ip_plot_primary_mort <- plot_ip_subgroup(d = mort, 
                                             d_cohort = d_cohort,
                                             subgroup_name="mort_cat",
                                         subgroup_colors = c("#F87602","#CA6002","#9D4B02"),
                                         birth="strat", sev="no", 
                                             subgroup="country_cat", returnData=T,
                                             title = "c) National under-5 mortality rate")

ip_plot_primary_mort$plot

# get N's for figure caption
inc_n_mort = get_N_subgroup(d = mort, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_mort = "stunt-2-inc-overall_mort--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_mort$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_mort,".png"), width=10, height=4)
saveRDS(ip_plot_primary_mort$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_mort,".RDS"))



