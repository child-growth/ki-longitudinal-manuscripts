



rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))

load(paste0(ghapdata_dir, "Underweight_inc_rf_data.RData"))

#load covariates
cov<-readRDS(paste0(ghapdata_dir,"FINAL_clean_covariates.rds"))

head(d)
cov <- cov %>% 
  subset(., select = c(studyid, subjid, birthwt, gagebrth)) %>% 
  filter(!is.na(birthwt) | !is.na(gagebrth)) %>% droplevels()

d <- left_join(d, cov,by=c("studyid", "subjid"))

table(d$studyid, d$birthwt)
table(d$studyid, d$birthwt, d$measurefreq)

table(d$studyid, d$gagebrth)
table(d$studyid, d$gagebrth, d$measurefreq)

table(d$studyid, d$gagebrth, d$region)
table(d$studyid, d$birthwt, d$gagebrth)

#Subset to monthly
d <- d %>% filter(measurefreq == "monthly")

#NOTE! DO I WANT TO SUBSET TO MONTHLY? HOW MANY DATAPOINTS


#Descriptive statistics
d %>% group_by(studyid, birthwt) %>%
  summarise(N=n(), )

df <- d %>% group_by(studyid,country,subjid) %>%
  filter(!is.na(birthwt))%>% 
  slice(1) %>% ungroup() %>% 
  group_by(studyid,country) %>% mutate(N=n()) %>%
  filter(N>50) %>% ungroup() %>%
  mutate(cohort=paste0(studyid,"-",country)) 

tab1 <- table(df$cohort, df$birthwt)
tab2 <- round(prop.table(table(df$cohort, df$birthwt),1)*100,1)

tab1 <- as.data.frame(tab1)
tab2 <- as.data.frame(tab2)
tab <- left_join(tab1,tab2, by=c("Var1","Var2"))
tab <- tab %>% mutate(prop = paste0(Freq.x," (", Freq.y,"%)"))
tab$prop <- gsub("NaN","0",tab$prop)
tab <- tab %>% subset(., select=c(Var1,Var2,prop))
tab1 <- tab %>% filter(Var2=="Normal or high birthweight")
tab2 <- tab %>% filter(Var2=="Low birthweight")
tab_birthweight <- left_join(tab1,tab2, by=c("Var1")) %>% subset(., select=c(Var1, prop.x, prop.y))
colnames(tab_birthweight) <- c("Study","Normal or high birthweight","Low birthweight")
tab_birthweight





df <- d %>% group_by(studyid,country,subjid) %>%
  filter(!is.na(gagebrth))%>% 
  slice(1) %>% ungroup() %>% 
  group_by(studyid,country) %>% mutate(N=n()) %>%
  filter(N>50) %>% ungroup() %>%
  mutate(cohort=paste0(studyid,"-",country)) 

tab1 <- table(df$cohort, df$gagebrth)
tab2 <- round(prop.table(table(df$cohort, df$gagebrth),1)*100,1)

tab1 <- as.data.frame(tab1)
tab2 <- as.data.frame(tab2)
tab <- left_join(tab1,tab2, by=c("Var1","Var2"))
tab <- tab %>% mutate(prop = paste0(Freq.x," (", Freq.y,"%)"))
tab$prop <- gsub("NaN","0",tab$prop)
tab <- tab %>% subset(., select=c(Var1,Var2,prop))
tab1 <- tab %>% filter(Var2=="Full or late term")
tab2 <- tab %>% filter(Var2=="Early term")
tab3 <- tab %>% filter(Var2=="Preterm")
tab_gagebrth <- left_join(tab1,tab2, by=c("Var1")) %>% subset(., select=c(Var1, prop.x, prop.y))
tab_gagebrth <- left_join(tab_gagebrth,tab3, by=c("Var1")) %>% subset(., select=c(Var1, prop.x, prop.y,prop))
colnames(tab_gagebrth) <- c("Study","Full or late term","Early term","Preterm")
tab_gagebrth



df <- d %>% group_by(studyid,country,subjid) %>%
  filter(!is.na(birthwt),!is.na(gagebrth))%>% 
  slice(1) %>% ungroup() %>% 
  group_by(studyid,country) %>% mutate(N=n()) %>%
  filter(N>50) %>% ungroup() %>%
  mutate(cohort=paste0(studyid,"-",country),
         birthwt.gagebrth=paste0(birthwt,"-",gagebrth)) 

tab1 <- table(df$cohort, df$birthwt.gagebrth)
tab2 <- round(prop.table(table(df$cohort, df$birthwt.gagebrth),1)*100,1)

tab1 <- as.data.frame(tab1)
tab2 <- as.data.frame(tab2)
unique(tab1$Var2)


