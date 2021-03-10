
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

#Drop studies with the median birth before 1990
d <- d %>% group_by(studyid, country) %>% 
  mutate(med_start=median(brthyr, na.rm=T)) %>% 
  filter(med_start>=1990) %>% ungroup()
table(d$studyid)
#add in CMIN GPS



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
d %>% filter(!is.na(waz)|!is.na(haz)) %>% group_by(studyid, country, subjid) %>% mutate(lagage=agedays-lag(agedays)) %>% group_by(studyid) %>% summarize(mn=mean(lagage,na.rm=T), md=median(lagage,na.rm=T))


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
  "CMIN2",                 
  "CMIN3",                 
  "CMIN7",                 
  "CONTENT")

quarterly_vec <- c("iLiNS-Zinc",  
  "JiVitA-3",          
  "JiVitA-4", 
  "LCNI-5",          
  "CMIN4",                 
  "CMIN6",                 
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