#https://bmcmedresmethodol.biomedcentral.com/articles/10.1186/1471-2288-13-119
rm(list = ls())

source(paste0(here::here(), "/0-config.R"))

dfull <- readRDS(wasting_data_path) %>% filter(agedays < 731, studyid %in% monthly_cohorts)
#dfull <- readRDS("C:/Users/andre/Downloads/wasting_data.rds")


#method based on: https://pubmed.ncbi.nlm.nih.gov/15981181/
# For instance, Cameron et al [13] revisited catch-up growth estimates and argued that catch-up growth 
# should be estimated using height-for-age z-score and that catch-up is present only when the change in 
# z-score exceeds that predicted by regression to the mean.

# df <- calc.monthly.agecat(dfull)
# age = c("Two weeks","3 months")
dfull$agecat <- cut(dfull$agedays,
                    breaks = c(0:24) * 30.4167 , include.lowest = F,
                    labels = paste0(1:24, " months"))
levels(dfull$agecat)[1] <- "Birth"

age=c("4 months","7 months")
df <- dfull %>% filter(studyid=="MAL-ED",
                       country=="TANZANIA",
                       agecat=="4 months-7 months")

catch_up_growth <- function(df, age = c("Two weeks","3 months")){
  d <- df %>% filter(agecat %in% c(age[1],age[2])) %>%
    group_by(studyid, country, subjid, agecat) %>%
    summarize(whz=mean(whz)) %>%
    group_by(studyid, country, subjid) %>%
    mutate(N=n()) %>% filter(N==2)  %>%
    select(studyid, country, subjid, agecat, whz)
  
  d_age1 <- d %>% filter(agecat==age[1]) %>% ungroup() %>% mutate(N=n())
  d_age2 <- d %>% filter(agecat==age[2]) %>% ungroup() %>% mutate(N=n())
  
  d1 <- d_age1 %>% filter(whz >= -2)
  temp1 <- d1 %>% subset(., select = -c(whz, agecat))
  d2 <- left_join(temp1, d_age2, by = c("studyid", "country", "subjid"))
  
  cor1 <- abs(cor(d1$whz, d2$whz))
  #cor1 <- (cor(d1$whz, d2$whz))
  #expected change in Z-score
  e_dz <- mean(d1$whz)*(1-cor1)
  #catch-up growth:
  #nonwast_CUG <- mean(d2$whz) - e_dz
  E_t2_nonwast=mean(d1$whz)*cor1
  nonwast_CUG <- mean(d2$whz) - mean(d1$whz)*cor1
  
  d3 <- d_age1 %>% filter(whz < -2)
  temp2 <- d3 %>% subset(., select = -c(whz, agecat))
  d4 <- left_join(temp2, d_age2, by = c("studyid", "country", "subjid"))
  cor2 <- abs(cor(d3$whz, d4$whz))
  #cor2 <- (cor(d3$whz, d4$whz))
  #expected change in Z-score
  e_dz_wast <- mean(d3$whz)*(1-(cor2))
  
  #This defines catch-up growth as
  # (z2 - rz1), the difference between observed
  # and RTM-expected z score at follow-up.
  #wast_CUG <- mean(d4$whz) - e_dz_wast
  E_t2_wast=mean(d3$whz)*cor2
  wast_CUG <- mean(d4$whz) - mean(d3$whz)*cor2
  
  res <- data.frame(age=paste0(age[1],"-",age[2]), 
                    wast_CUG=wast_CUG, nonwast_CUG=nonwast_CUG, 
                    E_t2_wast=E_t2_wast, O_t2_wast=mean(d4$whz), O_t1_wast=mean(d3$whz), 
                    E_t2_nonwast=E_t2_nonwast, O_t2_nonwast=mean(d2$whz),O_t1_nonwast=mean(d1$whz),  
                    E_change_wast=e_dz_wast, E_change_nonwast=e_dz,
                    O_change_wast=mean(d4$whz)-mean(d3$whz), O_change_nonwast=mean(d2$whz)-mean(d1$whz),
                    wast_corr=cor2, nonwast_corr=cor1, wast_N=d_age1$N[1], nonwast_N=d_age2$N[1])
  res[,-1] <-round(res[,-1],2)
  return(res)
}


# test <- catch_up_growth(df,  age = c("Two weeks","3 months"))
# t1 <- catch_up_growth(df,  age = c("Two weeks","6 months"))
# t2 <- catch_up_growth(df,  age = c("6 months","12 months"))
# t3 <- catch_up_growth(df,  age = c("12 months","18 months"))
# t4 <- catch_up_growth(df,  age = c("18 months","24 months"))
# 
# res <- bind_rows(test, t1, t2, t3, t4)
# res
# 
# res[,1:3]


