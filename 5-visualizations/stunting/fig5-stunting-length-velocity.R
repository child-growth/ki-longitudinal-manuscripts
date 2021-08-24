##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# plots of linear growth velocity
# in each cohort

# inputs: pool_vel.RData, 
# WHO_linear_growth_velocity_standard.RDS

# outputs: 
# overall plots: 
#   fig-stunt-2-vel-overall--allage-primary.png
#   fig-laz-2-length_vel-overall--allage-primary.png
#   fig-laz-2-laz_vel-overall--allage-primary.png

# data for each plot is saved as an RDS file
# with the same file name and the prefix "figdata"

##########################################

# Preamble ----------------------------------------------------------------

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load length velocity data
vel <- readRDS(paste0(res_dir,"/stunting/pool_vel.RDS"))
vel <- vel %>% filter(stratacol!="pooled")
vel <- vel %>% filter(stratacol!="Pooled - All")
vel <- vel %>% filter(stratacol!="Pooled - Asia")
vel <- vel %>% filter(stratacol!="Pooled - Africa")
vel <- vel %>% filter(stratacol!="Pooled - Amer.")


# load who standard
who_cm = readRDS(paste0(res_dir, "/WHO_linear_growth_velocity_standard.RDS"))


# Wrapper function ----------------------------------------------------------------
make_vel_plot <- function(data, region_name, plotname){
  
  # subset to region
  data = data %>% filter(region==region_name)
  
  ## prep data ----------------------------------------------------------------
  data$nmeas.f <- clean_nmeans(data$N)
  data$strata <- clean_agecat(data$strata)
  
  # remove mo from age label
  data <- data %>% 
    mutate(strata = gsub(" mo.", "", strata)) %>%
    mutate(strata = factor(strata, 
                           levels = c("0-3", "3-6", "6-9",
                                      "9-12", "12-15", "15-18",
                                      "18-21", "21-24")))
  
  data <- merge(data, who_cm, by=c('sex', 'strata'))
  data <- data %>% mutate(pct_50 = pct_50 / 3)
  data <- data %>% mutate(pct_25 = pct_25 / 3)
  data <- data %>% mutate(pct_15 = pct_15 / 3)
  data <- data %>% mutate(pct_50 = ifelse(ycat == 'haz', NA, pct_50))
  data <- data %>% mutate(pct_25 = ifelse(ycat == 'haz', NA, pct_25))
  data <- data %>% mutate(pct_15 = ifelse(ycat == 'haz', NA, pct_15))
  
  
  # clean up y label
  data$ycat <- gsub('haz', 'LAZ change (Z-score per month)', data$ycat)
  data$ycat <- gsub('lencm', 'Length velocity (cm per month)', data$ycat)
  
  # define color palette
  mypalette = c("#D87A16", "#0EA76A")
  
  
  # get N's for figure caption
  vel_cohorts = data %>% filter(pooled==0) %>%
    mutate(unique_cohorts = length(unique(country_cohort))) %>%
    group_by(region) %>%
    summarize(unique_cohorts=unique_cohorts[1], 
              unique_cohorts_region = length(unique(country_cohort)))
  vel_cohorts
  
  vel_n = data %>%
    filter(!is.na(strata), pooled==1) %>%
    group_by(region) %>%
    summarise(min_study = min(nstudies, na.rm=TRUE),
              max_study = max(nstudies, na.rm=TRUE),
              min_n = min(N, na.rm=TRUE),
              max_n = max(N, na.rm=TRUE))
  vel_n
  
  #Our transformation function
  scaleFUN <- function(x) sprintf("%0.1f", x)
  
  ## Figure 5a: length velocity plots ----------------------------------------------------------------
  
  ### absolute length plot - pooled ----------------------------------
  
  velplot_cm = data %>% filter(ycat == "Length velocity (cm per month)") %>%
    dplyr::select(country_cohort, Mean, `Lower.95.CI`, `Upper.95.CI`, strata, sex, pct_50, pct_25, pct_15) %>%
    mutate(sex = as.factor(sex)) %>% 
    gather(`pct_15`, `pct_25`, `pct_50`, `Mean`, key = "msmt_type", value = "length_cm") %>% 
    mutate(linecol = ifelse(msmt_type != "Mean", "black", 
                            ifelse(sex == "Male", "male_color", "female_color")), 
           sexcol = ifelse(sex == "Male", "male_color2", "female_color2"))
  
  
  velplot_cm_cohort_data = velplot_cm %>%  filter(country_cohort!="Pooled - All" & 
                                                    country_cohort!="Pooled - Asia" & 
                                                    country_cohort!="Pooled - Africa" & 
                                                    country_cohort!="Pooled - Amer." & 
                                                    msmt_type=="Mean") %>% 
    mutate(msmt_type = factor(msmt_type, levels = c("pct_50", "pct_25","Mean")))
  
  
  plot_cm <- ggplot(velplot_cm, 
                    aes(y = length_cm, x = strata)) +
    
    # WHO standard lines
    geom_line(aes(y = length_cm, group = msmt_type, color = linecol,
                  linetype = msmt_type),
              data = velplot_cm %>%  filter(msmt_type=="pct_25"|
                                              msmt_type=="pct_50"),
              size = 0.4) +
    
    # ki lines
    geom_line(aes(y = length_cm, group = msmt_type, color = linecol),
              data = velplot_cm %>%  filter(msmt_type=="Mean"),
              size = 0.8) +
    
    # error bars
    geom_errorbar(aes(ymin = Lower.95.CI, ymax = Upper.95.CI, color = sexcol),
                  alpha=0.5, size=0.8, width=0.1) +
    
    scale_linetype_manual("WHO Growth\nVelocity Standards", values = c("Mean" = "solid", 
                                                                       "pct_50" = "solid",
                                                                       "pct_25" = "dashed", 
                                                                       "pct_15" = "dotted"
    ),
    breaks = c("pct_50", "pct_25", "pct_15"),
    labels = c("50th percentile",
               "25th percentile", 
               "15th percentile"
    )) +
    scale_color_manual("WHO Growth\nVelocity Standards", values = c("black" = "black",
                                                                    "male_color" = mypalette[2],
                                                                    "female_color" = mypalette[1], 
                                                                    "male_color" = "male_color", 
                                                                    "female_color2" = mypalette[1], 
                                                                    "male_color2" = mypalette[2],
                                                                    "female_color2" = mypalette[1], 
                                                                    "male_color2" = mypalette[2])) +
    
    scale_y_continuous(limits=c(0,4), breaks=seq(0,4,0.5), labels = scaleFUN) +
    xlab("Child age, months") +  
    ylab("Difference in length (cm) per month")+
    facet_wrap(~country_cohort + sex) +

    guides(color=FALSE) +
    
    labs(linetype = c("", "12", "14", "13")) +
    
    theme(panel.grid.minor = element_blank(),
          panel.grid.major.x = element_blank(),
          legend.position = "none",
          plot.title = element_text(hjust=0))
  
  plot_cm

  
  ## Figure 5b: LAZ velocity plots ----------------------------------------------------------------
  
  ### LAZ plot - pooled ----------------------------------
  velplot_laz = data %>% filter(ycat == "LAZ change (Z-score per month)") %>%
    mutate(sex = factor(sex))
  
  plot_laz <- ggplot(velplot_laz, aes(y=Mean,x=strata))+
    
    facet_wrap(~country_cohort + sex) +
    
    # cohort-specific estimates
    geom_point(aes(fill=sex, color=sex), 
               size = 1.5, shape = 1,
               position = position_dodge(width = 0.75)) +
    # error bars
    geom_errorbar(aes(ymin=Lower.95.CI, ymax=Upper.95.CI, color=sex),
                  position = position_dodge(width = 0.75), width = 0.1, size  =0.5) +
    
    scale_color_manual(values=mypalette)+  
    scale_y_continuous(limits=c(-0.62,0.28), breaks=seq(-0.6,0.3,0.1),
                       labels = scaleFUN) +
    xlab("Child age, months") +  
    ylab("Difference in length-for-age\nZ-score per month")+
    geom_hline(yintercept = -0) +
    theme(plot.title = element_text(hjust=0),
          legend.position = "none",
          panel.grid.minor = element_blank())
  plot_laz
  
  return(list(plot_cm = plot_cm, plot_laz=plot_laz))
  
}

