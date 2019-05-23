

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())

d <- readRDS(paste0(here::here(),"/results/rf results/pooled_PAF_results.rds"))

#Drop overlapping variables
unique(d$intervention_variable)
d <- d %>% filter(!(intervention_variable %in% c("<NA>", "exclfeed3", "exclfeed36", "exclfeed6",
                                                 "lag_WHZ_quart", "mbmi", "perdiar6", "predfeed3",    
                                                 "predfeed36", "predfeed6")))

#Select relevant agecat from each level
d2 <- d %>% ungroup() %>%
  filter( agecat %in% c("6-24 months","0-24 months")) %>%
  filter(!is.na(intervention_variable)) %>%
  mutate(agecat=factor(agecat, levels=c("0-24 months","6-24 months"))) %>%
  group_by(region, intervention_variable, intervention_level, outcome_variable) %>%
  arrange(agecat) %>%
  slice(1)


df <- d2 %>% group_by(region, agecat, outcome_variable, RFtype) %>%
            summarize(PAF=(1-prod(1-PAF/100))*100,
                      PAF.CI1=(1-prod(1-PAF.CI1/100))*100,
                      PAF.CI2=(1-prod(1-PAF.CI2/100))*100)

head(df)
summary(df$PAF)
summary(df$PAF.CI1)
summary(df$PAF.CI2)

df$region <- factor(df$region, levels=c("Pooled", "South Asia", "Africa", "Latin America"))
#df$agecat <- factor(df$agecat, levels=c("0-24 months","6-24 months", "0-6 months", "24 months",  "6 months", "Birth"))
df <- df %>% group_by(region, outcome_variable, RFtype) %>%
             arrange(region, agecat) %>%
             filter(agecat == agecat[1])


# df2 <- df %>% filter(outcome_variable=="ever_stunted", agecat=="0-24 months")
# 
# p <-  ggplot(df2, aes(x=RFtype)) + 
#   geom_point(aes(y=PAF,  color=RFtype), size = 4) +
#   geom_linerange(aes(ymin=PAF.CI1, ymax=PAF.CI2, color=RFtype)) +
#   facet_wrap(~region) +
#   coord_flip(ylim=c(-100, 100)) +
#   labs(x = "Exposure", y = "Population attributable fraction") +
#   geom_hline(yintercept = 0) +
#   #scale_y_continuous(breaks=yticks, labels=scaleFUN) +
#   scale_shape_manual(values=c(21, 23)) +
#   scale_colour_manual(values=tableau10, name = "Exposure\nCategory", drop=F) +
#   # scale_size_continuous(range = c(0, 0.5))+
#   theme(strip.background = element_blank(),
#         legend.position="right",
#         axis.text.y = element_text(hjust = 1),
#         strip.text.x = element_text(size=12),
#         axis.text.x = element_text(size=12, 
#                                    margin = margin(t = -20)),
#         axis.title.x = element_text(margin = margin(t = 20))) +
#   ggtitle(paste0("Variable importance metric")) + 
#   guides(color=FALSE, shape=FALSE)
# print(p)




df2 <- df %>% filter(outcome_variable %in% c("ever_stunted", "ever_wasted")) %>%
              filter(!is.na(RFtype), !is.na(region))

df2$outcome_variable <- gsub("ever_stunted", "Ever stunted", df2$outcome_variable)
df2$outcome_variable <- gsub("ever_wasted", "Ever wasted", df2$outcome_variable)
#Arrange the plotting of RFtypes by 

p <-  ggplot(df2, aes(x=RFtype)) + 
  geom_point(aes(y=PAF,  color=RFtype), size = 4) +
  geom_linerange(aes(ymin=PAF.CI1, ymax=PAF.CI2, color=RFtype)) +
  facet_grid(outcome_variable~region) +
  coord_cartesian(ylim=c(-25, 75)) +
  labs(x = "Exposure", y = "Population attributable fraction") +
  geom_hline(yintercept = 0) +
  #scale_y_continuous(breaks=yticks, labels=scaleFUN) +
  scale_shape_manual(values=c(21, 23)) +
  scale_colour_manual(values=tableau10, name = "Exposure\nCategory", drop=F) +
  # scale_size_continuous(range = c(0, 0.5))+
  theme(strip.background = element_blank(),
        legend.position="right",
        axis.text.x = element_text(vjust=0.5, angle = 45),
        strip.text.x = element_text(size=12),
        axis.text.y = element_text(hjust = 1)) +
  ggtitle(paste0("Grouped populations attributable fractions")) + 
  guides(color=FALSE, shape=FALSE)
#print(p)

ggsave(p, file=paste0("C:/Users/andre/Documents/HBGDki/ki-longitudinal-manuscripts/figures/risk factor/fig-grouped-PAF.png"), height=8, width=14)

