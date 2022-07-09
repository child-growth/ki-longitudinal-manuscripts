##########################################
# ki longitudinal manuscripts
# stunting analysis

# figure: line plot showing 
# proportion of children who were newly stunted, 
# relapsed, recovered

# stratified by birth LAZ and cohort

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

# overall panel (not strat by birth laz)
plot_overall = readRDS(paste0(res_dir, "stunting/stuntflow_pooled_reml.RDS")) %>%
  mutate(birth_laz = "Overall") %>% 
  rename(tot = nmeas,
         percent = est)

# cohort data
plot_cohort = readRDS(paste0(res_dir, "stunting/stunt-flow-data-cohort-birthlaz.RDS")) %>% 
  filter(!is.na(birth_laz))

# N per panel
N_panel_count = plot_cohort %>% group_by(birth_laz, classif) %>% 
  filter(classif %in% c("Newly stunted", "Stunting reversed", "Stunting relapse")) %>%
  summarise(n=sum(tot)) %>% 
  mutate(label = paste0("N=",n)) %>% 
  mutate(birth_laz = case_when(
    birth_laz=="LAZ under -2" ~ "Birth LAZ under -2",
    birth_laz=="LAZ -2 to 0" ~ "Birth LAZ -2 to 0",
    birth_laz=="LAZ 0 or more" ~ "Birth LAZ 0 or more"
  )) 

# count of regions per panel
region_panel_count = plot_cohort %>% 
  filter(classif %in% c("Newly stunted", "Stunting reversed", "Stunting relapse")) %>%
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
  )) %>% 
  dplyr::select(birth_laz, classif, region, cohort_country) %>% 
  distinct() %>% 
  group_by(birth_laz, classif, region) %>% 
  summarise(n=n()) %>% 
  mutate(label = paste0(region, ": ", n)) %>% 
  mutate(birth_laz = case_when(
    birth_laz=="LAZ under -2" ~ "Birth LAZ under -2",
    birth_laz=="LAZ -2 to 0" ~ "Birth LAZ -2 to 0",
    birth_laz=="LAZ 0 or more" ~ "Birth LAZ 0 or more"
  )) %>% 
  mutate(birth_laz = factor(birth_laz, levels = c(
    "Birth LAZ under -2", "Birth LAZ -2 to 0", "Birth LAZ 0 or more"
  ))) %>% group_by(birth_laz, classif) %>% 
  summarise(label2 = paste0(label, collapse = "\n")) 

# pooled data
birthlaz_data = readRDS(paste0(res_dir, "stunting/stuntflow_pooled_birthlaz_reml.RDS"))

# how many cohorts have data in each birth laz cat
x=plot_cohort %>% select(cohort_country, birth_laz) %>% distinct()
table(x$birth_laz)

# get summary of model types 
models_strat <- birthlaz_data %>% 
  mutate(agem = as.numeric(as.character(agem))) %>% 
  filter(agem<=15) %>% 
  filter(label %in% c("Newly stunted", "Stunting relapse", "Recovered"))

drops <- which(models_strat$birth_laz=="LAZ under -2" & models_strat$label=="Newly stunted")
models_strat <- models_strat[-drops,]

drops <- which(models_strat$agem==0 & models_strat$label!="Newly stunted")
models_strat <- models_strat[-drops,]

table(models_strat$method.used)

models_overall <- plot_overall %>%
  mutate(agem = as.numeric(as.character(agem))) %>% 
  filter(agem<=15) %>% 
  filter(label %in% c("Newly stunted", "Stunting relapse", "Recovered"))

drops <- which(models_overall$agem==0 & models_overall$label!="Newly stunted")
models_overall <- models_overall[-drops,]

table(models_overall$method.used)

nrow(models_strat) + nrow(models_overall)

# define color palette -----------------------------------------------------
pink_green = rev(brewer.pal(n = 7, name = "PiYG"))
pink_green[3] = "#CDF592"
pink_green[5] = "#EA67AE"
pink_green[4] = "#FFB7DC"
pink_green[6] = "#BF0C6D"
pink_green[7] = "#000000"

