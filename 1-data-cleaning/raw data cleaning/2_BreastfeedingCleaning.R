


#----------------------------------------------------------
# Script to read in breastfeeding variables from cohorts' raw 
# SAS datafiles and merge with the harmonized ID variables
# Resulting datasets are combined together and breastfeeding
# variables are cleaned into harmonized definitions in the 
# `3_BreastfeedingDatasetCreation.R` script
#----------------------------------------------------------


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(haven)
library(foreign)
setwd(paste0(ghapdata_dir, "raw SAS datasets/"))

#Set cohort data file path
bfdata_dir <- paste0(ghapdata_dir, "covariate creation intermediate datasets/Breastfeeding datasets/")



#----------------------------------------------------------
# MAL-ED             60  38270
#----------------------------------------------------------
d<-read_sas("MALED/bf_24m.sas7bdat")
colnames(d)

#cumexc: Cumulative days of exclusive breastfeeding from birth. This is a cumulative sum of the variable "excrun", i.e., number of days, to date from birth, that the child was reported to be exclusively breastfed. This has been filled in between birth and minage with EBF if child began breastfeeding at all (cafbegbf~=.). Exclusive breastfeeding prevalence can be calculated by dividing cumexc / age (or days of follow up). 
#cumpred: Cumulative days of predominant breastfeeding (cumulative sum of predrun, i.e., number of days from birth, to date, that the child was reported to be predominantly breastfed).
#cumpart: Cumulative days of partial breastfeeding (cumulative sum of partrun, ie, number of days from birth, to date, that the child was reported to be partially breastfed).
#cumnobf: Cumulative days of no breastfeeding (cumulative sum of nobfrun, ie, number of days from birth, to date, that the child was reported to not be breastfed).

d <- d %>% select(pid, agedays, cumexc, cumpred, cumpart, cumnobf) %>% rename(subjido=pid)

mled <- readRDS(paste0(cohortdata_dir, "mled.rds"))
colnames(mled) <- tolower(colnames(mled))
mled <- mled %>% select(studyid, country, subjid, subjido, agedays, visit)

mled <- left_join(mled, d, by=c("subjido", "agedays"))
table(is.na(mled$cumexc))

#save
saveRDS(mled, file=paste0(bfdata_dir, "bf_mled.rds"))


#----------------------------------------------------------
# EE                5998    365
#----------------------------------------------------------

#C1B - birth breastfeeding

#c1bfrmno	1	SUBJ	SUBJID
#c1bq1dd	16	ANTHRO	AGEDAYS	Add one so that there is no AGEDAYS=0	Age of the newborn(Days)

# c1bq31	What was the introduced to child as first diet?	1" Colostrums" 2" Mothers milk" 3" Herbal ghutti" 4" Honey" 5" Plain water" 6" Sugar water" 7" Grip water" 8" Green tea" 9" Animal milk" 1" Formula milk" 11" Butter" 12"Other Specify" 666"Missing"
# c1bq31_o	What was the introduced to child as first diet?(Other specify)	
# c1bq33	when was the child put on mothers breast for feeding at first time?	1" Immediately after birth (first hour)" 2" 1-6 hours aftr birth" 3" 7-12 hours after birth" 4" 13-24 hours after birth" 5" More than 24 hours" 888"Not applicable"
# c1bq34	Is the child currently taking breast feed?	1" Yes" 2" No"
# c1bq35a	Since this time yesterday,did the child recive any of the following (Vitamin supplement)	1" Yes" 2" No"
# c1bq35b	Since this time yesterday,did the child recive any of the following (Plain water)	1" Yes" 2" No"
# c1bq35c	Since this time yesterday,did the child recive any of the following (sweetened water/juise)	1" Yes" 2" No"
# c1bq35d	Since this time yesterday,did the child recive any of the following (ORS)	1" Yes" 2" No"
# c1bq35e	Since this time yesterday,did the child recive any of the following (Infant formula)	1" Yes" 2" No"
# c1bq35f	Since this time yesterday,did the child recive any of the following (animal milk)	1" Yes" 2" No"
# c1bq35g	Since this time yesterday,did the child recive any of the following (Any other liquids)	1" Yes" 2" No"
# c1bq36mm	If yes to using non human milk how old was the child ,when this milk was the introduced?(Months)	
# c1bq36dd	If yes to using non human milk how old was the child ,when this milk was the introduced?(Days)	
# c1bq37a	At birth(BCG)	1" Yes" 2" No"
# c1bq37b	At birth(OPV )	1" Yes" 2" No"


#C2B - monthly followup

#c2bfrmno	1		SUBJID	
#c2bageyy	8		AGEDAYS	AGEDAYS = round(365.25 * c3bageyy + 365.25*c2bagemm/12 + c2bagedd) + 1

#c2bmre Breastfeeding	1" Yes" 2" No" 666"No Answer / Missing" 777"Not Applicable" 888"Unreachable" 999"Don't Know"
#c2bmrf Infant formula milk	1" Yes" 2" No" 666"No Answer / Missing" 777"Not Applicable" 888"Unreachable" 999"Don't Know"
#c2bmrg Weaning	1" Yes" 2" No" 666"No Answer / Missing" 777"Not Applicable" 888"Unreachable" 999"Don't Know"

ee <- readRDS(paste0(cohortdata_dir, "ee.rds"))
colnames(ee) <- tolower(colnames(ee))
head(ee)
ee <- ee %>% select(studyid, country, subjid, agedays)



d<-read.csv("EE/C2B_En.csv")
colnames(d) <- tolower(colnames(d))
head(d)



d <- d %>% select(eeid,
                  c2bage,
                  c2bmre,
                  c2bmrf,
                  c2bmrg) %>%
  mutate(
    agedays=c2bage,
    nbfyes=NA,
    anmlkfl=NA,
    pwmlkfl=NA,
    h20fedfl=NA, 
    othfedfl=NA
  ) %>%
  rename(subjid = eeid)

d$bfedfl <- NA
d$formlkfl <- NA
d$weanfl <- NA

d$bfedfl[d$c2bmre==1] <- 1
d$formlkfl[d$c2bmrf==1] <- 1
d$weanfl[d$c2bmrg==1] <- 1

d$bfedfl[d$c2bmre==2] <- 0
d$formlkfl[d$c2bmrf==2] <- 0
d$weanfl[d$c2bmrg==2] <- 0

d<-d%>%
  select(subjid, agedays, bfedfl, nbfyes, anmlkfl, pwmlkfl, formlkfl, h20fedfl, othfedfl,weanfl) %>%
  mutate(bfedfl = as.numeric(bfedfl), 
         formlkfl= as.numeric(formlkfl), 
         othfedfl= as.numeric(weanfl))

table(d$bfedfl)
table(d$formlkfl)
table(d$weanfl)

ee$subjid <- as.numeric(ee$subjid)
ee$agedays <- as.numeric(ee$agedays)
ee <- left_join(ee, d, by=c("subjid","agedays"))
table(ee$bfedfl)

saveRDS(ee, file=paste0(bfdata_dir, "bf_ee.rds"))

#----------------------------------------------------------
# EU                1523   1976
#----------------------------------------------------------

#Only measured at one time point - at enrollment - so don't include in covariate dataset

#U:\git\hbgd\ki1000304\EU\raw/enrol.sas7bdat