agelist = list(
  c("Birth","4 months"),
  c("2 months","5 months"),
  c("3 months","6 months"),
  c("4 months","7 months"),
  c("5 months","8 months"),
  c("6 months","9 months"),
  c("7 months","10 months"),
  c("8 months","11 months"),
  c("9 months","12 months"),
  c("10 months","13 months"),
  c("11 months","14 months"),
  c("12 months","15 months"),
  c("13 months","16 months"),
  c("14 months","17 months"),
  c("15 months","18 months"),
  c("16 months","19 months"),
  c("17 months","20 months"),
  c("18 months","21 months"),
  c("19 months","22 months"),
  c("20 months","23 months"),
  c("21 months","24 months")
)

#test <- df %>% group_by(studyid, country) %>% do(catch_up_growth(.,  age = c("Birth","4 months")))

fullres = NULL
for(i in agelist){
  res <- dfull %>% group_by(studyid, country) %>% do(catch_up_growth(.,  age = i))
  fullres <- bind_rows(fullres, res)
}

head(fullres)
plotdf <- fullres %>% filter(!is.na(wast_CUG), wast_N>10, 
                             nonwast_corr> -0.9 & nonwast_corr < 0.9,
                             wast_corr> -0.9 & wast_corr < 0.9) %>%
  mutate(diff = nonwast_CUG - wast_CUG )
head(plotdf)

plotdf$age = factor(plotdf$age, levels= rev(c("Birth-4 months",
                                           "2 months-5 months",
                                           "3 months-6 months",
                                           "4 months-7 months",
                                           "5 months-8 months",
                                           "6 months-9 months",
                                           "7 months-10 months",
                                           "8 months-11 months",
                                           "9 months-12 months",
                                           "10 months-13 months",
                                           "11 months-14 months",
                                           "12 months-15 months",
                                           "13 months-16 months",
                                           "14 months-17 months",
                                           "15 months-18 months",
                                           "16 months-19 months",
                                           "17 months-20 months",
                                           "18 months-21 months",
                                           "19 months-22 months",
                                           "20 months-23 months",
                                           "21 months-24 months")))

ggplot(plotdf, aes(x=age, y=diff)) + geom_point() + geom_smooth() + coord_flip() + 
  geom_hline(yintercept=0)


head(plotdf)
wastdf <- plotdf %>% subset(., select = c(studyid, country, age, E_t2_wast, O_t2_wast)) %>%
          rename(expected=E_t2_wast, observed=O_t2_wast) %>% mutate(cgf="Wasted")
wastdf1 <- wastdf %>% subset(., select = c(studyid, country,age,expected, cgf)) %>% rename(zscore=expected) %>% mutate(cat="Expected")
wastdf2 <- wastdf %>% subset(., select = c(studyid, country,age,observed, cgf)) %>% rename(zscore=observed) %>% mutate(cat="Observed")
nonwastdf <- plotdf %>% subset(., select = c(studyid, country, age, E_t2_nonwast, O_t2_nonwast)) %>%
  rename(expected=E_t2_nonwast, observed=O_t2_nonwast) %>% mutate(cgf="Non-wasted")
nonwastdf1 <- nonwastdf %>% subset(., select = c(studyid, country,age,expected, cgf)) %>% rename(zscore=expected) %>% mutate(cat="Expected")
nonwastdf2 <- nonwastdf %>% subset(., select = c(studyid, country,age,observed, cgf)) %>% rename(zscore=observed) %>% mutate(cat="Observed")

plotdf2 <- bind_rows(wastdf1, wastdf2, nonwastdf1, nonwastdf2)
plotdf2 <- plotdf2 %>% mutate(cohort=paste0(studyid,"-",country))
#ggplot(plotdf2, aes(x=age, y=zscore, group=cat, color=cat)) + geom_point() + 
ggplot(plotdf2, aes(x=age, y=zscore, group=interaction(cohort,age), color=cat)) + 
  geom_point(position=position_dodge(0.5)) + 
  geom_line(position=position_dodge(0.5), color="grey30", alpha=0.5) +
  coord_flip() + facet_wrap(~cgf) +
  geom_hline(yintercept=0) +
  theme(legend.position = "bottom")


temp<-plotdf[plotdf$E_t2_wast>1,]
temp<-plotdf[plotdf$O_t2_wast>1,]