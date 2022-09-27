
rm(list=ls())
load("/data/KI/UCB-SuperLearner/Manuscript analysis data/st_meanZ_rf_bwt_strat_bin.Rdata")

head(d)
d <- d %>% filter(studyid=="JiVitA-3")

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
