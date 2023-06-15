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
try(data_cohort <- readRDS(paste0(BV_dir,"/results/wasting_desc_data_cohort_ip_country_stats.RDS")))
try(data_cohort <- readRDS("C:/Users/andre/Downloads/wasting_desc_data_cohort_ip_country_stats.RDS"))
data_cohort$country.cat[is.na(data_cohort$country.cat)] <- "Overall"



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

try(d_country_pool <- readRDS(file = paste0(BV_dir,"/results/wasting_desc_data_country.RDS")))
try(d_country_pool <- readRDS("C:/Users/andre/Downloads/wasting_desc_data_country.RDS"))

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

he_data <- d_country_pool %>% filter(country.cat=="ghe"|cat.level=="Overall") %>%
  mutate(cat.level = case_when(
    cat.level == "Overall" ~ "Overall",
    cat.level == "Low" ~ "0-4.4%",
    cat.level == "Medium" ~ "4.5-5.5%",
    cat.level == "High" ~ ">5.5%"
  )) %>% 
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "0-4.4%", "4.5-5.5%", ">5.5%"
  )))

pov_data <- d_country_pool %>% filter(country.cat=="pov"|cat.level=="Overall") %>%
  mutate(cat.level = case_when(
    cat.level == "Overall" ~ "Overall",
    cat.level == "Low" ~ "0-18%",
    cat.level == "Medium" ~ "18-51%",
    cat.level == "High" ~ "51-100%"
  )) %>% 
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "0-18%", "18-51%", "51-100%"
  )))

birthwlz_data <- d_country_pool %>% filter(country.cat=="birth_wlz_cat"|cat.level=="Overall") %>%
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "[-5,-2]", "(-2,-1]", 
    "(-1,0]", "0,5"
  ))) %>% droplevels()

mort_data <- d_country_pool  %>% filter(country.cat=="mort_cat"|cat.level=="Overall") %>%
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "<50 per 100,000", "50-80 per 100,000",
    ">80 per 100,000"
  )))


mort_data %>% filter(cat.level == ">80 per 100,000", agecat=="Birth"|agecat=="8 days-3 months")

# 16.78440  9.924765 26.96581
# 14.62971  7.129461 27.66947

he_data %>% filter(cat.level == "0-4.4%", agecat=="Birth")
#18.3144040 13.50364037 24.3564285

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
birthwlz = preprocess(birthwlz_data)
mort = preprocess(mort_data)


#-------------------------------------------------------------------------------------------
# clean cohort data
#-------------------------------------------------------------------------------------------

decade_cohort_data <- d_cohort %>% filter(country.cat=="decade"|cat.level=="Overall") %>%
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "90s", "2000s", "2010s"
  ))) %>% filter(!is.na(cat.level))

gdp_cohort_data <- d_cohort %>% filter(country.cat=="gdp"|cat.level=="Overall") %>%
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "Low income", "Middle income"
  ))) %>% filter(!is.na(cat.level))

gdi_cohort_data <- d_cohort %>% filter(country.cat=="gdi"|cat.level=="Overall") %>%
  mutate(cat.level = case_when(
    cat.level == "Overall" ~ "Overall",
    cat.level == "Very low" ~ "69-84%",
    cat.level == "Low" ~ "84-90%",
    cat.level == "High/Medium" ~ "90-100%"
  ))  %>% 
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "69-84%", "84-90%", "90-100%"
  )))  %>% filter(!is.na(cat.level))

gii_cohort_data <- d_cohort %>% filter(country.cat=="gii"|cat.level=="Overall") %>%
  mutate(cat.level = case_when(
    cat.level == "Overall" ~ "Overall",
    cat.level == "Low" ~ "0.43-0.59",
    cat.level == "Medium" ~ "0.59-0.61",
    cat.level == "High" ~ "0.61-0.76"
  ))  %>% 
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "0.43-0.59", "0.59-0.61", "0.61-0.76"
  ))) %>% filter(!is.na(cat.level))


chi_cohort_data <- d_cohort %>% filter(country.cat=="chi"|cat.level=="Overall") %>%
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "Low", "Medium", "High"
  ))) %>% filter(!is.na(cat.level))

gini_cohort_data <- d_cohort %>% filter(country.cat=="gini"|cat.level=="Overall") %>%
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "Low", "Medium", "High"
  ))) %>% filter(!is.na(cat.level))

he_cohort_data <- d_cohort %>% filter(country.cat=="ghe"|cat.level=="Overall") %>%
  mutate(cat.level = case_when(
    cat.level == "Overall" ~ "Overall",
    cat.level == "Low" ~ "0-4.4%",
    cat.level == "Medium" ~ "4.5-5.5%",
    cat.level == "High" ~ ">5.5%"
  )) %>% 
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "0-4.4%", "4.5-5.5%", ">5.5%"
  ))) %>% filter(!is.na(cat.level))

