rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

wast <- readRDS(paste0(res_dir,"wasting_desc_data.RDS"))
stunt = readRDS(paste0(res_dir,"shiny_desc_data_stunting_objects.RDS"))
stunt_monthly24 = readRDS(paste0(res_dir,"shiny_desc_data_stunting_objects_monthly24.RDS"))
stunt_fe <- readRDS(paste0(res_dir,"shiny_desc_data_stunting_objects_fe.RDS"))

load(paste0(res_dir,"co_desc_data.Rdata"))



stunt <- stunt %>% mutate(analysis = "Primary")
stunt_monthly24 <- stunt_monthly24 %>% mutate(analysis = "Cohorts monthly 0-24 m", measure=paste0(measure," - monthly cohorts"))
wast <- wast %>% mutate(analysis = "Primary")
co_desc_data <- co_desc_data %>% mutate(analysis = "Primary")
stunt_fe <- stunt_fe %>% mutate(analysis = "Fixed effects")

d <- bind_rows(stunt, stunt_monthly24, stunt_fe, wast, co_desc_data)
d$agecat <- factor(d$agecat, levels=unique(d$agecat))
d$region[d$region=="Asia" & !is.na(d$region)] <- "South Asia"

d$region <- factor(d$region, levels=  c("Overall","Africa","Latin America", "South Asia"))


#Convert incidence rate to per 1000 days
d$est[grepl("Incidence rate", d$measure)] <- d$est[grepl("Incidence rate", d$measure)] * 1000
d$lb[grepl("Incidence rate", d$measure)] <- d$lb[grepl("Incidence rate", d$measure)] * 1000
d$ub[grepl("Incidence rate", d$measure)] <- d$ub[grepl("Incidence rate", d$measure)] * 1000

#Check for duplicates
dim(d)
# Return all duplicated elements
dups <- d %>% filter(duplicated(.) | duplicated(., fromLast = TRUE))
head(dups)
#drop duplicated analyses
d<-distinct(d)
dim(d)

saveRDS(d, file=paste0(here(),"/results/desc_data_cleaned.rds"))