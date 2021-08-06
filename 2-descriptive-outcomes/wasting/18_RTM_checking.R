

#https://stats.stackexchange.com/questions/479115/regression-to-the-mean-and-its-formula-in-r
#https://bmcmedresmethodol.biomedcentral.com/articles/10.1186/1471-2288-13-119
rm(list = ls())

source(paste0(here::here(), "/0-config.R"))

dfull <- readRDS(wasting_data_path)
dfull <- calc.monthly.agecat(dfull)

table(dfull$studyid)
df <- dfull %>% filter(measurefreq == "monthly", studyid=="MAL-ED", country=="BANGLADESH", !is.na(whz))
#df <- dfull %>% filter(measurefreq == "monthly", studyid=="TanzaniaChild2", !is.na(whz))



table(df$agecat)
#age <- c("Two weeks","6 months")
age <- c("One month","3 months")
# age <- c("Two weeks","24 months")
#age <- c("6 months","12 months")

# d <- dfull %>% filter(agecat %in% c(age[1],age[2])) %>% 
#   group_by(studyid, country, subjid, agecat) %>%
#   distinct(studyid, country, subjid, agecat, .keep_all = T)%>%
#   group_by(studyid, country, subjid) %>%
#   mutate(N=n()) %>% filter(N==2)  %>%
#   select(studyid, country, subjid, agecat, haz, whz) 

df$age1<-30.4167*1
df$age2<-30.4167*2
# dfull$age1<-365/2
# dfull$age2<-365

d1 <- df %>% 
  group_by(studyid, country, subjid) %>%
  filter(abs(agedays-age1)==min(abs(agedays-age1)) & abs(agedays-age1)<30) %>%
  distinct(studyid, country, subjid, agedays, .keep_all = T) %>%
  mutate(agecat="age1")
summary(d1$agedays)
d2 <- df %>% 
  group_by(studyid, country, subjid) %>%
  filter(abs(agedays-age2)==min(abs(agedays-age2)) & abs(agedays-age2)<30) %>%
  distinct(studyid, country, subjid, agedays, .keep_all = T) %>%
  mutate(agecat="age2")
summary(d2$agedays)

  
d <- bind_rows(d1,d2) %>%
  group_by(studyid, country, subjid) %>%
  mutate(N=n(), Nagecats=length(unique(agecat)), SD=sd(agedays)) %>% filter(N==2, Nagecats==2, SD!=0)  %>%
  select(studyid, country, subjid, agedays, agecat, whz, SD) 
summary(d$SD)

plotdf=data.frame(whz1=d$whz[d$agecat=="age1"], whz2=d$whz[d$agecat=="age2"], whz_change=d$whz[d$agecat=="age2"]-d$whz[d$agecat=="age1"])
cor.test(plotdf$whz1, plotdf$whz2)
cor.test(plotdf$whz1, plotdf$whz_change)
summary(plotdf$whz1)
summary(plotdf$whz2)
summary(plotdf$whz_change)
var(plotdf$whz_change)

ggplot(plotdf, aes(x=whz1, y=whz_change)) + geom_point(alpha=0.25) + geom_smooth(se=F, method="lm") 

head(d)
table(d$agecat)

#Calc RTM effect
d1 <- d %>% filter(agecat=="age1")
d2 <- d %>% filter(agecat=="age2")
rho= cor(d1$whz, d2$whz)
popmean_pre = mean(d1$whz)
popmean_post = mean(d2$whz)
popvar_pre = var(d1$whz)
popsd_pre = sd(d1$whz)
k = -2
between_sub_var = rho * popvar_pre
within_sub_var = popvar_pre - between_sub_var
coef=within_sub_var/sqrt(within_sub_var+between_sub_var)
z=(popmean_pre-k)/popsd_pre
C=dnorm(z)/(1-pnorm(z))

coef*C

#expected pretest
E_pre <- popmean_pre-C*popsd_pre
E_pre
#expected posttest
E_post <- popmean_pre -(C* popsd_pre * rho)
E_post

#RTM effect
E_post-E_pre
# RTM <- C* popsd_pre * (1-rho)
# RTM

#1-4 months: 1.57
#3-6 months: 1.02
#6-9 months: 0.68
#9-12 months: 0.5626097

#Catch up growth
#https://www.researchgate.net/publication/7762990_Catch-up_Growth_or_Regression_to_the_Mean_Recovery_from_Stunting_Revisited
popmean_post - popmean_pre * rho

#Expected 2nd Z-score:
popmean_pre * rho
ggplot(plotdf, aes(x=whz1)) + geom_density()
ggplot(plotdf, aes(x=whz1*rho)) + geom_density()



df <- dfull %>% group_by(subjid) %>% arrange(subjid,agedays) %>% filter(first(agedays)< 60, first(whz) < -2)
mean(df$whz)
# # #actual values in high-risk group
# # dwast <- d %>% arrange(studyid, country, subjid, agecat) %>% filter(first(whz)< -2)
# # d1 <- dwast %>% filter(agecat==age[1])
# # d2 <- dwast %>% filter(agecat==age[2])
# # pre=mean(d1$whz)
# # post=mean(d2$whz)
# # post-pre
# # 
# # (post-pre)/RTM*100
# 
# #regression controlling for RTM
# d1$wast <- as.numeric(d1$whz < -2)
# res_raw <- lm(d2$whz ~ d1$wast)
# summary(res_raw)
# 
# d1$diff <- d1$whz-mean(d1$whz)
# res_rtm <- lm(d2$whz ~  d1$diff + d1$wast )
# summary(res_rtm)
# 
# res_rtm <- lm(d2$whz ~  d1$whz + d1$wast )
# summary(res_rtm)
# 
# #Other methods
# d1 <- d %>% filter(agecat==age[1])
# d2 <- d %>% filter(agecat==age[2])
# 100*(1-cor(d1$haz, d2$haz))
# 100*(1-cor(d1$whz, d2$whz))
# 
# df <- merge(d1, d2, by=c("studyid", "country", "subjid")) %>% mutate(diff=whz.y -whz.x, wast=factor(ifelse(whz.x < -2,1,0)))
# ggplot(df, aes(x=whz.x, y=diff, group=wast, color=wast)) + geom_point(alpha=0.1) + geom_smooth(method="lm")
# 
# 
# dwast <- d %>% arrange(studyid, country, subjid, agecat) %>% filter(first(whz)< -2)
# dstunt <- d %>% arrange(studyid, country, subjid, agecat) %>% filter(first(haz)< -2)
# d1 <- dwast %>% filter(agecat==age[1])
# d2 <- dwast %>% filter(agecat==age[2])
# 100*(1-cor(d1$whz, d2$whz))
# d1 <- dstunt %>% filter(agecat==age[1])
# d2 <- dstunt %>% filter(agecat==age[2])
# 100*(1-cor(d1$haz, d2$haz))
# 
# 
# dhighweight <- d %>% arrange(studyid, country, subjid, agecat) %>% filter(first(whz)> 0)
# d1 <- dhighweight %>% filter(agecat==age[1])
# d2 <- dhighweight %>% filter(agecat==age[2])
# 100*(1-cor(d1$whz, d2$whz))
# 
# 
# dhighweight <- d %>% arrange(studyid, country, subjid, agecat) %>% filter(first(whz)> 2)
# d1 <- dhighweight %>% filter(agecat==age[1])
# d2 <- dhighweight %>% filter(agecat==age[2])
# 100*(1-cor(d1$whz, d2$whz))