# make plots ----------------------------------

plot_latamer <- make_vel_plot(data = vel, plotname = "primary", region_name = "Latin America")
plot_asia <- make_vel_plot(data = vel, plotname = "primary", region_name = "Asia")
plot_africa <- make_vel_plot(data = vel, plotname = "primary", region_name = "Africa")


# define standardized plot names ----------------------------------

latamer_cm_plot_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "growth velocity",
  population = "cohort-stratified",
  location = "Latin America",
  age = "All ages",
  analysis = "primary"
)

africa_cm_plot_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "growth velocity",
  population = "cohort-stratified",
  location = "Africa",
  age = "All ages",
  analysis = "primary"
)

asia_cm_plot_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "growth velocity",
  population = "cohort-stratified",
  location = "South Asia",
  age = "All ages",
  analysis = "primary"
)

latamer_laz_plot_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "laz velocity",
  population = "cohort-stratified",
  location = "Latin America",
  age = "All ages",
  analysis = "primary"
)

africa_laz_plot_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "laz velocity",
  population = "cohort-stratified",
  location = "Africa",
  age = "All ages",
  analysis = "primary"
)

asia_laz_plot_name = create_name(
  outcome = "stunting",
  cutoff = 2,
  measure = "laz velocity",
  population = "cohort-stratified",
  location = "South Asia",
  age = "All ages",
  analysis = "primary"
)

# save plots and data ----------------------------------------------------------------

## save overall plots together ----------------------------------
ggsave(plot_latamer$plot_cm, file=paste0(fig_dir, "stunting/fig-", latamer_cm_plot_name,
                                  ".png"), width=12, height=6)
ggsave(plot_asia$plot_cm, file=paste0(fig_dir, "stunting/fig-", asia_cm_plot_name,
                                  ".png"), width=16, height=12)
ggsave(plot_africa$plot_cm, file=paste0(fig_dir, "stunting/fig-", africa_cm_plot_name,
                                 ".png"), width=12, height=6)

ggsave(plot_latamer$plot_laz, file=paste0(fig_dir, "stunting/fig-", latamer_laz_plot_name,
                                         ".png"), width=12, height=6)
ggsave(plot_asia$plot_laz, file=paste0(fig_dir, "stunting/fig-", asia_laz_plot_name,
                                      ".png"), width=14, height=12)
ggsave(plot_africa$plot_laz, file=paste0(fig_dir, "stunting/fig-", africa_laz_plot_name,
                                        ".png"), width=12, height=6)
