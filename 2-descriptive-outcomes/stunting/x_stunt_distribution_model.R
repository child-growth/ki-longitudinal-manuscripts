##########################################
# ki longitudinal manuscripts
# stunting analysis

# parametric distributional model
##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(fitdistrplus)
library(sn)

d <- readRDS(stunting_data_path)

#------------------------------
# define age windows
#------------------------------
d_clean <- calc.ci.agecat(d, range = 3, birth="no")

agelst3_birthstrat = list(
  "Birth",
  "8 days-3 months",
  "3-6 months",
  "6-9 months",
  "9-12 months",
  "12-15 months",
  "15-18 months",
  "18-21 months",
  "21-24 months"
)


#------------------------------
# fit skewed normal model 
#------------------------------
xd = d_clean %>% filter(studyid=="CMC-V-BCS-2002")

fit_sn = function(data){
  fit = selm(haz ~ 1, data = data)
  out = as.data.frame(t(fit@param$cp))
  out$agecat = unique(data$agecat)
  assert_that(length(unique(data$studyid))==1)
  out$studyid = unique(data$studyid)
  return(out)
}

studyid_list = as.list(unique(d_clean$studyid))

sn_fits_list = list()
sn_fits_age_list = list()

for(i in 1:length(studyid_list)){
  print(paste0("i: ", i))
  for(j in 1:length(agelst3_birthstrat)){
    print(paste0("j: ", j))
    fit_data = d_clean %>% 
      filter(agecat == agelst3_birthstrat[[j]]) %>% 
      filter(studyid==studyid_list[[i]])
    if(nrow(fit_data)<30){
      sn_fits_age_list[[j]] = data.frame(mean = NA, `s.d.` = NA, gamma1 = NA)
    }else{
      sn_fits_age_list[[j]] = fit_sn(data = fit_data)
    }
  }
  sn_fits_list[[i]] = bind_rows(sn_fits_age_list)
  sn_fits_age_list[[j]] = NULL
  
}

sn_fits_age_df = bind_rows(sn_fits_list)

sn_fits_age_df$mean_f = paste0("Mean: ", sprintf("%0.02f", sn_fits_age_df$mean))
sn_fits_age_df$sd_f = paste0("SD: ", sprintf("%0.02f", sn_fits_age_df$`s.d.`))
sn_fits_age_df$gamma1_f = paste0("Gamma: ", sprintf("%0.02f", sn_fits_age_df$gamma1))
sn_fits_age_df$label = paste0(sn_fits_age_df$mean_f, "\n", 
                              sn_fits_age_df$sd_f, "\n",
                              sn_fits_age_df$gamma1_f)

#------------------------------
# plot empirical distribution over different ages 
#------------------------------

library(viridis)
# version with overlay
ggplot(xd %>% filter(!is.na(agecat)), aes(x = haz)) +
  geom_density(aes(col = agecat)) +
  geom_point(data = sn_fits, aes(x=mean, y = 0, col = agecat), shape = 1, size = 3, 
             stroke=1) + 
  scale_color_viridis("Age",  option = "D", discrete=T, direction = -1, end = 0.9) +
  scale_x_continuous(limits = c(-6,6), breaks=seq(-6,6,1), labels=seq(-6,6,1)) +
  theme(legend.position = "right",
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.minor.y = element_blank())

# version with facet grid
ggplot(d_clean %>% filter(!is.na(agecat)), aes(x = haz)) +
  geom_density(aes(col = agecat)) +
  scale_color_viridis("Age",  option = "D", discrete=T, direction = -1, end = 0.8) +
  scale_x_continuous(limits = c(-6,6), breaks=seq(-6,6,1), labels=seq(-6,6,1)) +
  # geom_label(aes(x = -5.4, y = 0.25, label = label, col = agecat), data = sn_fits,
  #            size = 3) +
  facet_wrap(~studyid, scales = "free")+
  theme(legend.position = "bottom",
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.minor.y = element_blank())


# gamma1 denotes the Pearson’s index of skewness
# The direction of skewness is given by the sign.
# The coefficient compares the sample distribution with a normal distribution. The larger the value, the larger the distribution differs from a normal distribution.
# A value of zero means no skewness at all.
# A large negative value means the distribution is negatively skewed.
# A large positive value means the distribution is positively skewed.

#------------------------------
# plot of mean, sd, skew
#------------------------------
sn_fits_age_df_l = sn_fits_age_df %>% 
  dplyr::select(-c(mean_f, sd_f, gamma1_f, label)) %>% 
  pivot_longer(cols = c(`mean`, `s.d.`, gamma1),
               names_to = "parameter",
               values_to = "estimate")
  
ggplot(sn_fits_age_df_l %>% filter(!is.na(agecat)), aes(x = agecat, y = estimate)) +
  geom_violin(aes(col = agecat)) +
  geom_point(aes(col = agecat), position = position_jitter(width=0.2), alpha = 0.5) +
  scale_color_viridis("Age",  option = "D", discrete=T, direction = -1, end = 0.8) +
  facet_wrap(~parameter, ncol=1,scales = "free")+
  theme(
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    panel.grid.minor.y = element_blank(),
    axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

