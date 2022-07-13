


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
d_noBW <- d_noBW %>% filter(measurefreq == "monthly") %>% group_by(studyid, subjid) %>% arrange(studyid,subjid,agedays)
head(d_noBW)

#Drop Kenaba, which had difference at birth and followup anthro teams
d <-d %>% filter(studyid!="Keneba")
d_noBW <-d_noBW %>% filter(studyid!="Keneba")

#subset to those measured at birth
dim(d_noBW)
d_noBW <- d_noBW %>% group_by(studyid, subjid) %>% filter(agedays <730) %>% mutate(N=n(), N_u3=sum(agedays < 30.4167*3)) %>%
  filter(first(agedays) <= 14 & N>=18, N_u3>2)
dim(d_noBW)

#calc longitudinal prevalence (NEED TO add long prop meta-analysus function)
d_noBW$agecat <- "0-24 months"
longprop_BW <-d_noBW %>% group_by(studyid, subjid) %>% filter(first(whz) < -2)
longprop_noBW <-d_noBW %>% group_by(studyid, subjid) %>% filter(first(whz) >= -2)
mean(longprop_BW$whz)
mean(longprop_noBW$whz)
mean(longprop_BW$whz < -2)
mean(longprop_noBW$whz < -2)
# longprop_BW <- summary.prev.whz(as.data.frame(temp))
# longprop_BW$ci.res
# 
# longprop_noBW <- summary.prev.whz(d_noBW %>% group_by(studyid, subjid) %>% filter(first(whz) >= -2))
# longprop_noBW$ci.res



# table(d_noBW$N_u3)
# temp<-d_noBW[d_noBW2$N_u3==12,]
# temp$studyid

first_meas <- d_noBW %>% group_by(studyid, subjid) %>% arrange(studyid,subjid,agedays) %>% slice(1)
prop.table(table(first_meas$whz < (-2))) * 100

# dim(d_noBW)
# d_noBW <- d_noBW %>% group_by(studyid, subjid) %>% mutate(N=n()) %>%
#   filter(first(agedays) <= 14 & N>=18, agedays <730)
# dim(d_noBW)

d <- d %>% group_by(studyid, subjid) %>% mutate(N=n()) %>%
  filter(first(agedays) <= 14 & N>=18, agedays <730)

#Drop birth wasting measurements
d_noBW2 <- d_noBW
d_noBW2$wast_inc[d_noBW2$firstmeasure & d_noBW2$agedays <= 14 & d_noBW2$whz < (-2)] <- NA
d_noBW2$whz[d_noBW2$firstmeasure & d_noBW2$agedays <= 14 & d_noBW2$whz < (-2)] <- NA
d_noBW2 <- d_noBW2 %>% filter(!is.na(whz))

#Drop birth wasting episodes
d_noBW3 <- d_noBW
d_noBW3$wast_inc[d_noBW3$wasting_episode=="Born Wasted"] <-d_noBW3$wast_inc[d_noBW3$wasting_episode=="Born Wasted"] <- NA
d_noBW3$whz[d_noBW3$wasting_episode=="Born Wasted"] <-d_noBW3$whz[d_noBW3$wasting_episode=="Born Wasted"] <- NA
d_noBW3 <- d_noBW3 %>% filter(!is.na(whz))


#Drop children born wasted
d_noBW4 <- d_noBW %>% group_by(studyid, subjid) %>% mutate(born_wast=max(1*(wasting_episode=="Born Wasted"))) %>% ungroup() %>% filter(born_wast==0)

# temp <- d_noBW %>% group_by(studyid, subjid) %>% slice(1)
# table(temp$wasting_episode, temp$whz< (-2))

table(d_noBW$wasting_episode)
table(d_noBW3$wasting_episode)

d <- calc.ci.agecat(d, range = 3)
d_noBW <- calc.ci.agecat(d_noBW, range = 3)
d_noBW2 <- calc.ci.agecat(d_noBW2, range = 3)
d_noBW3 <- calc.ci.agecat(d_noBW3, range = 3)
d_noBW4 <- calc.ci.agecat(d_noBW4, range = 3)

#ci.data <- summary.wast.ci(d, age.range=3)
ci.data.nobirth <- summary.wast.ci(d_noBW, age.range=3, N_filter=1)
ci.data.nobirth2 <- summary.wast.ci(d_noBW2, age.range=3, N_filter=1)
ci.data.nobirth3 <- summary.wast.ci(d_noBW3, age.range=3, N_filter=1)
ci.data.nobirth4 <- summary.wast.ci(d_noBW4, age.range=3, N_filter=1)
#ci.data$ci.res[1:3,]
#Children with birth measures
ci.data.nobirth$ci.res
#Excluding wasted birth measures
ci.data.nobirth2$ci.res
#Excluding wasted birth episodes
ci.data.nobirth3$ci.res
#Excluding children born wasted
ci.data.nobirth4$ci.res


ip.data.nobirth <- summary.incprop(d, N_filter=1)
ip.data.nobirth2 <- summary.incprop(d_noBW2, N_filter=1)
ip.data.nobirth3 <- summary.incprop(d_noBW3, N_filter=1)
ip.data.nobirth4 <- summary.incprop(d_noBW4, N_filter=1)

