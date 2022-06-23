


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))


#load covariate dataset (one row per child)
cov <- readRDS(clean_covariates_path)

cov <- cov %>% filter(studyid %in% monthly_cohorts)

ptb <- cov %>% filter(!is.na(gagebrth))
lbw <- cov %>% filter(!is.na(birthwt))

prop.table(table(ptb$studyid,ptb$gagebrth))
prop.table(table(lbw$studyid,lbw$birthwt))




#Assumption of incident wasting at birth
#Load data
# d <- readRDS(paste0(BV_dir,"/results/desc_data_cleaned.rds"))
# head(d)
# d <- d %>% filter(disease=="Wasting", agecat=="0-3 months", measure %in% c("Incidence rate","Cumulative incidence"), cohort=="pooled", region=="Overall", analysis=="Primary")


load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))

#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")
d_noBW2 <- d_noBW %>% filter(measurefreq == "monthly")
head(d_noBW)
#d_noBW$whz[d_noBW$firstmeasure & d_noBW$agedays < 30.4167 & d_noBW$whz < (-2)] <- NA
d_noBW$whz[d_noBW$firstmeasure & d_noBW$agedays <= 14 & d_noBW$whz < (-2)] <- NA
d_noBW <- d_noBW %>% filter(!is.na(whz))

d_noBW2 <- d_noBW2 %>% group_by(studyid, subjid) %>% mutate(born_wast=max(1*(wasting_episode=="Born Wasted"))) %>% ungroup() %>% filter(born_wast==0)

table(d_noBW$wasting_episode)
table(d_noBW2$wasting_episode)

d <- calc.ci.agecat(d, range = 3)
d_noBW <- calc.ci.agecat(d_noBW, range = 3)
d_noBW2 <- calc.ci.agecat(d_noBW2, range = 3)

ci.data <- summary.wast.ci(d, age.range=3)
ci.data.nobirth <- summary.wast.ci(d_noBW, age.range=3)
ci.data.nobirth2 <- summary.wast.ci(d_noBW2, age.range=3)
ci.data$ci.res
ci.data.nobirth$ci.res
ci.data.nobirth2$ci.res


#Exact answer to the response to reviewer
df <- left_join(d, cov, by=c("studyid","country","subjid"))
df2 <- df <- df %>% filter(!is.na(birthwt))
head(df)
df <- calc.ci.agecat(df, range = 3)
ci.data_no_birthwt <- summary.wast.ci(df, age.range=3)
ci.data_no_birthwt$ci.res

# df2 <- df %>% filter(firstmeasure)
# table(df2$agedays)

df$whz[df$firstmeasure & df$agedays == 1 & df$whz < (-2)] <- NA
df <- df %>% filter(!is.na(whz))

ci.data_no_birthwt2 <- summary.wast.ci(df, age.range=3)
ci.data_no_birthwt2$ci.res


df3 <-df2 <- df2 %>% group_by(studyid, subjid) %>% mutate(birth_measured=max(1*(agedays<14 & firstmeasure))) %>% ungroup() %>% filter(birth_measured==1)
df2 <- calc.ci.agecat(df2, range = 3)
ci.data_no_birthwt3 <- summary.wast.ci(df2, age.range=3)
ci.data_no_birthwt3$ci.res
df2$whz[df2$firstmeasure & df2$whz < (-2)] <- NA
df2 <- df2 %>% filter(!is.na(whz))
ci.data_no_birthwt4 <- summary.wast.ci(df2, age.range=3)
ci.data_no_birthwt4$ci.res

#plot trajectories
df3 <- calc.ci.agecat(df3, range = 3)
df3 <- df3%>% filter(agecat=="0-3 months")
summary(df3)

table(df3)
table(df3$studyid)
table(df3$country)
df4 <- df3 %>% filter(studyid=="MAL-ED", country=="INDIA") %>% arrange(agedays) %>%
  group_by(subjid) %>%
  mutate(born_wast=ifelse(first(whz)< (-2),"yes","no"),
         wast_CI=ifelse(min(whz)< (-2),"yes","no"),
         born_wast_cat=case_when(born_wast=="yes" ~ "Birth wasting",
                             born_wast=="no" & wast_CI=="yes" ~ "Post-birth wasting",
                             born_wast=="no" & wast_CI=="no" ~ "No wasting"
                             ))
prop.table(table(df4$born_wast_cat))*100
ggplot(df4, aes(x=agedays, y=whz, group=subjid, color=born_wast_cat) ) + geom_path(alpha=0.5, size=1)+
  geom_hline(yintercept = -2)


