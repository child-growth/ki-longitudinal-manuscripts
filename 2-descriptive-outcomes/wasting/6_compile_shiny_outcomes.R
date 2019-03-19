
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

setwd(paste0(here(),"/results"))

load("shiny_desc_data.Rdata")
wast <- shiny_desc_data
load("shiny_desc_data_stunting_objects.Rdata")
stunt <- shiny_desc_data
load("co_desc_data.Rdata")


#Convert incidence rate to per 1000 days
d$est[grepl("Incidence rate", d$measure)] <- d$est[grepl("Incidence rate", d$measure)] * 1000
d$lb[grepl("Incidence rate", d$measure)] <- d$lb[grepl("Incidence rate", d$measure)] * 1000
d$ub[grepl("Incidence rate", d$measure)] <- d$ub[grepl("Incidence rate", d$measure)] * 1000


d <- bind_rows(stunt, wast, co_desc_data)
d$agecat <- factor(d$agecat, levels=unique(d$agecat))
d$region[d$region=="Asia" & !is.na(d$region)] <- "South Asia"
d$region <- factor(d$region, levels=c("Overall","Africa","Latin America", "South Asia"))

save(d, file=paste0(here(),"/results/desc_data_cleaned.Rdata"))
