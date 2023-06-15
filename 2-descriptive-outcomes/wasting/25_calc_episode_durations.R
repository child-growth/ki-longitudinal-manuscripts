

rm(list = ls())
source(paste0(here::here(), "/0-config.R"))
library(rcompanion)
library(metamedian)

source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))
load(paste0(ghapdata_dir, "Wasting_inc_sens_data.RData"))
load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))


summary(d$duration)
summary(d$wasting_duration)
summary(d30$wasting_duration)

# d <-d30

#Calculate durations with 30 day washout

#Duration
df <- d %>% group_by(studyid, subjid, episode_id) %>% slice(1)  %>% filter(wasting_episode=="Wasted", agedays < 30.4167  * 24)
df30 <- d30 %>% group_by(studyid, subjid, episode_id) %>% slice(1)  %>% filter(wasting_episode=="Wasted", agedays < 30.4167  * 24)
summary(df$wasting_duration)
summary(df30$wasting_duration)

calc_dur_ci <- function(df){
  dur <- median(df$wasting_duration, na.rm=T)
  #Quantile CI's'
  ci <- sort(df$wasting_duration)[qbinom(c(.025,.975), length(df$wasting_duration), 0.5)]
  return(data.frame(dur=dur, ci.lb=ci[1], ci.ub=ci[2]))
}
calc_dur_ci(df)

#duration by age 
d6 <- calc.ci.agecat(d, range=6, birth="no")
df2 <- d6 %>% group_by(studyid, subjid, agecat,episode_id) %>% slice(1)  %>% filter(wasting_episode=="Wasted",agedays < 30.4167  * 24)
df2 %>% group_by(agecat) %>% do(calc_dur_ci(.))

df2$agecat <- as.character(df2$agecat)
df2$agecat[df2$agecat!="Birth" & df2$agecat!="8 days-6 months"] <- "6-24 months"
df2 %>% group_by(agecat) %>% do(calc_dur_ci(.))

#Mean WLZ of episodes by age
d6 %>% group_by(agecat) %>% filter(whz < (-2)) %>% summarise(mean(whz))

# #Check calculation methods
# groupwiseMedian(wasting_duration ~ agecat,
#                 data       = df2,
#                 conf       = 0.95,
#                 R          = 5000,
#                 percentile = TRUE,
#                 bca        = FALSE,
#                 digits     = 3)
# 

#pooled median
# dur_summary <- df2 %>% group_by(studyid, country) %>% summarize(N=n(), dur=median(wasting_duration, na.rm=T))
# dur_summary_agecat <- df2 %>% group_by(studyid, country, agecat) %>%
#   filter(!is.na(agecat)) %>% summarize(N=n(), dur=median(wasting_duration, na.rm=T))


## Meta-analysis of the difference of medians
pool.medians <- function(d){
  poolres <- pool.med(yi=d$dur, #wi=d$N, #Don't include weights, as this makes it a fixed-effects style estimator
                      norm.approx = T)
  res <- data.frame(duration=poolres$pooled.est, lb=poolres$ci.lb, ub=poolres$ci.ub)
  return(res)
}


#----------------------------------------------
# Pooled duration: birth included in 0-6 months
#----------------------------------------------

d6 <- calc.ci.agecat(d, range=6)
df2 <- d6 %>% group_by(studyid, subjid, agecat,episode_id) %>% slice(1)  %>% filter(wasting_episode=="Wasted",agedays < 30.4167  * 24)
dur_summary2 <- df2 %>% group_by(studyid, country) %>% summarize(N=n(), dur=median(wasting_duration, na.rm=T))
dur_summary_agecat2 <- df2 %>% group_by(studyid, country, agecat) %>%
  filter(!is.na(agecat)) %>% summarize(N=n(), dur=median(wasting_duration, na.rm=T))




dur_summary %>% filter(N>5) %>% ungroup() %>% do(pool.medians(.))
dur_summary_agecat %>% filter(N>5) %>% group_by(agecat) %>% do(pool.medians(.))
dur_summary_agecat <- mark_region(dur_summary_agecat)
dur_summary_agecat %>% filter(N>5) %>% group_by(agecat, region) %>% do(pool.medians(.))

Nchildren <- 10
dur_summary2 %>% filter(N>Nchildren) %>% ungroup() %>% do(pool.medians(.))
overall_duration <- dur_summary_agecat2 %>% filter(N>Nchildren) %>% group_by(agecat) %>% do(pool.medians(.))
dur_summary_agecat2 <- mark_region(dur_summary_agecat2)
region_duration <- dur_summary_agecat2 %>% filter(N>Nchildren) %>% group_by(agecat, region) %>% do(pool.medians(.))
dur_summary_agecat2$south_asia <- ifelse(dur_summary_agecat2$region=="South Asia", 1, 0)
dur_summary_agecat2 %>% filter(N>Nchildren) %>% filter(agecat!="Birth") %>% group_by(south_asia) %>% do(pool.medians(.))

