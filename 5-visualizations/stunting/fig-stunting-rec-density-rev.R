##########################################
# ki longitudinal manuscripts
# stunting analysis

# figure: stacked density of cohorts of 
# children who recovered at different ages. 
# histograms show distribution of LAZ
# at subsequent measurements following recovery.

# inputs: stunt_rec_cohort.RDS

# outputs: 
# fig-laz-2-rec_dist-overall--allage-primary.png
# figdata-laz-2-rec_dist-overall--allage-primary.RDS

##########################################

#-----------------------------------------
# Preamble
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
# 
# # load stunting recovery cohort data
# d = readRDS(paste0(resstunt_rec_cohort.RDS_dir, "stunt_rec_cohort.RDS"))
# 
# d$subjid <- as.numeric(d$subjid)
# 
# # drop data beyond 16 months since it is 
# # sparse in most studies
# d = d %>% filter(agedays<=16 * 30.4167)
# 
# # number of studies, countries, children included
# length(names(table(paste0(d$studyid,d$country))))
# length(names(table(d$country)))
# 
# x=d %>% group_by(studyid) %>% summarise(n = length(unique(subjid)))
# sum(x$n)
# 
# 
# #-----------------------------------------
# # Change in LAZ
# #-----------------------------------------
# # calculate mean LAZ within age groups for each child
# dc <- d %>% group_by(region, country, studyid, subjid, sex, agecat) %>% 
#   summarise(mean_laz = mean(haz, na.rm = T))
# 
# # subset to children with at least two age categories
# dc <- dc %>% mutate(childn = n()) %>% 
#   filter(childn>=2) %>% 
#   dplyr::select(-childn)
# 
# # convert long to wide, then calculate 
# # difference in mean LAZ
# dw <- dc %>% pivot_wider(names_from = agecat,
#                          values_from = mean_laz) 
# 
# #-----------------------------------------
# # Convert to long format
# #-----------------------------------------
# # TEMP just do Keneba
# 
# # dataset with difference in mean LAZ
# diff_data <- dw %>% filter(studyid=="Keneba") %>% 
#   mutate(`diff_3-6 months` = `3-6 months` - Birth,
#          `diff_6-9 months` = `6-9 months` - `3-6 months`,
#          `diff_9-12 months` = `9-12 months` - `6-9 months`,
#          `diff_12-15 months` = `12-15 months` - `9-12 months`,
#          `diff_15-18 months` = `15-18 months` - `12-15 months`
#   ) %>% 
#   dplyr::select(-c(Birth, `0-3 months`, `3-6 months`, `6-9 months`,
#                    `9-12 months`, `12-15 months`, `15-18 months`)) %>% 
#   ungroup()
# 
# diff_datal <- pivot_longer(diff_data,
#                       cols = starts_with("diff_"),
#                       names_prefix = "diff_",
#                       names_to = "agecat",
#                       values_to = "diff_mean_laz") %>% 
#   mutate(agecat = factor(agecat, levels = c( "3-6 months", "6-9 months",
#                                              "9-12 months", "12-15 months", "15-18 months")))
# 
# # dataset with mean LAZ
# mean_data <- dw %>% filter(studyid=="Keneba") %>% ungroup()
# mean_datal <- pivot_longer(mean_data,
#                            cols = c("Birth", `0-3 months`,`3-6 months`,
#                                     `6-9 months`, `9-12 months`, `12-15 months`,
#                                     `15-18 months`),
#                            names_to = "agecat",
#                            values_to = "mean_laz") %>% 
#   mutate(agecat = factor(agecat, levels = c("Birth","0-3 months", "3-6 months", "6-9 months",
#                                             "9-12 months", "12-15 months", "15-18 months"))) %>% 
#   arrange(region, country, studyid, subjid, agecat) %>% 
#   mutate(stunted = ifelse(mean_laz < -2, 1, 0)) %>% 
#   mutate(lagstunted = lag(stunted)) %>% 
#   mutate(reversal = ifelse(stunted==0 & lagstunted==1, 1, 0))
# 
# # combine datasets for plotting
# plot_data = full_join(mean_datal, diff_datal, 
#                       by = c("region", "country", "studyid", "subjid","sex","agecat"))
# 
# ggplot(plot_data, aes(x = diff_mean_laz)) +
#   geom_density(data=subset(plot_data,stunted == 1),fill = "red", alpha = 0.2) +
#   geom_density(data=subset(plot_data,reversal == 1),fill = "blue", alpha = 0.2) +
#   geom_density(data=subset(plot_data,stunted!=1& reversal!=1),fill = "gray", alpha = 0.2) +
#   facet_wrap(~agecat, ncol=1)
# 
# ggplot(plot_data, aes(x = diff_mean_laz)) +
#   geom_histogram(data=subset(plot_data,stunted == 1),fill = "red", alpha = 0.2, bins=70) +
#   geom_histogram(data=subset(plot_data,reversal == 1),fill = "blue", alpha = 0.2, bins=70) +
#   geom_histogram(data=subset(plot_data,stunted!=1& reversal!=1),fill = "gray", alpha = 0.2, bins=70) +
#   facet_wrap(~agecat, ncol=1)
# 
# # next step: use indiv level data from bar chart with recovery
# # that has all phenotypes... monthly data, should have less missingness 
# 
# 
# 