# process pooled data -----------------------------------------------------
pooled <- birthlaz_data %>% 
  dplyr::select(label, birth_laz, agem, nmeas, est, lb, ub) %>% 
  mutate(n = NA,
         cohort_country = "Pooled") %>% 
  rename(classif = label, 
         tot = nmeas,
         percent = est) %>% 
  mutate(agem = as.numeric(as.character(agem))) %>% 
  filter(agem<=15) %>% 
  mutate(classif = ifelse(classif == "Recovered", "Stunting reversed", classif))

# percentage of children with reversal per month
# by birth LAZ category 
pooled %>% filter(agem>6) %>% 
  filter(birth_laz=="LAZ under -2") %>% 
  filter(classif=="Stunting reversed") %>% 
  dplyr::select(agem, percent)

pooled %>% filter(agem>6) %>% 
  filter(birth_laz=="LAZ -2 to 0") %>% 
  filter(classif=="Stunting reversed") %>% 
  dplyr::select(agem, percent)

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
                                              "Stunting reversed"))) %>% 
  mutate(cohort_country= ifelse(is.na(cohort_country), "Pooled", cohort_country)) %>% 
  mutate(birth_laz = case_when(
    birth_laz=="LAZ under -2" ~ "Birth LAZ under -2",
    birth_laz=="LAZ -2 to 0" ~ "Birth LAZ -2 to 0",
    birth_laz=="LAZ 0 or more" ~ "Birth LAZ 0 or more"
  )) %>% 
  mutate(birth_laz = factor(birth_laz, levels = c(
    "Birth LAZ under -2", "Birth LAZ -2 to 0", "Birth LAZ 0 or more"
  ))) 

# drop newly stunted if age <2 months
# these are an artifact of how age was coded
# within stunting categories
recodes = which(plot_combine$birth_laz=="Birth LAZ under -2" & 
                plot_combine$classif=="Newly stunted")
plot_combine$percent[recodes] <- NA
plot_combine$lb[recodes] <- NA
plot_combine$ub[recodes] <- NA

# combine with overall plot ----------------------
# main_line_data <- readRDS(paste0(figdata_dir_stunting, "figdata-stunt-2-flow-line-overall-allage-primary.RDS"))
# main_line_data <- main_line_data %>% mutate(birth_laz = "Overall")
plot_combine <- bind_rows(plot_combine, plot_overall) %>% 
  mutate(birth_laz = factor(birth_laz, levels = c(
    "Overall", "Birth LAZ under -2", 
    "Birth LAZ -2 to 0", "Birth LAZ 0 or more"
  )))

# make plot  -----------------------------------------------------
p_inc = ggplot(plot_combine , 
               aes(x=agem, y = percent))+

  facet_grid(classif ~birth_laz, scales = "free") +
  
  # cohort-specific
  geom_line(aes(group = cohort_country, col = classif), size = 0.5, alpha = 0.75, 
            data = plot_combine %>% filter(cohort_country!="Pooled")) +
  
  # pooled
  geom_line(aes( group = cohort_country), size=0.7,
            data = plot_combine %>% filter(cohort_country=="Pooled")) +
  
  # pooled bounds
  geom_errorbar(aes(ymin = lb, 
                     ymax = ub,
                     group = cohort_country), size=0.5,
            data = plot_combine %>% filter(cohort_country=="Pooled"),
            width = 0.3) +

  
  scale_color_manual("", values = c(pink_green[c(4,5)],"#ADDE66")) +

  xlab("Child age, months") +
  ylab("Incidence proportion (%)") +
  theme(legend.position = "none",
        panel.grid.minor = element_blank(),
        panel.grid.major.x = element_blank(),
        axis.title.x = element_text(size=14),
        axis.title.y = element_text(size=14))  +
  guides(color = guide_legend(nrow = 1, byrow = TRUE))  
  
  # geom_text(aes(x=12, y=80, label=label),
  #           data=N_panel_count, vjust=1)

p_inc


# save plot and underlying data -----------------------------------------------------
ggsave(p_inc, file=paste0(fig_dir, "stunting/fig-stunt-2-flow-line-birthlaz-allage-primary.png"),
       width=8, height=6)
saveRDS(plot_combine, file=paste0(figdata_dir_stunting, "figdata-stunt-2-flow-line-birthlaz-allage-primary.RDS"))
