

#https://stats.stackexchange.com/questions/479115/regression-to-the-mean-and-its-formula-in-r
#https://bmcmedresmethodol.biomedcentral.com/articles/10.1186/1471-2288-13-119
rm(list = ls())

source(paste0(here::here(), "/0-config.R"))

dfull <- readRDS(wasting_data_path) %>% filter(agedays < 731, studyid %in% monthly_cohorts)
#dfull <- readRDS("C:/Users/andre/Downloads/wasting_data.rds")


#method based on: https://pubmed.ncbi.nlm.nih.gov/15981181/
# For instance, Cameron et al [13] revisited catch-up growth estimates and argued that catch-up growth 
# should be estimated using height-for-age z-score and that catch-up is present only when the change in 
# z-score exceeds that predicted by regression to the mean.
df <- calc.monthly.agecat(dfull)
age <- c("Two weeks","6 months")

d <- df %>% filter(agecat %in% c(age[1],age[2])) %>%
  group_by(studyid, country, subjid, agecat) %>%
  summarize(whz=mean(whz)) %>%
  group_by(studyid, country, subjid) %>%
  mutate(N=n()) %>% filter(N==2)  %>%
  select(studyid, country, subjid, agecat, whz)

d1 <- d %>% filter(agecat==age[1])
d2 <- d %>% filter(agecat==age[2]) 
cor.test(d1$whz, d2$whz)
#expected change in Z-score
e_dz <- mean(d1$whz)*(1-0.2655123)
#catch-up growth:
mean(d2$whz) - e_dz


# dwast <- df %>% filter(agecat %in% c(age[1],age[2])) %>%
#   group_by(studyid, country, subjid, agecat) %>% arrange(studyid, country, subjid, agecat) %>%
#   filter(first(whz) < -2) %>%
#   summarize(whz=mean(whz)) %>%
#   group_by(studyid, country, subjid) %>%
#   mutate(N=n()) %>% filter(N==2)  %>%
#   select(studyid, country, subjid, agecat, whz)

d3 <- d1 %>% filter(whz < -2)
temp <- d3 %>% subset(., select = -c(whz, agecat))
d4 <- left_join(temp, d2, by = c("studyid", "country", "subjid"))
cor.test(d4$whz, d3$whz)
#expected change in Z-score
e_dz_wast <- mean(d1$whz)*(1-(0.06542664))

#This defines catch-up growth as
# (z2 - rz1), the difference between observed
# and RTM-expected z score at follow-up.
mean(d4$whz) - e_dz_wast









dfull$agecat <- cut(dfull$agedays,
                breaks = c(0:24) * 30.4167 , include.lowest = F,
                labels = paste0(1:24, " months"))

levels(dfull$agecat)[1] <- "One month"

dfull <- dfull %>% filter(!is.na(agecat))
dfull <- dfull %>% group_by(studyid, country, measurefreq, subjid, agecat) %>%
  summarise(whz=mean(whz, na.rm=T)) %>% ungroup()

table(dfull$studyid)
#df <- dfull %>% filter(measurefreq == "monthly", studyid=="MAL-ED", country=="BANGLADESH", !is.na(whz))
#df <- dfull %>% filter(measurefreq == "monthly", studyid=="TanzaniaChild2", !is.na(whz))
df <- dfull %>% filter(!is.na(whz))

levels(df$agecat)


#Get correlations between monthly measures
whz_corr <- function(subjid, whz1, whz2, agecat, mean_whz_monthly, sd_whz_monthly, var_whz_monthly, N){
  rho= cor(whz1, whz2, use="pairwise.complete.obs")
  return(data.frame(subjid, rho, whz1, whz2, agecat, mean_whz_monthly, sd_whz_monthly, var_whz_monthly, N))
}