pov_cohort_data <- d_cohort %>% filter(country.cat=="pov"|cat.level=="Overall") %>%
  mutate(cat.level = case_when(
    cat.level == "Overall" ~ "Overall",
    cat.level == "Low" ~ "0-18%",
    cat.level == "Medium" ~ "18-51%",
    cat.level == "High" ~ "51-100%"
  )) %>% 
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "0-18%", "18-51%", "51-100%"
  ))) %>% filter(!is.na(cat.level))

birthwlz_cohort_data <- d_cohort %>% filter(country.cat=="birth_wlz_cat"|cat.level=="Overall") %>%
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "[-5,-2]", "(-2,-1]", 
    "(-1,0]", "0,5"
  ))) %>% filter(!is.na(cat.level)) %>% droplevels()

mort_cohort_data <- d_cohort  %>% filter(country.cat=="mort_cat"|cat.level=="Overall") %>%
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "<50 per 100,000", "50-80 per 100,000",
    ">80 per 100,000"
  ))) %>% filter(!is.na(cat.level))



#-------------------------------------------------------------------------------------------
# plot function
#-------------------------------------------------------------------------------------------

# 
# subgroup_colors= c("#01C18C","#018D66","#025941")
# 
         ylabel="Incidence proportion (95% CI)"
         yrange=NULL
         dodge=0
         reverse_colors = F
         Disease="Wasting"
         Measure="Incidence_proportion"
         Birth="strat"
         Severe="no"
         Age_range="3 months"
#          
#          d = he
#          d_cohort = d_cohort
#          subgroup_name="he_cat"
#          subgroup_colors = c("#01C18C","#018D66","#025941")
#          Birth="strat"
#          Severe="no"
#          subgroup="cat.level"
#          returnData=T
#          reverse_color = T
#          title = "a) National health expenditures (% of gross domestic product)"

d = pov
subgroup_name="pov_cat"
subgroup_colors = c("#0458F9","#0441B6","#03338F")
Birth="strat"
Severe="no"
subgroup="cat.level"
returnData=T
title = "b) National percentage of individuals living on less than $1.90 per day"
reverse_color = T 
xlabel="Age category"
h1=0
h2=3
yrange=NULL
dodge=0
reverse_colors = F
returnData=F
         
ki_wast_ip_flurry_subgroup_plot <- function(d, d_cohort, subgroup_name, Disease="Wasting", Measure="Incidence_proportion",  Birth="strat", Severe="no",
                   subgroup_colors = c("#0998F5", "#F6A106", "#FB4C05"),
                  #subgroup_colors=c("#01C18C","#018D66","#025941"),
                  xlabel="Age category",
                  ylabel="Incidence proportion (95% CI)",
                  Age_range="3 months", 
                  subgroup="cat.level",
                  h1=0,
                  h2=3,
                  yrange=NULL,
                  dodge=0,
                  reverse_colors = F,
                  returnData=F,
                  title=""){

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
  d_cohort_plot <- d_cohort %>%
    filter(cat.level=="Overall"|country.cat==subgroup_name|country.cat==gsub("_cat","",subgroup_name)) %>%
    select(cohort,est,lb,ub,agecat,cat.level) %>%
    distinct()
  d_cohort_plot$cat.level <- factor(d_cohort_plot$cat.level, levels=levels(df$cat.level))

  # sub_palette <- c("black","#0998F5", "#F6A106", "#FB4C05")
  sub_palette <- c("black", subgroup_colors)
  
  p <- ggplot(df,aes(y=est,x=agecat)) +
    facet_grid(~cat.level) +
    # pooled 
    geom_point(aes(shape=measure, size=measure, fill=!!sym(groupvar), color=!!sym(groupvar)), 
               size = 2, stroke = 0,
               data = df %>% filter(ispooled == "yes"),
               position = position_dodge(dodge)) +
    # cohort-stratified 
    
    geom_point(color = "#878787", fill = "#878787", size = 1.5, 
               data = d_cohort_plot,
               aes(x = agecat, y= est),
               position = position_jitter(width = 0.15), alpha = 0.2) +
    

    
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

    
    ggtitle(title) +
    theme(
      axis.text.x = element_text(size = 12, angle = 45, vjust=0.5),
      axis.title.x = element_text(size = 14),
      axis.title.y = element_text(size = 14),
      strip.text.x = element_text(size = 16, margin = margin(t = 0)),
      panel.grid.major.x = element_blank(), 
      panel.grid.minor = element_blank(),
      plot.title = element_text(hjust = 0, margin=margin(0,0,10,0))) +
    
    guides(color = FALSE) + scale_color_manual(values=sub_palette, drop=TRUE, limits = levels(df$measure),
                                               guide = FALSE) 
    
    if(!is.null(yrange)){
      p <- p + coord_cartesian(ylim=yrange)
    }
  

  p
  
  if(returnData){
    return(list(plot=p,data=df))
  }else{
    return(p)
  }
}


