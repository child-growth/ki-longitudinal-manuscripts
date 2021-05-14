
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

#Primary outcomes
wast <- readRDS(paste0(res_dir,"wasting_desc_data.RDS")) %>% mutate(analysis = "Primary")
stunt = readRDS(paste0(res_dir,"shiny_desc_data_stunting_objects.RDS")) %>% mutate(analysis = "Primary")
co_desc_data <- readRDS(paste0(res_dir,"co_desc_data.rds")) %>% mutate(analysis = "Primary", pooling=ifelse(!is.na(country) & pooling!="no pooling", "country",NA))


#Fixed effects
stunt_fe <- readRDS(paste0(res_dir,"shiny_desc_data_stunting_objects_fe.RDS")) %>% mutate(analysis = "Fixed effects")
wast_fe <- readRDS(paste0(res_dir,"wasting_desc_data_FE.RDS")) %>% mutate(analysis = "Fixed effects")
co_fe <- readRDS(paste0(res_dir,"co_desc_data_FE.rds")) %>% mutate(analysis = "Fixed effects")


#Other sensitivity
stunt_monthly24 = readRDS(paste0(res_dir,"shiny_desc_data_stunting_objects_monthly24.RDS")) %>% mutate(analysis = "Cohorts monthly 0-24 m", measure=paste0(measure," - monthly cohorts"))
stunt_noProbit = readRDS(paste0(res_dir,"shiny_desc_data_stunting_objects_no_probit.RDS")) %>% mutate(analysis = "No Probit")
stunt_noProbit_fe <- readRDS(paste0(res_dir,"shiny_desc_data_stunting_objects_fe_no_probit.RDS")) %>% mutate(analysis = "No Probit - Fixed effects")

wast_noKenabaBirth =  readRDS(paste0(res_dir,"wasting_desc_data_no_Kenaba_bw.RDS")) %>% mutate(analysis = "No Kenaba birth")
co_noKenabaBirth <- readRDS(paste0(res_dir,"co_desc_data_no_Kenaba.rds")) %>% mutate(analysis = "No Kenaba birth")

stunt_noKenaba_monthly24 = readRDS(paste0(res_dir,"shiny_desc_data_stunting_objects_monthly24_no_Kenaba_birth.RDS")) %>% mutate(analysis = "No Kenaba - monthly 0-24 m", measure=paste0(measure," - monthly cohorts"))
stunt_noKenaba = readRDS(paste0(res_dir,"shiny_desc_data_stunting_objects_no_Kenaba_birth.RDS")) %>% mutate(analysis = "No Kenaba")
stunt_noKenaba_fe <- readRDS(paste0(res_dir,"shiny_desc_data_stunting_objects_fe_no_Kenaba_birth.RDS")) %>% mutate(analysis = "No Kenaba - Fixed effects")







d <- bind_rows(stunt, wast, co_desc_data, 
               stunt_fe, wast_fe, co_fe,
               stunt_monthly24, 
               stunt_noProbit, stunt_noProbit_fe, 
               wast_noKenabaBirth, co_noKenabaBirth,
               stunt_noKenaba, stunt_noKenaba_fe, stunt_noKenaba_monthly24)

#check region markings
d %>% group_by(cohort) %>% slice(1) %>% select(region) %>% as.data.frame()

d$region <- as.character(d$region)
d$region[d$cohort %in% c("MAL-ED-TANZANIA",     "TanzaniaChild2-TANZANIA")] <- "Africa"
d$region[d$cohort %in% c( "PROBIT-BELARUS")] <- "Europe"


d$agecat <- factor(d$agecat, levels=unique(d$agecat))
d$region <- factor(d$region, levels=  c("Overall","Africa","Latin America", "South Asia", unique(d$region)[!(unique(d$region) %in%  c("Overall","Africa","Latin America", "South Asia"))]))


#Convert incidence rate to per 1000 days
d$est[grepl("Incidence rate", d$measure)] <- d$est[grepl("Incidence rate", d$measure)] * 1000
d$lb[grepl("Incidence rate", d$measure)] <- d$lb[grepl("Incidence rate", d$measure)] * 1000
d$ub[grepl("Incidence rate", d$measure)] <- d$ub[grepl("Incidence rate", d$measure)] * 1000


#Clean up measure labels
d$measure <- gsub("Incidence_proportion", "Incidence proportion", d$measure)


#Check for duplicates
dim(d)
# Return all duplicated elements
dups <- d %>% filter(duplicated(.) | duplicated(., fromLast = TRUE))
head(dups)
#drop any duplicated analyses
d<-distinct(d)
dim(d)

d <- droplevels(d)

saveRDS(d, file=paste0(BV_dir,"/results/desc_data_cleaned.rds"))