
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

colnames(d) <- tolower(colnames(d))
gc()

#Drop studies Vishak added to data product that don't meet inclusion criteria
dim(d)
d <- d[!(studyid %in% c("ki1000301-DIVIDS", "ki1055867-WomenFirst", "ki1135782-INCAP"))]
dim(d)
gc()


monthly_vec <- c("ki0047075b-MAL-ED",   
  "ki1000108-CMC-V-BCS-2002",              
  "ki1000108-IRC",               
  "ki1000109-EE",           
  "ki1000109-ResPak",  
  "ki1017093b-PROVIDE",  
  "ki1066203-TanzaniaChild2",           
  "ki1101329-Keneba",  
  "ki1112895-Guatemala BSC",       
  "ki1113344-GMS-Nepal",    
  "ki1114097-CMIN",                 
  "ki1114097-CONTENT")

quarterly_vec <- c("ki1112895-iLiNS-Zinc",  
  "kiGH5241-JiVitA-3",          
  "kiGH5241-JiVitA-4", 
  "ki1148112-LCNI-5",          
  "ki1017093-NIH-Birth",
  "ki1017093c-NIH-Crypto",   
  "ki1119695-PROBIT",         
  "ki1000304b-SAS-CompFeed",   
  "ki1000304b-SAS-FoodSuppl",   
  "ki1126311-ZVITAMBO",   
  "ki1135781-COHORTS")

yearly_vec <- c("ki1000110-WASH-Bangladesh",       
  "ki1000111-WASH-Kenya",  
  "ki1148112-iLiNS-DOSE",     
  "ki1148112-iLiNS-DYAD-M", 
  "ki1033518-iLiNS-DYAD-G",
  "ki1000125-AgaKhanUniv",           
  "ki1112895-Burkina Faso Zn",    
  "ki1000304-VITAMIN-A",  
  "ki1000304-Vitamin-B12",
  "ki1000107-Serrinha-VitA",   
  "ki1000304-EU",        
  "ki1000304-ZnMort"
)


d <- d[, measurefreq := c("monthly", "quarterly", "yearly")[1* (studyid %in% monthly_vec) +
                               2 * (studyid %in% quarterly_vec) + 
                               3 * (studyid %in% yearly_vec)]]
gc()



#Drop CMIN cohorts with less than 200 children
d <- d[!(studyid=="ki1114097-CMIN" & country != "BANGLADESH")]
gc()

#Mark yearly COHORTS
d <- d[studyid=="ki1135781-COHORTS" & country %in% c("BRAZIL", "SOUTH AFRICA"), measurefreq := "yearly"]
gc()

#Drop yearly studies except for four with high quality mortality data used in the mortality analysis
d <- d[measurefreq!="yearly" | studyid %in% c("ki1148112-iLiNS-DOSE", "ki1148112-iLiNS-DYAD-M","ki1112895-Burkina Faso Zn", "ki1000304-VITAMIN-A" )]
gc()


# #fix sex and Z-scores in PROBIT and CONTENT
# dfull <- d %>% filter(!(studyid %in% c("ki1119695-PROBIT","ki1114097-CONTENT")))
# dsub <- d %>% filter((studyid %in% c("ki1119695-PROBIT","ki1114097-CONTENT")))
# rm(d)
# gc()
# 
# dsub$sex2 <- ifelse(dsub$sex=="Male", "Female", "Male")
# dsub$sex2[is.na(dsub$sex) | dsub$sex==""] <- NA
# table(dsub$sex)
# table(dsub$sex2)
# dsub$sex <- dsub$sex2
# 
# dsub <- dsub %>% filter(!is.na(sex))

# #recalculate Z-scores
# 
# #whz
# #use length or height standards, depending on age
# dsub$whz2 <- ifelse(!is.na(dsub$lencm),
#                     who_value2zscore2(dsub$lencm, dsub$wtkg, x_var = "lencm", y_var = "wtkg", sex = dsub$sex),    
#                     who_value2zscore(dsub$htcm, dsub$wtkg, x_var = "htcm", y_var = "wtkg", sex = dsub$sex)
#                     )
# 
# 
# #temporarily combine length and height variables
# dsub$lencm[is.na(dsub$lencm) & !is.na(dsub$htcm)] <- dsub$htcm[is.na(dsub$lencm) & !is.na(dsub$htcm)] 
# 
# #haz and waz
# dsub$haz2 <- who_value2zscore(dsub$agedays, dsub$lencm, x_var = "agedays", y_var = "htcm", sex = dsub$sex)
# dsub$waz2 <- who_value2zscore(dsub$agedays, dsub$wtkg, x_var = "agedays", y_var = "wtkg", sex = dsub$sex)
# 
# 
# summary(dsub$haz)
# summary(dsub$haz2)
# 
# summary(dsub$haz[dsub$sex=="Male"])
# summary(dsub$haz[dsub$sex=="Female"])
# summary(dsub$haz2[dsub$sex=="Male"])
# summary(dsub$haz2[dsub$sex=="Female"])
# 
# summary(dsub$waz)
# summary(dsub$waz2)
# 
# summary(dsub$whz)
# summary(dsub$whz2)
# 
# dsub$haz <- dsub$haz2
# dsub$waz <- dsub$waz2
# dsub$whz <- dsub$whz2
# 
# dsub <- dsub %>% subset(., select = -c(sex2, haz2, waz2, whz2))
# d <- bind_rows(dfull, dsub)


saveRDS(d, included_studies_path)
gc()