# CHILDID	Child Id	Unique identification number assigned to each child enrolled	Numeric
# AGE_M	Age (months)	06 to 30 	Numeric
# PRE-ENROLLMENT FEEDING(week preceding day of enrollment)			
# BFEED_ST	Breast feeding status	2=No, 3=exclusive, 4=partial, 5=occasional, 8=missing ,9= not applicable   	Numeric
# NBFEED_G	Non breast milk given	1= yes, 2= no,8=missing ,9= not applicable   	Numeric
# BOTTLE	Bottle	1= yes, 2= no,8=missing ,9= not applicable   	Numeric


#----------------------------------------------------------
# ZnMort             594   1666
#----------------------------------------------------------

#Only has indicator for "Currently breast fed" at study enrollment
#-may be able to just use cleaned data

#----------------------------------------------------------
# SAS-CompFeed     8868    475
#----------------------------------------------------------

#Breastfeeding information at 3 and 9 months  (not at 6 or 12months) with some later recall variables about when BF stopped
#May not be enough to use this study

#----------------------------------------------------------
# SAS-FoodSuppl    1807    414
#----------------------------------------------------------

#----------------------------------------------------------
# NIH-Birth          593   5568
#----------------------------------------------------------

#----------------------------------------------------------
# PROVIDE             0   9039
#----------------------------------------------------------

#----------------------------------------------------------
# NIH-Crypto          3   6837
#----------------------------------------------------------


#----------------------------------------------------------
# Keneba           14914  24829
#----------------------------------------------------------

#Note: BF vars only completed by the clinician if s/he thought it relevant
#Only currently bf and weaning variables, should be correct in FINAL

#----------------------------------------------------------
# Burkina Faso Zn   5227   9778
#----------------------------------------------------------

bfzn <- readRDS(paste0(cohortdata_dir, "bfzn.rds"))
colnames(bfzn) <- tolower(colnames(bfzn))
head(bfzn)
bfzn <- bfzn %>% select(studyid, country, subjid, agedays) 

d.raw<-read.xport("BFZinc/dietch.xpt") 
colnames(d.raw) <- tolower(colnames(d.raw))
head(d.raw)


d<-d.raw %>% select(numenf,
                agemo,
                sanit062,
                sanit063,
                alims079,
                alims073,
                alims074,
                alims075,
                alims076,
                alims077,
                alims078,
                alims710,
                alims711,
                alims712,
                alims713,
                alims714,
                alims715,
                alims716,
                alims717,
                alims718) %>% mutate_all(funs(as.numeric)) %>%
  mutate(othfedfl = as.numeric(rowSums(.[6:20]-1, na.rm = TRUE)>0),
         h20fedfl=NA,
         alims711_2=alims711) %>% 
  rename(subjido=numenf,
         bfedfl=sanit062,
         nbfyes=sanit063,
         anmlkfl=alims711,
         pwmlkfl=alims711_2,
         formlkfl=alims079) %>%
  select(subjido, agemo, bfedfl, nbfyes, anmlkfl, pwmlkfl, formlkfl, h20fedfl, othfedfl) %>%
  mutate(bfedfl = as.numeric(bfedfl), 
         anmlkfl= as.numeric(anmlkfl), 
         pwmlkfl= as.numeric(pwmlkfl), 
         formlkfl= as.numeric(formlkfl), 
         othfedfl= as.numeric(othfedfl))
d$bfedfl[d$bfedfl==9]<-NA

d$bfedfl <- d$bfedfl -1
d$anmlkfl <- d$anmlkfl -1
d$pwmlkfl <- d$pwmlkfl -1
d$formlkfl <- d$formlkfl -1

table(d$bfedfl)
table(d$nbfyes)
table(d$anmlkfl)
table(d$pwmlkfl)
table(d$formlkfl)
table(d$h20fedfl)
table(d$othfedfl)

summary(d$agemo)

table(d$bfedfl==1 & d$anmlkfl==0 & d$formlkfl==0 & d$othfedfl==0)

#No exclusive or partial breastfeeding

saveRDS(d, file=paste0(bfdata_dir, "bf_bfzn.rds"))

#----------------------------------------------------------
# Guatemala BSC     2474     71
#----------------------------------------------------------

#-only some micronutrient info from breastmilk

#----------------------------------------------------------
# GMS-Nepal        12592     85
#----------------------------------------------------------

gmsn <- readRDS(paste0(cohortdata_dir, "gmsn.rds"))
colnames(gmsn) <- tolower(colnames(gmsn))
gmsn <- gmsn %>% select(studyid, country, subjid, agedays, visit)
gmsn$visit <- as.numeric(gsub("Month ","",gmsn$visit))

bfvars <- c("measure_agedays", "bftimes",   "yesfood",  "vitamin",   "ors",   "pwater",   "iformula",   "tinmilk",  "othiq")
measuretimes <- as.character(c(3,6,9,12,15,18,21,24))
colnames <- c("babyid", paste0(rep(bfvars, 8), rep(measuretimes, each=length(bfvars))))


dfull<-read_sas("GMSN/gms6.sas7bdat") 
colnames(dfull) <- tolower(colnames(dfull))
#dfull <- dfull[,which(colnames(dfull) %in% colnames)]
dfull <- dfull %>% select(colnames)
colnames(dfull)

for(i in 1:length(measuretimes)){
  colnames(dfull) <- gsub(measuretimes[i],paste0("_",measuretimes[i]),colnames(dfull))
}


dl<- reshape(as.data.frame(dfull), direction='long', 
             #varying=c(2:73),
             varying=colnames(dfull)[-1], 
             timevar='visit',
             times=measuretimes,
             v.names=c("measure_agedays","bftimes",   "yesfood",  "vitamin",   "ors",   "pwater",   "iformula",   "tinmilk",  "othiq"),
             idvar='babyid', sep="_")
summary(dl$measure_agedays)

#fix column names
head(dfull)
head(dl[dl$babyid==67,])
as.data.frame(dfull[dfull$babyid==67,])
colnames(dl) <- c("babyid", "visit", "bftimes","iformula", "measure_agedays","ors","tinmilk","pwater","othiq","vitamin","yesfood")

table(dfull$yesfood_12)
table(dl$yesfood[dl$visit==12])

#set missing
#set missing
dl$bftimes[dl$bftimes==99]<-NA
dl$iformula[dl$iformula==99]<-NA
dl$ors[dl$ors==99]<-NA
dl$tinmilk[dl$tinmilk==99]<-NA
dl$pwater[dl$pwater==99]<-NA
dl$othiq[dl$othiq==99]<-NA
dl$vitamin[dl$vitamin==99]<-NA
dl$yesfood[dl$yesfood==99]<-NA
#Convert to indicators
dl <- dl[!is.na(dl$bftimes),]
dl$bfedfl<-as.numeric(dl$bftimes>0)
dl$yesfood<-as.numeric(dl$yesfood>0)
dl$vitamin<-as.numeric(dl$vitamin>0)
dl$ors<-as.numeric(dl$ors>0)
dl$pwater<-as.numeric(dl$pwater>0)
dl$iformula<-as.numeric(dl$iformula>0)
dl$tinmilk<-as.numeric(dl$tinmilk>0)
dl$othiq<-as.numeric(dl$othiq>0)
dl$visit<-as.numeric(dl$visit)

#dl <- melt(d, id='babyid')
summary(dl$measure_agedays)
table(dl$bfedfl)
table(dl$bftimes)
table(dl$yesfood)
table(dl$vitamin)
table(dl$ors)
table(dl$pwater)
table(dl$iformula)
table(dl$tinmilk)
table(dl$othiq)


