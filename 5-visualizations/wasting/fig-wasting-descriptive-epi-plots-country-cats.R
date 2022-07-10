
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
source(paste0(here::here(), "/5-visualizations/wasting/fig-wasting-descriptive-epi-plot-functions.R"))

# Load data --------------------------------

try(df <- readRDS(paste0(BV_dir,"/results/wasting_desc_data_country.RDS")))
try(df <- readRDS("C:/Users/andre/Downloads/wasting_desc_data_country.RDS"))

"C:/Users/andre/Downloads/wasting_desc_data_cohort_ip_country_stats.RDS"

table(df$country.cat)
table(df$cat.level)

df <- df %>%
  mutate(cat.level = factor(cat.level, levels = c(
    "Overall", "90s", "2000s", "2010s", "Low income", "Middle income", "Very low", "High/Medium","Low", "Medium", "High"
  )),
  birth="strat"
  )




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
  d <- d %>% filter(cohort!="iLiNS-Zinc-BURKINA FASO")
  d$nmeas.f <- clean_nmeans(d$nmeas)

  # subset to primary analysis
  d_primary <- d %>% filter(cohort!="PROBIT-BELARUS")
  d_primary = scale_estimates(d_primary)
  return(d_primary)
}

df = preprocess(df)

unique(df$country.cat)
decade = df %>% filter(country.cat=="decade"|is.na(country.cat))
gdp = df %>% filter(country.cat=="gdp"|is.na(country.cat))
gdi = df %>% filter(country.cat=="gdi"|is.na(country.cat))
gii = df %>% filter(country.cat=="gii"|is.na(country.cat))
chi = df %>% filter(country.cat=="chi"|is.na(country.cat))
gini = df %>% filter(country.cat=="gini"|is.na(country.cat))
ghe = df %>% filter(country.cat=="ghe"|is.na(country.cat))
pov = df %>% filter(country.cat=="pov"|is.na(country.cat))



#-------------------------------------------------------------------------------------------
# wasting incidence proportion - pooled by decade
#-------------------------------------------------------------------------------------------

# d = df %>% filter(country.cat=="decade")
# table(is.na(d$lb))
# table(is.na(d$ub))

ip_plot_primary_decade <- plot_ip_subgroup(d = decade, d_cohort=d_cohort, birth="strat", sev="no", 
                                           subgroup="cat.level", returnData=T,
                                           title = "Wasting Incidence pooled by decade")


