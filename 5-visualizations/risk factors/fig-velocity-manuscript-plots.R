
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

#Load data
dfull <- readRDS(paste0(here::here(),"/results/rf results/full_RF_results.rds"))
head(dfull)

#Mark region
dfull <- mark_region(dfull)

d <- dfull %>% filter(type=="ATE")

#Drop velocities
d <- d %>% filter(outcome_variable=="y_rate_len" | outcome_variable=="y_rate_wtkg")

#Drop reference levels
d <- d %>% filter(intervention_level != d$baseline_level)

#mark unadjusted
d$adjusted <- ifelse(d$adjustment_set!="unadjusted" , 1, 0)

#Drop unadjusted estimates
d <- d %>% filter((adjusted==1) | ((intervention_variable=="sex"  | intervention_variable=="month"  | intervention_variable=="brthmon") & adjusted==0))



RMAest <- d %>% group_by(intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()
RMAest$region <- "Pooled"

RMAest_region <- d %>% group_by(region, intervention_variable, agecat, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()

RMAest_raw <- rbind(RMAest, RMAest_region)



#Clean up dataframe for plotting
RMAest_clean <- RMA_clean(RMAest_raw)


#Add reference level to labe
RMAest_clean$RFlabel_ref <- paste0(RMAest_clean$RFlabel, ", ref: ", RMAest_clean$baseline_level)




yticks <- c( 0.5,0.6,0.7, 0.8,0.9, 1.00)
yticks <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)

unique(RMAest_clean$intervention_variable)
dpool <- RMAest_clean %>% 
  filter(intervention_variable %in% c("hhwealth_quart", "mhtcm", "parity","sex"),
         outcome_variable=="y_rate_len",
         region=="Pooled")


p <-  ggplot(dpool, aes(x=intervention_level)) + 
  geom_point(aes(y=ATE,  color=intervention_variable), size = 4) +
  geom_linerange(aes(ymin=CI1, ymax=CI2, color=intervention_variable)) +
  facet_grid(intervention_variable~agecat, scales = "free") +
  labs(x = "Age range (months)", y = "Change in length (cm)") +
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
print(p)




