
#-----------------------------------------------------------------------------------------
# Load FINAL dataset and drop studies 
# Output: long form dataset with all variables used in the ki manuscript analysis, minus those 
# covariates created from raw SAS datasets
#
# Author: Andrew Mertens (amertens@berkeley.edu)
#-----------------------------------------------------------------------------------------



# Instructions for downloading FINAL dataset

# Go to https://git.ghap.io/stash/projects/HBGD/repos/adhoc/browse
# click clone button
# Copy link (mine is https://andrew.mertens@git.ghap.io/stash/scm/hbgd/adhoc.git)
# Open Sourcetree (Click window icon in bottom left, then search magnifying glass icon
# in the top right, and search Sourcetree to find)
# Click clone button in source tree 
# Paste link in source path box
# Add U:/data/FINAL/ to the destination path (make sure FINAL folder is empty)
# Click clone



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))



#Read rds file and drop unneeded columns that Vishak extracted that are either used elsewhere in covariate creation or 
# were too rare to include as exposures (to avoid memory allocation issues)
d<-fread(paste0(ghapdata_dir,"FINAL.csv"), header = T,
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
                   "FORMLKFL","BOTTLEFL","H20FEDFL","OTHFEDFL","SLDFEDFL","NBFYES",   "CMFDINT", "DIARFL",  "LSSTLFL",
                   "NUMLS",   "BLDSTLFL","DIARFL_R","LSSTFL_R","NUMLS_R", "BLDSTL_R",
                   "DUR_R"))
gc()



#Load in TDC 
tdc <- read.csv(paste0(ghapdata_dir,"raw individual study datasets/KI1000108_TDC.csv")) %>% mutate(STUDYID="TDC")
tdc %>% group_by(SUBJID) %>% mutate(lagage=AGEDAYS-lag(AGEDAYS)) %>% ungroup() %>% summarize(mn=mean(lagage,na.rm=T), md=median(lagage,na.rm=T))

colnames(d)
colnames(tdc)
tdc <- tdc %>% rename(NHH=NPERSON) %>% mutate(BRTHORDR=GRAVIDA - NABT - NSTLBRTH, 
                                              HDLVRY=case_when(
                                                DLVLOC=="Hospital" ~ 0,
                                                DLVLOC=="Home" ~ 1
                                              ))


d$SUBJID <- as.numeric(d$SUBJID)
d <- bind_rows(d, tdc)

unique(d$STUDYID)
colnames(d) <- tolower(colnames(d))
rm(tdc)
gc()

# df <- d %>% filter(studyid=="COHORTS" & subjid %in% c("20000270", "20000391", "20000672", "20001129", "20001453"))
# head(df)

#Drop studies Vishak added to data product that don't meet inclusion criteria
dim(d)
d <- d[!(studyid %in% c("DIVIDS", "WomenFirst", "INCAP", "ILINS-DYAD-G"))]
dim(d)
gc()

#check birthyear distribution
df <- d %>% filter(!is.na(brthyr)) %>% group_by(studyid, country, subjid) %>% slice(1) %>%
  mutate(cohort=paste0(studyid,"_",country))
df$cohort[df$studyid=="CMIN"] <- paste0(df$studyid[df$studyid=="CMIN"],"_",df$country[df$studyid=="CMIN"],"_",df$siteid[df$studyid=="CMIN"])
p<-ggplot(df, aes(brthyr)) + geom_histogram(aes(y = stat(density))) + geom_vline(xintercept=1990) + facet_wrap(~cohort)

#distinguish CMIN cohorts
d$studyid[d$studyid=="CMIN"] <- paste0(d$studyid[d$studyid=="CMIN"], d$siteid[d$studyid=="CMIN"])
table(d$studyid[d$studyid=="CMIN"], d$country[d$studyid=="CMIN"])
d$studyid[d$studyid=="CMIN2"] <- "CMIN Peru89" 
d$studyid[d$studyid=="CMIN3"] <- "CMIN Peru95" 
d$studyid[d$studyid=="CMIN4"] <- "CMIN Brazil89" 
d$studyid[d$studyid=="CMIN6"] <- "CMIN GB94" 
d$studyid[d$studyid=="CMIN7"] <- "CMIN Bangladesh93" 

#fill in missing country labels
d$country[d$studyid=="Respak"] <- "PAKISTAN" 
d$country[d$studyid=="CONTENT"] <- "PERU" 

#Rename tanzania
d$country[d$country=="TANZANIA, UNITED REPUBLIC OF"]<-"TANZANIA"
table(d$country)


#Drop studies with the median birth before 1990
table(d$studyid, is.na(d$brthyr))
#temp fill in missing years of birth
d$flag<-0
d$flag[d$studyid=="NIH-Birth" & is.na(d$brthyr)] <- 1
d$flag[d$studyid=="PROVIDE" & is.na(d$brthyr)] <- 1
d$flag[d$studyid=="NIH-Crypto" & is.na(d$brthyr)] <- 1
d$brthyr[d$studyid=="NIH-Birth" & is.na(d$brthyr)] <- 2008
d$brthyr[d$studyid=="PROVIDE" & is.na(d$brthyr)] <- 2011
d$brthyr[d$studyid=="NIH-Crypto" & is.na(d$brthyr)] <- 2014
table(d$studyid, is.na(d$brthyr))



all_studies <- unique(paste0(d$studyid,"-",d$country))
d <- d %>% group_by(studyid, country) %>% 
  mutate(med_start=median(brthyr, na.rm=T)) 