d <- dl %>% rename(subjid=babyid, nbfyes=bftimes) %>% 
  mutate(anmlkfl=tinmilk, pwmlkfl=tinmilk, formlkfl=iformula, 
         h20fedfl=as.numeric(!(pwater==0 | vitamin==0 | ors==0)),
         othfedfl=as.numeric(!(yesfood==0 | othiq==0))) %>%
  select(subjid, visit, bfedfl, nbfyes, anmlkfl, pwmlkfl, formlkfl, h20fedfl, othfedfl)

table(d$visit, d$bfedfl)
table(d$visit, d$nbfyes)
table(d$visit, d$anmlkfl)
table(d$visit, d$pwmlkfl)
table(d$visit, d$h20fedfl)
table(d$visit, d$othfedfl)

#merge with dataset
gmsn <- left_join(gmsn, d, by=c("subjid","visit"))
table(d$visit, d$bfedfl)
table(gmsn$visit, gmsn$bfedfl)


#save
saveRDS(gmsn, file=paste0(bfdata_dir, "bf_gmsn.rds"))




#----------------------------------------------------------
# PROBIT          108307  15190
#----------------------------------------------------------

#Summary dataset already created. 

d <- read_sas("PROBIT/bf_dur_bf.sas7bdat") 
colnames(d) <- tolower(colnames(d))
head(d)

table(d$bf2)
table(d$dur_bf)
#Don't know how duration variables were calculated, so drop

d <- d %>% rename(subjid=child) %>% subset(., select=-c(hospital, dur_exbf, dur_bf))
saveRDS(d, file="/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/covariate creation intermediate datasets/Breastfeeding datasets/bf_prbt.rds")


#----------------------------------------------------------
# ZVITAMBO         12886  49843
#----------------------------------------------------------

#----------------------------------------------------------
# iLiNS-DOSE        1790   3250
#----------------------------------------------------------

#----------------------------------------------------------
# iLiNS-DYAD-M      3350    691
#----------------------------------------------------------

#----------------------------------------------------------
# LCNI-5              92   4098
#----------------------------------------------------------

#----------------------------------------------------------
# JiVitA-3         102216     91
#----------------------------------------------------------


# Infant 1 Month Postpartum
i1mop<-read_sas("JiVitA-3/raw/hbgd_i1mop.sas7bdat") %>% select(hbgdkid,
                                                                       i1sbfed,
                                                                       i1bftime,
                                                                       i1amilk,
                                                                       i1pmilk,
                                                                       i1formu,
                                                                       i1suji,
                                                                       i1dal,
                                                                       i1gruel,
                                                                       i1shago,
                                                                       i1rice,
                                                                       i1khich,
                                                                       i1barl,
                                                                       i1banan,
                                                                       i1biscu,
                                                                       i1honey,
                                                                       i1othf,
                                                                       i1water,
                                                                       i1amilkw,
                                                                       i1pmilkw,
                                                                       i1formuw,
                                                                       i1sujiw,
                                                                       i1dalw,
                                                                       i1gruelw,
                                                                       i1shagow,
                                                                       i1ricew,
                                                                       i1khichw,
                                                                       i1barlw,
                                                                       i1bananw,
                                                                       i1biscuw,
                                                                       i1honeyw,
                                                                       i1othfw,
                                                                       i1waterw)  %>% mutate_all(funs(as.numeric)) %>%
  mutate(
    i1amilk= as.numeric(!(i1amilk==0 | i1amilkw==0)),
    i1pmilk= as.numeric(!(i1pmilk==0 | i1pmilkw==0)),
    i1formu= as.numeric(!(i1formu==0 | i1formuw==0)),
    i1suji= as.numeric(!(i1suji==0 | i1sujiw==0)),
    i1dal= as.numeric(!(i1dal==0 | i1dalw==0)),
    i1gruel= as.numeric(!(i1gruel==0 | i1gruelw==0)),
    i1shago= as.numeric(!(i1shago==0 | i1shagow==0)),
    i1rice= as.numeric(!(i1rice==0 | i1ricew==0)),
    i1khich= as.numeric(!(i1khich==0 | i1khichw==0)),
    i1barl= as.numeric(!(i1barl==0 | i1barlw==0)),
    i1banan= as.numeric(!(i1banan==0 | i1bananw==0)),
    i1biscu= as.numeric(!(i1biscu==0 | i1biscuw==0)),
    i1honey= as.numeric(!(i1honey==0 | i1honeyw==0)),
    i1othf= as.numeric(!(i1othf==0 | i1othfw==0)),
    i1water= as.numeric(!(i1water==0 | i1waterw==0)),
    othfedfl= as.numeric(!(i1suji+i1dal+i1gruel+i1shago+i1rice+i1khich+i1barl+i1banan+i1biscu+ i1honey+i1othf==0))) %>%
  rename(subjido=hbgdkid,
         bfedfl=i1sbfed,
         nbfyes=i1bftime,
         anmlkfl=i1amilk,
         pwmlkfl=i1pmilk,
         formlkfl=i1formu,
         h20fedfl= i1water
  ) %>% select(subjido, bfedfl, nbfyes, anmlkfl, pwmlkfl, formlkfl, h20fedfl, othfedfl) %>%
  mutate(bfedfl = as.numeric(bfedfl), 
         anmlkfl= as.numeric(anmlkfl), 
         pwmlkfl= as.numeric(pwmlkfl), 
         formlkfl= as.numeric(formlkfl), 
         h20fedfl= as.numeric(h20fedfl), 
         othfedfl= as.numeric(othfedfl),
         antpt = "Infant 1 Month Postpartum")


table(i1mop$anmlkfl)
table(is.na(i1mop$anmlkfl))

table(i1mop$othfedfl)
table(is.na(i1mop$othfedfl))

table(i1mop$h20fedfl)
table(is.na(i1mop$h20fedfl))

# Infant 3 Month Postpartum
i3mop<-read_sas("JiVitA-3/raw/hbgd_i3mop.sas7bdat") %>% select(hbgdkid,
                                                                       i3sbfed,
                                                                       i3bftime,
                                                                       i3amilk,
                                                                       i3pmilk,
                                                                       i3formu,
                                                                       i3suji,
                                                                       i3dal,
                                                                       i3gruel,
                                                                       i3shago,
                                                                       i3rice,
                                                                       i3khich,
                                                                       i3barl,
                                                                       i3banan,
                                                                       i3biscu,
                                                                       i3honey,
                                                                       i3othf,
                                                                       i3water,
                                                                       i3amilkw,
                                                                       i3pmilkw,
                                                                       i3formuw,
                                                                       i3sujiw,
                                                                       i3dalw,
                                                                       i3gruelw,
                                                                       i3shagow,
                                                                       i3ricew,
                                                                       i3khichw,
                                                                       i3barlw,
                                                                       i3bananw,
                                                                       i3biscuw,
                                                                       i3honeyw,
                                                                       i3othfw,
                                                                       i3waterw)  %>% mutate_all(funs(as.numeric)) %>%
  mutate(
    i3amilk= as.numeric(!(i3amilk==0 | i3amilkw==0)),
    i3pmilk= as.numeric(!(i3pmilk==0 | i3pmilkw==0)),
    i3formu= as.numeric(!(i3formu==0 | i3formuw==0)),
    i3suji= as.numeric(!(i3suji==0 | i3sujiw==0)),
    i3dal= as.numeric(!(i3dal==0 | i3dalw==0)),
    i3gruel= as.numeric(!(i3gruel==0 | i3gruelw==0)),
    i3shago= as.numeric(!(i3shago==0 | i3shagow==0)),
    i3rice= as.numeric(!(i3rice==0 | i3ricew==0)),
    i3khich= as.numeric(!(i3khich==0 | i3khichw==0)),
    i3barl= as.numeric(!(i3barl==0 | i3barlw==0)),
    i3banan= as.numeric(!(i3banan==0 | i3bananw==0)),
    i3biscu= as.numeric(!(i3biscu==0 | i3biscuw==0)),
    i3honey= as.numeric(!(i3honey==0 | i3honeyw==0)),
    i3othf= as.numeric(!(i3othf==0 | i3othfw==0)),
    i3water= as.numeric(!(i3water==0 | i3waterw==0)),
    othfedfl= as.numeric(!(i3suji+i3dal+i3gruel+i3shago+i3rice+i3khich+i3barl+i3banan+i3biscu+ i3honey+i3othf==0))) %>%
  rename(subjido=hbgdkid,
         bfedfl=i3sbfed,
         nbfyes=i3bftime,
         anmlkfl=i3amilk,
         pwmlkfl=i3pmilk,
         formlkfl=i3formu,
         h20fedfl= i3water
  ) %>% select(subjido, bfedfl, nbfyes, anmlkfl, pwmlkfl, formlkfl, h20fedfl, othfedfl) %>%
  mutate(bfedfl = as.numeric(bfedfl), 
         anmlkfl= as.numeric(anmlkfl), 
         pwmlkfl= as.numeric(pwmlkfl), 
         formlkfl= as.numeric(formlkfl), 
         h20fedfl= as.numeric(h20fedfl), 
         othfedfl= as.numeric(othfedfl),
         antpt = "Infant 3 Month Postpartum")


