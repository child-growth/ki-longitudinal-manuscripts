
rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))

load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))

#Subset to monthly
d <- d %>% filter(measurefreq == "monthly") %>% do(calc.ci.agecat(., range=3, birth="yes"))
d_noBW <- d_noBW %>% filter(measurefreq == "monthly") %>% do(calc.ci.agecat(., range=3, birth="yes"))

d_noBW <- d_noBW %>% filter(wasting_episode!="Born wasted")
ci.data3 <- summary.wast.ci(d, age.range=3)
ci.data3_noBW <- summary.wast.ci(d_noBW, age.range=3)

ci.data3$ci.res
ci.data3_noBW$ci.res

table(d_noBW$born_wast_inc)