df2 <- df %>% group_by(studyid, country, measurefreq) %>% arrange(studyid, country, measurefreq, subjid, agecat) %>%
  mutate(lag_whz=lag(whz)) %>% 
  group_by(studyid, country, measurefreq, agecat) %>% 
  mutate(N=n(), mean_whz_monthly=mean(whz), sd_whz_monthly=sd(whz), var_whz_monthly=var(whz)) %>% 
  do(whz_corr(.$subjid, .$lag_whz,.$whz, .$agecat, .$mean_whz_monthly, .$sd_whz_monthly, .$var_whz_monthly, .$N)) %>%
  mutate(age_group=case_when(
    agecat %in% c("One month","2 months", "3 months", "4 months", "5 months", "6 months") ~ "0-6 months",
    agecat %in% c("7 months", "8 months", "9 months", "10 months","11 months","12 months") ~ "6-12 months",
    agecat %in% c("13 months","14 months","15 months","16 months","17 months","18 months") ~ "12-18 months",
    agecat %in% c("19 months","20 months","21 months","22 months","23 months","24 months") ~ "18-24 months"
  ))  %>% group_by(studyid, country, measurefreq, age_group) %>% 
  mutate(mean_rho=mean(rho, na.rm=T)) %>% 
  group_by(studyid, country, measurefreq, age_group) %>% 
  arrange(studyid, country, measurefreq, age_group, agecat) %>% 
  mutate(first_N=first(N),
         last_N=last(N),
         popmean_pre=first(mean_whz_monthly),
         popmean_post=last(mean_whz_monthly),
         popsd_pre=first(sd_whz_monthly),
         popvar_pre=first(var_whz_monthly),
         between_sub_var = mean_rho * popvar_pre,
         within_sub_var = popvar_pre - between_sub_var,
         coef=within_sub_var/sqrt(within_sub_var+between_sub_var),
         z=(popmean_pre+2)/popsd_pre,
         C=dnorm(z)/(1-pnorm(z)),
         E_pre = popmean_pre-C*popsd_pre,
         E_post = popmean_pre -(C* popsd_pre * mean_rho),
         RTM=E_post-E_pre) %>%
  filter(first_N>50 & last_N>50) %>%
  group_by(age_group) %>% mutate(median_RTM=median(RTM, na.rm=T)) %>%
  ungroup() %>% arrange(studyid, country, measurefreq, subjid, agecat) 
  
head(df2)
table(df2$studyid, df2$first_N)

df3 <- df2 %>% distinct(studyid, country, age_group, RTM)
df4 <- df2 %>% distinct(studyid, country, age_group,median_RTM)

df3 <- df3 %>% mutate(
  age_group =factor(age_group, levels=c("0-6 months","6-12 months", "12-18 months", "18-24 months"))
)

#Cohort specific medians
df3$median_RTM <- NA
df3$median_RTM[df3$age_group=="0-6 months"] <- median(df3$RTM[df3$age_group=="0-6 months"])
df3$median_RTM[df3$age_group=="6-12 months"] <- median(df3$RTM[df3$age_group=="6-12 months"])
df3$median_RTM[df3$age_group=="12-18 months"] <- median(df3$RTM[df3$age_group=="12-18 months"])
df3$median_RTM[df3$age_group=="18-24 months"] <- median(df3$RTM[df3$age_group=="18-24 months"])
median(temp$RTM)

p <- ggplot(df3, aes(x=age_group, y=RTM)) + geom_point(position=position_jitter(w = 0.25, h = 0),alpha=0.5) +
  #Note I'm using the median of all RTM effects, not the median of cohort specific estimates
  geom_point(aes(x=age_group, y=median_RTM), data=df4, shape=95, size=12, color=cbbPalette[2]) +
  xlab("Age group") + ylab("Regression to the mean effect\non weight-for-length Z-scores")
p

ggsave(p, file=paste0(here(),"/figures/wasting/RTM_figure.png"), width=6, height=3)


