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

library(viridis)
library(tidyr)
library(plotly)

source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/5-visualizations/stunting/fig-stunting-plot-desc-epi-functions.R"))

#Load data
d <- readRDS(paste0(here::here(),"/results/desc_data_cleaned.rds"))
d <- d %>% filter(!is.na(agecat))
d <- droplevels(d)


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
d_primary <- d %>% filter(analysis == "Primary")
d_primary = scale_estimates(d_primary)

# subset to primary analysis, monthly measurements from 0 to 24 months
d_monthly <- d %>% filter(analysis == "Cohorts monthly 0-24 m") 
d_monthly <- scale_estimates(d_monthly)

# subset to fixed effects analysis
d_fe <- d %>% filter(analysis == "Fixed effects")
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
# transformations <- read.csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vREmg4PurW2AKddhf1Mtj9dAyaeCeYPUpHurNUe3r0gVVeeLrkS3aU-4XlYhZ96iWsBpr-R9sDT8Alp/pub?gid=0&single=true&output=csv")
ip_plot_name_primary = name_inc_plots(cut=2, pop=pop_list$o, loc="", ana=analysis_list$p)

# save plot and underlying data
ggsave(ip_plot_primary$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_name_primary,".png"), width=16, height=4)
saveRDS(ip_plot_primary$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_name_primary,".RDS"))

# ip_plot_primary$plot$data = ip_plot_primary$plot$data %>% 
#   mutate(mylabel = paste0("estimate:", est, "\n",
#                           "cohort:", cohort))


######## NEW INTERACTIVE PLOT ######## 
testplot = ggplotly(ip_plot_primary$plot) %>%
              layout(showlegend = FALSE) %>%
            style(hoverlabel = list(align = "left"))
testplot


# perdiff_solo_plot = ggplot(bar_data_perdiff, aes(x = statename_f, y = factor_diff, text = label))+
# geom_bar(aes(fill = factor_diff_caperdiff_solo_plot = ggplot(bar_data_perdiff, aes(x = statename_f, y = factor_diff, text = label))+
#   geom_bar(aes(fill = factor_diff_cat), stat="identity") +
#   geom_linerange(aes(ymin = factor_diff_lb, ymax = factor_diff_ub)) + 
#   xlab("") +
#   scale_fill_manual(values = gnbu_colors) +
#   scale_y_continuous(labels = seq(0,80,5), breaks = seq(0,80,5)) +
#   ylab("Ratio of estimated infections vs. confirmed cases") +
#   coord_flip() +
#   theme_minimal() +
#   theme(axis.text = element_text(size=10.5)) +
#   theme(legend.position = "none")
# 
# perdiff_plot_int <- ggplotly(perdiff_plot, tooltip="text") %>% 
#   style(hoverlabel = list(align = "left")) %>% 
#   layout(annotations = list(
#     text = "B) Ratio of estimated infections vs. confirmed cases",
#     xref = "paper",
#     yref = "paper",
#     yanchor = "bottom",
#     xanchor = "center",
#     align = "left",
#     x = 0.3,
#     y = 1,
#     showarrow = FALSE)) %>% 
#   config(displayModeBar = F)
  # config(displayModeBar = F)

#####################################################################










#-------------------------------------------------------------------------------------------
# Stunting incidence proportion (monthly from 0-24 months)
#-------------------------------------------------------------------------------------------
ip_plot_monthly <- plot_ip_spaghetti(d_monthly, 
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
ip_plot_fe <- plot_ip_spaghetti(d_fe, birth="strat", sev="no", returnData=T)
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
# Stunting incidence proportion - severe (primary)
#-------------------------------------------------------------------------------------------
ip_plot_sev_primary <- plot_ip_spaghetti(d_primary, birth="yes", sev="yes", returnData=T)
ip_plot_sev_primary$plot


# define standardized plot names
ip_plot_sev_name_primary = name_inc_plots(cut=3, pop=pop_list$o, loc="", ana=analysis_list$p)

# save plot and underlying data
ggsave(ip_plot_sev_primary$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_sev_name_primary,".png"), width=14, height=4)
saveRDS(ip_plot_sev_primary$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_sev_name_primary,".RDS"))

#-------------------------------------------------------------------------------------------
# Stunting incidence proportion - severe (monthly)
#-------------------------------------------------------------------------------------------
ip_plot_sev_monthly <- plot_ip_spaghetti(d_monthly, 
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

ip_plot_sev_fe <- plot_ip_spaghetti(d_fe, birth="yes", sev="yes", returnData=T)
ip_plot_sev_fe$plot


# define standardized plot names
ip_plot_sev_name_fe = name_inc_plots(cut=3, pop=pop_list$o, loc="", ana=analysis_list$f)

# save plot and underlying data
ggsave(ip_plot_sev_fe$plot, file=paste0(fig_dir, "stunting/fig-",ip_plot_sev_name_fe,".png"), width=14, height=4)
saveRDS(ip_plot_sev_fe$data, file=paste0(figdata_dir_stunting, "figdata-",ip_plot_sev_name_fe,".RDS"))


# testplot = ggplotly(testplot + scale_color_manual("Title", values = palette), tooltip="text") %>% 
#   style(hoverlabel = list(align = "left")) %>% 
#   layout(barmode = 'overlay')%>% 
#   config(displayModeBar = F)
