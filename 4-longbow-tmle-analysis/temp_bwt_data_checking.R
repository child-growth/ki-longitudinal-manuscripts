
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf_bwt_strat_bin.Rdata")
dfull <- d

head(dfull)
d <- dfull %>% filter(studyid=="JiVitA-3")

d$birthwt <- as.character(d$birthwt)
d$birthwt[is.na(d$birthwt)] <- "Missing"
table(d$birthwt)

d2 <- d %>% mutate(birthwt="Unstratified")
d <- bind_rows(d, d2)
table(d$birthwt)

d <- d %>% filter(agecat=="24 months", !is.na(parity))
d %>% group_by(studyid, country, birthwt,parity) %>% summarize(haz=mean(haz), N=n())
d %>% group_by(studyid, country, birthwt,parity) %>% summarize(haz=mean(haz), N=n()) %>%
      group_by(studyid, country, birthwt) %>% summarize(haz=last(haz)-first(haz), N=sum(N))


d %>% group_by(studyid, country,parity) %>% summarize(haz=mean(haz), N=n()) %>%
  group_by(studyid, country) %>% summarize(haz=last(haz)-first(haz), N=sum(N))


d <- dfull %>% filter(studyid=="JiVitA-4")
d <- dfull #%>% filter(studyid=="JiVitA-4")
d2 <- d %>% mutate(birthwt="Unstratified")
d <- bind_rows(d, d2)
d <- d %>% filter(agecat=="24 months", !is.na(sex))
d %>% group_by(studyid, country, birthwt,sex) %>% summarize(haz=mean(haz), N=n())
df <- d %>% group_by(studyid, country, birthwt,sex) %>% mutate(N=n()) %>% filter(N>50) %>% droplevels() %>%
                 summarize(haz=mean(haz), N=n()) %>%
                 group_by(studyid, country, birthwt) %>% 
                 summarize(haz=last(haz)-first(haz), N=sum(N)) %>% group_by(studyid, country) %>%
                 mutate(Nstrat=n()) %>% filter(Nstrat==3)

#Zivitambo and Jivita 3 and 4


df <- d %>% filter(studyid == "CMC-V-BCS-2002", country == "INDIA", birthwt == "Normal or high birthweight", sex == "Female")
t.test(df$haz)$"conf.int"[2]


mean_ci <- function(d){
  haz=mean(d$haz)
  ci.lb=t.test(d$haz)$"conf.int"[1]
  ci.ub=t.test(d$haz)$"conf.int"[2]
  N=nrow(d)
  res=data.frame(haz=haz, ci.lb=ci.lb, ci.ub=ci.ub, N=N)
  return(res)
}

df <- d %>% group_by(studyid, country, birthwt, sex) %>% mutate(N=n()) %>% filter(N>50) %>% droplevels() %>%
  do(mean_ci(.)) %>% mutate(cohort=paste0(studyid, " ", country), strat=paste0(birthwt, ", ", sex)) %>% group_by(studyid, country) %>%
  mutate(Nstrat=n()) %>% filter(Nstrat==6)


ggplot(df, aes(x=strat, y=haz)) +
  geom_point() +
  geom_linerange(aes(ymin=ci.lb, ymax=ci.ub)) +
  facet_wrap(~cohort) +
  coord_flip()


d %>% group_by(studyid, country,sex) %>% summarize(haz=mean(haz), N=n()) %>%
  group_by(studyid, country) %>% summarize(haz=last(haz)-first(haz), N=sum(N)) %>% filter(N>50)


d <- d %>% filter(studyid %in% c("JiVitA-3","JiVitA-4","ZVITAMBO"))
df <- d %>% group_by(studyid, country) %>% mutate(Ntotal=n()) %>%
  group_by(studyid, country, sex) %>% mutate(Nsex=n()) %>%
  group_by(studyid, country, birthwt,sex) %>% 
  summarize(haz=mean(haz), N=n(), Nsex=Nsex[1], Ntotal=Ntotal[1]) %>%
  group_by(studyid, country, birthwt) %>% 
  summarize(haz_diff=last(haz)-first(haz), Nfemale=first(Nsex), Nmale=last(Nsex), Ntotal=Ntotal[1])
df
