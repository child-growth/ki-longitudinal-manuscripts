##########################################
# ki longitudinal manuscripts
# co-occurrence analysis

# create indicators for newly stunted, 
# recovered, relapsed, and never stunted
##########################################

#-----------------------------------------
# Process data for stunting flow chart
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

d <- readRDS(paste0(ghapdata_dir,"/co_occurrence_data.rds"))

d = d %>% ungroup() %>% mutate(studyid = as.character(studyid))

# since this will include recovery, 
# subsetting to monthly cohorts
d <- d %>% filter(measurefreq=="monthly")

# drop variables we don't need
d = d %>% select(studyid, subjid, country, measid, agedays, haz, whz, waz)



# create reverse measid
d = d %>% 
  group_by(studyid, country, subjid) %>%
  mutate(revmeasid = rev(seq_along(agedays)))


##########################################
# Define indicators of faltering at each time point
##########################################

#Mark monthly  agecat
d <- calc.monthly.agecat(d)
d <- d %>% filter(!is.na(agecat))

#Number of children ever wasted and stunted
d %>% mutate(co=ifelse(haz< (-2) & whz < (-2),1,0),
             sevco=ifelse(haz< (-3) & whz < (-3),1,0)) %>% 
  group_by(studyid, country, subjid) %>%
  summarize(everco=max(co), eversevco=max(sevco)) %>% ungroup() %>%
  summarize(N=n(), sumco=sum(everco), sumsevco=sum(eversevco), propco=mean(everco), propsevco=mean(eversevco))





flow_m = d %>%
  mutate(agem = round(agedays / 30.4167)) %>%
  #Take mean of multiple obs within a month
  group_by(studyid,country,subjid, agem) %>%
  summarize(haz=mean(haz), whz=mean(whz), waz=mean(waz)) %>%
  group_by(studyid,country,subjid) %>%
  mutate(stunted=ifelse(haz< -2,1,0),
         wasted=ifelse(whz< -2,1,0),
         underwt=ifelse(waz< -2,1,0),
         co=1*(wasted==1 & stunted==1),
         su=1*(underwt==1 & stunted==1),
         wu=1*(wasted==1 & underwt==1),
         stunted=ifelse(co==1 | su==1 | wu==1, 0, stunted),
         wasted=ifelse(co==1 | su==1 | wu==1, 0, wasted),
         underwt=ifelse(co==1 | su==1 | wu==1, 0, underwt),
         su=ifelse(co==1 , 0, su),
         wu=ifelse(co==1 , 0, wu),
         lagstunted=lag(stunted), lagstunted=ifelse(is.na(lagstunted),0,lagstunted),
         lageverstunted = lag(cummax(stunted)), lageverstunted=ifelse(is.na(lageverstunted),0,lageverstunted),
         lagwasted=lag(wasted), lagwasted=ifelse(is.na(lagwasted),0,lagwasted),
         lageverwasted = lag(cummax(wasted)), lageverwasted=ifelse(is.na(lageverwasted),0,lageverwasted),
         lagunderwt=lag(underwt), lagunderwt=ifelse(is.na(lagunderwt),0,lagunderwt),
         lageverunderwt = lag(cummax(underwt)), lageverunderwt=ifelse(is.na(lageverunderwt),0,lageverunderwt),
         lagsu=lag(su), lagsu=ifelse(is.na(lagsu),0,lagsu),
         lageversu = lag(cummax(su)), lageversu=ifelse(is.na(lageversu),0,lageversu),
         lagwu=lag(wu), lagwu=ifelse(is.na(lagwu),0,lagwu),
         lageverwu= lag(cummax(wu)), lageverwu=ifelse(is.na(lageverwu),0,lageverwu),
         lagco=lag(co), lagco=ifelse(is.na(lagco),0,lagco),
         lageverco= lag(cummax(co)), lageverco=ifelse(is.na(lageverco),0,lageverco),
         recovered=ifelse((lageverstunted==1 | lageverwasted==1 | lageverunderwt==1 | lageversu==1 | lageverwu==1 | lageverco==1) &
                            (stunted==0 & wasted==0 & underwt==0 & co==0 & su==0 & wu==0), 1, 0),
         healthy=ifelse((lageverstunted==0 & lageverwasted==0 & lageverunderwt==0 & lageversu==0 & lageverwu==0 & lageverco==0) &
                            (stunted==0 & wasted==0 & underwt==0 & co==0 & su==0 & wu==0), 1, 0))






# drop measurements with ages over 24 months
flow_m = flow_m %>% filter(agem < 25) 



# check that indicators do not contain missing values
assert_that(names(table(is.na(flow_m$stunted)))=="FALSE")
assert_that(names(table(is.na(flow_m$wasted)))=="FALSE")
assert_that(names(table(is.na(flow_m$underwt)))=="FALSE")
assert_that(names(table(is.na(flow_m$co)))=="FALSE")
assert_that(names(table(is.na(flow_m$su)))=="FALSE")
assert_that(names(table(is.na(flow_m$wu)))=="FALSE")