table(i3mop$anmlkfl)
table(is.na(i3mop$anmlkfl))

table(i3mop$othfedfl)
table(is.na(i3mop$othfedfl))

table(i3mop$h20fedfl)
table(is.na(i3mop$h20fedfl))
# Infant 6 Month Postpartum 
i6mop<-read_sas("JiVitA-3/raw/hbgd_i6mop.sas7bdat") %>% select(hbgdkid,
                                                                       i6sbfed,
                                                                       i6sbfedm,
                                                                       i6bftime,
                                                                       i6amilk,
                                                                       i6pmilk,
                                                                       i6formu,
                                                                       i6suji,
                                                                       i6dal,
                                                                       i6gruel,
                                                                       i6shago,
                                                                       i6rice,
                                                                       i6khich,
                                                                       i6barl,
                                                                       i6banan,
                                                                       i6biscu,
                                                                       i6oil,
                                                                       i6sug,
                                                                       i6dair,
                                                                       i6othf,
                                                                       i6water,
                                                                       i6amilkw,
                                                                       i6pmilkw,
                                                                       i6formuw,
                                                                       i6sujiw,
                                                                       i6dalw,
                                                                       i6gruelw,
                                                                       i6shagow,
                                                                       i6ricew,
                                                                       i6khichw,
                                                                       i6barlw,
                                                                       i6bananw,
                                                                       i6biscuw,
                                                                       i6oilw,
                                                                       i6sugw,
                                                                       i6dairw,
                                                                       i6othfw,
                                                                       i6waterw)  %>% mutate_all(funs(as.numeric)) %>%
  mutate(
    i6amilk= as.numeric(!(i6amilk==0 | i6amilkw==0)),
    i6pmilk= as.numeric(!(i6pmilk==0 | i6pmilkw==0)),
    i6formu= as.numeric(!(i6formu==0 | i6formuw==0)),
    i6suji= as.numeric(!(i6suji==0 | i6sujiw==0)),
    i6dal= as.numeric(!(i6dal==0 | i6dalw==0)),
    i6gruel= as.numeric(!(i6gruel==0 | i6gruelw==0)),
    i6shago= as.numeric(!(i6shago==0 | i6shagow==0)),
    i6rice= as.numeric(!(i6rice==0 | i6ricew==0)),
    i6khich= as.numeric(!(i6khich==0 | i6khichw==0)),
    i6barl= as.numeric(!(i6barl==0 | i6barlw==0)),
    i6banan= as.numeric(!(i6banan==0 | i6bananw==0)),
    i6biscu= as.numeric(!(i6biscu==0 | i6biscuw==0)),
    i6oil= as.numeric(!(i6oil==0 | i6oilw==0)),
    i6sug= as.numeric(!(i6sug==0 | i6sugw==0)),
    i6dair= as.numeric(!(i6dair==0 | i6dairw==0)),
    i6othf= as.numeric(!(i6othf==0 | i6othfw==0)),
    i6water= as.numeric(!(i6water==0 | i6waterw==0)),
    othfedfl= as.numeric(!(i6suji+i6dal+i6gruel+i6shago+i6rice+i6khich+i6barl+i6banan+i6biscu+ i6oil+ i6sug+ i6dair+i6othf==0))) %>%
  rename(subjido=hbgdkid,
         bfedfl=i6sbfed,
         nbfyes=i6bftime,
         anmlkfl=i6amilk,
         pwmlkfl=i6pmilk,
         formlkfl=i6formu,
         h20fedfl= i6water
  ) %>% select(subjido, bfedfl, nbfyes, anmlkfl, pwmlkfl, formlkfl, h20fedfl, othfedfl) %>%
  mutate(bfedfl = as.numeric(bfedfl), 
         anmlkfl= as.numeric(anmlkfl), 
         pwmlkfl= as.numeric(pwmlkfl), 
         formlkfl= as.numeric(formlkfl), 
         h20fedfl= as.numeric(h20fedfl), 
         othfedfl= as.numeric(othfedfl),
         antpt = "Infant 6 Month Postpartum")


table(i6mop$anmlkfl)
table(is.na(i6mop$anmlkfl))

table(i6mop$othfedfl)
table(is.na(i6mop$othfedfl))

table(i6mop$h20fedfl)
table(is.na(i6mop$h20fedfl))