tab <- left_join(tab1,tab2, by=c("Var1","Var2"))
tab <- tab %>% mutate(prop = paste0(Freq.x," (", Freq.y,"%)"))
tab$prop <- gsub("NaN","0",tab$prop)
tab <- tab %>% subset(., select=c(Var1,Var2,prop))
tab1 <- tab %>% filter(Var2=="Normal or high birthweight-Full or late term")
tab2 <- tab %>% filter(Var2=="Normal or high birthweight-Early term")
tab3 <- tab %>% filter(Var2=="Normal or high birthweight-Preterm")
tab4 <- tab %>% filter(Var2=="Low birthweight-Full or late term")
tab5 <- tab %>% filter(Var2=="Low birthweight-Early term")
tab6 <- tab %>% filter(Var2=="Low birthweight-Preterm")
tab_birthwt_gagebrth <- left_join(tab1,tab2, by=c("Var1")) %>% subset(., select=c(Var1, prop.x, prop.y))
tab_birthwt_gagebrth <- left_join(tab_birthwt_gagebrth,tab3, by=c("Var1")) %>% subset(., select=c(Var1, prop.x, prop.y,prop))
tab_birthwt_gagebrth <- left_join(tab_birthwt_gagebrth,tab4, by=c("Var1")) %>% subset(., select=c(Var1, prop.x, prop.y,prop.x.x, prop.y.y))
tab_birthwt_gagebrth <- left_join(tab_birthwt_gagebrth,tab5, by=c("Var1")) %>% subset(., select=c(Var1, prop.x, prop.y,prop.x.x, prop.y.y, prop))
tab_birthwt_gagebrth <- left_join(tab_birthwt_gagebrth,tab6, by=c("Var1")) %>% subset(., select=c(Var1, prop.x, prop.y, prop.x.x, prop.y.y, prop.x.x.x, prop.y.y.y))
colnames(tab_birthwt_gagebrth) <- c("Study","Normal or high birthweight-Full or late term",
                            "Normal or high birthweight-Early term",
                            "Normal or high birthweight-Preterm",
                            "Low birthweight-Full or late term",
                            "Low birthweight-Early term",
                            "Low birthweight-Preterm")
tab_birthwt_gagebrth


save(tab_birthweight, tab_gagebrth, tab_birthwt_gagebrth, file=paste0(figdata_dir_underweight,"BW_strat_tabs.Rdata"))





#monthly mean whz
d <- calc.monthly.agecat(d)

monthly.gagebrth <- d %>% filter(!is.na(gagebrth)) %>% 
  group_by(gagebrth) %>% do(summary.whz(., N_filter=5)$whz.res)
monthly.gagebrth.region <- d %>% filter(!is.na(gagebrth)) %>% 
  group_by(gagebrth,region) %>% do(summary.whz(., N_filter=5)$whz.res)


monthly.birthwt <- d %>% filter(!is.na(birthwt)) %>% 
  group_by(birthwt) %>% do(summary.whz(., N_filter=5)$whz.res)
monthly.birthwt.region <- d %>% filter(!is.na(birthwt)) %>% 
  group_by(birthwt,region) %>% do(summary.whz(., N_filter=5)$whz.res)

monthly.gagebrth.BW <- d %>% filter(!is.na(birthwt), !is.na(gagebrth)) %>% 
  group_by(gagebrth, birthwt) %>% do(summary.whz(., N_filter=5)$whz.res)
monthly.region.BW <- d %>% filter(!is.na(birthwt), !is.na(gagebrth)) %>% 
  filter(region!="Latin America") %>% droplevels(.) %>%
  group_by(gagebrth, birthwt, region) %>% do(summary.whz(., N_filter=5)$whz.res)



monthly.whz <- bind_rows(
  data.frame(V="gagebrth", cohort = "pooled", region = "Overall", monthly.gagebrth),
  data.frame(V="birthwt", cohort = "pooled", region = "Overall", monthly.birthwt),
  data.frame(V="birthwt and gagebrth", cohort = "pooled", region = "Overall", monthly.gagebrth.BW),
  data.frame(V="gagebrth", cohort = "pooled", monthly.gagebrth.region),
  data.frame(V="birthwt", cohort = "pooled", monthly.birthwt.region),
  data.frame(V="birthwt and gagebrth", cohort = "pooled", monthly.region.BW)
)




# #Get monthly whz quantiles
# quantile_d <- d %>% group_by(agecat, gagebrth, region) %>%
#   mutate(N=n(),
#          fifth_perc = quantile(whz, probs = c(0.05))[[1]],
#          fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
#          ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
#   select(agecat, region, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)
# quantile_d_overall <- d %>% group_by(agecat, gagebrth) %>%
#   mutate(N=n(),
#          fifth_perc = quantile(whz, probs = c(0.05))[[1]],
#          fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
#          ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
#   select(agecat, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)
# 
# quantile_d_birthwt <- d %>% group_by(agecat, birthwt, region) %>%
#   mutate(N=n(),
#          fifth_perc = quantile(whz, probs = c(0.05))[[1]],
#          fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
#          ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
#   select(agecat, region, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)
# quantile_d_birthwt_overall <- d %>% group_by(agecat, birthwt) %>%
#   mutate(N=n(),
#          fifth_perc = quantile(whz, probs = c(0.05))[[1]],
#          fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
#          ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
#   select(agecat, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)
# 
# 
# 
# #Get monthly whz quantiles - stratified by birthweight
# quantile_d_gagebrth_BW <- d %>% group_by(agecat, birthwt, gagebrth, region) %>%
#   mutate(N=n(),
#          fifth_perc = quantile(whz, probs = c(0.05))[[1]],
#          fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
#          ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
#   select(agecat, region, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)
# quantile_d_gagebrth_BW_overall <- d %>% group_by(agecat, birthwt, gagebrth, birthwt) %>%
#   mutate(N=n(),
#          fifth_perc = quantile(whz, probs = c(0.05))[[1]],
#          fiftieth_perc = quantile(whz, probs = c(0.5))[[1]],
#          ninetyfifth_perc = quantile(whz, probs = c(0.95))[[1]]) %>%
#   select(agecat, fifth_perc, fiftieth_perc, ninetyfifth_perc, N)


