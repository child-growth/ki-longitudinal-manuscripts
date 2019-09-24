


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))


#Load longbow results
load(here("results","rf results","raw longbow results","seasonality_results_2019-09-17.rdata"))

#Load seasonality index and prep for merge
rain <- read.csv(here("/data/monthly_rainfall.csv"))
rain <- rain %>% subset(., select = c(ï..studyid, country, cohort_index)) %>% 
  rename(season_index = cohort_index,
         studyid = ï..studyid) %>%
  mutate(seasonality_category = 
           case_when(
             season_index >= 0.8 ~ "High",
             season_index < 0.5 ~ "Low",
             TRUE ~ "Medium"),
         seasonality_category = factor(seasonality_category, levels=c("High", "Medium", "Low")))
table(rain$seasonality_category)

rain$studyid <- gsub("^k.*?-" , "", rain$studyid)
rain$country <- as.character(rain$country)
rain$country[rain$country=="Tanzania "] <- "Tanzania"

#Merge resulta and seasonality index
d <- left_join(results, rain, by = c("studyid","country"))


d <- d %>% filter(type=="ATE")

#Drop reference levels
#d <- d %>% filter(intervention_level != d$baseline_level)


RMAest <- d %>% group_by(intervention_variable, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()
RMAest$seasonality_category <- "Pooled"

#Mark region
# d <- mark_region(d)

#Group by region
# RMAest_region <- d %>% group_by(region, intervention_variable, intervention_level, baseline_level, outcome_variable) %>%
#   do(pool.cont(.)) %>% as.data.frame()


#Group by seasonality index
RMAest_season_index <- d %>% group_by(seasonality_category, intervention_variable, intervention_level, baseline_level, outcome_variable) %>%
  do(pool.cont(.)) %>% as.data.frame()


df <- rbind(RMAest, RMAest_season_index)




#Add reference level to labe
df$RFlabel_ref <- paste0(df$RFlabel, ", ref: ", df$baseline_level)

df$seasonality_category <- factor(df$seasonality_category, levels=c("Pooled","High", "Medium", "Low"))
df$intervention_level <- factor(df$intervention_level, levels=c("Opposite max rain",  "Pre-max rain", "Max rain", "Post-max rain"))


p_seasonRR <- ggplot(df, aes(y=ATE,x=intervention_level)) +
  geom_errorbar(aes(color=seasonality_category, ymin=CI1, ymax=CI2), width = 0) +
  geom_point(aes(fill=seasonality_category, color=seasonality_category), size = 2) +
  scale_color_manual(values=tableau11[c(1,6,7,8)], drop=TRUE, limits = levels(df$measure)) +
  geom_hline(yintercept = 0) +
  xlab("3-month quarter of the year,\ngrouped by rainfall")+
  ylab("WLZ difference") +
  # add space to the left and right of points on x axis
  # to accommodate point estimate labels
  scale_x_discrete(expand = expand_scale(add = 1)) +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10))  +
  theme(
    axis.text.x = element_text(margin =
                                 margin(t = 0, r = 0, b = 0, l = 0),
                               size = 14, angle = 45, hjust = 1, vjust =1)) +
  theme(axis.title.y = element_text(size = 14)) +
  ggtitle("") + facet_wrap(~seasonality_category, ncol=1) +
    theme(strip.text = element_text(size=14, margin = margin(t = 0))) 

print(p_seasonRR)

save(p_seasonRR, file = here("/figures/plot objects/season_RR_plot.Rdata"))
ggsave(p_seasonRR, file=paste0(here::here(),"/figures/wasting/season_wlz_diff.png"), width=6, height=14)