# Infant 12 Month Postpartum
i12mop<-read_sas("JiVitA-3/raw/hbgd_i12mop.sas7bdat") %>% select(hbgdkid, i12sbfed,
                                                                         i12sbfed,
                                                                         i12bftime,
                                                                         i12amilk,
                                                                         i12pmilk,
                                                                         i12formu,
                                                                         i12rice,
                                                                         i12suji,
                                                                         i12dal,
                                                                         i12khich,
                                                                         i12potato,
                                                                         i12lvege,
                                                                         i12ovege,
                                                                         i12egg,
                                                                         i12meat,
                                                                         i12banan,
                                                                         i12ofruit,
                                                                         i12ruti,
                                                                         i12biscu,
                                                                         i12oil,
                                                                         i12sug,
                                                                         i12dair,
                                                                         i12atta,
                                                                         i12sprink,
                                                                         i12nnp,
                                                                         i12othf,
                                                                         i12amilkw,
                                                                         i12pmilkw,
                                                                         i12formuw,
                                                                         i12ricew,
                                                                         i12sujiw,
                                                                         i12dalw,
                                                                         i12khichw,
                                                                         i12potatow,
                                                                         i12lvegew,
                                                                         i12ovegew,
                                                                         i12eggw,
                                                                         i12meatw,
                                                                         i12bananw,
                                                                         i12ofruitw,
                                                                         i12rutiw,
                                                                         i12biscuw,
                                                                         i12oilw,
                                                                         i12sugw,
                                                                         i12dairw,
                                                                         i12attaw,
                                                                         i12sprinkw,
                                                                         i12nnpw,
                                                                         i12othfw) %>% mutate_all(funs(as.numeric)) %>%
  mutate(
    i12amilk= as.numeric(!(i12amilk==0 | i12amilkw==0)),
    i12pmilk= as.numeric(!(i12pmilk==0 | i12pmilkw==0)),
    i12formu= as.numeric(!(i12formu==0 | i12formuw==0)),
    i12suji= as.numeric(!(i12suji==0 | i12sujiw==0)),
    i12dal= as.numeric(!(i12dal==0 | i12dalw==0)),
    i12rice= as.numeric(!(i12rice==0 | i12ricew==0)),
    i12khich= as.numeric(!(i12khich==0 | i12khichw==0)),
    i12banan= as.numeric(!(i12banan==0 | i12bananw==0)),
    i12biscu= as.numeric(!(i12biscu==0 | i12biscuw==0)),
    i12oil= as.numeric(!(i12oil==0 | i12oilw==0)),
    i12sug= as.numeric(!(i12sug==0 | i12sugw==0)),
    i12dair= as.numeric(!(i12dair==0 | i12dairw==0)),
    i12potato= as.numeric(!(i12potato==0 | i12potatow==0)),
    i12lvege= as.numeric(!(i12lvege==0 | i12lvegew==0)),
    i12ovege= as.numeric(!(i12ovege==0 | i12ovegew==0)),
    i12meat= as.numeric(!(i12meat==0 | i12meatw==0)),
    i12ofruit= as.numeric(!(i12ofruit==0 | i12ofruitw==0)),
    i12ruti= as.numeric(!(i12ruti==0 | i12rutiw==0)),
    i12atta= as.numeric(!(i12atta==0 | i12attaw==0)),
    i12sprink= as.numeric(!(i12sprink==0 | i12sprinkw==0)),
    i12nnp= as.numeric(!(i12nnp==0 | i12nnpw==0)),
    othfedfl= as.numeric(!(i12suji+i12dal+i12rice+i12khich+i12banan+i12biscu+ i12oil+ i12sug+ i12dair+i12othf+
                             i12potato+i12lvege+i12ovege+i12meat+i12ofruit+i12ruti+i12atta+i12sprink+i12nnp==0)),
    h20fedfl=NA) %>% 
  rename(subjido=hbgdkid,
         bfedfl=i12sbfed,
         nbfyes=i12bftime,
         anmlkfl=i12amilk,
         pwmlkfl=i12pmilk,
         formlkfl=i12formu) %>%
  select(subjido, bfedfl, nbfyes, anmlkfl, pwmlkfl, formlkfl, h20fedfl, othfedfl) %>%
  mutate(bfedfl = as.numeric(bfedfl), 
         anmlkfl= as.numeric(anmlkfl), 
         pwmlkfl= as.numeric(pwmlkfl), 
         formlkfl= as.numeric(formlkfl), 
         h20fedfl= as.numeric(h20fedfl), 
         othfedfl= as.numeric(othfedfl),
         antpt = "Infant 12 Month Postpartum")


table(i12mop$anmlkfl)                                                                         
table(is.na(i12mop$anmlkfl))

table(i12mop$othfedfl)
table(is.na(i12mop$othfedfl))


# Child 24 Month Postpartum 
c24mop<-read_sas("JiVitA-3/raw/hbgd_c24mop.sas7bdat")  %>% select(hbgdkid, c24sbfed,
                                                                          c24sbfed,
                                                                          c24bftime,
                                                                          c24amilk,
                                                                          c24pmilk,
                                                                          c24formu,
                                                                          c24rice,
                                                                          c24suji,
                                                                          c24dal,
                                                                          c24khich,
                                                                          c24potato,
                                                                          c24lvege,
                                                                          c24ovege,
                                                                          c24egg,
                                                                          c24meat,
                                                                          c24banan,
                                                                          c24ofruit,
                                                                          c24ruti,
                                                                          c24biscu,
                                                                          c24oil,
                                                                          c24sug,
                                                                          c24dair,
                                                                          c24atta,
                                                                          c24sprink,
                                                                          c24nnp,
                                                                          c24othf,
                                                                          c24amilkw,
                                                                          c24pmilkw,
                                                                          c24formuw,
                                                                          c24ricew,
                                                                          c24sujiw,
                                                                          c24dalw,
                                                                          c24khichw,
                                                                          c24potatow,
                                                                          c24lvegew,
                                                                          c24ovegew,
                                                                          c24eggw,
                                                                          c24meatw,
                                                                          c24bananw,
                                                                          c24ofruitw,
                                                                          c24rutiw,
                                                                          c24biscuw,
                                                                          c24oilw,
                                                                          c24sugw,
                                                                          c24dairw,
                                                                          c24attaw,
                                                                          c24sprinkw,
                                                                          c24nnpw,
                                                                          c24othfw) %>% mutate_all(funs(as.numeric)) %>%
  mutate(
    c24amilk= as.numeric(!(c24amilk==0 | c24amilkw==0)),
    c24pmilk= as.numeric(!(c24pmilk==0 | c24pmilkw==0)),
    c24formu= as.numeric(!(c24formu==0 | c24formuw==0)),
    c24suji= as.numeric(!(c24suji==0 | c24sujiw==0)),
    c24dal= as.numeric(!(c24dal==0 | c24dalw==0)),
    c24rice= as.numeric(!(c24rice==0 | c24ricew==0)),
    c24khich= as.numeric(!(c24khich==0 | c24khichw==0)),
    c24banan= as.numeric(!(c24banan==0 | c24bananw==0)),
    c24biscu= as.numeric(!(c24biscu==0 | c24biscuw==0)),
    c24oil= as.numeric(!(c24oil==0 | c24oilw==0)),
    c24sug= as.numeric(!(c24sug==0 | c24sugw==0)),
    c24dair= as.numeric(!(c24dair==0 | c24dairw==0)),
    c24potato= as.numeric(!(c24potato==0 | c24potatow==0)),
    c24lvege= as.numeric(!(c24lvege==0 | c24lvegew==0)),
    c24ovege= as.numeric(!(c24ovege==0 | c24ovegew==0)),
    c24meat= as.numeric(!(c24meat==0 | c24meatw==0)),
    c24ofruit= as.numeric(!(c24ofruit==0 | c24ofruitw==0)),
    c24ruti= as.numeric(!(c24ruti==0 | c24rutiw==0)),
    c24atta= as.numeric(!(c24atta==0 | c24attaw==0)),
    c24sprink= as.numeric(!(c24sprink==0 | c24sprinkw==0)),
    c24nnp= as.numeric(!(c24nnp==0 | c24nnpw==0)),
    othfedfl= as.numeric(!(c24suji+c24dal+c24rice+c24khich+c24banan+c24biscu+ c24oil+ c24sug+ c24dair+c24othf+
                             c24potato+c24lvege+c24ovege+c24meat+c24ofruit+c24ruti+c24atta+c24sprink+c24nnp==0)),
    h20fedfl=NA) %>% 
  rename(subjido=hbgdkid,
         bfedfl=c24sbfed,
         nbfyes=c24bftime,
         anmlkfl=c24amilk,
         pwmlkfl=c24pmilk,
         formlkfl=c24formu) %>%
  select(subjido, bfedfl, nbfyes, anmlkfl, pwmlkfl, formlkfl, h20fedfl, othfedfl) %>%
  mutate(bfedfl = as.numeric(bfedfl), 
         anmlkfl= as.numeric(anmlkfl), 
         pwmlkfl= as.numeric(pwmlkfl), 
         formlkfl= as.numeric(formlkfl), 
         h20fedfl= as.numeric(h20fedfl), 
         othfedfl= as.numeric(othfedfl),
         antpt = "Child 24 Month Postpartum")


