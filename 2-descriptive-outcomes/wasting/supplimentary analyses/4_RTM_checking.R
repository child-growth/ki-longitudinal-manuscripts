

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
