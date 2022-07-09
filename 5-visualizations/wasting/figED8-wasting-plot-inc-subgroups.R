#-----------------------------------
# wasting incidence by age plots with 
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
#dinput <- readRDS(paste0(res_dir,"/desc_data_cleaned.rds")) 

# data_cohort <- dinput %>% filter(disease=="Wasting" & 
#                                    cohort!="pooled-country" & 
#                                    cohort!="pooled" &
#                                    severe=="no" & 
#                                    measure=="Incidence proportion" & 
#                                    analysis=="Primary" & 
#                                    age_range=="3 months" & 
#                                    birth=="yes") %>% 
#   dplyr::select(-studyid)

data_cohort <- readRDS(paste0(BV_dir,"/results/wasting_desc_data_cohort_ip_country_stats.RDS")) 
data_cohort$country.cat[is.na(data_cohort$country.cat)] <- "Overall"

# country_data <- readRDS("/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-country-metric-categories.rds") %>% 
#   ungroup()  %>% 
#   mutate(cohort = paste0(studyid, "-", country)) %>% 
#   dplyr::select(c(cohort, decade, gii_cat, chi_cat, gdp_cat, gdi_cat, 
#                   gini_cat, he_cat, pov_cat, mort_cat)) %>% 
#   distinct()  %>% 
#   mutate(gdi_cat = case_when(
#     gdi_cat == "Overall" ~ "Overall",
#     gdi_cat == "Very low" ~ "69-84%",
#     gdi_cat == "Low" ~ "84-90%",
#     gdi_cat == "High/Medium" ~ "90-100%"
#   ))  %>% 
#   mutate(gdi_cat = factor(gdi_cat, levels = c(
#     "Overall", "69-84%", "84-90%", "90-100%"
#   )))  %>% 
#   mutate(gii_cat = case_when(
#     gii_cat == "Overall" ~ "Overall",
#     gii_cat == "Low" ~ "0.43-0.59",
#     gii_cat == "Medium" ~ "0.59-0.61",
#     gii_cat == "High" ~ "0.61-0.76"
#   ))  %>% 
#   mutate(gii_cat = factor(gii_cat, levels = c(
#     "Overall", "0.43-0.59", "0.59-0.61", "0.61-0.76"
#   ))) %>% 
#   mutate(he_cat = case_when(
#     he_cat == "Overall" ~ "Overall",
#     he_cat == "Low" ~ "1-3%",
#     he_cat == "Medium" ~ "3-5%",
#     he_cat == "High" ~ "5-42%"
#   )) %>% 
#   mutate(he_cat = factor(he_cat, levels = c(
#     "Overall", "1-3%", "3-5%", "5-42%"
#   )))%>% 
#   mutate(pov_cat = case_when(
#     pov_cat == "Overall" ~ "Overall",
#     pov_cat == "Low" ~ "0-18%",
#     pov_cat == "Medium" ~ "18-28%",
#     pov_cat == "High" ~ "28-100%"
#   )) %>% 
#   mutate(pov_cat = factor(pov_cat, levels = c(
#     "Overall", "0-18%", "18-28%", "28-100%"
#   )))
# 
# d_cohort <- left_join(data_cohort, country_data, 
#                       by = c("cohort")) %>% 
#   droplevels() %>% 
#   mutate(est=est*100) 

d_cohort <- data_cohort %>% rename(est=yi,
                                   lb=ci.lb,
                                   ub=ci.ub) %>%
  mutate(est=est*100, lb=lb*100, ub=ub*100)

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

d_country_pool <- readRDS(file = paste0(BV_dir,"/results/wasting_desc_data_country.RDS"))
table(d_country_pool$country.cat)

decade_data <- d_country_pool %>% filter(country.cat=="decade"|cat.level=="Overall") %>%
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "90s", "2000s", "2010s"
  ))) 

gdp_data <- d_country_pool %>% filter(country.cat=="gdp"|cat.level=="Overall") %>%
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "Low income", "Middle income"
  )))

gdi_data <- d_country_pool %>% filter(country.cat=="gdi"|cat.level=="Overall") %>%
  mutate(cat.level = case_when(
    cat.level == "Overall" ~ "Overall",
    cat.level == "Very low" ~ "69-84%",
    cat.level == "Low" ~ "84-90%",
    cat.level == "High/Medium" ~ "90-100%"
  ))  %>% 
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "69-84%", "84-90%", "90-100%"
  ))) 