# saveRDS(list(quantile_d=quantile_d, 
#              quantile_d_overall=quantile_d_overall), 
#         file = paste0(here(),"/results/quantile_data_underweight_gagebrth_strat.RDS"))
# 
# 
# saveRDS(list(quantile_d=quantile_d_BW, 
#              quantile_d_overall=quantile_d_BW_overall), 
#         file = paste0(here(),"/results/quantile_data_underweight_gagebrth_BW_strat.RDS"))




#Prevalence
d <- calc.prev.agecat(d)
prev.data <- summary.prev.whz(d, N_filter=5)
prev.birthwt <- d %>% filter(!is.na(birthwt)) %>% 
  group_by(birthwt) %>% do(summary.prev.whz(., N_filter=5)$prev.res)
prev.birthwt.region <- d %>% filter(!is.na(birthwt)) %>% droplevels() %>%
  group_by(birthwt, region) %>% do(summary.prev.whz(., N_filter=5)$prev.res)
prev.cohort <-
  prev.data$prev.cohort %>% subset(., select = c(cohort, region, agecat, nmeas,  prev,  ci.lb,  ci.ub)) %>%
  rename(est = prev,  lb = ci.lb,  ub = ci.ub) %>% mutate(V="overall")

pres.res.birthwt <-
  prev <- bind_rows(
    data.frame(V="overall", cohort = "pooled", region = "Overall", prev.data$prev.res),
    data.frame(V="birthwt", cohort = "pooled", region = "Overall", prev.birthwt),
    data.frame(V="birthwt", cohort = "pooled", prev.birthwt.region),
    prev.cohort
  )  


prev.gagebrth <- d %>% filter(!is.na(gagebrth)) %>% 
  group_by(gagebrth) %>% do(summary.prev.whz(., N_filter=5)$prev.res)
prev.gagebrth.region <- d %>% filter(!is.na(gagebrth)) %>% droplevels() %>%
  group_by(gagebrth, region) %>% do(summary.prev.whz(., N_filter=5)$prev.res)

pres.res.gagebrth <- bind_rows(
    data.frame(V="gagebrth",cohort = "pooled", region = "Overall", prev.gagebrth),
    data.frame(V="gagebrth",cohort = "pooled", prev.gagebrth.region)
    )  


prev.birthwt.gagebrth <- d %>% filter(!is.na(birthwt),!is.na(gagebrth)) %>% 
  group_by(birthwt,gagebrth) %>% do(summary.prev.whz(., N_filter=5)$prev.res)
prev.birthwt.gagebrth.region <- d %>% filter(!is.na(birthwt),!is.na(gagebrth)) %>% droplevels() %>%
  group_by(birthwt,gagebrth, region) %>% do(summary.prev.whz(., N_filter=5)$prev.res)

pres.res.birthwt.gagebrth <- bind_rows(
  data.frame(V="birthwt and gagebrth",cohort = "pooled", region = "Overall", prev.birthwt.gagebrth),
  data.frame(V="birthwt and gagebrth",cohort = "pooled", prev.birthwt.gagebrth.region)
)  

pres.res <- bind_rows(
    pres.res.birthwt,
    pres.res.gagebrth,
    pres.res.birthwt.gagebrth
)





underweight_desc_data <- bind_rows(
  data.frame(disease = "underweight", age_range="3 months",   birth="yes", severe="no", measure= "Prevalence",  pres.res),
  data.frame(disease = "underweight", age_range="1 month",   birth="yes", severe="no", measure= "Mean WLZ",  monthly.whz)
)
underweight_desc_data <- droplevels(underweight_desc_data)


#Add in prevalence above, then estimate wasting prevalence below



unique(underweight_desc_data$agecat)
underweight_desc_data$agecat <- factor(underweight_desc_data$agecat, levels=unique(underweight_desc_data$agecat))

unique(underweight_desc_data$region)
underweight_desc_data$region[underweight_desc_data$region=="Asia"] <- "South Asia"
underweight_desc_data$region <- factor(underweight_desc_data$region, levels=c("Overall", "Africa", "Latin America", "South Asia"))



saveRDS(underweight_desc_data, file = paste0(ghapdata_dir,"/gagebrth_strat_underweight_desc_data.RDS"))