#Children with birth measures
ip.data.nobirth$ci.res
#Excluding wasted birth measures
ip.data.nobirth2$ci.res 
#Excluding wasted birth episodes
ip.data.nobirth3$ci.res
#Excluding children born wasted
ip.data.nobirth4$ci.res


ip.data.nobirth$ci.cohort[1:13,]
ip.data.nobirth2$ci.cohort[1:12,]

ci.data.nobirth_FE <- summary.wast.ci(d_noBW, age.range=3, method="FE", N_filter=1)
ci.data.nobirth2_FE <- summary.wast.ci(d_noBW2, age.range=3, method="FE", N_filter=1)
ci.data.nobirth3_FE <- summary.wast.ci(d_noBW3, age.range=3, method="FE", N_filter=1)
ci.data.nobirth4_FE <- summary.wast.ci(d_noBW4, age.range=3, method="FE", N_filter=1)
#ci.data$ci.res[1:3,]
#Children with birth measures
ci.data.nobirth_FE$ci.res
#Excluding wasted birth measures
ci.data.nobirth2_FE$ci.res
#Excluding wasted birth episodes
ci.data.nobirth3_FE$ci.res
#Excluding children born wasted
ci.data.nobirth4_FE$ci.res


d_noBW$agecat <- d_noBW2$agecat <- d_noBW3$agecat <- d_noBW4$agecat <- "0-24 months"
ci.data.nobirth_2 <- summary.wast.ci(d_noBW, age.range=3)
ci.data.nobirth2_2 <- summary.wast.ci(d_noBW2, age.range=3)
ci.data.nobirth3_2 <- summary.wast.ci(d_noBW3, age.range=3)
ci.data.nobirth4_2 <- summary.wast.ci(d_noBW4, age.range=3)
#Children with birth measures
ci.data.nobirth_2$ci.res
#Excluding wasted birth measures
ci.data.nobirth2_2$ci.res
#Excluding wasted birth episodes
ci.data.nobirth3_2$ci.res
#Excluding children born wasted
ci.data.nobirth4_2$ci.res


#Look at children born wasted
length(unique(paste0(d_noBW$studyid,d_noBW$subjid)))
df_born_wast <- d_noBW %>% group_by(studyid, subjid) %>% filter(first(wasting_episode)=="Born Wasted")
length(unique(paste0(df_born_wast$studyid,df_born_wast$subjid)))
df_born_wast$whz[df_born_wast$wasting_episode=="Born Wasted"] <- NA
df_born_wast <- df_born_wast %>% filter(!is.na(whz))
df_born_wast <- calc.ci.agecat(df_born_wast, range = 3)
res_born_wast <- summary.wast.ci(df_born_wast, age.range=3)
res_born_wast$ci.res

df_born_wast_summary <- df_born_wast %>% group_by(studyid, subjid) %>% summarize(max_whz=max(whz, na.rm=T), min_whz=min(whz, na.rm=T))
prop.table(table(df_born_wast_summary$min_whz < -2)) * 100
prop.table(table(df_born_wast_summary$max_whz >= -2)) * 100

df_born_wast2 <- d_noBW %>% group_by(studyid, subjid) %>% filter(first(whz) < -2)
length(unique(paste0(df_born_wast2$studyid,df_born_wast2$subjid)))
df_born_wast2$whz[df_born_wast2$agedays <= 14 ] <- NA
df_born_wast2 <- df_born_wast2 %>% filter(!is.na(whz))
df_born_wast2 <- calc.ci.agecat(df_born_wast2, range = 3)
res_born_wast2 <- summary.wast.ci(df_born_wast2, age.range=3)
res_born_wast2$ci.res

df_born_wast2$agecat <- "0-24 months"
res_born_wast2 <- summary.wast.ci(df_born_wast2, age.range=3)
res_born_wast2$ci.res

df_born_wast2_summary <- df_born_wast2 %>% group_by(studyid, subjid) %>% summarize(max_whz=max(whz, na.rm=T), min_whz=min(whz, na.rm=T))
prop.table(table(df_born_wast2_summary$min_whz < -2)) * 100
prop.table(table(df_born_wast2_summary$max_whz >= -2)) * 100


#Birth length of those not born wasted who became wasted
df_not_born_wast <- d_noBW %>% filter(agedays < 6*30.4167) %>% group_by(studyid, subjid) %>% filter(first(wasting_episode)!="Born Wasted", min(whz) < -2) %>% slice(1)
summary(df_not_born_wast$whz)

#those who didn't become wasted
df_not_born_wast <- d_noBW %>% filter(agedays < 6*30.4167) %>% group_by(studyid, subjid) %>% filter(first(wasting_episode)!="Born Wasted", min(whz) >= -2) %>% slice(1)
summary(df_not_born_wast$whz)

# #Calc incidence rate
# ir.data <- summary.ir(d)
# ir.data.nobirth <- summary.ir(d_noBW)
# ir.data.nobirth2 <- summary.ir(d_noBW2)
# ir.data$ir.res$est[1] *1000/365
# ir.data.nobirth$ir.res$est[1] *1000/365
# ir.data.nobirth2$ir.res$est[1] *1000/365


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