gii_data <- d_country_pool %>% filter(country.cat=="gii"|cat.level=="Overall") %>%
  mutate(cat.level = case_when(
    cat.level == "Overall" ~ "Overall",
    cat.level == "Low" ~ "0.43-0.59",
    cat.level == "Medium" ~ "0.59-0.61",
    cat.level == "High" ~ "0.61-0.76"
  ))  %>% 
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "0.43-0.59", "0.59-0.61", "0.61-0.76"
  )))


chi_data <- d_country_pool %>% filter(country.cat=="chi"|cat.level=="Overall") %>%
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "Low", "Medium", "High"
  )))

gini_data <- d_country_pool %>% filter(country.cat=="gini"|cat.level=="Overall") %>%
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "Low", "Medium", "High"
  )))

he_data <- d_country_pool %>% filter(country.cat=="he"|cat.level=="Overall") %>%
  mutate(cat.level = case_when(
    cat.level == "Overall" ~ "Overall",
    cat.level == "Low" ~ "1-3%",
    cat.level == "Medium" ~ "3-5%",
    cat.level == "High" ~ "5-42%"
  )) %>% 
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "1-3%", "3-5%", "5-42%"
  )))

pov_data <- d_country_pool %>% filter(country.cat=="pov"|cat.level=="Overall") %>%
  mutate(cat.level = case_when(
    cat.level == "Overall" ~ "Overall",
    cat.level == "Low" ~ "0-18%",
    cat.level == "Medium" ~ "18-28%",
    cat.level == "High" ~ "28-100%"
  )) %>% 
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "0-18%", "18-28%", "28-100%"
  )))

birthlaz_data <- d_country_pool %>% filter(country.cat=="birth_wlz_cat"|cat.level=="Overall") %>%
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "[-6,-2]", "(-2,-1]", 
    "(-1,0]", "0,6"
  )))

mort_data <- d_country_pool  %>% filter(country.cat=="mort_cat"|cat.level=="Overall") %>%
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "<50 per 100,000", "50-95 per 100,000",
    ">95 per 100,000"
  )))

# Pre-process data --------------------------------
# scale cohort-specific estimates 
scale_estimates <- function(d) {
  d = d %>% mutate(
    est = ifelse(disease=="Wasting"  & cohort!="pooled",
                 est*100, est),
    lb = ifelse(disease=="Wasting"  & cohort!="pooled",
                lb*100, lb),
    ub = ifelse(disease=="Wasting"  & cohort!="pooled",
                ub*100, ub)
  )
  return(d)
}

