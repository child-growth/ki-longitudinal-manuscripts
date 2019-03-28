
#-----------------------------------------
# Process data for wasting traj figures
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source("U:/Wasting/1-outcomes/0_wast_incfunctions.R")

load("U:/ucb-superlearner/data/Wasting_inc_data.RData")


d <- d_noBW %>% filter(measurefreq=="monthly")

d <- d %>% filter(agedays < 24 * 30.4167)

# Get the mean Z-score after recovery
df <- d %>% select(studyid, country, region, subjid, wasting_episode, episode_id, agedays, wast_rec, whz) %>% group_by(studyid, country, subjid) %>%
      mutate(wasting_episode = lag(wasting_episode),
              l1=lead(whz), l2=lead(whz, 2), l3=lead(whz, 3), l4=lead(whz, 4),
                   a1=lead(agedays)-agedays, a2=lead(agedays, 2)-agedays, 
                   a3=lead(agedays, 3)-agedays, a4=lead(agedays, 4)-agedays) %>% 
  filter(wast_rec==1)

df$l1[df$a1 > 3 * 30.4167] <- NA       
df$l2[df$a2 > 3 * 30.4167] <- NA       
df$l3[df$a3 > 3 * 30.4167] <- NA       
df$l4[df$a4 > 3 * 30.4167] <- NA 
summary(df$l1)
summary(df$l2)
summary(df$l3)
summary(df$l4) # No l4

df <- df %>% group_by(studyid, country, subjid) %>%
            mutate(NRecObs=sum(!is.na(l1), !is.na(l2), !is.na(l3), !is.na(l4))) %>%
            filter(NRecObs>0) %>%
            mutate(recSum=sum(l1,l2,l3,l4, na.rm=T),
                   recZ = recSum/NRecObs)
summary(df$recSum)
summary(df$NRecObs)
summary(df$recZ)


df <- calc.ci.agecat(df, range=6)
df$agecat <- as.character(df$agecat)
df$agecat[df$wasting_episode=="Born Wasted"] <- "Birth"
#df$agecat[df$agecat %in% c("12-18 months", "18-24 months")] <- "12-24 months"
df <- df %>% filter(agecat!="18-24 months")
df$agecat <- factor(df$agecat, levels=c("Birth", "0-6 months", "6-12 months", "12-18 months"))
table(df$agecat)

df <- df %>% group_by(agecat) %>% mutate(medianRecZ=median(recZ))




rec_density_plot = ggplot(df,aes(x=recZ, fill = agecat)) + 
  geom_density(alpha=0.5) + 
  facet_wrap(~agecat) +
  geom_vline(aes(xintercept = medianRecZ)) +
  geom_text(aes(x=medianRecZ+0.4, y=0.75, label=(round(medianRecZ,2)))) +
  xlab("Mean Weight-for-age Z-score within 3 months of recovery")+
  scale_y_discrete(expand = c(0.01, 0)) +
  scale_x_continuous(breaks = seq(-5, 3.5, 1), 
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_manual(values=rep(tableau10[3], 4)) +
  coord_cartesian(xlim=c(-3,2))
rec_density_plot

ggsave(rec_density_plot, file="U:/ki-longitudinal-manuscripts/figures/wasting/fig_wast_rec_dist_hist.png", width=8, height=5)





#Create violin plot alternative
df <- df %>% group_by(agecat) %>% 
  mutate(firstMedianRecZ=medianRecZ,
         firstMedianRecZ=ifelse(studyid==first(studyid) & 
                                subjid==first(subjid) &
                                agedays==first(agedays), firstMedianRecZ,NA))

rec_violin_plot = ggplot(df,aes(x=agecat, y=recZ, fill = agecat)) + 
  geom_violin(alpha=0.5) + 
   geom_point(aes(y = firstMedianRecZ)) +
   geom_text(aes(y=firstMedianRecZ+0.2,  label=(round(firstMedianRecZ,2)))) +
   ylab("Mean Weight-for-length Z-score within 3 months of recovery")+
   xlab("Age at wasting episode onset")+
  # scale_y_discrete(expand = c(0.01, 0)) +
  # scale_x_continuous(breaks = seq(-5, 3.5, 1), 
  #                    labels = seq(-5, 3.5, 1)) +
   geom_hline(yintercept = -2, linetype="dashed") +
   scale_fill_manual(values=rep(tableau10[3], 4)) +
   coord_cartesian(ylim=c(-3,2))
rec_violin_plot

ggsave(rec_violin_plot, file="U:/ki-longitudinal-manuscripts/figures/wasting/fig_wast_rec_dist_violin.png", width=8, height=5)