overall_duration$region <- "Overall"
plot_df <- bind_rows(overall_duration, region_duration)
plot_df$region <- factor(plot_df$region, levels=c("Overall","Africa","Latin America","South Asia")) #%>% filter(region!="Latin America")
dur_summary_agecat2_cohort <- dur_summary_agecat2 %>% rename(duration=dur) %>% filter(N > Nchildren)

p <- ggplot(plot_df, aes(y=duration,x=agecat)) +
  facet_wrap(~region, nrow=1) +
  geom_errorbar(aes(color=region, 
                    group=region, ymin=lb, ymax=ub), 
                width = 0, position = position_dodge(0.5)) +
  geom_point(aes(fill=region, group=region), color="#878787", size = 2, position = position_jitterdodge(jitter.width = 2, dodge.width=0.5), alpha = 0.25, data=dur_summary_agecat2_cohort) +
  geom_point(aes(fill=region, color=region, group=region), size = 2, position = position_dodge(0.5)) +
  scale_color_manual(values=tableau11, guide = FALSE) +
  scale_fill_manual(values=tableau11, guide = FALSE) +
  xlab("Age in months") + ylab("Median episode duration (days)") +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
  theme(strip.text = element_text(size=20, margin = margin(t = 5))) +
  theme(axis.text.x = element_text(margin = 
                                     margin(t = 0, r = 0, b = 0, l = 0),
                                   size = 10)) +
  theme(axis.title.x = element_text(margin = 
                                      margin(t = 25, r = 0, b = 0, l = 0),
                                    size = 15)) +
  theme(axis.title.y = element_text(size = 15)) +
  ggtitle("") + guides(color = FALSE) 
p



#----------------------------------------------
# Seperate birth category
#----------------------------------------------

d6 <- calc.ci.agecat(d, range=6, birth = "no")
df2 <- d6 %>% group_by(studyid, subjid, agecat,episode_id) %>% slice(1)  %>% filter(wasting_episode=="Wasted",agedays < 30.4167  * 24)
dur_summary2 <- df2 %>% group_by(studyid, country) %>% summarize(N=n(), dur=median(wasting_duration, na.rm=T))
dur_summary_agecat2 <- df2 %>% group_by(studyid, country, agecat) %>%
  filter(!is.na(agecat)) %>% summarize(N=n(), dur=median(wasting_duration, na.rm=T))




dur_summary %>% filter(N>5) %>% ungroup() %>% do(pool.medians(.))
dur_summary_agecat %>% filter(N>5) %>% group_by(agecat) %>% do(pool.medians(.))
dur_summary_agecat <- mark_region(dur_summary_agecat)
dur_summary_agecat %>% filter(N>5) %>% group_by(agecat, region) %>% do(pool.medians(.))

Nchildren <- 10
dur_summary2 %>% filter(N>Nchildren) %>% ungroup() %>% do(pool.medians(.))
overall_duration <- dur_summary_agecat2 %>% filter(N>Nchildren) %>% group_by(agecat) %>% do(pool.medians(.))
dur_summary_agecat2 <- mark_region(dur_summary_agecat2)
region_duration <- dur_summary_agecat2 %>% filter(N>Nchildren) %>% group_by(agecat, region) %>% do(pool.medians(.))
dur_summary_agecat2$south_asia <- ifelse(dur_summary_agecat2$region=="South Asia", 1, 0)
dur_summary_agecat2 %>% filter(N>Nchildren) %>% filter(agecat!="Birth") %>% group_by(south_asia) %>% do(pool.medians(.))

overall_duration$region <- "Overall"
plot_df <- bind_rows(overall_duration, region_duration)
plot_df$region <- factor(plot_df$region, levels=c("Overall","Africa","Latin America","South Asia")) #%>% filter(region!="Latin America")
dur_summary_agecat2_cohort <- dur_summary_agecat2 %>% rename(duration=dur) %>% filter(N > Nchildren)

levels(plot_df$agecat)[levels(plot_df$agecat)=="8 days-6 months"] <- "0-6 months"
levels(dur_summary_agecat2_cohort$agecat)[levels(dur_summary_agecat2_cohort$agecat)=="8 days-6 months"] <- "0-6 months"
levels(plot_df$agecat) <- gsub(" months","",levels(plot_df$agecat))
levels(dur_summary_agecat2_cohort$agecat) <- gsub(" months","",levels(dur_summary_agecat2_cohort$agecat))

