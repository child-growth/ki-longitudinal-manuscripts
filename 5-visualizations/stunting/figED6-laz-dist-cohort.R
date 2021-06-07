##########################################
# ki longitudinal manuscripts
# stunting analysis

# figure showing laz distributions
# and parametric distributional model
##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(viridis)

d <- readRDS(stunting_data_path)

#------------------------------
# combine study id and country
#------------------------------
d$country = ifelse(d$country == "TANZANIA, UNITED REPUBLIC OF", "TANZANIA", d$country)
d$country = str_to_title(d$country)
d$cohortid = paste0(d$country, " - ", d$studyid)

#------------------------------
# define age windows
#------------------------------
d_clean <- calc.ci.agecat(d, range = 3, birth="no")

#------------------------------
# if N< xxx for an age group in a study
# do not include in plot
#------------------------------
d_plot <- d_clean %>% 
  group_by(cohortid, agecat) %>% 
  mutate(n=n()) %>% 
  filter(n > 80)

#------------------------------
# plot N's
#------------------------------
# number of studies
d_plot$region_comb = d_plot$region
d_plot$region_comb = as.character(d_plot$region_comb)
d_plot$region_comb = ifelse(d_plot$region_comb == "Latin America" |
                              d_plot$region_comb == "N.America & Europe", "LA Eur", d_plot$region_comb)

d_plot %>% ungroup() %>% dplyr::select(region_comb, studyid, country) %>% 
  group_by(region_comb) %>% 
  distinct() %>% 
  summarise(n=n()) 
  
# number of people
d_plot %>% ungroup() %>% dplyr::select(region_comb, studyid, country, subjid) %>% 
  distinct() %>% 
  group_by(region_comb) %>% 
  summarise(n=n()) 

# number of measurements
d_plot %>% ungroup() %>% dplyr::select(region_comb, studyid, country, subjid) %>% 
  group_by(region_comb) %>% 
  summarise(n=n())

#------------------------------
# plot empirical distribution over different ages 
#------------------------------

plot_sa = ggplot(d_plot %>% filter(!is.na(agecat) & !is.na(cohortid) & region=="South Asia"), 
       aes(x = haz)) +
  geom_density(aes(col = agecat), bw = 0.5) +
  scale_color_viridis("Age",  option = "D", discrete=T, direction = -1, end = 0.8) +
  scale_x_continuous(limits = c(-6,6), breaks=seq(-6,6,1), labels=seq(-6,6,1)) +
  ggtitle("South Asia") +
  ylab("Density") +
  facet_wrap(~cohortid, scales = "free", ncol=4)+
  theme(legend.position = "none",
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.minor.y = element_blank(),
        axis.title.x=element_blank(),
        strip.text.x = element_text(size = 12),
        plot.title = element_text(hjust = 0, margin=margin(20,0,10,0))) 


plot_af = ggplot(d_plot %>% filter(!is.na(agecat) & !is.na(cohortid) & region=="Africa"), 
                 aes(x = haz)) +
  geom_density(aes(col = agecat), bw = 0.5) +
  scale_color_viridis("Age",  option = "D", discrete=T, direction = -1, end = 0.8) +
  scale_x_continuous(limits = c(-6,6), breaks=seq(-6,6,1), labels=seq(-6,6,1)) +
  facet_wrap(~cohortid, scales = "free", nrow=2, ncol=4)+
  ggtitle("Africa") +
  ylab("Density") +
  theme(legend.position = "none",
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.minor.y = element_blank(),
        axis.title.x=element_blank(),
        strip.text.x = element_text(size = 12),
        plot.title = element_text(hjust = 0, margin=margin(20,0,10,0))) 

plot_other = ggplot(d_plot %>% filter(!is.na(agecat) & 
                                        !is.na(cohortid) & 
                                        region!="South Asia" & region!="Africa"), aes(x = haz)) +
  geom_density(aes(col = agecat), bw = 0.5) +
  scale_color_viridis("Age",  option = "D", discrete=T, direction = -1, end = 0.8) +
  scale_x_continuous(limits = c(-6,6), breaks=seq(-6,6,1), labels=seq(-6,6,1)) +
  facet_wrap(~cohortid, scales = "free", ncol=4)+ 
  xlab("Length-for-age Z-score") +
  ggtitle("Europe and Latin America") +
  ylab("Density") +
  theme(legend.position = "bottom",
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.minor.y = element_blank(),
        strip.text.x = element_text(size = 12),
        plot.title = element_text(hjust = 0, margin=margin(20,0,10,0)))  +
  guides(color = guide_legend(nrow = 1))

plot_dist = grid.arrange(plot_sa, plot_af, plot_other, nrow=3, heights = c(2.8,1.7,2.1))

ggsave(plot_dist, file=paste0(fig_dir, "stunting/fig-laz-cohort-dist.png"), width=12, height=12)
