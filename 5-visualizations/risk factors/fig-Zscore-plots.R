
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

#Load data
dfull <- readRDS(paste0(here::here(),"/results/rf results/adjusted_continious_RF_results.rds"))
head(dfull)

#Mark region
dfull <- mark_region(dfull)

d <- dfull %>% filter(type=="ATE")

#Drop velocities
d <- d %>% filter(outcome_variable=="haz" | outcome_variable=="whz")

#Drop reference levels
d <- d %>% filter(intervention_level != d$baseline_level)




RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)


#Re-order so increasing risk for all comparisons
reorder_fun <- function(df){
  df_sub <- df[df$ATE < 0,]
  df <- df[df$ATE >= 0,]
  new_ref <- df$intervention_level
  df$intervention_level <- df$baseline_level
  df$baseline_level <- new_ref
  df$ATE <- (-1) * df$ATE 
  df$CI1 <- (-1) * df$CI1 
  df$CI2 <- (-1) * df$CI2 
  df <- bind_rows(df_sub, df)
  return(df)
}
RMAest <- reorder_fun(RMAest_raw)

#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest)

#Grab the largest contrast for each variable
RMAest_max <- RMAest_clean %>% group_by(outcome_variable, region, intervention_variable) %>% filter(abs(ATE)==max(abs(ATE)))

#Add reference level to labe
RMAest_max$RFlabel_ref <- paste0(RMAest_max$RFlabel, ", ref: ", dhaz$baseline_level)


# select only pooled
dhaz <- RMAest_max %>% 
  filter(outcome_variable == 'haz',
         region=="Pooled",
         agecat == '24 months') 
dwhz <- RMAest_max %>% 
  filter(outcome_variable == 'whz',
         region=="Pooled",
         agecat == '24 months') 

#Region-specific
dhaz_region <- RMAest_max %>% 
  filter(outcome_variable == 'haz',
         region!="Pooled",
         agecat == '24 months') 
dwhz_region <- RMAest_max %>% 
  filter(outcome_variable == 'whz',
         region!="Pooled",
         agecat == '24 months') 

yticks <- c( 0.5,0.6,0.7, 0.8,0.9, 1.00)
yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)


phaz <-  ggplot(dhaz, aes(x=reorder(RFlabel_ref, -ATE))) + 
  geom_point(aes(y=ATE,  color=RFtype), size = 4) +
  geom_linerange(aes(ymin=CI1, ymax=CI2, color=RFtype)) +
  coord_flip() +
  labs(x = "Exposure", y = "Z-score difference") +
  geom_hline(yintercept = 0) +
  #scale_y_continuous(breaks=yticks, labels=scaleFUN) +
  scale_shape_manual(values=c(21, 23)) +
  scale_colour_manual(values=tableau10, name = "Exposure\nCategory") +
  # scale_size_continuous(range = c(0, 0.5))+
  theme(strip.background = element_blank(),
        legend.position="right",
        axis.text.y = element_text(hjust = 1),
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12, angle = 45, hjust = 1, 
                                   margin = margin(t = -20)),
        axis.title.x = element_text(margin = margin(t = 20))) +
  ggtitle("Exposures ranked by\naverage treatment effect") +guides(shape=FALSE)
print(phaz)



pwhz <-  ggplot(dwhz, aes(x=reorder(RFlabel_ref, -ATE))) + 
  geom_point(aes(y=ATE,  color=RFtype), size = 4) +
  geom_linerange(aes(ymin=CI1, ymax=CI2, color=RFtype)) +
  coord_flip() +
  labs(x = "Exposure", y = "Z-score difference") +
  geom_hline(yintercept = 0) +
  #scale_y_continuous(breaks=yticks, labels=scaleFUN) +
  scale_shape_manual(values=c(21, 23)) +
  scale_colour_manual(values=tableau10, name = "Exposure\nCategory") +
  # scale_size_continuous(range = c(0, 0.5))+
  theme(strip.background = element_blank(),
        legend.position="right",
        axis.text.y = element_text(hjust = 1),
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12, angle = 45, hjust = 1, 
                                   margin = margin(t = -20)),
        axis.title.x = element_text(margin = margin(t = 20))) +
  ggtitle("Exposures ranked by\naverage treatment effect") +guides(shape=FALSE)
print(pwhz)




#Region stratified plots
phaz_region <-  ggplot(dhaz_region, aes(x=RFlabel)) + 
  geom_point(aes(reorder(RFlabel, -ATE), y=ATE,  color=RFtype), size = 4) +
  geom_linerange(aes(ymin=CI1, ymax=CI2, color=RFtype)) +
  facet_wrap(~region, ncol=3) +
  coord_flip(ylim = range(-1, 1)) +
  labs(x = "Exposure", y = "Z-score difference") +
  geom_hline(yintercept = 0) +
  scale_shape_manual(values=c(21, 23)) +
  scale_colour_manual(values=tableau10, name = "Exposure\nCategory") +
  theme(strip.background = element_blank(),
        legend.position="right",
        axis.text.y = element_text(hjust = 1),
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12, angle = 45, hjust = 1, 
                                   margin = margin(t = -20)),
        axis.title.x = element_text(margin = margin(t = 20))) +
  ggtitle("Exposures ranked by\naverage treatment effect") +guides(shape=FALSE)
print(phaz_region)

pwhz_region <-  ggplot(dwhz_region, aes(x=RFlabel)) + 
  geom_point(aes(reorder(RFlabel, -ATE), y=ATE,  color=RFtype), size = 4) +
  geom_linerange(aes(ymin=CI1, ymax=CI2, color=RFtype)) +
  facet_wrap(~region, ncol=3) +
  coord_flip(ylim = c(-1, 1)) +
  labs(x = "Exposure", y = "Z-score difference") +
  geom_hline(yintercept = 0) +
  scale_shape_manual(values=c(21, 23)) +
  scale_colour_manual(values=tableau10, name = "Exposure\nCategory") +
  theme(strip.background = element_blank(),
        legend.position="right",
        axis.text.y = element_text(hjust = 1),
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12, angle = 45, hjust = 1, 
                                   margin = margin(t = -20)),
        axis.title.x = element_text(margin = margin(t = 20))) +
  ggtitle("Exposures ranked by\naverage treatment effect") +guides(shape=FALSE)
print(pwhz_region)