d %>% group_by(studyid, country) %>% summarise(first(med_start)) %>% as.data.frame()
d <- d %>% filter(med_start>=1990) %>% ungroup()
#dropped studies
all_studies[!(all_studies %in% unique(paste0(d$studyid,"-",d$country)))]

d$brthyr[d$studyid=="NIH-Birth" & d$flag==1] <- NA
d$brthyr[d$studyid=="PROVIDE" & d$flag==1] <- NA
d$brthyr[d$studyid=="NIH-Crypto" & d$flag==1] <- NA


#add in CMIN GPS
d$latitude[d$studyid=="CMIN Peru89"] <- -12.15585
d$longitud[d$studyid=="CMIN Peru89"] <- -76.97213
d$latitude[d$studyid=="CMIN Peru95"] <- -12.15585
d$longitud[d$studyid=="CMIN Peru95"] <- -76.97213
d$latitude[d$studyid=="CMIN Brazil89"] <- -3.7430107485648314 
d$longitud[d$studyid=="CMIN Brazil89"] <- -38.554750860572774
d$latitude[d$studyid=="CMIN GB94"] <- 11.852849306288046
d$longitud[d$studyid=="CMIN GB94"] <- -15.598650188638768
d$latitude[d$studyid=="CMIN Bangladesh93"] <- 24.106381157160424 
d$longitud[d$studyid=="CMIN Bangladesh93"] <- 90.10170489157913

#fix flipped latitude and longitude switched for three India cohorts
d$longitud[d$studyid=="CMC-V-BCS-2002"] <- 78.930000
d$longitud[d$studyid=="IRC"] <- 78.930000
d$longitud[d$studyid=="TDC"] <- 78.928800
d$latitude[d$studyid=="CMC-V-BCS-2002"] <- 15
d$latitude[d$studyid=="IRC"] <-   12.85000
d$latitude[d$studyid=="TDC"] <-   12.84650

#Fix GPS for Mal-ed Brazil and ZVitambo
d$latitude[d$studyid=="ZVITAMBO"] <-   (-17.86)
d$latitude[d$studyid=="MAL-ED" & d$country=="BRAZIL"] <- (-3.8)


#update study names where they have changed during BlueVelvet switch
d <- data.table(d)
d <- d[studyid=="ZINC-MORTALITY", studyid := "ZnMort"]
d <- d[studyid=="VITAMIN-B12", studyid := "Vitamin-B12"]
d <- d[studyid=="WASH-BK", studyid := "WASH-Kenya"]
d <- d[studyid=="Respak", studyid := "ResPak"]
d <- d[studyid=="ILINS-Zinc", studyid := "iLiNS-Zinc"]
d <- d[studyid=="GMS-Nepal-201606", studyid := "GMS-Nepal"]
d <- d[studyid=="BurkinaFasoZn", studyid := "Burkina Faso Zn"]
d <- d[studyid=="ILINS-DOSE", studyid := "iLiNS-DOSE"]
d <- d[studyid=="ILINS-DYAD-M", studyid := "iLiNS-DYAD-M"]





#Check measurement frequency
meas_freq_tab <- d %>% filter(!is.na(waz)|!is.na(haz)) %>% group_by(studyid, country, subjid) %>% mutate(lagage=agedays-lag(agedays)) %>% group_by(studyid) %>% summarize(mn=mean(lagage,na.rm=T), md=median(lagage,na.rm=T))



monthly_vec <- c("MAL-ED",   
  "CMC-V-BCS-2002",              
  "IRC",    
  "TDC",
  "EE",           
  "ResPak",  
  "PROVIDE",  
  "TanzaniaChild2",           
  "Keneba",  
  "Guatemala BSC",       
  "GMS-Nepal",    
  "CMIN Peru89",                 
  "CMIN Peru95",                 
  "CMIN Bangladesh93",                 
  "CONTENT")

quarterly_vec <- c("iLiNS-Zinc",  
  "JiVitA-3",          
  "JiVitA-4", 
  "LCNI-5",          
  "CMIN Brazil89",                 
  "CMIN GB94",                 
  "NIH-Birth",
  "NIH-Crypto",   
  "PROBIT",         
  "SAS-CompFeed",   
  "SAS-FoodSuppl",   
  "ZVITAMBO",   
  "COHORTS")

yearly_vec <- c("WASH-Bangladesh",       
  "WASH-Kenya",  
  "iLiNS-DOSE",     
  "iLiNS-DYAD-M", 
  "iLiNS-DYAD-G",
  "AgaKhanUniv",           
  "Burkina Faso Zn",    
  "VITAMIN-A",  
  "Vitamin-B12",
  "Serrinha-VitA",   
  "EU",        
  "ZnMort")


d <- d[, measurefreq := c("monthly", "quarterly", "yearly")[1* (studyid %in% monthly_vec) +
                               2 * (studyid %in% quarterly_vec) + 
                               3 * (studyid %in% yearly_vec)]]
gc()



#Drop CMIN cohorts with less than 200 children
# d <- d[!(studyid=="CMIN" & country != "BANGLADESH")]
# gc()

#Mark yearly COHORTS
d <- d[studyid=="COHORTS" & country %in% c("BRAZIL", "SOUTH AFRICA"), measurefreq := "yearly"]
gc()

#Drop yearly studies except for four with high quality mortality data used in the mortality analysis
d <- d[measurefreq!="yearly" | studyid %in% c("iLiNS-DOSE", "iLiNS-DYAD-M","Burkina Faso Zn", "VITAMIN-A" )]
gc()



saveRDS(d, included_studies_path)
gc()