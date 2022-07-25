

rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))

rain <- readRDS(paste0(BV_dir,"/data/cohort_rain_data.rds"))
d <- readRDS(seasonality_data_path) %>% filter(measurefreq=="monthly") %>% filter(!is.na(whz)) %>% filter(whz < 5 & whz > (-5)) %>% mutate(child=1) %>% rename(lat=latitude, long=longitud)

#read full csv file to get diar
fulldiar<-fread(paste0(ghapdata_dir,"FINAL.csv"), header = T,
         drop = c( "AGEIMPFL",  #"WTKG", "REGION",   
                   #"HTCM",    "LENCM", 
                   "BAZ", "HCAZ",      
                   "REGCTRY", "REGCTYP", #"CITYTOWN",
                   "HHID",    
                   "FEEDING", "DURBRST", #"BRTHYR", 
                   "ENSTUNT", "FWTKG", "FBMI",
                   "BRFEED", "SUMEP",   "SUMDIAR", "SUMDAYS",
                   "PCTDIAR", "IMPSAN",  "SOAP",    "SAFEH2O", "H2OTIME",
                   "CHICKEN", "COW",     "CATTLE",  "INCTOT", 
                   "INCTOTU", "BFEDFL",  "EXBFEDFL","WEANFL",  "ANMLKFL", "PWMLKFL",
                   "FORMLKFL","BOTTLEFL","H20FEDFL","OTHFEDFL","SLDFEDFL","NBFYES",   "CMFDINT",  "LSSTLFL",
                   "NUMLS",   "BLDSTLFL","LSSTFL_R","NUMLS_R", "BLDSTL_R"
         ))

gc()

colnames(fulldiar) <- tolower(colnames(fulldiar))

#subset to 
fulldiar <- fulldiar %>% filter(studyid %in% unique(d$studyid))
#Drop CMC and IRC, which have 10 and 2 children with enough obs, and unrealisticly high prevalence 
#(probable incorrect mapping/recording of healthy observations)
fulldiar$diarfl[fulldiar$studyid=="CMC-V-BCS-2002" | fulldiar$studyid=="IRC" | fulldiar$studyid=="TanzaniaChild2"] <- NA

#Drop un-needed columns
fulldiar <- fulldiar %>% subset(., select=c(studyid, country, subjid, agedays, diarfl,diarfl_r, dur_r))

#Look for unrealistic diarrhea prevalences
fulldiar %>% group_by(studyid) %>% summarize(diar_prev=round(mean(diarfl, na.rm=T)*100,1)) %>% as.data.frame()

#Replace diar flag with 1-day recall 
fulldiar$diarfl[is.na(fulldiar$diarfl) & !is.na(fulldiar$diarfl_r) & fulldiar$dur_r==1] <- fulldiar$diarfl_r[is.na(fulldiar$diarfl) & !is.na(fulldiar$diarfl_r) & fulldiar$dur_r==1]


#drop unneeded variables
diar <- fulldiar %>% subset(., select= -c(diarfl_r, dur_r)) %>% filter(!is.na(diarfl)) %>% 
  group_by(studyid, country) %>%
  filter(sum(is.na(diarfl))!=n()) %>%
  rename(agediar=agedays)  %>% droplevels()
table(diar$studyid, diar$diarfl)
prop.table(table(diar$diarfl))
prop.table(table(diar$studyid, diar$diarfl),1)
diar%>% group_by(studyid, country) %>% summarize(diar_prev=round(mean(diarfl, na.rm=T)*100,1)) %>% as.data.frame()



diar$diarfl[is.na(diar$diarfl)] <- 0


#Merge birthdate, rain, and diarhea
head(d)
head(diar)
d <- d %>% select(studyid, country, subjid, birthday) %>% distinct()
diar$subjid <- as.character(diar$subjid)
diar_season <- left_join(d, diar,by=c("studyid","country", "subjid")) 
diar_season <- diar_season %>% filter(!is.na(diarfl), agediar <730)
diar_season<- diar_season %>% mutate(jday = birthday + agediar,
                                     jday=ifelse(jday<365,jday, jday-365),
                                     jday=ifelse(jday<365,jday, jday-365),
                                     jday=ifelse(jday<365,jday, jday-365),
                                     jday=ifelse(jday<365,jday, jday-365),
                                     month=as.numeric(cut(jday, breaks=c(0:12*30.41667)))) 
summary(diar_season$jday)
table(diar_season$month)

#ggplot(diar_season, aes(x=jday, y=diarfl)) + facet_wrap(~paste0(studyid, country)) + geom_smooth()


head(rain)

df <- left_join(diar_season, rain, by=c("studyid","country","month"))

df_prev <- df %>% mutate(country=str_to_title(country), 
                         cohort=paste0(studyid, ", ",country)) %>%
              group_by(cohort, month) %>% 
              summarize(prev = mean(diarfl),  rain=first( rain)) 

corr_res <- df_prev %>% group_by(cohort) %>% filter(!is.na(prev),!is.na(month)) %>%
  do(res=cor.test(.$prev,.$rain))
corr_res$res

p <- ggplot(data=df_prev) + facet_wrap(~cohort, scales="free", nrow = 2) +
  geom_histogram(aes(x=month, y=rain), fill=tableau10[1], alpha=0.5, stat="identity") +
  geom_histogram(aes(x=month, y=prev*1000), fill=tableau10[2], alpha=0.5, stat="identity") + 
  scale_fill_manual(name="group",values=c(tableau10[1:2]),labels=c("Rain","Diarrhea")) +
  xlab("Month") +
  scale_y_continuous(
    "Mean rainfall (mm)",
    sec.axis = sec_axis(~ . /10, name = "Diarrhea prevalence (%)")
  ) + theme_ki()+ theme(legend.position = "bottom") 
ggsave(p, file=paste0(BV_dir,"/figures/wasting/fig-diarrhea-rain.png"), width=10, height=4)

#Note! Need to use fill parameter to get the legend to show up