table(c24mop$anmlkfl)                                                                         
table(is.na(c24mop$anmlkfl))

table(c24mop$othfedfl)
table(is.na(c24mop$othfedfl))


#compile datasets

d <- rbind(i1mop,i3mop,i6mop,i12mop, c24mop)
table(d$antpt)
table(d$bfedfl)
d$bfedfl[d$bfedfl==8] <- NA

#merge in with ki ID's
jvta3 <- readRDS(paste0(ghapdata_dir,"/cleaned individual study datasets/jvt3.rds"))
colnames(jvta3) <- tolower(colnames(jvta3))

table(jvta3$visit)
table(jvta3$visit)

jvta3 <- jvta3 %>% select(studyid, country, subjid, subjido, agedays,  visit) %>% mutate(subjido=as.numeric(subjido))
jvta3$antpt = paste0("Infant ",jvta3$visit)
jvta3$antpt[jvta3$antpt=="Infant 24 Month Postpartum"] = "Child 24 Month Postpartum"
table(jvta3$antpt)

jvta3 <- left_join(jvta3, d, by=c("subjido", "antpt"))

#save
saveRDS(jvta3, file="/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/covariate creation intermediate datasets/Breastfeeding datasets/bf_jvt3.rds")








#----------------------------------------------------------
# JiVitA-4          24416   9515
#----------------------------------------------------------




#Infant Birth Assessment Form (IBAF)
#IBAF<-read_sas("JiVitA-3/raw/hbgd_ibaf.sas7bdat")
#CHILDUID Child UID
# IBBFED  Have you ever breastfed this child since birth (Including colostrum)? 0= No
# 1= Yes 
# 8= Mother Died 
# 9= Don’t know 
# IBBFHR  How long after birth did you first start to breastfed your    baby (put the baby to your breast) ?  00=Less than 1 hour
# 01-97=No. of hours
# 98=98 or more hours
# 99=Don’t know
# IBBFCLST  Did you feed the child colostrum?   0=No
# 1=Yes
# 9=Don’t know 
# IBBFEDO Have you fed anything else to the child?  0= No
# 1= Yes 
# 9= Don’t know 
# IBBFEDO1  What did you feed?  1=Water
# 2=Drops 
# 3=Animal milk
# 4=Sugar water
# 5=Honey 
# 8=Other, specify:_______
# 9=Don’t Know
# IBBFEDO1S Specify 
# IBBFEDO2  What did you feed?  1=Water
# 2=Drops 
# 3=Animal milk
# 4=Sugar water
# 5=Honey 
# 8=Other, specify:_______
# 9=Don’t Know
# IBBFEDO2S Specify 
# IBBFEDO3  What did you feed?  1=Water
# 2=Drops 
# 3=Animal milk
# 4=Sugar water
# 5=Honey 
# 8=Other, specify:_______
# 9=Don’t Know
# IBBFEDO3S Specify 
# IBBFEDOB  Were any of these fed before giving breast milk?  0=No
# 1=Yes 
# 9=Don’t know 

#Infant birth form
ibirth<-read_sas("JiVitA-4/raw/hbgd_ibaf.sas7bdat")  %>% select("hbgdkid",
                                                                    starts_with("ibbfed")) %>%
  mutate_all(funs(as.numeric)) %>%
  mutate(visit = "Birth assessment")



#Infant 3 Month Interview Form (I3MOI) 
i3mop<-read_sas("JiVitA-4/raw/hbgd_i3moi.sas7bdat")  %>% select(hbgdkid,
                                                                        i3sbfed,
                                                                        i3bftime,
                                                                        i3amilk,   i3pmilk,  i3omilk, 
                                                                        i3formu,    i3suji, i3dal,     i3gruel, 
                                                                        i3shago,      i3rice,  i3khich,    i3barl,  
                                                                        i3water,    i3swat,      i3banan,    i3drop,      i3honey,   i3biscu,     
                                                                        i3othf,
                                                                        i3amilkw,   i3pmilkw,  i3omilkw, 
                                                                        i3formuw,    i3sujiw, i3dalw,     i3gruelw, 
                                                                        i3shagow,      i3ricew,  i3khichw,    i3barlw,  
                                                                        i3waterw,    i3swatw,      i3bananw, i3honeyw,   i3biscuw,     
                                                                        i3othfw) %>%
  mutate_all(funs(as.numeric)) %>%
  mutate(
    i3amilk= as.numeric(!(i3amilk==0 | i3amilkw==0)),
    i3pmilk= as.numeric(!(i3pmilk==0 | i3pmilkw==0)),
    i3formu= as.numeric(!(i3formu==0 | i3formuw==0)),
    i3suji= as.numeric(!(i3suji==0 | i3sujiw==0)),
    i3dal= as.numeric(!(i3dal==0 | i3dalw==0)),
    i3rice= as.numeric(!(i3rice==0 | i3ricew==0)),
    i3khich= as.numeric(!(i3khich==0 | i3khichw==0)),
    i3banan= as.numeric(!(i3banan==0 | i3bananw==0)),
    i3biscu= as.numeric(!(i3biscu==0 | i3biscuw==0)),
    i3water= as.numeric(!(i3water==0 | i3waterw==0)),
    i3gruel= as.numeric(!(i3gruel==0 | i3gruelw==0)),
    i3shago= as.numeric(!(i3shago==0 | i3shagow==0)),
    i3barl= as.numeric(!(i3barl==0 | i3barlw==0)),
    i3swat= as.numeric(!(i3swat==0 | i3swatw==0)),
    i3honey= as.numeric(!(i3honey==0 | i3honeyw==0)),
    i3othf= as.numeric(!(i3othf==0 | i3othfw==0)),
    i3gruel= as.numeric(!(i3gruel==0 | i3gruelw==0)),
    i3shago= as.numeric(!(i3shago==0 | i3shagow==0)),
    i3barl= as.numeric(!(i3barl==0 | i3barlw==0)),
    i3swat= as.numeric(!(i3swat==0 | i3swatw==0)),
    i3honey= as.numeric(!(i3honey==0 | i3honeyw==0)),
    i3othf= as.numeric(!(i3othf==0 | i3othfw==0)),
    othfedfl= as.numeric(!(i3suji+i3dal+i3rice+i3khich+i3banan+i3biscu+ i3gruel+ i3shago+ i3barl+i3swat+
                             i3honey+i3othf==0))) %>%
  rename(subjido=hbgdkid,
         bfedfl=i3sbfed,
         nbfyes=i3bftime,
         anmlkfl=i3amilk,
         pwmlkfl=i3pmilk,
         formlkfl=i3formu,
         h20fedfl=i3water) %>%
  select(subjido, bfedfl, nbfyes, anmlkfl, pwmlkfl, formlkfl, h20fedfl, othfedfl) %>%
  mutate(bfedfl = as.numeric(bfedfl), 
         anmlkfl= as.numeric(anmlkfl), 
         pwmlkfl= as.numeric(pwmlkfl), 
         formlkfl= as.numeric(formlkfl), 
         h20fedfl= as.numeric(h20fedfl), 
         othfedfl= as.numeric(othfedfl),
         visit = "3 Month Visit")


table(i3mop$anmlkfl)                                                                         
table(is.na(i3mop$anmlkfl))