get_N_subgroup <- function(d, subgroup){
  d %>%
    filter(disease == "Wasting" &
             measure== "Incidence_proportion" &
             age_range == "3 months" &
             birth == "strat" &
             cohort == "pooled" &
             severe == "no") %>%
    group_by(!!sym(subgroup)) %>%
    summarise(min_study = min(nstudies, na.rm=TRUE),
              max_study = max(nstudies, na.rm=TRUE),
              min_n = min(nmeas, na.rm=TRUE),
              max_n = max(nmeas, na.rm=TRUE))  
}



#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - pooled by decade
#-------------------------------------------------------------------------------------------

ip_plot_primary_decade <- ki_wast_ip_flurry_subgroup_plot(d = decade, 
                                           d_cohort = decade_cohort_data , 
                                           Disease="Wasting",
                                           Measure="Incidence_proportion",
                                           subgroup_colors= c("#01C18C","#018D66","#025941"),
                                           subgroup_name="decade",
                                           Birth="strat", Severe="no", 
                                           Age_range="3 months", 
                                           xlabel="Child age, months",
                                           h1=90,
                                           h2=90,
                                           subgroup="cat.level", returnData=T,
                                           title = "Incidence pooled by decade")

ip_plot_primary_decade$plot

# get N's for figure caption
inc_n_decade = get_N_subgroup(d = decade, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_decade = "wast-2-inc-overall_decade--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_decade$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_decade,".png"), width=10, height=4)
saveRDS(ip_plot_primary_decade$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_decade,".RDS"))

#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - pooled by GDP 
#-------------------------------------------------------------------------------------------

ip_plot_primary_gdp <- ki_wast_ip_flurry_subgroup_plot(d = gdp, 
                                        d_cohort = gdp_cohort_data, 
                                        subgroup_name="gdp_cat",
                                        Birth="strat", Severe="no", 
                                        subgroup="cat.level", returnData=T,
                                        title = "Incidence pooled by GDP")

ip_plot_primary_gdp$plot

# get N's for figure caption
inc_n_gdp = get_N_subgroup(d = gdp, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gdp = "wast-2-inc-overall_gdp--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gdp$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_gdp,".png"), width=10, height=4)
saveRDS(ip_plot_primary_gdp$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_gdp,".RDS"))


#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - pooled by Gender Development Index 
#-------------------------------------------------------------------------------------------

ip_plot_primary_gdi <- ki_wast_ip_flurry_subgroup_plot(d = gdi, 
                                        d_cohort = gdi_cohort_data, 
                                        subgroup_name="gdi_cat",
                                        Birth="strat", Severe="no", 
                                        subgroup="cat.level", returnData=T,
                                        title = "Incidence pooled by Gender Development Index")

ip_plot_primary_gdi$plot

# get N's for figure caption
inc_n_gdi = get_N_subgroup(d = gdi, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gdi = "wast-2-inc-overall_gdi--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gdi$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_gdi,".png"), width=10, height=4)
saveRDS(ip_plot_primary_gdi$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_gdi,".RDS"))


#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - pooled by Gender Inequality Index 
#-------------------------------------------------------------------------------------------
ip_plot_primary_gii <- ki_wast_ip_flurry_subgroup_plot(d = gii, 
                                        d_cohort = gii_cohort_data, 
                                        subgroup_name="gii_cat",
                                        Birth="strat", Severe="no", 
                                        subgroup="cat.level", returnData=T,
                                        title = "Incidence pooled by Gender Inequality Index")

ip_plot_primary_gii$plot

# get N's for figure caption
inc_n_gii = get_N_subgroup(d = gii, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gii = "wast-2-inc-overall_gii--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gii$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_gii,".png"), width=10, height=4)
saveRDS(ip_plot_primary_gii$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_gii,".RDS"))


#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - pooled by Coefficient of Human Inequality
#-------------------------------------------------------------------------------------------
ip_plot_primary_chi <- ki_wast_ip_flurry_subgroup_plot(d = chi, 
                                        d_cohort = chi_cohort_data, 
                                        subgroup_name="chi_cat",
                                        Birth="strat", Severe="no", 
                                        subgroup="cat.level", returnData=T,
                                        title = "Incidence pooled by Coefficient of Human Inequality")

ip_plot_primary_chi$plot

# get N's for figure caption
inc_n_chi = get_N_subgroup(d = chi, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_chi = "wast-2-inc-overall_chi--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_chi$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_chi,".png"), width=10, height=4)
saveRDS(ip_plot_primary_chi$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_chi,".RDS"))


