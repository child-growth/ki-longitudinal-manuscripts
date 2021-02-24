##########################################
# ki longitudinal manuscripts
# stunting analysis

# parametric distributional model
##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(fitdistrplus)

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
myfn = function(data, age){
  dsub = data %>% filter(agecat == age)
}

test = lapply(agelst3_birthstrat, 
              function(x)
              myfn(data = xd, age = x))


fit_sn = function(data){
  fit = selm(haz ~ 1, data = data)
  out = as.data.frame(t(fit@param$cp))
  out$agecat = unique(data$agecat)
  return(out)
}

sn_fits = agelst3_birthstrat %>% 
  map_dfr(~fit_sn(data = xd %>% filter(agecat == .x)))

sn_fits$mean_f = paste0("Mean: ", sprintf("%0.02f", sn_fits$mean))
sn_fits$sd_f = paste0("SD: ", sprintf("%0.02f", sn_fits$`s.d.`))
sn_fits$gamma1_f = paste0("Gamma: ", sprintf("%0.02f", sn_fits$gamma1))
sn_fits$label = paste0(sn_fits$mean_f, "\n", 
                       sn_fits$sd_f, "\n",
                       sn_fits$gamma1_f)

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
ggplot(xd %>% filter(!is.na(agecat)), aes(x = haz)) +
  geom_density(aes(col = agecat)) +
  scale_color_viridis("Age",  option = "D", discrete=T, direction = -1, end = 0.8) +
  scale_x_continuous(limits = c(-6,6), breaks=seq(-6,6,1), labels=seq(-6,6,1)) +
  geom_label(aes(x = -5.4, y = 0.25, label = label, col = agecat), data = sn_fits,
             size = 3) +
  facet_wrap(~agecat, ncol=1)+
  theme(
        panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.minor.y = element_blank())


# gamma1 denotes the Pearson’s index of skewness
# The direction of skewness is given by the sign.
# The coefficient compares the sample distribution with a normal distribution. The larger the value, the larger the distribution differs from a normal distribution.
# A value of zero means no skewness at all.
# A large negative value means the distribution is negatively skewed.
# A large positive value means the distribution is positively skewed.



