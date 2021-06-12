

#https://stats.stackexchange.com/questions/479115/regression-to-the-mean-and-its-formula-in-r
#https://bmcmedresmethodol.biomedcentral.com/articles/10.1186/1471-2288-13-119
rm(list = ls())

source(paste0(here::here(), "/0-config.R"))

dfull <- readRDS(rf_co_occurrence_path)%>% filter(measurefreq == "monthly")
dfull <- calc.monthly.agecat(dfull)

table(dfull$agecat)
age <- c("Two weeks","6 months")
# age <- c("Two weeks","24 months")
#age <- c("6 months","12 months")

d <- dfull %>% filter(agecat %in% c(age[1],age[2])) %>% 
  group_by(studyid, country, subjid, agecat) %>%
  distinct(studyid, country, subjid, agecat, .keep_all = T)%>%
  group_by(studyid, country, subjid) %>%
  mutate(N=n()) %>% filter(N==2)  %>%
  select(studyid, country, subjid, agecat, haz, whz) 
 

#Calc RTM effect
d1 <- d %>% filter(agecat==age[1])
d2 <- d %>% filter(agecat==age[2])
rho= cor(d1$whz, d2$whz)
popmean_pre = mean(d1$whz)
popmean_post = mean(d2$whz)
popvar_pre = var(d1$whz)
popsd_pre = sd(d1$whz)
k = -2
between_sub_var = rho * popvar_pre
within_sub_var = popvar_pre - between_sub_var
coef=within_sub_var/sqrt(within_sub_var+between_sub_var)
z=(popmean_pre+2)/popsd_pre
C=dnorm(z)/(1-pnorm(z))

coef*C

#expected pretest
E_pre <- popmean_pre-C
E_pre
#expected posttest
E_post <- popmean_post -(C* popsd_pre * rho)
E_post

#RTM effect
E_post-E_pre
RTM <- C* popsd_pre * (1-rho)
RTM

#Catch up growth
#https://www.researchgate.net/publication/7762990_Catch-up_Growth_or_Regression_to_the_Mean_Recovery_from_Stunting_Revisited
popmean_post - popmean_pre * rho

# #actual values in high-risk group
# dwast <- d %>% arrange(studyid, country, subjid, agecat) %>% filter(first(whz)< -2)
# d1 <- dwast %>% filter(agecat==age[1])
# d2 <- dwast %>% filter(agecat==age[2])
# pre=mean(d1$whz)
# post=mean(d2$whz)
# post-pre
# 
# (post-pre)/RTM*100

#regression controlling for RTM
d1$wast <- as.numeric(d1$whz < -2)
res_raw <- lm(d2$whz ~ d1$wast)
summary(res_raw)

d1$diff <- d1$whz-mean(d1$whz)
res_rtm <- lm(d2$whz ~  d1$diff + d1$wast )
summary(res_rtm)

res_rtm <- lm(d2$whz ~  d1$whz + d1$wast )
summary(res_rtm)

#Other methods
d1 <- d %>% filter(agecat==age[1])
d2 <- d %>% filter(agecat==age[2])
100*(1-cor(d1$haz, d2$haz))
100*(1-cor(d1$whz, d2$whz))

df <- merge(d1, d2, by=c("studyid", "country", "subjid")) %>% mutate(diff=whz.y -whz.x, wast=factor(ifelse(whz.x < -2,1,0)))
ggplot(df, aes(x=whz.x, y=diff, group=wast, color=wast)) + geom_point(alpha=0.1) + geom_smooth(method="lm")


dwast <- d %>% arrange(studyid, country, subjid, agecat) %>% filter(first(whz)< -2)
dstunt <- d %>% arrange(studyid, country, subjid, agecat) %>% filter(first(haz)< -2)
d1 <- dwast %>% filter(agecat==age[1])
d2 <- dwast %>% filter(agecat==age[2])
100*(1-cor(d1$whz, d2$whz))
d1 <- dstunt %>% filter(agecat==age[1])
d2 <- dstunt %>% filter(agecat==age[2])
100*(1-cor(d1$haz, d2$haz))


dhighweight <- d %>% arrange(studyid, country, subjid, agecat) %>% filter(first(whz)> 0)
d1 <- dhighweight %>% filter(agecat==age[1])
d2 <- dhighweight %>% filter(agecat==age[2])
100*(1-cor(d1$whz, d2$whz))


dhighweight <- d %>% arrange(studyid, country, subjid, agecat) %>% filter(first(whz)> 2)
d1 <- dhighweight %>% filter(agecat==age[1])
d2 <- dhighweight %>% filter(agecat==age[2])
100*(1-cor(d1$whz, d2$whz))
