

source(paste0(here::here(), "/0-config.R"))



d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds"))


co <- d  %>% 
  filter(measurefreq == "monthly") %>% 
  filter(whz > -5 & whz < 5) %>%
  filter(haz > -6 & haz < 6) %>%
  group_by(studyid,country,subjid) %>% arrange(agedays) %>%
  filter(agedays[1] == 1) %>%
  mutate(nofirstmwhz=ifelse(is.na(whz[agedays==1]),1,0)) %>%
  mutate(born_wast = 1 * (first(whz) < (-2))) %>%
  ungroup() %>%
  filter(nofirstmwhz==0) 


co <- calc.monthly.agecat(co)




#1 Panel E

df <- d  %>% 
  filter(measurefreq == "monthly") %>%
  filter(whz > -5 & whz < 5) %>% 
  group_by(studyid,country,subjid) %>% arrange(agedays) %>%
  filter(agedays[1] == 1) %>%
  mutate(nofirstmwhz=ifelse(is.na(whz[agedays==1]),1,0)) %>%
  mutate(born_wast = 1 * (first(whz) < (-2))) %>%
  ungroup() %>%
  filter(nofirstmwhz==0) 
dim(df)
table(df$born_wast)
table(df$born_wast[df$agedays<730])

df <- calc.monthly.agecat(df)


ggplot(df ,aes(x=agedays, y=whz, group=born_wast)) + geom_smooth()



#1.1 get monthly mean WLZ, pooled across cohorts using random effects models




pooled_monthly_means <- df %>% group_by(born_wast) %>% do(summary.whz(.)$whz.res)


pooled_monthly_means $month <- c(0.46,1:24,0.46,1:24)

ggplot(pooled_monthly_means ,aes(x=month, y=est, group=born_wast)) + geom_smooth()





#2 Panel F

co <- co %>% mutate(agecat = case_when(agedays < 6*30.4167 ~ "0-6 months",
                                         agedays > 6*30.4167 & agedays < 24*30.4167 ~ "6-24 months"))

df <- df %>% mutate(agecat = case_when(agedays < 6*30.4167 ~ "0-6 months",
                                        agedays > 6*30.4167 & agedays < 24*30.4167 ~ "6-24 months"))

df$agecat <- factor(df$agecat)

co$agecat <- factor(co$agecat)

#2.1 First replicate the numbers with the pre-existing functions:
  
#mean whz

whz.res <- df  %>% group_by(born_wast) %>% do(summary.whz(., N_filter=1)$whz.res)
whz.res

#Incidence rate
#   
# ir.res <- df %>% group_by(born_wast) %>% do(summary.ir(., Nchild_filter=1, ptime_filter=1)$ir.res)
# ir.res$est <- ir.res$est * 1000
# ir.res$lb <- ir.res$lb * 1000
# ir.res$ub <- ir.res$ub * 1000
# ir.res

#Persistant wasting
perswast.res <- df %>% group_by(born_wast) %>% do(summary.perswast(., N_filter=1)$pers.res)
perswast.res

#co-occurrent wasting and stunting
co.res <- co %>% group_by(born_wast) %>% do(summary.prev.co(., N_filter=1)$prev.res)
co.res



res <- data.frame(
  measure= rep(c("Mean WLZ",  "Persistent wasting", "Co-occurrent wasting and stunting"), each=4),
  rbind(whz.res, perswast.res, co.res)
)
res

res <- res %>% filter(agecat=="6-24 months") 

res



