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
# sn <- readRDS(paste0(here::here(), "/results/stunt_skewed_normal.RDS"))

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

# sn_plot <- sn %>% filter(cohortid %in%
#                            unique(d_plot$cohortid))

#------------------------------
# plot empirical distribution over different ages 
#------------------------------

plot_sa = ggplot(d_plot %>% filter(!is.na(agecat) & !is.na(cohortid) & region=="South Asia"), 
       aes(x = haz)) +
  geom_density(aes(col = agecat), bw = 0.3) +
  scale_color_viridis("Age",  option = "D", discrete=T, direction = -1, end = 0.8) +
  scale_x_continuous(limits = c(-6,6), breaks=seq(-6,6,1), labels=seq(-6,6,1)) +
  # geom_label(aes(x = 4, y = 0.25, label = label, col = agecat), data = sn_plot,
  #            size = 3) +
  ggtitle("South Asia") +
  facet_wrap(~cohortid, scales = "free", ncol=7)+
  theme(legend.position = "none",
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.minor.y = element_blank(),
        axis.title.x=element_blank(),
        plot.title = element_text(hjust = 0)) 


plot_af = ggplot(d_plot %>% filter(!is.na(agecat) & !is.na(cohortid) & region=="Africa"), 
                 aes(x = haz)) +
  geom_density(aes(col = agecat), bw = 0.3) +
  scale_color_viridis("Age",  option = "D", discrete=T, direction = -1, end = 0.8) +
  scale_x_continuous(limits = c(-6,6), breaks=seq(-6,6,1), labels=seq(-6,6,1)) +
  facet_wrap(~cohortid, scales = "free", nrow=2, ncol=7)+
  ggtitle("Africa") +
  theme(legend.position = "none",
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.minor.y = element_blank(),
        axis.title.x=element_blank(),
        plot.title = element_text(hjust = 0)) 

plot_other = ggplot(d_plot %>% filter(!is.na(agecat) & 
                                        !is.na(cohortid) & 
                                        region!="South Asia" & region!="Africa"), aes(x = haz)) +
  geom_density(aes(col = agecat), bw = 0.3) +
  scale_color_viridis("Age",  option = "D", discrete=T, direction = -1, end = 0.8) +
  scale_x_continuous(limits = c(-6,6), breaks=seq(-6,6,1), labels=seq(-6,6,1)) +
  facet_wrap(~cohortid, scales = "free", ncol=7)+ 
  ggtitle("Europe and Latin America") +
  theme(legend.position = "bottom",
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.minor.y = element_blank(),
        plot.title = element_text(hjust = 0))  +
  guides(color = guide_legend(nrow = 1))

grid.arrange(plot_sa, plot_af, plot_other, nrow=3, heights = c(4,1.5,2.3))


# gamma1 denotes the Pearson’s index of skewness
# The direction of skewness is given by the sign.
# The coefficient compares the sample distribution with a normal distribution. The larger the value, the larger the distribution differs from a normal distribution.
# A value of zero means no skewness at all.
# A large negative value means the distribution is negatively skewed.
# A large positive value means the distribution is positively skewed.

# #------------------------------
# # plot of mean, sd, skew
# #------------------------------
# sn_fits_age_df_l = sn_fits_age_df %>% 
#   dplyr::select(-c(mean_f, sd_f, gamma1_f, label)) %>% 
#   pivot_longer(cols = c(`mean`, `s.d.`, gamma1),
#                names_to = "parameter",
#                values_to = "estimate")
# 
# ggplot(sn_fits_age_df_l %>% filter(!is.na(agecat)), aes(x = agecat, y = estimate)) +
#   geom_violin(aes(col = agecat)) +
#   geom_point(aes(col = agecat), position = position_jitter(width=0.2), alpha = 0.5) +
#   scale_color_viridis("Age",  option = "D", discrete=T, direction = -1, end = 0.8) +
#   facet_wrap(~parameter, ncol=1,scales = "free")+
#   theme(
#     panel.grid.major.x = element_blank(),
#     panel.grid.minor.x = element_blank(),
#     panel.grid.minor.y = element_blank(),
#     axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