table(i3mop$othfedfl)
table(is.na(i3mop$othfedfl))



#Child Enrollment Interview (CEI)  (6 months)
cemop<-read_sas("JiVitA-4/raw/hbgd_cei.sas7bdat")  %>% select(hbgdkid,
                                                                      cesbfed,
                                                                      cebftime,
                                                                      ceamilk,
                                                                      cepmilk,
                                                                      ceformu,
                                                                      cerice,
                                                                      cesuji,
                                                                      cesujimlk,
                                                                      cedalso,
                                                                      cedalth,
                                                                      cekhich,
                                                                      cepotat,
                                                                      ceovege,
                                                                      ceegg,
                                                                      cefish,
                                                                      cemeat,
                                                                      celiver,
                                                                      cebanan,
                                                                      ceofruit,
                                                                      ceruti,
                                                                      cebiscu,
                                                                      ceoil,
                                                                      cesug,
                                                                      cedair,
                                                                      cejuice,
                                                                      cecake,
                                                                      cechips,
                                                                      celolipop,
                                                                      cesprinkl,
                                                                      ceothf1,
                                                                      ceothf2,
                                                                      ceothf3,
                                                                      ceothf4) %>% mutate_all(funs(as.numeric)) %>%
  mutate(othfedfl = as.numeric(rowSums(.[7:34], na.rm = TRUE)>0),
         h20fedfl=NA) %>% 
  rename(subjido=hbgdkid,
         bfedfl=cesbfed,
         nbfyes=cebftime,
         anmlkfl=ceamilk,
         pwmlkfl=cepmilk,
         formlkfl=ceformu) %>%
  select(subjido, bfedfl, nbfyes, anmlkfl, pwmlkfl, formlkfl, h20fedfl, othfedfl) %>%
  mutate(bfedfl = as.numeric(bfedfl), 
         anmlkfl= as.numeric(anmlkfl), 
         pwmlkfl= as.numeric(pwmlkfl), 
         formlkfl= as.numeric(formlkfl), 
         h20fedfl= as.numeric(h20fedfl), 
         othfedfl= as.numeric(othfedfl),
         visit = "CEI 6moi assessment")


table(cemop$anmlkfl)                                                                         
table(is.na(cemop$anmlkfl))

table(cemop$othfedfl)
table(is.na(cemop$othfedfl))

#Child 9-Month Interview (C9MOI)

c9mop<-read_sas("JiVitA-4/raw/hbgd_c9moi.sas7bdat")  %>% select(hbgdkid,
                                                                        c9sbfed,
                                                                        c9bftime,
                                                                        c9amilk,
                                                                        c9pmilk,
                                                                        c9formu,
                                                                        c9rice,
                                                                        c9suji,
                                                                        c9sujimlk,
                                                                        c9dalso,
                                                                        c9dalth,
                                                                        c9khich,
                                                                        c9potat,
                                                                        c9ovege,
                                                                        c9egg,
                                                                        c9fish,
                                                                        c9meat,
                                                                        c9liver,
                                                                        c9banan,
                                                                        c9ofruit,
                                                                        c9ruti,
                                                                        c9biscu,
                                                                        c9oil,
                                                                        c9sug,
                                                                        c9dair,
                                                                        c9juice,
                                                                        c9cake,
                                                                        c9chips,
                                                                        c9lolipop,
                                                                        c9sprinkl,
                                                                        c9othf1,
                                                                        c9othf2,
                                                                        c9othf3,
                                                                        c9othf4) %>% mutate_all(funs(as.numeric)) %>%
  mutate(othfedfl = as.numeric(rowSums(.[7:34], na.rm = TRUE)>0),
         h20fedfl=NA) %>% 
  rename(subjido=hbgdkid,
         bfedfl=c9sbfed,
         nbfyes=c9bftime,
         anmlkfl=c9amilk,
         pwmlkfl=c9pmilk,
         formlkfl=c9formu) %>%
  select(subjido, bfedfl, nbfyes, anmlkfl, pwmlkfl, formlkfl, h20fedfl, othfedfl) %>%
  mutate(bfedfl = as.numeric(bfedfl), 
         anmlkfl= as.numeric(anmlkfl), 
         pwmlkfl= as.numeric(pwmlkfl), 
         formlkfl= as.numeric(formlkfl), 
         h20fedfl= as.numeric(h20fedfl), 
         othfedfl= as.numeric(othfedfl),
         visit = "9 Month Visit")


table(c9mop$anmlkfl)                                                                         
table(is.na(c9mop$anmlkfl))

table(c9mop$othfedfl)
table(is.na(c9mop$othfedfl))

#Child 12-Month Interview (C12MOI) 
c12mop<-read_sas("JiVitA-4/raw/hbgd_c12moi.sas7bdat")  %>% select(hbgdkid,
                                                                          c12sbfed,
                                                                          c12bftime,
                                                                          c12amilk,
                                                                          c12pmilk,
                                                                          c12formu,
                                                                          c12rice,
                                                                          c12suji,
                                                                          c12sujimlk,
                                                                          c12dalso,
                                                                          c12dalth,
                                                                          c12khich,
                                                                          c12potat,
                                                                          c12ovege,
                                                                          c12egg,
                                                                          c12fish,
                                                                          c12meat,
                                                                          c12liver,
                                                                          c12banan,
                                                                          c12ofruit,
                                                                          c12ruti,
                                                                          c12biscu,
                                                                          c12oil,
                                                                          c12sug,
                                                                          c12dair,
                                                                          c12juice,
                                                                          c12cake,
                                                                          c12chips,
                                                                          c12lolipop,
                                                                          c12sprinkl,
                                                                          c12othf1,
                                                                          c12othf2,
                                                                          c12othf3,
                                                                          c12othf4,
                                                                          c12othf5,
                                                                          c12othf6) %>% mutate_all(funs(as.numeric)) %>%
  mutate(othfedfl = as.numeric(rowSums(.[7:36], na.rm = TRUE)>0),
         h20fedfl=NA) %>% 
  rename(subjido=hbgdkid,
         bfedfl=c12sbfed,
         nbfyes=c12bftime,
         anmlkfl=c12amilk,
         pwmlkfl=c12pmilk,
         formlkfl=c12formu) %>%
  select(subjido, bfedfl, nbfyes, anmlkfl, pwmlkfl, formlkfl, h20fedfl, othfedfl) %>%
  mutate(bfedfl = as.numeric(bfedfl), 
         anmlkfl= as.numeric(anmlkfl), 
         pwmlkfl= as.numeric(pwmlkfl), 
         formlkfl= as.numeric(formlkfl), 
         h20fedfl= as.numeric(h20fedfl), 
         othfedfl= as.numeric(othfedfl),
         visit = "12 Month Visit")


table(c12mop$anmlkfl)                                                                         
table(is.na(c12mop$anmlkfl))

table(c12mop$othfedfl)
table(is.na(c12mop$othfedfl))



