
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(growthstandards)

d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))


d <- d %>% filter(studyid == "Keneba")

d <- d %>%
  mutate(age = case_when(agedays==1 ~ "Birth",
                         agedays>1 & agedays<32 ~ "2 days - 31 days",
                         agedays > 31 ~ ">32 days"))
d$age = factor(d$age, levels = c("Birth", "2 days - 31 days", ">32 days"))




df_laz <- d %>% filter(!is.na(haz), !is.na(agedays)) %>%
     group_by(age) %>%
     summarise(Measure = "LAZ",
               N=n(),
               Mean_age = mean(agedays),
               Min =min(haz),
               Q1 = quantile(haz, probs=c(0.25)),
               Median = quantile(haz, probs=c(0.5)),
               Mean = mean(haz, na.rm=T),
               Q3 = quantile(haz, probs=c(0.75)),
               Max =max(haz))
               
df_wlz <- d %>% filter(!is.na(whz), !is.na(agedays)) %>%
  group_by(age) %>%
  summarise(Measure = "WLZ",
            N=n(),
            Mean_age = mean(agedays),
            Min =min(whz),
            Q1 = quantile(whz, probs=c(0.25)),
            Median = quantile(whz, probs=c(0.5)),
            Mean = mean(whz, na.rm=T),
            Q3 = quantile(whz, probs=c(0.75)),
            Max =max(whz))

df_length <- d %>% filter(!is.na(lencm), !is.na(agedays)) %>%
  group_by(age) %>%
  summarise(Measure = "Length (cm)",
            N=n(),
            Mean_age = mean(agedays),
            Min =min(lencm),
            Q1 = quantile(lencm, probs=c(0.25)),
            Median = quantile(lencm, probs=c(0.5)),
            Mean = mean(lencm, na.rm=T),
            Q3 = quantile(lencm, probs=c(0.75)),
            Max =max(lencm))

df_weight <- d %>% filter(!is.na(wtkg), !is.na(agedays)) %>%
  group_by(age) %>%
  summarise(Measure = "Weight (kg)",
            N=n(),
            Mean_age = mean(agedays),
            Min =min(wtkg),
            Q1 = quantile(wtkg, probs=c(0.25)),
            Median = quantile(wtkg, probs=c(0.5)),
            Mean = mean(wtkg, na.rm=T),
            Q3 = quantile(wtkg, probs=c(0.75)),
            Max =max(wtkg))
               
  

knitr::kable(df_laz)
knitr::kable(df_wlz)
knitr::kable(df_length)
knitr::kable(df_weight)




ggplot(d, aes(x=agedays)) + geom_histogram(bins=750)
ggplot(d, aes(x=agedays)) + geom_histogram(bins=75)

ggplot(d[d$agedays<60,], aes(x=agedays, y=lencm)) + geom_smooth(se=F) + geom_point(alpha=0.1) + geom_who(x_seq = seq(0, 60, by = 1), y_var = "htcm") +
  coord_cartesian(ylim=c(35,65))




length(unique(d$subjid[d$agedays==1]))
length(unique(d$subjid[d$agedays!=1]))


#Look at how many at-birth measures of length were higher than subsequent measures
df <- d %>% group_by(subjid) %>% 
        arrange(agedays) %>% slice(1:2) %>% 
        mutate(minage=min(agedays), maxage=max(agedays), N=n()) %>%
        filter(minage==1, maxage<15, N==2) %>% 
        mutate(next_lencm=lead(lencm), len_change=next_lencm - lencm) %>%
        slice(1)

nrow(df)
summary(df$len_change)
#Proportion less than the TEM
prop.table(table(df$len_change< -0.812))
prop.table(table(df$len_change< 0))


ggplot(df, aes(x=len_change)) + geom_histogram()

        




