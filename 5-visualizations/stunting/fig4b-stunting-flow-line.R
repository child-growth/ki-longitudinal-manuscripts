##########################################
# ki longitudinal manuscripts
# stunting analysis

# figure: line plot showing 
# proportion of children who were newly stunted, 
# relapsed, recovered
# includes category for mortality
# stratified by region and cohort

# inputs: 
# stunt-flow-data-pooled.RDS
# stunt-flow-data-region.RDS
# stunt-flow-data-cohort.RDS

# outputs: UPDATE
# fig-stunt-2-flow-overall--allage-primary.png
# fig-stunt-2-flow-region--allage-primary.png

# figdata-stunt-2-flow-overall--allage-primary.RDS
# figdata-stunt-2-flow-region--allage-primary.RDS
##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# cohort data
plot_cohort = readRDS(paste0(res_dir, "stunting/stunt-flow-data-cohort.RDS"))

# pooled data
pooled_data = readRDS(paste0(res_dir, "stunting/stuntflow_pooled_reml.RDS"))
plot_region = readRDS(paste0(res_dir, "stunting/stunt-flow-data-region.RDS"))

# define color palette -----------------------------------------------------
pink_green = rev(brewer.pal(n = 7, name = "PiYG"))
pink_green[3] = "#CDF592"
pink_green[5] = "#EA67AE"
pink_green[4] = "#FFB7DC"
pink_green[6] = "#BF0C6D"
pink_green[7] = "#000000"

# process pooled data -----------------------------------------------------
pooled <- pooled_data %>% 
  dplyr::select(label, agem, nmeas, est, lb, ub) %>% 
  mutate(n = NA,
         cohort_country = "Pooled") %>% 
  rename(classif = label, 
         tot = nmeas,
         percent = est) %>% 
  mutate(agem = as.numeric(as.character(agem))) %>% 
  filter(agem<=15) %>% 
  mutate(classif = ifelse(classif == "Recovered", "Stunting reversed", classif))

# drop rows that pooled over age not in underlying cohort data
pooled = pooled[-which(pooled$agem<2 & pooled$classif=="Stunting relapse"),]
pooled = pooled[-which(pooled$agem<1 & pooled$classif=="Stunting reversed"),]
# pooled = pooled[-which(pooled$agem<1 & pooled$classif=="Newly stunted"),]

plot_cohort= plot_cohort %>% mutate(agem = as.numeric(as.character(agem)),
                                    lb = NA,
                                    ub = NA)

# combine overall and cohort data -----------------------------------------------------
plot_combine = bind_rows(pooled, plot_cohort)  %>% 
  # drop if small number of obs
  mutate(percent= ifelse(tot<50, NA, percent)) %>% filter(classif!="Never stunted" & 
                               classif!="No longer stunted" & 
                               classif!="Still stunted" &
                               classif!="Recovered" & 
                               classif!="Not stunted") %>% 
  mutate(classif = factor(classif, levels = c(
                                              "Newly stunted",
                                              "Stunting relapse",
                                              "Stunting reversed")))


# make plot  -----------------------------------------------------
p_inc = ggplot(plot_combine , 
               aes(x=agem, y = percent))+

  facet_wrap(~classif, scales = "free") +
  
  # cohort-specific
  geom_line(aes(group = cohort_country, col = classif), size = 0.5, alpha = 0.5, 
            data = plot_combine %>% filter(cohort_country!="Pooled")) +
  
  # pooled
  geom_line(aes( group = cohort_country), size=1,
            data = plot_combine %>% filter(cohort_country=="Pooled")) +
  
  # pooled bounds
  geom_errorbar(aes(ymin = lb, 
                     ymax = ub,
                     group = cohort_country), size=0.5,
            data = plot_combine %>% filter(cohort_country=="Pooled"),
            width = 0.3) +

  
  scale_color_manual("", values = c(pink_green[c(4,5)],"#ADDE66")) +
  scale_x_continuous(limits = c(0,15), breaks = seq(0,15,3), labels = seq(0,15,3)) +

  xlab("Child age, months") +
  ylab("Incidence proportion (%)") +
  theme(legend.position = "none",
        panel.grid.minor = element_blank(),
        panel.grid.major.x = element_blank(),
        axis.title.x = element_text(size=14),
        axis.title.y = element_text(size=14))  +
  guides(color = guide_legend(nrow = 1, byrow = TRUE))

p_inc

make_inc_plot = function(data, ymin, ymax, ybreaks, color, xlab_include, ylab_include){
 plot =  ggplot(data , 
         aes(x=agem, y = percent))+
    
   facet_wrap(~classif) +
   
   # cohort-specific
    geom_line(aes(group = cohort_country, col = classif), size = 0.5, alpha = 0.5, 
              data = data %>% filter(cohort_country!="Pooled")) +
    
    # pooled
    geom_line(aes( group = cohort_country), size=1,
              data = data %>% filter(cohort_country=="Pooled")) +
    
    # pooled bounds
    geom_errorbar(aes(ymin = lb, 
                      ymax = ub,
                      group = cohort_country), size=0.5,
                  data = data %>% filter(cohort_country=="Pooled"),
                  width = 0.3) +
    
    
    scale_color_manual("", values = color) +
    scale_x_continuous(limits = c(0,15), breaks = seq(0,15,3), labels = seq(0,15,3)) +
    scale_y_continuous(limits = c(ymin, ymax), 
                       breaks = seq(ymin,ymax,ybreaks), 
                       labels = seq(ymin,ymax,ybreaks)) +
   
    xlab("Child age, months") +
    ylab("Incidence proportion (%)") +
    theme(legend.position = "none",
          panel.grid.minor = element_blank(),
          panel.grid.major.x = element_blank(),
          axis.title.x = element_text(size=14),
          axis.title.y = element_text(size=14))  +
    guides(color = guide_legend(nrow = 1, byrow = TRUE)) 
 
 if(!xlab_include) plot = plot + xlab("")
 if(!ylab_include) plot = plot + theme(axis.title.y = element_blank())
  
  return(plot)
  
}

p_inc_newly = make_inc_plot(data = plot_combine %>% filter(classif=="Newly stunted"), 
              ymin = 0, ymax = 45, ybreaks = 10, color = "#FFB7DC", 
              xlab_include=F, ylab_include=T)

p_inc_relapse = make_inc_plot(data = plot_combine %>% filter(classif=="Stunting relapse"), 
              ymin = 0, ymax = 11, ybreaks = 2, color = "#EA67AE", 
              xlab_include=T, ylab_include=F)

p_inc_rev = make_inc_plot(data = plot_combine %>% filter(classif=="Stunting reversed"), 
              ymin = 0, ymax = 11, ybreaks = 2, color = "#ADDE66", 
              xlab_include=F, ylab_include=F)

p_inc = grid.arrange(p_inc_newly, p_inc_relapse, p_inc_rev,
                     ncol = 3)
  

# save plot and underlying data -----------------------------------------------------
ggsave(p_inc, file=paste0(fig_dir, "stunting/fig-stunt-2-flow-line-overall-allage-primary.png"), 
       width=6, height=4)
saveRDS(plot_combine, file=paste0(figdata_dir_stunting, "figdata-stunt-2-flow-line-overall-allage-primary.RDS"))



