


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


monthy_ppt_values <- readRDS( "~/data/KI/UCB-SuperLearner/Manuscript analysis data/monthy_ppt_values_50k.RDS")
head(monthy_ppt_values)
assert_that(all(monthly_cohorts %in% unique(monthy_ppt_values$studyid)))


#Calculate seasonal index

# rain <- rain %>% 
#   mutate(ann = (Jan+ Feb+ Mar+ Apr+ May+ Jun+ Jul+ Aug+ Sep+ Oct+ Nov+ Dec),
#          ave_month=ann/12,
#          abs_Jan = abs(Jan-ave_month), 
#          abs_Feb = abs(Feb-ave_month), 
#          abs_Mar = abs(Mar-ave_month), 
#          abs_Apr = abs(Apr-ave_month), 
#          abs_May = abs(May-ave_month), 
#          abs_Jun = abs(Jun-ave_month), 
#          abs_Jul = abs(Jul-ave_month), 
#          abs_Aug = abs(Aug-ave_month), 
#          abs_Sep = abs(Sep-ave_month), 
#          abs_Oct = abs(Oct-ave_month), 
#          abs_Nov = abs(Nov-ave_month), 
#          abs_Dec = abs(Dec-ave_month), 
#          cohort_index =  1/ann  * (abs_Jan+
#                                      abs_Feb+ abs_Mar+
#                                      abs_Apr+ abs_May+
#                                      abs_Jun+ abs_Jul+
#                                      abs_Aug+ abs_Sep+
#                                      abs_Oct+ abs_Nov+
#                                      abs_Dec)) %>%
#   subset(., select = -c(ave_month, abs_Jan,
#                         abs_Feb, abs_Mar,
#                         abs_Apr, abs_May,
#                         abs_Jun, abs_Jul,
#                         abs_Aug, abs_Sep,
#                         abs_Oct, abs_Nov,
#                         abs_Dec))

rain <- monthy_ppt_values %>%
  group_by(studyid, country, long, lat, month) %>%
  summarise(rain=mean(avg_ppt)) %>%
  mutate(ave_month = mean(rain),
         abs_rain = abs(rain-ave_month),
    ann=sum(rain),
    cohort_index =  1/ann  * sum(abs_rain))
summary(rain$cohort_index)

 saveRDS(rain, file = paste0(BV_dir,"/data/cohort_rain_data.rds"))
 
 
 cohort_rain <- monthy_ppt_values %>% group_by(studyid, country, long, lat, month) %>%
   summarise(rain=mean(avg_ppt)) %>%
   ungroup() %>% 
   mutate(month=case_when(month==1 ~ "Jan_pre",
                          month==2 ~ "Feb_pre",
                          month==3 ~ "Mar_pre",
                          month==4 ~ "Apr_pre",
                          month==5 ~ "May_pre",
                          month==6 ~ "Jun_pre",
                          month==7 ~ "Jul_pre",
                          month==8 ~ "Aug_pre",
                          month==9 ~ "Sep_pre",
                          month==10 ~ "Oct_pre",
                          month==11 ~ "Nov_pre",
                          month==12 ~ "Dec_pre")) %>%
   spread(key="month", value = "rain")
 
 cohort_index <- rain %>% ungroup() %>% subset(., select=c(studyid, country, long, lat, cohort_index)) %>% distinct(.)
 cohort_rain <- left_join(cohort_rain, cohort_index, by = c("studyid", "country", "long", "lat"))

 write.csv(cohort_rain, file = paste0(BV_dir,"/data/monthly_rainfall.csv"))