d = readRDS(paste0(res_bluevelvet_dir, "stuntflow_mort.RDS"))
d$test = d$never_stunted+d$not_stunted+d$recover+d$newly_stunted+
     d$relapse+d$still_stunted

d = d %>% 
  mutate(laghaz = lag(haz)) %>% 
  mutate(diff_haz = haz - laghaz)

# x = d %>% filter(studyid=="CMC-V-BCS-2002")
x=d

x = x %>% filter(agem >0 & agem<=15)

x = x %>% mutate(agemf = paste0(agem, " months")) %>% 
  mutate(agemf = ifelse(agemf=="1 months", "1 month", agemf)) %>% 
  mutate(agemf = factor(agemf, levels = c("1 month", paste0(seq(2,15,1), " months"))))


xl = x %>% 
  filter(death==0) %>% 
  mutate(new_rel_stunt = ifelse(newly_stunted==1 | relapse == 1, 1, 0)) %>% 
  dplyr::select(agem,agemf,never_stunted, not_stunted, recover, new_rel_stunt,
                still_stunted, haz, diff_haz) %>% 
  mutate(category = case_when(
    never_stunted == 1 ~ "Never stunted",
    not_stunted == 1 ~ "No longer stunted",
    recover == 1 ~ "Recovered",
    new_rel_stunt == 1 ~ "Newly stunted or relapsed",
    still_stunted == 1 ~ "Still stunted"
  )) %>% 
  mutate(category = factor(category, levels = c(
    "Never stunted", "No longer stunted", "Recovered",
    "Still stunted", "Newly stunted or relapsed"
  )))

#-----------------------------------------
# define color palette
#-----------------------------------------
pink_green = rev(brewer.pal(n = 7, name = "PiYG"))
pink_green[3] = "#CDF592"
pink_green[5] = "#EA67AE"
pink_green[4] = "#FFB7DC"
pink_green[6] = "#BF0C6D"
pink_green[7] = "#000000"


#-----------------------------------------
# plot of laz distribution
#-----------------------------------------
ggplot(xl, aes(x = haz)) +
  geom_density(aes(fill = category), alpha = 0.6, col = "black", size = 0.05) + 
  scale_x_continuous(limits= c(-4,4), breaks = seq(-4,4,1), labels = seq(-4,4,1)) + 
  scale_fill_manual(values = c(pink_green[1], pink_green[2], "#E8F592",
                                pink_green[6], pink_green[4])) +
  geom_vline(xintercept = -2) +
  facet_wrap(~agemf, nrow=3) +
  theme_bw()+
  theme(legend.position = "bottom",
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank()) +
  ggtitle("Distribution of LAZ")

#-----------------------------------------
# violin plot of laz distribution
#-----------------------------------------
ggplot(xl, aes(y = haz, x = category)) +
  geom_violin(aes(fill = category), alpha = 0.6, col = "black", size = 0.05) + 
  scale_fill_manual(values = c(pink_green[1], pink_green[2], "#E8F592",
                               pink_green[6], pink_green[4])) +
  # geom_vline(xintercept = -2) +
  facet_wrap(~agemf, nrow=3) +
  theme_bw()+
  theme(legend.position = "bottom",
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank()) +
  ggtitle("Distribution of LAZ")

ggplot(xl, aes(y = haz, x = agemf)) +
  geom_violin(aes(fill = agemf), alpha = 0.6, col = "black", size = 0.05) + 
  # scale_fill_manual(values = c(pink_green[1], pink_green[2], "#E8F592",
  #                              pink_green[6], pink_green[4])) +
  # geom_vline(xintercept = -2) +
  facet_wrap(~category, nrow=3) +
  theme_bw()+
  theme(legend.position = "bottom",
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank()) +
  ggtitle("Distribution of LAZ")



#-----------------------------------------
# plot of change in laz distribution
#-----------------------------------------
ggplot(xl, aes(x = diff_haz)) +
  geom_density(aes(fill = category), alpha = 0.6, col = "black", size = 0.05) + 
  scale_x_continuous(limits= c(-4,4), breaks = seq(-4,4,1), labels = seq(-4,4,1)) + 
  scale_fill_manual(values = c(pink_green[1], pink_green[2], "#E8F592",
                               pink_green[6], pink_green[4])) +
  facet_wrap(~agemf, nrow=3) +
  theme_bw()+
  theme(legend.position = "bottom",
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank())+
  ggtitle("Distribution of change in LAZ")





