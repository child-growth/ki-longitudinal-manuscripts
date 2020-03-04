

rm(list=ls())

source(paste0(here::here(), "/0-config.R"))



df <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))

#Temp subset to just maled
df <- df %>% filter(studyid == "MAL-ED")

d <- df  %>% 
  filter(haz > -6 & haz < 6) %>% 
  filter(measurefreq!="yearly") %>%
  filter(agedays < 24*30.4167+15.20835) %>%
  subset(., select = c(studyid, country, subjid, agedays, haz, whz))
  


d <- d %>% mutate(agemonth = case_when (agedays >= 1 & agedays < 15.20835 ~ 0,
                                        agedays >= 1*30.4167-15.20835 & agedays < 1*30.4167+15.20835  ~ 1,
                                        agedays >= 2*30.4167-15.20835 & agedays < 2*30.4167+15.20835  ~ 2,
                                        agedays >= 3*30.4167-15.20835 & agedays < 3*30.4167+15.20835  ~ 3,
                                        agedays >= 4*30.4167-15.20835 & agedays < 4*30.4167+15.20835  ~ 4,
                                        agedays >= 5*30.4167-15.20835 & agedays < 5*30.4167+15.20835  ~ 5,
                                        agedays >= 6*30.4167-15.20835 & agedays < 6*30.4167+15.20835  ~ 6,
                                        agedays >= 7*30.4167-15.20835 & agedays < 7*30.4167+15.20835  ~ 7,
                                        agedays >= 8*30.4167-15.20835 & agedays < 8*30.4167+15.20835  ~ 8,
                                        agedays >= 9*30.4167-15.20835 & agedays < 9*30.4167+15.20835  ~ 9,
                                        agedays >= 10*30.4167-15.20835 & agedays < 10*30.4167+15.20835  ~ 10,
                                        agedays >= 11*30.4167-15.20835 & agedays < 11*30.4167+15.20835  ~ 11,
                                        agedays >= 12*30.4167-15.20835 & agedays < 12*30.4167+15.20835  ~ 12,
                                        agedays >= 13*30.4167-15.20835 & agedays < 13*30.4167+15.20835  ~ 13,
                                        agedays >= 14*30.4167-15.20835 & agedays < 14*30.4167+15.20835  ~ 14,
                                        agedays >= 15*30.4167-15.20835 & agedays < 15*30.4167+15.20835  ~ 15,
                                        agedays >= 16*30.4167-15.20835 & agedays < 16*30.4167+15.20835  ~ 16,
                                        agedays >= 17*30.4167-15.20835 & agedays < 17*30.4167+15.20835  ~ 17,
                                        agedays >= 18*30.4167-15.20835 & agedays < 18*30.4167+15.20835  ~ 18,
                                        agedays >= 19*30.4167-15.20835 & agedays < 19*30.4167+15.20835  ~ 19,
                                        agedays >= 20*30.4167-15.20835 & agedays < 20*30.4167+15.20835  ~ 20,
                                        agedays >= 21*30.4167-15.20835 & agedays < 21*30.4167+15.20835  ~ 21,
                                        agedays >= 22*30.4167-15.20835 & agedays < 22*30.4167+15.20835  ~ 22,
                                        agedays >= 23*30.4167-15.20835 & agedays < 23*30.4167+15.20835  ~ 23,
                                        agedays >= 24*30.4167-15.20835 & agedays < 24*30.4167+15.20835  ~ 24
))


  
  
