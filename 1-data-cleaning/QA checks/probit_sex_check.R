
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(haven)

#--------------------------------------------
# Read in master data file
#--------------------------------------------

dfull <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))
d <- dfull %>% filter(studyid == "PROBIT")
summary(d$lencm)

#Check content sex ratio (should be ~52-53% male)
dContent <- dfull %>% filter(studyid == "CONTENT") %>% arrange(agedays) %>%
  group_by(subjid) %>% slice(1)
(table(dContent$sex))
prop.table(table(dContent$sex))


#anthro <- read_sas("U:/data/probit_new/PROBIT/raw/anthro.sas7bdat")
anthro <- read_sas("U:/data/probit_new/PROBIT/import/PI/z_scores.sas7bdat")
anthro <- anthro %>% filter(age < 24 * 30.4167)
head(anthro)
summary(anthro$HEIGHT)

ggplot(d[abs(d$haz) < 5,], aes(x=haz)) + geom_density() + coord_cartesian(xlim= c(-5, 5))
ggplot(anthro[abs(anthro$HAZ) < 5,], aes(x=HAZ)) + geom_density() + coord_cartesian(xlim= c(-5, 5))
summary(d$haz[abs(d$haz) < 5])
summary(anthro$HAZ[abs(anthro$HAZ) < 5])

plot(density(anthro$height[!is.na(anthro$height)]))
plot(density(d$lencm[!is.na(d$lencm)]))
plot(density(anthro$weight[!is.na(anthro$weight)]))
plot(density(d$wtkg[!is.na(d$wtkg)]))

#dRaw <- readRDS("/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/cleaned individual study rds datasets - Old/prbt.rds")
dRaw <- read.csv("U:/data/probit_new/PROBIT/adam/ads_full_KI1119695_PROBIT.csv")

colnames(dRaw) <- tolower(colnames(dRaw))

table(d$sex)
table(dRaw$sex)

#subset to under 2 years
d <- d %>% filter(agedays < 24 * 30.4167) %>% filter(!is.na(haz))
dRaw <- dRaw %>% filter(agedays < 24 * 30.4167) %>% filter(!is.na(haz))

table(d$sex)
table(dRaw$sex)


#subset to first obser per child
d1 <- d %>% group_by(subjid) %>% arrange(agedays) %>% slice(1)
dRaw1 <- dRaw %>% group_by(subjid) %>% arrange(agedays) %>% slice(1)

table(d1$sex)
table(dRaw1$sex)

table(dRaw1$arm)
(table(dRaw1$sex[dRaw1$arm=="Control group"])) 
(table(dRaw1$sex[dRaw1$arm=="Experimental group"])) 
prop.table(table(dRaw1$sex[dRaw1$arm=="Control group"])) * 100
prop.table(table(dRaw1$sex[dRaw1$arm=="Experimental group"])) * 100

#subset to obs at birth
# d2 <- d1 %>% filter(agedays ==1)
# dRaw2 <- dRaw1 %>% filter(agedays ==1) 
# 
# table(d2$sex)
# table(dRaw2$sex)



#HAZ and WHZ trajectories by sex
ggplot(d, aes(x=agedays, y=haz, group=sex, color=sex)) + 
  geom_point(alpha=0.05) +
  geom_smooth() + theme(legend.position = "right") +
  coord_cartesian(ylim= c(-5, 5))

ggplot(d, aes(x=agedays, y=whz, group=sex, color=sex)) + 
  geom_point(alpha=0.05) +
  geom_smooth() + theme(legend.position = "right") +
  coord_cartesian(ylim= c(-5, 5))



#length and weight trajectories by sex
ggplot(d, aes(x=agedays, y=lencm, group=sex, color=sex)) + 
  geom_point(alpha=0.05) +
  geom_smooth() + theme(legend.position = "right")


ggplot(d, aes(x=agedays, y=wtkg, group=sex, color=sex)) + 
  geom_point(alpha=0.05) +
  geom_smooth() + theme(legend.position = "right")






ggplot(d[d$subjid<10200,], aes(x=agedays, y=haz, group=sex, color=sex)) + 
  geom_smooth() +
  geom_point() +
  theme(legend.position = "right") +
  coord_cartesian(ylim= c(-5, 5))


df <- d[d$subjid<10200,]
df <- df %>% filter(agedays < 205 & agedays > 150) %>% arrange(agedays)



#Z-scores by sex in the raw data
table(anthro$SEX)
table(anthro$SEX[anthro$TIME==1])
anthro$sex <- "male"
anthro$sex[anthro$SEX==2] <- "female"
ggplot(anthro, aes(x=TIME, y=HAZ, group=sex, color=sex)) + 
  geom_point(alpha=0.05) +
  geom_smooth(method = "gam", formula = y ~ s(x, k = 3), size = 1) + theme(legend.position = "right")


anthro2 <- anthro %>% filter(TIME==1, abs(HAZ) < 6)
d3 <- d2 %>% filter(abs(haz) < 6)
table(d3$sex, d3$haz < -2)
table(anthro2$sex, anthro2$HAZ < -2)

prop.table(table(anthro2$sex))
prop.table(table(anthro2$HAZ < -2))

prop.table(table(d2$sex))
prop.table(table(d2$haz < -2))


anthro3 <- anthro %>%  filter(abs(HAZ) < 6) %>% group_by(HOSP, SUBJ) %>%
  mutate(everstunt=1*(min(HAZ) < -2)) %>% slice(1)

d4 <- d %>%  filter(agedays < 15 * 30.4167, abs(haz) < 6) %>% group_by(subjid) %>%
  mutate(everstunt=1*(min(haz) < -2)) %>% slice(1)

table(anthro3$sex, anthro3$everstunt)
table(d4$sex, d4$everstunt)

library(epitools)
epitab(table(anthro3$sex, anthro3$everstunt))
epitab(table(d4$sex, d4$everstunt))

epitab(table(d3$sex, d3$haz < -2))
epitab(table(anthro2$sex, anthro2$HAZ < -2))





#Recalculate Z-scores after flipping sex in KI data
library(growthstandards)
d$sex2 <- ifelse(d$sex=="Male", "Female", "Male")
d$haz2 <- who_value2zscore(d$agedays, d$lencm, x_var = "agedays", y_var = "htcm", sex = d$sex2)
summary(d$haz)
summary(d$haz2)

ggplot(d, aes(x=agedays, y=haz2, group=sex2, color=sex2)) + 
  geom_point(alpha=0.05) +
  geom_smooth() + theme(legend.position = "right") +
  coord_cartesian(ylim= c(-5, 5), xlim=c(0, 730))









dRaw <- read.csv("U:/data/content/CONTENT-201511/adam/ADS_KI1114097_CONTENT_201511.csv")
colnames(dRaw) <- tolower(colnames(dRaw))

table(dRaw$sex)

#subset to first obser per child
dRaw1 <- dRaw %>% group_by(subjid) %>% arrange(agedays) %>% slice(1)

table(dRaw1$sex)

(table(dRaw1$sex[dRaw1$arm=="Control group"])) 
(table(dRaw1$sex[dRaw1$arm=="Experimental group"])) 
prop.table(table(dRaw1$sex[dRaw1$arm=="Control group"])) * 100
prop.table(table(dRaw1$sex[dRaw1$arm=="Experimental group"])) * 100

#subset to obs at birth
# d2 <- d1 %>% filter(agedays ==1)