p2 <- ggplot(plot_df, aes(y=duration,x=agecat)) +
  facet_wrap(~region, nrow=1) +
  geom_errorbar(aes(color=region, 
                    group=region, ymin=lb, ymax=ub), 
                width = 0, position = position_dodge(0.5)) +
  geom_point(aes(fill=region, group=region), color="#878787", size = 2, position = position_jitterdodge(jitter.width = 2, dodge.width=0.5), alpha = 0.25, data=dur_summary_agecat2_cohort) +
  geom_point(aes(fill=region, color=region, group=region), size = 2, position = position_dodge(0.5)) +
  scale_color_manual(values=tableau11, guide = FALSE) +
  scale_fill_manual(values=tableau11, guide = FALSE) +
  xlab("Age in months") + ylab("Median episode\nduration (days)") +
  coord_cartesian(ylim=c(0, 210)) +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
  theme(strip.text = element_text(size=20, margin = margin(t = 5))) +
  theme(axis.text.x = element_text(margin = margin(t = 0, r = 0, b = 0, l = 0), size = 10)) +
  theme(axis.title.x = element_text(margin =  margin(t = 25, r = 0, b = 0, l = 0), size = 15)) +
  theme(axis.title.y = element_text(size = 15)) +
  ggtitle("") + guides(color = FALSE) 

ggsave(p2, file=paste0(BV_dir,"/figures/wasting/fig-duration.png"), width=10, height=4)


# #save PNG's for Nature
#Duration of wasting episodes by child age and region.
ggsave(plot = p2, width=10, height=4,
       filename=paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig9.jpeg"), device='jpeg')




dur_summary_agecat2_cohort %>% filter(N>Nchildren) %>% droplevels() %>% group_by(agecat, region) %>% 
  summarize(N=sum(N), Ncohorts=length(unique(paste0(studyid,country)))) %>% group_by(region) %>% 
  summarize(min(N), max(N), min(Ncohorts), max(Ncohorts))

dur_summary_agecat2_cohort %>% filter(N>Nchildren) %>% droplevels() %>% group_by(agecat) %>% 
  summarize(N=sum(N), Ncohorts=length(unique(paste0(studyid,country)))) %>% ungroup() %>% 
  summarize(min(N), max(N), min(Ncohorts), max(Ncohorts))

#Number of measurements per episode
df_Nmeas <- d %>% filter(wasting_episode=="Wasted") %>% group_by(studyid, country, subjid, episode_id) %>% summarize(N=n(), agedays=mean(agedays, na.rm=T)) %>% filter(agedays <=730)
head(df_Nmeas)


ggplot(df_Nmeas, aes(x=agedays, y=N)) + geom_jitter(alpha=0.01)
summary(df_Nmeas$N)
df_Nmeas <- calc.ci.agecat(df_Nmeas, range=6, birth="yes")
prop.table(table(df_Nmeas$agecat,df_Nmeas$N),1)*100
df_Nmeas$agecat <- as.character(df_Nmeas$agecat)
df_Nmeas$agecat[df_Nmeas$agecat!="0-6 months"] <- "6-24 months"
df_Nmeas$N[df_Nmeas$N>5] <- 5
prop.table(table(df_Nmeas$agecat,df_Nmeas$N),1)*100


#RE pool
pool.data= df_Nmeas %>%
  group_by(studyid,country) %>%
  mutate(Nmeas=n()) %>%
  group_by(studyid,country, N) %>%
  summarise(
    nchild=length(unique(subjid)),
    nstudy=length(unique(studyid)),
    ncases=n(),
    Nmeas=Nmeas[1]) 

pool.data.age= df_Nmeas %>%
  group_by(studyid,country,agecat) %>%
  mutate(Nmeas=n()) %>%
  group_by(studyid,country,agecat, N) %>%
  summarise(
    nchild=length(unique(subjid)),
    nstudy=length(unique(studyid)),
    ncases=n(),
    Nmeas=Nmeas[1]) 


res1 <- pool.data %>% group_by(N) %>%
  do(fit.rma(data=. ,ni="Nmeas", xi="ncases",age=.$agecat[1],measure="PLO",nlab=" measurements", method="REML"))

res2 <-  pool.data.age %>% group_by(agecat, N) %>%
  do(fit.rma(data=. ,ni="Nmeas", xi="ncases",age=.$agecat[1],measure="PLO",nlab=" measurements", method="REML"))

res <- bind_rows(res1, res2)
res %>% filter(N %in% c(1,2,5)) %>% select(N, agecat, est, lb, ub) %>%
  mutate(est=est*100, lb=lb*100, ub=ub*100)