# check for multiple categories
flow_m = flow_m %>% mutate(sum = stunted+wasted+underwt+wu+su+co+recovered+healthy)
assert_that(names(table(flow_m$sum))=="1")


#Summary stats
table(flow_m$wu)

#Percent of wasted kids only wasted
mean(sum(flow_m$wasted)/sum(flow_m$wasted, flow_m$wu, flow_m$co))
#Also underweight
mean(sum(flow_m$wu)/sum(flow_m$wasted, flow_m$wu, flow_m$co))
#Also stunted + underweight
mean(sum(flow_m$co)/sum(flow_m$wasted, flow_m$wu, flow_m$co))

#num children and observations
flow_m %>% ungroup() %>% summarize(N=n(), nchild=length(unique(paste0(studyid, subjid))))
flow_m %>% group_by(agem) %>% summarize(N=n(), nchild=length(unique(paste0(studyid, subjid)))) %>% as.data.frame()

# Check that no child was classified in more
# than one category at any time point
summary = flow_m %>%
  group_by(agem) %>%
  summarise(
    nchild=length(unique(subjid)),
    N=n(),
    stunted = mean(stunted, na.rm = TRUE),
    wasted = mean(wasted, na.rm = TRUE),
    underwt = mean(underwt, na.rm = TRUE),
    wu = mean(wu, na.rm = TRUE),
    su = mean(su, na.rm = TRUE),
    co = mean(co, na.rm = TRUE),
    recovered = mean(recovered, na.rm = TRUE),
    healthy = mean(healthy, na.rm = TRUE))

summary = summary %>%
  mutate(sum = stunted + wasted + underwt +
           wu + su + co + recovered + healthy)

summary 
summary %>% summarize(min(nchild), max(nchild))
summary %>% summarize(min(N), max(N))



# aggregate data within study, country, and agecat
co_agg = flow_m %>%
  ungroup() %>%
  mutate(agem = as.factor(agem)) %>%
  group_by(studyid, country, agem) %>%
  summarise(
    nchild=n(),
    stunted = sum(stunted),
    wasted = sum(wasted),
    underwt = sum(underwt),
    wu = sum(wu),
    su = sum(su),
    co = sum(co),
    recovered = sum(recovered),
    healthy = sum(healthy))  

# estimate random effects, format results
pooled_stunt = run_rma_agem(data = co_agg, 
                            n_name = "nchild", 
                            x_name = "stunted", 
                            label = "Stunted",
                            method = "REML")
pooled_wast = run_rma_agem(data = co_agg, 
                            n_name = "nchild", 
                            x_name = "wasted", 
                            label = "Wasted",
                            method = "REML")
pooled_underwt = run_rma_agem(data = co_agg, 
                           n_name = "nchild", 
                           x_name = "underwt", 
                           label = "Underweight",
                           method = "REML")
pooled_wu = run_rma_agem(data = co_agg, 
                           n_name = "nchild", 
                           x_name = "wu", 
                           label = "Wasted+Underweight",
                           method = "REML")
pooled_su = run_rma_agem(data = co_agg, 
                           n_name = "nchild", 
                           x_name = "su", 
                           label = "Stunted+Underweight",
                           method = "REML")
pooled_co = run_rma_agem(data = co_agg, 
                           n_name = "nchild", 
                           x_name = "co", 
                           label = "Wasted+Stunted",
                           method = "REML")
pooled_healthy = run_rma_agem(data = co_agg, 
                           n_name = "nchild", 
                           x_name = "healthy", 
                           label = "Healthy",
                           method = "REML")
pooled_recovered = run_rma_agem(data = co_agg, 
                           n_name = "nchild", 
                           x_name = "recovered", 
                           label = "Recovered",
                           method = "REML")




co_pooled = bind_rows(pooled_stunt, pooled_wast, pooled_underwt, pooled_wu, pooled_su, pooled_co, pooled_healthy, pooled_recovered)


#----------------------------------------------
# setting estimates to 0 at birth for
# still, previously, relapse stunted
#----------------------------------------------

# identify which cells have 0's 
stunted_0 = as.character(summary$agem[summary$stunted==0])
wasted_0 =as.character(summary$agem[summary$wasted==0])
underwt_0 = as.character(summary$agem[summary$underwt==0])
wu_0 = as.character(summary$agem[summary$wu==0])
su_0 = as.character(summary$agem[summary$su==0])
co_0 = as.character(summary$agem[summary$co==0])
recovered_0 = as.character(summary$agem[summary$recovered==0])
healthy_0 = as.character(summary$agem[summary$healthy==0])



saveRDS(flow_m, file=paste0(res_dir, "co_flow.RDS"))
saveRDS(co_pooled, file=paste0(res_dir, "co_flow_pooled.RDS"))


