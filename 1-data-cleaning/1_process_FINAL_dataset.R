
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


unique(d$STUDYID)

colnames(d) <- tolower(colnames(d))
gc()

#Drop studies Vishak added to data product that don't meet inclusion criteria
dim(d)
d <- d[!(studyid %in% c("DIVIDS", "WomenFirst", "INCAP", "ILINS-DYAD-G"))]
dim(d)
gc()

#update study names where they have changed during BlueVelvet switch
d <- d[studyid=="ZINC-MORTALITY", studyid := "ZnMort"]
d <- d[studyid=="VITAMIN-B12", studyid := "Vitamin-B12"]
d <- d[studyid=="WASH-BK", studyid := "WASH-Kenya"]
d <- d[studyid=="Respak", studyid := "ResPak"]
d <- d[studyid=="ILINS-Zinc", studyid := "iLiNS-Zinc"]
d <- d[studyid=="GMS-Nepal-201606", studyid := "GMS-Nepal"]
d <- d[studyid=="BurkinaFasoZn", studyid := "Burkina Faso Zn"]
d <- d[studyid=="ILINS-DOSE", studyid := "iLiNS-DOSE"]
d <- d[studyid=="ILINS-DYAD-M", studyid := "iLiNS-DYAD-M"]

unique(d$studyid)


monthly_vec <- c("MAL-ED",   
  "CMC-V-BCS-2002",              
  "IRC",               
  "EE",           
  "ResPak",  
  "PROVIDE",  
  "TanzaniaChild2",           
  "Keneba",  
  "Guatemala BSC",       
  "GMS-Nepal",    
  "CMIN",                 
  "CONTENT")

quarterly_vec <- c("iLiNS-Zinc",  
  "JiVitA-3",          
  "JiVitA-4", 
  "LCNI-5",          
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
d <- d[!(studyid=="CMIN" & country != "BANGLADESH")]
gc()

#Mark yearly COHORTS
d <- d[studyid=="COHORTS" & country %in% c("BRAZIL", "SOUTH AFRICA"), measurefreq := "yearly"]
gc()

#Drop yearly studies except for four with high quality mortality data used in the mortality analysis
d <- d[measurefreq!="yearly" | studyid %in% c("iLiNS-DOSE", "iLiNS-DYAD-M","Burkina Faso Zn", "VITAMIN-A" )]
gc()


# #fix sex and Z-scores in PROBIT and CONTENT
# dfull <- d %>% filter(!(studyid %in% c("PROBIT","CONTENT")))
# dsub <- d %>% filter((studyid %in% c("PROBIT","CONTENT")))
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