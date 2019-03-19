
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

setwd(paste0(here(),"/results"))

load("shiny_desc_data.Rdata")
wast <- shiny_desc_data
load("shiny_desc_data_stunting_objects.Rdata")
stunt <- shiny_desc_data
load("co_desc_data.Rdata")


# 
# d$disease <- "Wasting"
# 
# d <- d %>% filter(region!="India")
# d <- d %>% filter(region!="Pakistan")
# 
# d$est[grepl("Incidence rate", d$measure)] <- d$est[grepl("Incidence rate", d$measure)] * 1000
# d$lb[grepl("Incidence rate", d$measure)] <- d$lb[grepl("Incidence rate", d$measure)] * 1000
# d$ub[grepl("Incidence rate", d$measure)] <- d$ub[grepl("Incidence rate", d$measure)] * 1000
# 
# 
# load("shiny_desc_data_stunting_objects.Rdata")
# 
# d_stunt <- shiny_desc_data %>% subset(., select = -c(pt.f))
# d_stunt$disease <- "Stunting"
# 
# 
# head(d_stunt)
# head(d)
# shiny_desc_data <- bind_rows(d_stunt, d)
# head(shiny_desc_data)


d <- bind_rows(stunt, wast, co_desc_data)


save(d, file=paste0(here(),"/results/desc_data_cleaned.Rdata"))
