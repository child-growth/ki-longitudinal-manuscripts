
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(haven)

#--------------------------------------------
# Read in master data file
#--------------------------------------------

dfull <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))
d <- dfull %>% filter(studyid == "ki1119695-PROBIT")

#anthro <- read_sas("U:/data/probit_new/PROBIT/raw/anthro.sas7bdat")
anthro <- read_sas("U:/data/probit_new/PROBIT/import/PI/z_scores.sas7bdat")
anthro <- anthro %>% filter(age < 24 * 30.4167)
head(anthro)

ggplot(d[abs(d$haz) < 5,], aes(x=haz)) + geom_density() + coord_cartesian(xlim= c(-5, 5))
ggplot(anthro[abs(anthro$HAZ) < 5,], aes(x=HAZ)) + geom_density() + coord_cartesian(xlim= c(-5, 5))
summary(d$haz[abs(d$haz) < 5])
summary(anthro$HAZ[abs(anthro$HAZ) < 5])

plot(density(anthro$height[!is.na(anthro$height)]))
plot(density(d$lencm[!is.na(d$lencm)]))
plot(density(anthro$weight[!is.na(anthro$weight)]))
plot(density(d$wtkg[!is.na(d$wtkg)]))

#dRaw <- readRDS("U:/ucb-superlearner/Manuscript analysis data/cleaned individual study rds datasets - Old/prbt.rds")
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

#subset to obs at birth
d2 <- d1 %>% filter(agedays ==1)
dRaw2 <- dRaw1 %>% filter(agedays ==1) 

table(d2$sex)
table(dRaw2$sex)



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
anthro$sex <- "female"
anthro$sex[anthro$SEX==2] <- "male"
ggplot(anthro, aes(x=TIME, y=HAZ, group=sex, color=sex)) + 
  geom_point(alpha=0.05) +
  geom_smooth(method = "gam", formula = y ~ s(x, k = 3), size = 1) + theme(legend.position = "right")


anthro2 <- anthro %>% filter(TIME==1, abs(HAZ) < 6)
d3 <- d2 %>% filter(abs(haz) < 6)
table(d3$sex, d3$haz < -2)
table(anthro2$sex, anthro2$HAZ < -2)