# pre-process data
preprocess <- function(d){
  d <- d %>% filter(!is.na(agecat))
  d <- droplevels(d)
  d$nmeas.f <- clean_nmeans(d$nmeas)
  
  # subset to primary analysis
  d_primary = scale_estimates(d)
  d_primary$country.cat[is.na(d_primary$country.cat)] <- "Overall"
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
# debug
#-------------------------------------------------------------------------------------------

d = decade
#d_cohort = d_cohort %>% rename(cat.level=decade)
birth="strat"
sev="no"
subgroup="cat.level"
returnData=T
title = "Incidence pooled by decade"
Disease="Wasting"
Measure="Incidence_proportion"
Birth="strat"
Severe="no"
Age_range="3 months"
xlabel="Child age, months"
h1=90
h2=90
subgroup_name="decade"
subgroup_colors= c("#01C18C","#018D66","#025941")

         ylabel="Incidence proportion (95% CI)"
         yrange=NULL
         dodge=0
         reverse_colors = F
         
# ki_ip_flurry_subgroup_plot <- function(d, d_cohort, subgroup_name, Disease, Measure, Birth, Severe, Age_range, subgroup,title,
#                   # subgroup_colors = c("#0998F5", "#F6A106", "#FB4C05"), 
#                   subgroup_colors,
#                   xlabel="Age category",
#                   ylabel="Incidence proportion (95% CI)",
#                   h1=0,
#                   h2=3,
#                   yrange=NULL,
#                   dodge=0,
#                   reverse_colors = F,
#                   returnData=F){

  groupvar <- sym(subgroup)


  df <- d %>% filter(
    disease == Disease &
      measure %in% Measure &
      birth == Birth &
      severe == Severe &
      age_range == Age_range &
      !is.na(agecat)
  ) %>% filter(!is.na(!!sym(groupvar))) 
  dim(df)
  df <- droplevels(df)
  
  # remove N= from labels
  df <- df %>% mutate(nmeas.f = gsub('N=', '', nmeas.f)) %>%
    mutate(nstudy.f = gsub('N=', '', nstudy.f))
  
  # remove text from labels
  df <- df %>% mutate(nmeas.f = gsub(' children', '', nmeas.f)) %>%
    mutate(nstudy.f = gsub(' studies', '', nstudy.f))
  
  # Remove 'months' from x axis labels  
  df <- df %>% arrange(agecat)
  df$agecat <- as.character(df$agecat)
  df$agecat <- gsub(" months", "", df$agecat)
  df$agecat <- factor(df$agecat, levels=unique(df$agecat))
  
  df <- df %>% mutate(ispooled = as.factor(ifelse(cohort=="pooled", "yes", "no")))
  
  # fix factor levels if birth strat
  if (Birth == "strat") {
    df <- df %>%
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
  }
  
  # remove N= labels for incidence proportion
  df <- df %>% mutate(nmeas.f = ifelse(measure == 'Incidence proportion', '', nmeas.f)) %>%
    mutate(nstudy.f = ifelse(measure == 'Incidence proportion', '', nstudy.f))
  
  
  if (min(df$lb) < 0) {
    print("Warning: some lower bounds < 0")
  }
  
  # format cohort data
  # d_cohort_plot <- d_cohort %>%
  #   rename(country_cat = !!sym(subgroup_name)) %>%
  #   filter(!is.na(country_cat)) %>% 
  #   select(cohort,est,lb,ub,agecat,country_cat) %>%
  #   distinct()
  d_cohort_plot <- d_cohort %>%
    filter(cat.level=="Overall"|cat.level==subgroup_name) %>%
    select(cohort,est,lb,ub,agecat,cat.level) %>%
    distinct()
  
  #fix the subsetting!!!
  
  # sub_palette <- c("black","#0998F5", "#F6A106", "#FB4C05")
  sub_palette <- c("black", subgroup_colors)
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    
    # cohort-stratified 
    
    geom_point(color = "#878787", fill = "#878787", size = 1.5, 
               data = d_cohort_plot,
               aes(x = agecat, y= est),
               position = position_jitter(width = 0.15), alpha = 0.2) +
    
    # pooled 
    geom_point(aes(shape=measure, size=measure, fill=!!sym(groupvar), color=!!sym(groupvar)), 
               size = 2, stroke = 0,
               data = df %>% filter(ispooled == "yes"),
               position = position_dodge(dodge)) +
    
    geom_errorbar(aes(color=!!sym(groupvar), group=interaction(measure, !!sym(groupvar)),
                      ymin=lb, ymax=ub), width = 0,
                  data = df %>% filter(ispooled == "yes"),
                  position = position_dodge(dodge)) +
    
    geom_text(data=df[df$measure =='Incidence proportion',] %>% 
                filter(ispooled == "yes"), 
              aes(x = agecat, y = est, label = round(est)),
              hjust = 1.5, 
              position = position_dodge(width = dodge),
              vjust = 0.5) + 
    
    geom_text(data=df[df$measure =='Incidence proportion - monthly cohorts',] %>%
                filter(ispooled == "yes"), 
              aes(x = agecat, y = est, label = round(est)),
              hjust = 1.5, 
              position = position_dodge(width = dodge),
              vjust = 0.5) + 
    
    scale_size_manual(values = c(2, 1.5), guide = FALSE) +
    scale_shape_manual(values = c(16, 17),
                       name = 'Measure')+
    scale_fill_manual(values=sub_palette, guide = FALSE) +
    
    xlab(xlabel)+
    ylab(ylabel) +
    
    # add space to the left and right of points on x axis
    # to accommodate point estimate labels
    scale_x_discrete(expand = expand_scale(add = 1)) +
    
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
    # theme(strip.text = element_text(size=18, margin = margin(t = 0))) +
    # 
    # theme(axis.text.x = element_text(margin = 
    #                                    margin(t = 0, r = 0, b = 0, l = 0),
    #                                  size = 9)) +
    # theme(axis.title.x = element_text(margin = 
    #                                     margin(t = 5, r = 0, b = 0, l = 0),
    #                                   size = 14)) +
    # theme(axis.title.y = element_text(size = 14)) +
    
    ggtitle(title) +
    theme(
      axis.text.x = element_text(size = 12, angle = 45, vjust=0.5),
      axis.title.x = element_text(size = 14),
      axis.title.y = element_text(size = 14),
      strip.text.x = element_text(size = 16, margin = margin(t = 0)),
      panel.grid.major.x = element_blank(), 
      panel.grid.minor = element_blank(),
      plot.title = element_text(hjust = 0, margin=margin(0,0,10,0))) +
    
    facet_grid(as.formula(paste0(".~", groupvar))) +
    guides(color = FALSE) 
    
    if(!is.null(yrange)){
      p <- p + coord_cartesian(ylim=yrange)
    }
  
  
  if(!reverse_colors){
    p <- p + scale_color_manual(values=sub_palette, drop=TRUE, limits = levels(df$measure),
                                guide = FALSE) 
  }else{
    p <- p +  scale_color_manual(values=sub_palette, drop=TRUE, limits = levels(df$measure),
                                 guide = FALSE) 
  }
  p
  
  if(returnData){
    return(list(plot=p,data=df))
  }else{
    return(p)
  }
}
  