#Child 15-Month Interview (C15MOI)
c15mop<-read_sas("JiVitA-4/raw/hbgd_c15moi.sas7bdat")  %>% select(hbgdkid,
                                                                          c15sbfed,
                                                                          c15bftime,
                                                                          c15amilk,
                                                                          c15pmilk,
                                                                          c15formu,
                                                                          c15rice,
                                                                          c15suji,
                                                                          c15sujimlk,
                                                                          c15dalso,
                                                                          c15dalth,
                                                                          c15khich,
                                                                          c15potat,
                                                                          c15ovege,
                                                                          c15egg,
                                                                          c15fish,
                                                                          c15meat,
                                                                          c15liver,
                                                                          c15banan,
                                                                          c15ofruit,
                                                                          c15ruti,
                                                                          c15biscu,
                                                                          c15oil,
                                                                          c15sug,
                                                                          c15dair,
                                                                          c15juice,
                                                                          c15cake,
                                                                          c15chips,
                                                                          c15lolipop,
                                                                          c15sprinkl,
                                                                          c15othf1,
                                                                          c15othf2,
                                                                          c15othf3,
                                                                          c15othf4,
                                                                          c15othf5,
                                                                          c15othf6) %>% mutate_all(funs(as.numeric)) %>%
  mutate(othfedfl = as.numeric(rowSums(.[7:36], na.rm = TRUE)>0),
         h20fedfl=NA) %>% 
  rename(subjido=hbgdkid,
         bfedfl=c15sbfed,
         nbfyes=c15bftime,
         anmlkfl=c15amilk,
         pwmlkfl=c15pmilk,
         formlkfl=c15formu) %>%
  select(subjido, bfedfl, nbfyes, anmlkfl, pwmlkfl, formlkfl, h20fedfl, othfedfl) %>%
  mutate(bfedfl = as.numeric(bfedfl), 
         anmlkfl= as.numeric(anmlkfl), 
         pwmlkfl= as.numeric(pwmlkfl), 
         formlkfl= as.numeric(formlkfl), 
         h20fedfl= as.numeric(h20fedfl), 
         othfedfl= as.numeric(othfedfl),
         visit = "15 Month Visit")


table(c15mop$anmlkfl)                                                                         
table(is.na(c15mop$anmlkfl))

table(c15mop$othfedfl)
table(is.na(c15mop$othfedfl))

#Child 18-Month Interview (C18MOI)
c18mop<-read_sas("JiVitA-4/raw/hbgd_c18moi.sas7bdat")  %>% select(hbgdkid,
                                                                          c18bf,
                                                                          c18bftime,
                                                                          c18amilk,
                                                                          c18pmilk,
                                                                          c18formu,
                                                                          c18rice,
                                                                          c18suji,
                                                                          c18sujimlk,
                                                                          c18dalso,
                                                                          c18dalth,
                                                                          c18khich,
                                                                          c18potat,
                                                                          c18ovege,
                                                                          c18egg,
                                                                          c18fish,
                                                                          c18meat,
                                                                          c18liver,
                                                                          c18banan,
                                                                          c18ofruit,
                                                                          c18ruti,
                                                                          c18biscu,
                                                                          c18oil,
                                                                          c18sug,
                                                                          c18dair,
                                                                          c18juice,
                                                                          c18cake,
                                                                          c18chips,
                                                                          c18lolipop,
                                                                          c18sprinkl,
                                                                          c18othf1,
                                                                          c18othf2,
                                                                          c18othf3,
                                                                          c18othf4,
                                                                          c18othf5,
                                                                          c18othf6) %>% mutate_all(funs(as.numeric)) %>%
  mutate(othfedfl = as.numeric(rowSums(.[7:36], na.rm = TRUE)>0),
         h20fedfl=NA) %>% 
  rename(subjido=hbgdkid,
         bfedfl=c18bf,
         nbfyes=c18bftime,
         anmlkfl=c18amilk,
         pwmlkfl=c18pmilk,
         formlkfl=c18formu) %>%
  select(subjido, bfedfl, nbfyes, anmlkfl, pwmlkfl, formlkfl, h20fedfl, othfedfl) %>%
  mutate(bfedfl = as.numeric(bfedfl), 
         anmlkfl= as.numeric(anmlkfl), 
         pwmlkfl= as.numeric(pwmlkfl), 
         formlkfl= as.numeric(formlkfl), 
         h20fedfl= as.numeric(h20fedfl), 
         othfedfl= as.numeric(othfedfl),
         visit = "18 Month Visit")


table(c18mop$anmlkfl)                                                                         
table(is.na(c18mop$anmlkfl))

table(c18mop$othfedfl)
table(is.na(c18mop$othfedfl))

#Child 24-Month Interview (C24MOI)
c24mop<-read_sas("JiVitA-4/raw/hbgd_c24moi.sas7bdat")  %>% select(hbgdkid,
                                                                          c24bf,
                                                                          c24bftime,
                                                                          c24amilk,
                                                                          c24pmilk,
                                                                          c24formu,
                                                                          c24rice,
                                                                          c24suji,
                                                                          c24sujimlk,
                                                                          c24dalso,
                                                                          c24dalth,
                                                                          c24khich,
                                                                          c24potat,
                                                                          c24ovege,
                                                                          c24egg,
                                                                          c24fish,
                                                                          c24meat,
                                                                          c24liver,
                                                                          c24banan,
                                                                          c24ofruit,
                                                                          c24ruti,
                                                                          c24biscu,
                                                                          c24oil,
                                                                          c24sug,
                                                                          c24dair,
                                                                          c24juice,
                                                                          c24cake,
                                                                          c24chips,
                                                                          c24lolipop,
                                                                          c24sprinkl,
                                                                          c24othf1,
                                                                          c24othf2,
                                                                          c24othf3,
                                                                          c24othf4,
                                                                          c24othf5,
                                                                          c24othf6) %>% mutate_all(funs(as.numeric)) %>%
  mutate(othfedfl = as.numeric(rowSums(.[7:36], na.rm = TRUE)>0),
         h20fedfl=NA) %>% 
  rename(subjido=hbgdkid,
         bfedfl=c24bf,
         nbfyes=c24bftime,
         anmlkfl=c24amilk,
         pwmlkfl=c24pmilk,
         formlkfl=c24formu) %>%
  select(subjido, bfedfl, nbfyes, anmlkfl, pwmlkfl, formlkfl, h20fedfl, othfedfl) %>%
  mutate(bfedfl = as.numeric(bfedfl), 
         anmlkfl= as.numeric(anmlkfl), 
         pwmlkfl= as.numeric(pwmlkfl), 
         formlkfl= as.numeric(formlkfl), 
         h20fedfl= as.numeric(h20fedfl), 
         othfedfl= as.numeric(othfedfl),
         visit = "24 Month Visit")


table(c24mop$anmlkfl)                                                                         
table(is.na(c24mop$anmlkfl))

table(c24mop$othfedfl)
table(is.na(c24mop$othfedfl))







#compile datasets
d <- bind_rows(ibirth, i3mop,cemop,c9mop, c12mop, c15mop, c18mop, c24mop)
table(d$visit)
table(d$bfedfl)
d$bfedfl[d$bfedfl==8] <- NA


#merge in with ki ID's
jvta4 <- readRDS("/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/cleaned individual study datasets/jvt4.rds")
colnames(jvta4) <- tolower(colnames(jvta4))
jvta4$visit <- as.character(jvta4$visit)
unique(jvta4$visit)
unique(jvta4$visit[!is.na(jvta4$haz)])

jvta4 <- jvta4 %>% select(studyid, country, subjid, agedays, visit) %>% mutate(subjido=as.numeric(subjid)) #Is there just one subjid between raw and cleaned jivita4 data?


table(is.na(jvta4$visit))

table(d$bfedfl)
jvta4 <- left_join(jvta4, d, by=c("subjido", "visit"))
table(jvta4$bfedfl)


#save
saveRDS(jvta4, file="/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/covariate creation intermediate datasets/Breastfeeding datasets/bf_jvt4.rds")

 