#-------------------------------------------------------------------------------------------
# wasting incidence proportion - pooled by Gini coefficient
#-------------------------------------------------------------------------------------------
ip_plot_primary_gini <- ki_wast_ip_flurry_subgroup_plot(d = gini, 
                                         d_cohort = gini_cohort_data, 
                                         subgroup_name="gini_cat",
                                         Birth="strat", Severe="no", 
                                         subgroup="cat.level", returnData=T,
                                         title = "Incidence pooled by Gini Coefficient")

ip_plot_primary_gini$plot

# get N's for figure caption
inc_n_gini = get_N_subgroup(d = gini, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gini = "wast-2-inc-overall_gini--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gini$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_gini,".png"), width=10, height=4)
saveRDS(ip_plot_primary_gini$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_gini,".RDS"))

#-------------------------------------------------------------------------------------------
# wasting incidence proportion - pooled by health expenditure
#-------------------------------------------------------------------------------------------
ip_plot_primary_he <- ki_wast_ip_flurry_subgroup_plot(d = he, 
                                       d_cohort = he_cohort_data, 
                                       subgroup_name="ghe_cat",
                                       subgroup_colors = c("#01C18C","#018D66","#025941"),
                                       Birth="strat", Severe="no", 
                                       subgroup="cat.level", returnData=T,
                                       reverse_color = T,
                                       title = "a) National health expenditures (% of gross domestic product)")

ip_plot_primary_he$plot

# get N's for figure caption
inc_n_he = get_N_subgroup(d = he, subgroup = "cat.level")
inc_n_he

# define transformations globally if name_inc_plots is not working
ip_plot_name_he = "wast-2-inc-overall_he--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_he$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_he,".png"), width=10, height=4)
saveRDS(ip_plot_primary_he$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_he,".RDS"))

#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - percent living below poverty line
#-------------------------------------------------------------------------------------------
ip_plot_primary_pov <- ki_wast_ip_flurry_subgroup_plot(d = pov, 
                                        d_cohort = pov_cohort_data, 
                                        subgroup_name="pov_cat",
                                        subgroup_colors = c("#0458F9","#0441B6","#03338F"),
                                        Birth="strat", Severe="no", 
                                        subgroup="cat.level", returnData=T,
                                        title = "b) National percentage of individuals living on less than $1.90 per day")

ip_plot_primary_pov$plot

# get N's for figure caption
inc_n_pov = get_N_subgroup(d = pov, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_pov = "wast-2-inc-overall_pov--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_pov$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_pov,".png"), width=10, height=4)
saveRDS(ip_plot_primary_pov$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_pov,".RDS"))



#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - pooled by birth WLZ
#-------------------------------------------------------------------------------------------
ip_plot_primary_birthwlz <- ki_wast_ip_flurry_subgroup_plot(d = birthwlz %>% filter(agecat!="Birth") %>% droplevels(), 
                                              d_cohort = birthwlz_cohort_data %>% filter(agecat!="Birth") %>% droplevels(),  
                                              subgroup_name="Birth_wlz_cat",
                                             Birth="strat", Severe="no", 
                                             subgroup="cat.level", returnData=T,
                                             title = "d) Incidence pooled by birth WLZ")

ip_plot_primary_birthwlz$plot

# get N's for figure caption
inc_n_decade = get_N_subgroup(d = decade, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_decade = "wast-2-inc-overall_decade--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_decade$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_decade,".png"), width=10, height=4)
saveRDS(ip_plot_primary_decade$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_decade,".RDS"))


#-------------------------------------------------------------------------------------------
# Wasting incidence proportion - pooled by country mortality level 
#-------------------------------------------------------------------------------------------
ip_plot_primary_mort <- ki_wast_ip_flurry_subgroup_plot(d = mort, 
                                         d_cohort = mort_cohort_data,
                                         subgroup_name="mort_cat",
                                         subgroup_colors = c("#F87602","#CA6002","#9D4B02"),
                                         Birth="strat", Severe="no", 
                                         subgroup="cat.level", returnData=T,
                                         title = "c) National under-5 mortality rate")

ip_plot_primary_mort$plot
ip_plot_primary_mort$data

# get N's for figure caption
inc_n_mort = get_N_subgroup(d = mort, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_mort = "wast-2-inc-overall_mort--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_mort$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_mort,".png"), width=10, height=4)
saveRDS(ip_plot_primary_mort$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_mort,".RDS"))


inc_n_he
inc_n_pov
inc_n_mort

ggsave(plot = ip_plot_primary_he$plot, width=12,height=12,
       filename=paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig6a.jpeg"), device='jpeg')
ggsave(plot = ip_plot_primary_pov$plot, width=12,height=12,
       filename=paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig6b.jpeg"), device='jpeg')
ggsave(plot = ip_plot_primary_mort$plot, width=12,height=12,
       filename=paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig6c.jpeg"), device='jpeg')


