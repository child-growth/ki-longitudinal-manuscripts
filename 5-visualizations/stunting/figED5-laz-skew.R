##########################################
# ki longitudinal manuscripts
# stunting analysis

# violin plot of outputs from 
# skewed normal model
##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(viridis)

sn <- readRDS(paste0(res_dir, "stunting/stunt_skewed_normal.RDS"))
# gamma1 denotes the Pearson’s index of skewness
# The direction of skewness is given by the sign.
# The coefficient compares the sample distribution with a normal distribution. The larger the value, the larger the distribution differs from a normal distribution.
# A value of zero means no skewness at all.
# A large negative value means the distribution is negatively skewed.
# A large positive value means the distribution is positively skewed.

#------------------------------
# plot N's
#------------------------------
d <- readRDS(stunting_data_path)
d_clean <- calc.ci.agecat(d, range = 3, birth="no")

# number of cohorts
d_clean %>% ungroup() %>% dplyr::select(studyid, country, subjid) %>% 
  distinct() %>% 
  summarise(n=n()) 

# number of people
d_clean %>% ungroup() %>% dplyr::select(studyid, country) %>% 
  distinct() %>% 
  summarise(n=n()) 

# number of measurements
d_clean %>% ungroup() %>% dplyr::select(agecat, studyid, country, subjid) %>% 
  summarise(n=n())

#------------------------------
# plot of mean, sd, skew
#------------------------------
snl = sn %>%
  dplyr::select(-c(mean_f, sd_f, gamma1_f, label)) %>%
  pivot_longer(cols = c(`mean`, `s.d.`, gamma1),
               names_to = "parameter",
               values_to = "estimate") %>% 
  mutate(agecat = as.character(agecat)) %>% 
  mutate(agecat = ifelse(agecat == "8 days-3 months", "0-3",agecat)) %>% 
  mutate(agecat = str_remove(agecat, " months")) %>% 
  mutate(agecat = factor(agecat, levels = c(
    "Birth", "0-3", "3-6", "6-9", "9-12",
    "12-15", "15-18", "18-21", "21-24"
  ))) %>% 
  mutate(parameter = case_when(
    parameter == "mean" ~ "Mean",
    parameter == "s.d." ~ "Standard deviation",
    parameter == "gamma1" ~ "Skewness"
  )) %>% 
  mutate(parameter = factor(parameter, levels = c("Mean", "Standard deviation", "Skewness")))

plot = ggplot(snl %>% filter(!is.na(agecat)), aes(x = agecat, y = estimate)) +
  geom_violin(aes(col = agecat)) +
  geom_point(aes(col = agecat), position = position_jitter(width=0.2), alpha = 0.5) +
  scale_color_viridis("Age",  option = "D", discrete=T, direction = -1, end = 0.8) +
  facet_wrap(~parameter, ncol=3,scales = "free")+
  xlab("Age, months") +
  ylab("Estimate") +
  theme(
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    panel.grid.minor.y = element_blank(),
    axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

ggsave(plot, file=paste0(fig_dir, "stunting/fig-laz-violin.png"), width=9, height=3)