#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - pooled by decade
#-------------------------------------------------------------------------------------------

ip_plot_primary_decade <- ki_ip_flurry_subgroup_plot(d = decade, 
                                           d_cohort = d_cohort %>% rename(cat.level=decade), 
                                           Disease="Wasting",
                                           Measure="Incidence_proportion",
                                           subgroup_colors= c("#01C18C","#018D66","#025941"),
                                           subgroup_name="decade",
                                           Birth="yes", Severe="no", 
                                           Age_range="3 months", 
                                           xlabel="Child age, months",
                                           h1=90,
                                           h2=90,
                                           subgroup="cat.level", returnData=T,
                                           title = "Incidence pooled by decade")

ip_plot_primary_decade$plot

# get N's for figure caption
inc_n_decade = get_N_subgroup(d = decade, subgroup = "country_cat")

# define transformations globally if name_inc_plots is not working
ip_plot_name_decade = "stunt-2-inc-overall_decade--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_decade$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_decade,".png"), width=10, height=4)
saveRDS(ip_plot_primary_decade$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_decade,".RDS"))

#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - pooled by GDP 
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
ip_plot_name_gdp = "wast-2-inc-overall_gdp--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gdp$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_gdp,".png"), width=10, height=4)
saveRDS(ip_plot_primary_gdp$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_gdp,".RDS"))


#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - pooled by Gender Development Index 
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
ip_plot_name_gdi = "wast-2-inc-overall_gdi--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gdi$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_gdi,".png"), width=10, height=4)
saveRDS(ip_plot_primary_gdi$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_gdi,".RDS"))


#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - pooled by Gender Inequality Index 
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
ip_plot_name_gii = "wast-2-inc-overall_gii--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gii$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_gii,".png"), width=10, height=4)
saveRDS(ip_plot_primary_gii$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_gii,".RDS"))


#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - pooled by Coefficient of Human Inequality
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
ip_plot_name_chi = "wast-2-inc-overall_chi--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_chi$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_chi,".png"), width=10, height=4)
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
ip_plot_name_gini = "wast-2-inc-overall_gini--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gini$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_gini,".png"), width=10, height=4)
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
ip_plot_name_he = "wast-2-inc-overall_he--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_he$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_he,".png"), width=10, height=4)
saveRDS(ip_plot_primary_he$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_he,".RDS"))

#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - percent living below poverty line
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
ip_plot_name_pov = "wast-2-inc-overall_pov--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_pov$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_pov,".png"), width=10, height=4)
saveRDS(ip_plot_primary_pov$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_pov,".RDS"))



#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - pooled by birth LAZ
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
ip_plot_name_decade = "wast-2-inc-overall_decade--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_decade$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_decade,".png"), width=10, height=4)
saveRDS(ip_plot_primary_decade$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_decade,".RDS"))


#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - pooled by country mortality level 
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
ip_plot_name_mort = "wast-2-inc-overall_mort--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_mort$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_mort,".png"), width=10, height=4)
saveRDS(ip_plot_primary_mort$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_mort,".RDS"))



