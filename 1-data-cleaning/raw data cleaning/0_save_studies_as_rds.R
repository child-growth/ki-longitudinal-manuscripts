

#------------------------------------------------------
# Author: Andrew Mertens
# amertens@berkeley.edu
#
# Load cohort-specific datasets and save as RDS files to
# extract assets for PCA analysis
#-----------------------------------------------------


rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(haven)



#---------
# akup
#---------

study<-"akup"
akup<-read.csv(paste0(cohortdata_dir,"/adam versions/FULL_ki1000125_AgaKhanUniv.csv"))

saveRDS(akup, file=paste0(cohortdata_dir, study, '.rds') )


#---------
# cmc
#---------


study<-"cmc"
cmc<-read.csv(paste0(cohortdata_dir,"/adam versions/KI1000108_PMC3894229.csv")) 

saveRDS(cmc, file=paste0(cohortdata_dir, study, '.rds') )


#---------
# cntt 
#---------

study<-"cntt"
cntt<-read.csv(paste0(cohortdata_dir,"/adam versions/ADS_KI1114097_CONTENT_201511.csv")) 

saveRDS(cntt, file=paste0(cohortdata_dir, study, '.rds') )


#---------
# gmsn
#---------


study<-"gmsn"
gmsn<-read.csv(paste0(cohortdata_dir,"/adam versions/full_ki1113344_gms.csv")) 

saveRDS(gmsn, file=paste0(cohortdata_dir, study, '.rds') )

#---------
# ilnd
#---------



study<-"ilnd"
ilnd<-read.csv(paste0(cohortdata_dir,"/adam versions/FULL_ki1148112_iLiNS_DOSE.csv")) 

saveRDS(ilnd, file=paste0(cohortdata_dir, study, '.rds') )

#---------
# ildm
#---------

study<-"ildm"
ildm<-read.csv(paste0(cohortdata_dir,"/adam versions/full_ki1148112_iLiNS_DYAD_M.csv")) 

saveRDS(ildm, file=paste0(cohortdata_dir, study, '.rds') )

#---------
# irc
#---------

study<-"irc"
irc<-read_sas(paste0(cohortdata_dir,"/adam versions/ki1000108_irc.sas7bdat")) 

saveRDS(irc, file=paste0(cohortdata_dir, study, '.rds') )

#---------
# jvt3
#---------

study<-"jvt3"
jvt3<-read.csv(paste0(cohortdata_dir,"/adam versions/full_kiGH5241_JiVitA_3.csv")) 

saveRDS(jvt3, file=paste0(cohortdata_dir, study, '.rds') )

#---------
# jvt4
#---------



study<-"jvt4"
jvt4<-read.csv(paste0(cohortdata_dir,"/adam versions/full_kiGH5241_JiVitA_4.csv")) 

saveRDS(jvt4, file=paste0(cohortdata_dir, study, '.rds') )

#---------
# lcn5
#---------


study<-"lcn5"
lcn5<-read.csv(paste0(cohortdata_dir,"/adam versions/full_ki1148112_LCNI5.csv")) 

saveRDS(lcn5, file=paste0(cohortdata_dir, study, '.rds') )


#---------
# mled
#---------


study<-"mled"
mled<-read_sas(paste0(cohortdata_dir,"/adam versions/full_ki0047075b_maled_201707.sas7bdat")) 

saveRDS(mled, file=paste0(cohortdata_dir, study, '.rds') )



#---------
# prvd
#---------

study<-"prvd"
prvd<-read.csv(paste0(cohortdata_dir,"/adam versions/provide/FULL_PROVIDE_201704.csv")) 


saveRDS(prvd, file=paste0(cohortdata_dir, study, '.rds') )

#---------
# tzc2
#---------



study<-"tzc2"
tzc2<-read.csv(paste0(cohortdata_dir,"/adam versions/ads_full.csv")) 


saveRDS(tzc2, file=paste0(cohortdata_dir, study, '.rds') )

#---------
# EE
#---------
study<-"EE"
EE<-read.csv(paste0(cohortdata_dir,"/adam versions/EE/full_ki1000109_EE.csv")) 


saveRDS(EE, file=paste0(cohortdata_dir, study, '.rds') )




#---------
# BurkinaFasoZn
#---------
study<-"bfzn"
bfzn<-read.csv(paste0(cohortdata_dir,"/adam versions/ANTHA.csv")) 


saveRDS(bfzn, file=paste0(cohortdata_dir, study, '.rds') )




#-------------------------------
# VITAMIN-A        
#-------------------------------
study<-"vita"
vita<-read_sas(paste0(cohortdata_dir,"/adam versions/vit-a/ads_full.sas7bdat")) 


saveRDS(vita, file=paste0(cohortdata_dir, study, '.rds') )



#-------------------------------
# ZnMort          
#-------------------------------
study<-"zmrt"
zmrt<-read_sas(paste0(cohortdata_dir,"/adam versions/zinc-mort/ads_full.sas7bdat")) 


saveRDS(zmrt, file=paste0(cohortdata_dir, study, '.rds') )


#-------------------------------
# NIH-Birth         
#-------------------------------
study<-"nbrt"
nbrt<-read.csv(paste0(cohortdata_dir,"/adam versions/nih-birth-cohort/full_nbrt.csv")) 

saveRDS(nbrt, file=paste0(cohortdata_dir, study, '.rds') )


#-------------------------------
# NIH-Crypto      
#-------------------------------
study<-"ncry"
ncry<-read_sas(paste0(cohortdata_dir,"/adam versions/nih-crypto/full_nih_crypto_final.sas7bdat")) 


saveRDS(ncry, file=paste0(cohortdata_dir, study, '.rds') )


#-------------------------------
# COHORTS          
#-------------------------------
study<-"cort"
cort<-read_sas(paste0(cohortdata_dir,"/adam versions/cohorts/ads_full_ki1135781_cohorts.sas7bdat")) 


saveRDS(cort, file=paste0(cohortdata_dir, study, '.rds') )


#-------------------------------
# SAS-FoodSuppl    
#-------------------------------

study<-"fspp"
fspp<-read.csv(paste0(cohortdata_dir,"/adam versions/sas-foodsupp/full_ki1000304b_FoodSuppl.csv")) 


saveRDS(fspp, file=paste0(cohortdata_dir, study, '.rds') )


#-------------------------------
# SAS-CompFeed   
#-------------------------------

study<-"cpfd"
cpfd<-read.csv(paste0(cohortdata_dir,"adam versions/sas-compfeed/ads_full.csv")) 


saveRDS(cpfd, file=paste0(cohortdata_dir, study, '.rds') )