diffwhzfunc <- function(dat)  {
  
  diffwhz <- as.vector(rep(NA,8))
  
  for (i in 1:8) {
    
    if (as.numeric(3*i) %in% dat$agemonth==TRUE & as.numeric(3*(i-1)) %in% dat$agemonth==TRUE ) {
      
      diffwhz[i] = dat$whz[dat$agemonth==3*i]-dat$whz[dat$agemonth==3*(i-1)]
      
    } else {
      
      diffwhz[i]= NA
       }
    }
  dat$diffwhz0_3 <- diffwhz[1]
  dat$diffwhz3_6 <- diffwhz[2]
  dat$diffwhz6_9 <- diffwhz[3]
  dat$diffwhz9_12 <- diffwhz[4]
  dat$diffwhz12_15 <- diffwhz[5]
  dat$diffwhz15_18 <- diffwhz[6]
  dat$diffwhz18_21 <- diffwhz[7]
  dat$diffwhz21_24 <- diffwhz[8]
  
  return(dat)
  }




diffhazfunc <- function(dat)  {
  
  diffhaz <- as.vector(rep(NA,8))
  
  for (i in 1:8) {
    
    if (as.numeric(3*i) %in% dat$agemonth==TRUE & as.numeric(3*(i-1)) %in% dat$agemonth==TRUE ) {
      
      diffhaz[i] = dat$haz[dat$agemonth==3*i]-dat$haz[dat$agemonth==3*(i-1)]
      
    } else {
      
      diffhaz[i]= NA
    }
  }
  dat$diffhaz0_3 <- diffhaz[1]
  dat$diffhaz3_6 <- diffhaz[2]
  dat$diffhaz6_9 <- diffhaz[3]
  dat$diffhaz9_12 <- diffhaz[4]
  dat$diffhaz12_15 <- diffhaz[5]
  dat$diffhaz15_18 <- diffhaz[6]
  dat$diffhaz18_21 <- diffhaz[7]
  dat$diffhaz21_24 <- diffhaz[8]
  
  return(dat)
}



# dwhz <- d %>% mutate(diffwhz0_3=NA,diffwhz3_6=NA,diffwhz6_9=NA,diffwhz9_12=NA,
#                           diffwhz12_15=NA,diffwhz15_18=NA,diffwhz18_21=NA,diffwhz21_24=NA) %>% 
#   group_by(studyid,country,subjid) %>% 
#   do(diffwhzfunc(.))



dall <- d %>% mutate(diffhaz0_3=NA,diffhaz3_6=NA,diffhaz6_9=NA,diffhaz9_12=NA,
                      diffhaz12_15=NA,diffhaz15_18=NA,diffhaz18_21=NA,diffhaz21_24=NA) %>% 
  group_by(studyid,country,subjid, agemonth) %>% 
  filter(abs(agedays - agemonth * 30.4167) == min(abs(agedays - agemonth * 30.4167))) %>% 
  do(diffhazfunc(.)) %>% slice(1)









#Plot
# 
# dtest<- d[2700:2720,]
# 
# 
# duniq <-dall[!duplicated(dall[c(1,2,4)]),]
# 
# 
# dtest<- duniq[1:100,]
# 
# dlonghaz <- melt(setDT(dtest), id.vars = c("studyid","country","subjid"), 
#               measure.vars = 82:89,variable.name = "agecat",value.name = "diffhaz")
# 
# 
# 
# dlonghaz <- dlonghaz %>% mutate(agecat = case_when (agecat =="diffhaz0_3" ~ "0-3 months",
#                                         agecat =="diffhaz3_6" ~ "3-6 months",
#                                         agecat =="diffhaz6_9" ~ "6-9 months",
#                                         agecat =="diffhaz9_12" ~ "9-12 months",
#                                         agecat =="diffhaz12_15" ~ "12-15 months",
#                                         agecat =="diffhaz15_18" ~ "15-18 months",
#                                         agecat =="diffhaz18_21" ~ "18-21 months",
#                                         agecat =="diffhaz21_24" ~ "21-24 months"
#                                          
# ))




#Compare to primary growth velocity estimates:
velsub <- vel %>% filter(ycat == "haz", studyid == "MAL-ED", diffcat=="0-3 months")
head(velsub)


df <- dall %>% subset(., select = c(studyid, country, subjid,  diffhaz0_3, diffhaz3_6)) %>% filter(!is.na(diffhaz0_3))
head(df)
