# #looking at expected versus observed growth
# head(df2)
# colnames(df2)
# wastdf <- plotdf %>% subset(., select = c(studyid, country, age, E_t2_wast, O_t2_wast)) %>%
#   rename(expected=E_t2_wast, observed=O_t2_wast) %>% mutate(cgf="Wasted")
# wastdf1 <- wastdf %>% subset(., select = c(studyid, country,age,expected, cgf)) %>% rename(zscore=expected) %>% mutate(cat="Expected")
# wastdf2 <- wastdf %>% subset(., select = c(studyid, country,age,observed, cgf)) %>% rename(zscore=observed) %>% mutate(cat="Observed")
# nonwastdf <- plotdf %>% subset(., select = c(studyid, country, age, E_t2_nonwast, O_t2_nonwast)) %>%
#   rename(expected=E_t2_nonwast, observed=O_t2_nonwast) %>% mutate(cgf="Non-wasted")
# nonwastdf1 <- nonwastdf %>% subset(., select = c(studyid, country,age,expected, cgf)) %>% rename(zscore=expected) %>% mutate(cat="Expected")
# nonwastdf2 <- nonwastdf %>% subset(., select = c(studyid, country,age,observed, cgf)) %>% rename(zscore=observed) %>% mutate(cat="Observed")
# 
# plotdf2 <- bind_rows(wastdf1, wastdf2, nonwastdf1, nonwastdf2)
# plotdf2 <- plotdf2 %>% mutate(cohort=paste0(studyid,"-",country))
# #ggplot(plotdf2, aes(x=age, y=zscore, group=cat, color=cat)) + geom_point() + 
# ggplot(plotdf2, aes(x=age, y=zscore, group=interaction(cohort,age), color=cat)) + 
#   geom_point(position=position_dodge(0.5)) + 
#   geom_line(position=position_dodge(0.5), color="grey30", alpha=0.5) +
#   coord_flip() + facet_wrap(~cgf) +
#   geom_hline(yintercept=0) +
#   theme(legend.position = "bottom")