# d = df %>% filter(country.cat=="decade", measure=="Incidence_proportion")
# birth="strat"
# sev="no"
# subgroup="cat.level"
# returnData=T
# title = "Wasting Incidence pooled by decade"
# meas="Incidence_proportion"
# 
#                              Disease="Wasting"
#                              Measure=meas
#                              Birth=birth 
#                              Severe=sev 
#                              Age_range="3 months"
#                              xlabel="Child age, months"
#                              h1=90
#                              h2=90
#                     
# 
#                                       xlabel="Age category"
#                                       ylabel="Incidence proportion (95% CI)"
#                                       h1=0
#                                       h2=3
#                                       yrange=NULL
#                                       dodge=0
#                                       returnData=F
#                                
#                                groupvar <- sym(subgroup)
#                                
#                                df <- d %>% filter(
#                                  disease == Disease &
#                                    measure %in% Measure &
#                                    birth == Birth &
#                                    severe == Severe &
#                                    age_range == Age_range &
#                                    !is.na(agecat)
#                                ) %>% filter(!is.na(!!sym(groupvar))) 
#                                
#                                df <- droplevels(df)
#                                
#                                # remove N= from labels
#                                df <- df %>% mutate(nmeas.f = gsub('N=', '', nmeas.f)) %>%
#                                  mutate(nstudy.f = gsub('N=', '', nstudy.f))
#                                
#                                # remove text from labels
#                                df <- df %>% mutate(nmeas.f = gsub(' children', '', nmeas.f)) %>%
#                                  mutate(nstudy.f = gsub(' studies', '', nstudy.f))
#                                
#                                # Remove 'months' from x axis labels  
#                                df <- df %>% arrange(agecat)
#                                df$agecat <- as.character(df$agecat)
#                                df$agecat <- gsub(" months", "", df$agecat)
#                                df$agecat <- factor(df$agecat, levels=unique(df$agecat))
#                                
#                                df <- df %>% mutate(ispooled = as.factor(ifelse(cohort=="pooled", "yes", "no")))
#                                
#                                # fix factor levels if birth strat
#                                if (Birth == "strat") {
#                                  df <- df %>%
#                                    mutate(agecat = as.character(agecat)) %>%
#                                    mutate(agecat = ifelse(agecat=="8 days-3", "0-3", agecat)) %>%
#                                    mutate(agecat = factor(agecat, levels = c(
#                                      "Birth",
#                                      "0-3", 
#                                      "3-6",
#                                      "6-9",
#                                      "9-12",
#                                      "12-15",
#                                      "15-18",
#                                      "18-21",
#                                      "21-24"
#                                    )))
#                                }
#                                
#                                # remove N= labels for incidence proportion
#                                df <- df %>% mutate(nmeas.f = ifelse(measure == 'Incidence proportion', '', nmeas.f)) %>%
#                                  mutate(nstudy.f = ifelse(measure == 'Incidence proportion', '', nstudy.f))
#                                
#                                
#                                if (min(df$lb) < 0) {
#                                  print("Warning: some lower bounds < 0")
#                                }
#                                
#                                
#                                
#                                p <- ggplot(df,aes(y=est,x=agecat)) +
#                                  
#                                  # pooled 
#                                  geom_point(aes(shape=measure, size=measure, fill=!!sym(groupvar), color=!!sym(groupvar)), 
#                                             size = 2, stroke = 0,
#                                             data = df %>% filter(ispooled == "yes"),
#                                             position = position_dodge(dodge)) +
#                                  
#                                  geom_errorbar(aes(color=!!sym(groupvar), group=interaction(measure, !!sym(groupvar)),
#                                                    ymin=lb, ymax=ub), width = 0,
#                                                data = df %>% filter(ispooled == "yes"),
#                                                position = position_dodge(dodge)) +
#                                  
#                                  geom_text(data=df[df$measure =='Incidence proportion',] %>% 
#                                              filter(ispooled == "yes"), 
#                                            aes(x = agecat, y = est, label = round(est)),
#                                            hjust = 1.5, 
#                                            position = position_dodge(width = dodge),
#                                            vjust = 0.5) + 
#                                  
#                                  geom_text(data=df[df$measure =='Incidence proportion - monthly cohorts',] %>%
#                                              filter(ispooled == "yes"), 
#                                            aes(x = agecat, y = est, label = round(est)),
#                                            hjust = 1.5, 
#                                            position = position_dodge(width = dodge),
#                                            vjust = 0.5) + 
#                                  
#                                  # cohort-stratified 
#                                  
#                                  # geom_point(color = "#878787", fill = "#878787", size = 1.5, 
#                                  #            data = df %>% filter(ispooled == "no"),
#                                  #            position = position_jitter(width = 0.15), alpha = 0.25) +
#                                  # 
#                                  scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure),
#                                                     guide = FALSE) +
#                                  scale_size_manual(values = c(2, 1.5), guide = FALSE) +
#                                  scale_shape_manual(values = c(16, 17),
#                                                     name = 'Measure')+
#                                  scale_fill_manual(values=tableau11, guide = FALSE) +
#                                  
#                                  xlab(xlabel)+
#                                  ylab(ylabel) +
#                                  
#                                  # add space to the left and right of points on x axis
#                                  # to accommodate point estimate labels
#                                  scale_x_discrete(expand = expand_scale(add = 1)) +
#                                  
#                                  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
#                                  # theme(strip.text = element_text(size=18, margin = margin(t = 0))) +
#                                  # 
#                                  # theme(axis.text.x = element_text(margin = 
#                                  #                                    margin(t = 0, r = 0, b = 0, l = 0),
#                                  #                                  size = 9)) +
#                                  # theme(axis.title.x = element_text(margin = 
#                                  #                                     margin(t = 5, r = 0, b = 0, l = 0),
#                                  #                                   size = 14)) +
#                                  # theme(axis.title.y = element_text(size = 14)) +
#                                  
#                                  theme(
#                                    axis.text.x = element_text(size = 14, angle = 45, vjust=0.5),
#                                    axis.title.x = element_text(size = 14),
#                                    axis.title.y = element_text(size = 14),
#                                    strip.text.x = element_text(size = 16, margin = margin(t = 0))) +
#                                  
#                                  ggtitle(title) +
#                                  facet_grid(as.formula(paste0(".~", groupvar))) +
#                                  
#                                  guides(color = FALSE) +
#                                  
#                                  
#                                  
#                                  
#                                  if(!is.null(yrange)){
#                                    p <- p + coord_cartesian(ylim=yrange)
#                                  }
#                                
                

ip_plot_primary_decade$plot

# get N's for figure caption
inc_n_decade = get_N_subgroup(d = decade, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_decade = "wast-2-inc-overall_decade--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_decade$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_decade,".png"), width=16, height=4)
saveRDS(ip_plot_primary_decade$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_decade,".RDS"))

#-------------------------------------------------------------------------------------------
# wasting incidence proportion - pooled by GDP 
#-------------------------------------------------------------------------------------------

ip_plot_primary_gdp <- plot_ip_subgroup(d = gdp, birth="strat", sev="no", 
                                        subgroup="cat.level", returnData=T,
                                        title = "Wasting Incidence pooled by GDP")

