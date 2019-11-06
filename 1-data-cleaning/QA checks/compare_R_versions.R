

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Load data
d1 <- readRDS(paste0(here::here(),"/results/desc_data_cleaned.rds"))
d2 <- readRDS(paste0(here::here(),"/results/desc_data_cleaned_3.6.rds"))

head(d1)
head(d2)

dim(d1)
dim(d2)
d <- merge(d1, d2, by = c("disease", "age_range", "birth", "severe",    "measure", "cohort",  "region", "method.used",    "agecat", "analysis"))
dim(d)


df <- d %>% filter(est.x!=est.y)
head(df)




df2 <- d %>% filter(est.x==est.y)
dim(df2)
head(df2)


dd1 <- d1 %>% filter(disease=="co-occurrence", age_range=="3 months", region=="Overall")
dd2 <- d2 %>% filter(disease=="co-occurrence", age_range=="3 months", region=="Overall")

d <- merge(dd1, dd2, by = c("disease", "age_range", "birth", "severe",    "measure", "cohort",  "region", "method.used",    "agecat", "analysis"))
dim(d)


d <- left_join(d1, d2, by = c("disease", "age_range", "birth", "severe",    "measure", "cohort",  "region", "method.used",    "agecat", "analysis"))
dim(d)


dd1 <- d1 %>% arrange(est)
dd2 <- d2 %>% arrange(est)
summary(dd1$est-dd2$est)