# 
# table(df$agecat)
# #age <- c("Two weeks","6 months")
# age <- c("One month","3 months")
# # age <- c("Two weeks","24 months")
# #age <- c("6 months","12 months")
# 
# # d <- dfull %>% filter(agecat %in% c(age[1],age[2])) %>% 
# #   group_by(studyid, country, subjid, agecat) %>%
# #   distinct(studyid, country, subjid, agecat, .keep_all = T)%>%
# #   group_by(studyid, country, subjid) %>%
# #   mutate(N=n()) %>% filter(N==2)  %>%
# #   select(studyid, country, subjid, agecat, haz, whz) 
# 
# df$age1<-30.4167*1
# df$age2<-30.4167*2
# # dfull$age1<-365/2
# # dfull$age2<-365
# 
# d1 <- df %>% 
#   group_by(studyid, country, subjid) %>%
#   filter(abs(agedays-age1)==min(abs(agedays-age1)) & abs(agedays-age1)<30) %>%
#   distinct(studyid, country, subjid, agedays, .keep_all = T) %>%
#   mutate(agecat="age1")
# summary(d1$agedays)
# d2 <- df %>% 
#   group_by(studyid, country, subjid) %>%
#   filter(abs(agedays-age2)==min(abs(agedays-age2)) & abs(agedays-age2)<30) %>%
#   distinct(studyid, country, subjid, agedays, .keep_all = T) %>%
#   mutate(agecat="age2")
# summary(d2$agedays)
# 
#   
# d <- bind_rows(d1,d2) %>%
#   group_by(studyid, country, subjid) %>%
#   mutate(N=n(), Nagecats=length(unique(agecat)), SD=sd(agedays)) %>% filter(N==2, Nagecats==2, SD!=0)  %>%
#   select(studyid, country, subjid, agedays, agecat, whz, SD) 
# summary(d$SD)
# 
# plotdf=data.frame(whz1=d$whz[d$agecat=="age1"], whz2=d$whz[d$agecat=="age2"], whz_change=d$whz[d$agecat=="age2"]-d$whz[d$agecat=="age1"])
# cor.test(plotdf$whz1, plotdf$whz2)
# cor.test(plotdf$whz1, plotdf$whz_change)
# summary(plotdf$whz1)
# summary(plotdf$whz2)
# summary(plotdf$whz_change)
# var(plotdf$whz_change)
# 
# ggplot(plotdf, aes(x=whz1, y=whz_change)) + geom_point(alpha=0.25) + geom_smooth(se=F, method="lm") 
# 
# head(d)
# table(d$agecat)
# 
# #Calc RTM effect
# d1 <- d %>% filter(agecat=="age1")
# d2 <- d %>% filter(agecat=="age2")
# rho= cor(d1$whz, d2$whz)
# popmean_pre = mean(d1$whz)
# popmean_post = mean(d2$whz)
# popvar_pre = var(d1$whz)
# popsd_pre = sd(d1$whz)
# k = -2
# between_sub_var = rho * popvar_pre
# within_sub_var = popvar_pre - between_sub_var
# coef=within_sub_var/sqrt(within_sub_var+between_sub_var)
# z=(popmean_pre-k)/popsd_pre
# C=dnorm(z)/(1-pnorm(z))
# 
# coef*C
# 
# #expected pretest
# E_pre <- popmean_pre-C*popsd_pre
# E_pre
# #expected posttest
# E_post <- popmean_pre -(C* popsd_pre * rho)
# E_post
# 
# #RTM effect
# E_post-E_pre
# # RTM <- C* popsd_pre * (1-rho)
# # RTM
# 
# #1-4 months: 1.57
# #3-6 months: 1.02
# #6-9 months: 0.68
# #9-12 months: 0.5626097
# 
# #Catch up growth
# #https://www.researchgate.net/publication/7762990_Catch-up_Growth_or_Regression_to_the_Mean_Recovery_from_Stunting_Revisited
# popmean_post - popmean_pre * rho
# 
# #Expected 2nd Z-score:
# popmean_pre * rho
# ggplot(plotdf, aes(x=whz1)) + geom_density()
# ggplot(plotdf, aes(x=whz1*rho)) + geom_density()
# 
# 
# 
# df <- dfull %>% group_by(subjid) %>% arrange(subjid,agedays) %>% filter(first(agedays)< 60, first(whz) < -2)
# mean(df$whz)
# # # #actual values in high-risk group
# # # dwast <- d %>% arrange(studyid, country, subjid, agecat) %>% filter(first(whz)< -2)
# # # d1 <- dwast %>% filter(agecat==age[1])
# # # d2 <- dwast %>% filter(agecat==age[2])
# # # pre=mean(d1$whz)
# # # post=mean(d2$whz)
# # # post-pre
# # # 
# # # (post-pre)/RTM*100
# # 
# # #regression controlling for RTM
# # d1$wast <- as.numeric(d1$whz < -2)
# # res_raw <- lm(d2$whz ~ d1$wast)
# # summary(res_raw)
# # 
# # d1$diff <- d1$whz-mean(d1$whz)
# # res_rtm <- lm(d2$whz ~  d1$diff + d1$wast )
# # summary(res_rtm)
# # 
# # res_rtm <- lm(d2$whz ~  d1$whz + d1$wast )
# # summary(res_rtm)
# # 
# # #Other methods
# # d1 <- d %>% filter(agecat==age[1])
# # d2 <- d %>% filter(agecat==age[2])
# # 100*(1-cor(d1$haz, d2$haz))
# # 100*(1-cor(d1$whz, d2$whz))
# # 
# # df <- merge(d1, d2, by=c("studyid", "country", "subjid")) %>% mutate(diff=whz.y -whz.x, wast=factor(ifelse(whz.x < -2,1,0)))
# # ggplot(df, aes(x=whz.x, y=diff, group=wast, color=wast)) + geom_point(alpha=0.1) + geom_smooth(method="lm")
# # 
# # 
# # dwast <- d %>% arrange(studyid, country, subjid, agecat) %>% filter(first(whz)< -2)
# # dstunt <- d %>% arrange(studyid, country, subjid, agecat) %>% filter(first(haz)< -2)
# # d1 <- dwast %>% filter(agecat==age[1])
# # d2 <- dwast %>% filter(agecat==age[2])
# # 100*(1-cor(d1$whz, d2$whz))
# # d1 <- dstunt %>% filter(agecat==age[1])
# # d2 <- dstunt %>% filter(agecat==age[2])
# # 100*(1-cor(d1$haz, d2$haz))
# # 
# # 
# # dhighweight <- d %>% arrange(studyid, country, subjid, agecat) %>% filter(first(whz)> 0)
# # d1 <- dhighweight %>% filter(agecat==age[1])
# # d2 <- dhighweight %>% filter(agecat==age[2])
# # 100*(1-cor(d1$whz, d2$whz))
# # 
# # 
# # dhighweight <- d %>% arrange(studyid, country, subjid, agecat) %>% filter(first(whz)> 2)
# # d1 <- dhighweight %>% filter(agecat==age[1])
# # d2 <- dhighweight %>% filter(agecat==age[2])
# # 100*(1-cor(d1$whz, d2$whz))
