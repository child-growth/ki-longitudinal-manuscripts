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
# plot_region = readRDS(paste0(res_dir, "stunting/stunt-flow-data-region.RDS"))

# pooled data
pooled_data = readRDS(paste0(res_dir, "stunting/stuntflow_pooled_reml.RDS"))
region_data = readRDS(paste0(res_dir, "stunting/stuntflow_pooled_region_reml.RDS"))


# define color palette -----------------------------------------------------
pink_green = rev(brewer.pal(n = 7, name = "PiYG"))
pink_green[3] = "#CDF592"
pink_green[5] = "#EA67AE"
pink_green[4] = "#FFB7DC"
pink_green[6] = "#BF0C6D"
pink_green[7] = "#000000"

# process pooled data -----------------------------------------------------
pooled <- region_data %>% 
  dplyr::select(label, region, agem, nmeas, est, lb, ub) %>% 
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
                                    ub = NA) %>% 
  mutate(region = case_when(
    cohort_country=="CMC-V-BCS-2002 - INDIA" ~ "South Asia",
    cohort_country=="CMIN Bangladesh93 - BANGLADESH" ~ "South Asia",
    cohort_country=="CMIN Peru89 - PERU" ~ "Latin America",
    cohort_country=="CMIN Peru95 - PERU" ~ "Latin America",
    cohort_country=="CONTENT - PERU" ~ "Latin America",
    cohort_country=="EE - PAKISTAN" ~ "South Asia",
    cohort_country=="GMS-Nepal - NEPAL" ~ "South Asia",
    cohort_country=="Guatemala BSC - GUATEMALA" ~ "Latin America",
    cohort_country=="IRC - INDIA" ~ "South Asia",
    cohort_country=="Keneba - GAMBIA" ~ "Africa",
    cohort_country=="MAL-ED - BANGLADESH" ~ "South Asia",
    cohort_country=="MAL-ED - BRAZIL" ~ "Latin America",
    cohort_country=="MAL-ED - INDIA" ~ "South Asia",
    cohort_country=="MAL-ED - NEPAL" ~ "South Asia",
    cohort_country=="MAL-ED - PERU" ~ "Latin America",
    cohort_country=="MAL-ED - SOUTH AFRICA" ~ "Africa",
    cohort_country=="MAL-ED - TANZANIA" ~ "Africa",
    cohort_country=="PROVIDE - BANGLADESH" ~ "South Asia",
    cohort_country=="ResPak - PAKISTAN" ~ "South Asia",
    cohort_country=="TanzaniaChild2 - TANZANIA" ~ "Africa",
    cohort_country=="TDC - INDIA" ~ "South Asia"
  ))



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
                                              "Stunting reversed"))) %>% 
  mutate(cohort_country= ifelse(is.na(cohort_country), "Pooled", cohort_country)) %>% 
  filter(region!="Overall")


# make plot  -----------------------------------------------------
p_inc = ggplot(plot_combine , 
               aes(x=agem, y = percent))+

  facet_grid(classif ~region, scales = "free") +
  
  # cohort-specific
  geom_line(aes(group = cohort_country, col = classif), size = 0.5, alpha = 0.75, 
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
  # scale_x_continuous(limits = c(0,27), breaks = seq(0,27,3), labels = seq(0,27,3)) +

  xlab("Child age, months") +
  ylab("Incidence proportion (%)") +
  theme(legend.position = "bottom",
        panel.grid.minor = element_blank(),
        panel.grid.major.x = element_blank(),
        axis.title.x = element_text(size=14),
        axis.title.y = element_text(size=14),
        legend.text = element_text(size=12))  +
  guides(color = guide_legend(nrow = 1, byrow = TRUE))

p_inc

# save plot and underlying data -----------------------------------------------------
ggsave(p_inc, file=paste0(fig_dir, "stunting/fig-stunt-2-flow-line-region-allage-primary.png"),
       width=6, height=6)
saveRDS(plot_combine, file=paste0(figdata_dir_stunting, "figdata-stunt-2-flow-line-region-allage-primary.RDS"))
