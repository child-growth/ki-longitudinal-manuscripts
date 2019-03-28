



rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


load("U:/ucb-superlearner/data/Wasting_inc_data.RData")


#Subset to monthly
d <- d_noBW %>% filter(measurefreq == "monthly") %>% 
  subset(., select = c(studyid, region, country, subjid, agedays, whz, wasting_episode, wast_inc, wast_rec, pt_wast, wasting_duration))

#Mark children born or enrolled wasted
d <- d %>% group_by(studyid, subjid) %>% arrange(studyid, subjid, agedays) %>%
       mutate(age_enrol = first(agedays)) %>%
       filter(age_enrol < 3 * 30.4167) %>%
       mutate(born_wast = 1 * (first(whz) < (-2)))# %>%
       #filter(born_wast==1 | sum(wast_inc)>0) #Subset to only children who experiences wasting
table(d$born_wast)

#Set WLZ during birth  wasting episode to 0
d$whz[d$wasting_episode=="Born Wasted"] <- NA

#Drop children who never recovered from wasting at birth
dim(d)
d <- d %>% filter(!(born_wast==1 & sum(wast_rec)==0))
dim(d)


d <- calc.ci.agecat(d, range=6)

#Drop first 6 months
d <- d %>% filter(agecat!="0-6 months")

d$agecat <- "6-24 months"
d$agecat <- factor(d$agecat)

#mean whz
whz.res <- d %>% group_by(born_wast) %>% do(summary.whz(.)$whz.res)
whz.res

#Cumulative inc
ci.res <- d %>% group_by(born_wast) %>% do(summary.ci(., agelist = list("6-24 months"))$ci.res)
ci.res

sev.ci.res <- d %>% group_by(born_wast) %>% do(summary.ci(., agelist = list("6-24 months"), severe.wasted = T)$ci.res)
sev.ci.res

#Incidence rate
ir.res <- d %>% group_by(born_wast) %>% do(summary.ir(., agelist = list("6-24 months"))$ir.res)
ir.res$est <- ir.res$est * 1000
ir.res$lb <- ir.res$lb * 1000
ir.res$ub <- ir.res$ub * 1000



#Duration
#dur.res <- d %>% group_by(born_wast) %>% do(summary.dur(., agelist = list("6-24 months"))$dur.res)


#Persistant wasting
perswast.res <- d %>% group_by(born_wast) %>% do(summary.perswast(., agelist = list("6-24 months"))$pers.res)
perswast.res


res <- data.frame(
  measure= rep(c("Mean WLZ","Wasting cumulative incidence", "Severe wasting cumulative incidence", "Wasting incidence rate", "Persistent wasting"), each=2),
    rbind(whz.res,ci.res, sev.ci.res, ir.res, perswast.res)
)
res

saveRDS(res, file = paste0(here(),"/results/bw_longterm_res.rds"))