ip_plot_primary_gdp$plot

# get N's for figure caption
inc_n_gdp = get_N_subgroup(d = gdp, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gdp = "wast-2-inc-overall_gdp--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gdp$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_gdp,".png"), width=16, height=4)
saveRDS(ip_plot_primary_gdp$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_gdp,".RDS"))


#-------------------------------------------------------------------------------------------
# wasting incidence proportion - pooled by Gender Development Index 
#-------------------------------------------------------------------------------------------

ip_plot_primary_gdi <- plot_ip_subgroup(d = gdi, birth="strat", sev="no", 
                                        subgroup="cat.level", returnData=T,
                                        title = "Wasting Incidence pooled by Gender Development Index")

ip_plot_primary_gdi$plot

# get N's for figure caption
inc_n_gdi = get_N_subgroup(d = gdi, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gdi = "wast-2-inc-overall_gdi--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gdi$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_gdi,".png"), width=16, height=4)
saveRDS(ip_plot_primary_gdi$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_gdi,".RDS"))


#-------------------------------------------------------------------------------------------
# wasting incidence proportion - pooled by Gender Inequality Index 
#-------------------------------------------------------------------------------------------
ip_plot_primary_gii <- plot_ip_subgroup(d = gii, birth="strat", sev="no", 
                                        subgroup="cat.level", returnData=T,
                                        title = "Wasting Incidence pooled by Gender Inequality Index")

ip_plot_primary_gii$plot

# get N's for figure caption
inc_n_gii = get_N_subgroup(d = gii, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gii = "wast-2-inc-overall_gii--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gii$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_gii,".png"), width=16, height=4)
saveRDS(ip_plot_primary_gii$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_gii,".RDS"))


#-------------------------------------------------------------------------------------------
# wasting incidence proportion - pooled by Coefficient of Human Inequality
#-------------------------------------------------------------------------------------------
ip_plot_primary_chi <- plot_ip_subgroup(d = chi, birth="strat", sev="no", 
                                        subgroup="cat.level", returnData=T,
                                        title = "Wasting Incidence pooled by Coefficient of Human Inequality")

ip_plot_primary_chi$plot

# get N's for figure caption
inc_n_chi = get_N_subgroup(d = chi, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_chi = "wast-2-inc-overall_chi--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_chi$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_chi,".png"), width=16, height=4)
saveRDS(ip_plot_primary_chi$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_chi,".RDS"))


#-------------------------------------------------------------------------------------------
# wasting incidence proportion - pooled by Gini coefficient
#-------------------------------------------------------------------------------------------
ip_plot_primary_gini <- plot_ip_subgroup(d = gini, birth="strat", sev="no", 
                                         subgroup="cat.level", returnData=T,
                                         title = "Wasting Incidence pooled by Gini Coefficient")

ip_plot_primary_gini$plot

# get N's for figure caption
inc_n_gini = get_N_subgroup(d = gini, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_gini = "wast-2-inc-overall_gini--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_gini$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_gini,".png"), width=16, height=4)
saveRDS(ip_plot_primary_gini$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_gini,".RDS"))

#-------------------------------------------------------------------------------------------
# wasting incidence proportion - pooled by health expenditure
#-------------------------------------------------------------------------------------------
ip_plot_primary_he <- plot_ip_subgroup(d = ghe, birth="strat", sev="no", 
                                       subgroup="cat.level", returnData=T,
                                       title = "Wasting Incidence pooled by Health Expenditure\nas a % of GDP")

ip_plot_primary_he$plot

# get N's for figure caption
inc_n_he = get_N_subgroup(d = he, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_he = "wast-2-inc-overall_he--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_he$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_he,".png"), width=16, height=4)
saveRDS(ip_plot_primary_he$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_he,".RDS"))

#-------------------------------------------------------------------------------------------
# wasting incidence proportion - percent living below poverty line
#-------------------------------------------------------------------------------------------
ip_plot_primary_pov <- plot_ip_subgroup(d = pov, birth="strat", sev="no", 
                                        subgroup="cat.level", returnData=T,
                                        title = "Wasting Incidence pooled by % of country living\nbelow poverty line")

ip_plot_primary_pov$plot

# get N's for figure caption
inc_n_pov = get_N_subgroup(d = pov, subgroup = "cat.level")

# define transformations globally if name_inc_plots is not working
ip_plot_name_pov = "wast-2-inc-overall_pov--allage-primary"

# save plot and underlying data
ggsave(ip_plot_primary_pov$plot, file=paste0(fig_dir, "wasting/fig-",ip_plot_name_pov,".png"), width=16, height=4)
saveRDS(ip_plot_primary_pov$data, file=paste0(figdata_dir_wasting, "figdata-",ip_plot_name_pov,".RDS"))
