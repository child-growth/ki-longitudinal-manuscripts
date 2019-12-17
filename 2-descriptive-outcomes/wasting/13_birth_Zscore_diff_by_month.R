

#-----------------------------------------
# Process data for wasting traj figures
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))



d <- readRDS(paste0(ghapdata_dir,"/seasonality_data.rds"))

#Subset to South Asian children at birth
d <- d %>% filter(measurefreq=="monthly", region=="South Asia", agedays<=7)



#Count number of children
d %>% 
  summarize(nobs=n(), nchild=length(unique(paste0(studyid, country, subjid))), nstudies = length(unique(paste0(studyid, country))))


d$cohort <- paste0(d$studyid, " ", d$country)
length(unique(d$cohort))

# d$month <- floor(d$jday/30.417) + 1
# table(d$month)



# #calc WLZ by month
# d <- calc.prev.agecat(d)
# whz.data <- summary.whz(d)
# 
# res <- d %>% group_by(brthmon) %>% do(summary.whz(.)$whz.res)



# take mean of multiple measurements within age window
dmn <- d %>%
  group_by(studyid,country,subjid,brthmon) %>%
  summarise(whz=mean(whz, na.rm=T))

# count measurements per study by age
# exclude time points if number of measurements per age
# in a study is <50
whz.data = dmn %>%
  filter(!is.na(whz)) %>%
  group_by(studyid,country,brthmon) %>%
  summarise(nmeas=sum(!is.na(whz)),
            meanwhz=mean(whz),
            varwhz=var(whz)) %>%
  filter(nmeas>=5)

whz.data <- droplevels(whz.data)

whz.data$agecat <- whz.data$brthmon
# estimate random effects, format results
whz.res=lapply((levels(whz.data$agecat)),function(x)
  fit.rma(data=whz.data, ni="nmeas", yi="meanwhz", vi="varwhz", nlab="children", measure="MN",age=x, method="REML"))
whz.res=as.data.frame(rbindlist(whz.res, use.names=TRUE, fill=T))
whz.res$est=as.numeric(whz.res$est)
whz.res$lb=as.numeric(whz.res$lb)
whz.res$ub=as.numeric(whz.res$ub)
whz.res$brthmon = levels(whz.data$agecat)
whz.res

#Maximum and minimum
max(whz.res$est)
min(whz.res$est)

#Difference between max and minimum month
max(whz.res$est) - min(whz.res$est)

