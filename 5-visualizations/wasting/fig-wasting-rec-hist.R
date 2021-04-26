
#-----------------------------------------
# Process data for wasting traj figures
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


load(paste0(ghapdata_dir, "Wasting_inc_data.RData"))


d <- d_noBW %>% filter(measurefreq=="monthly")

d <- d %>% filter(agedays < 24 * 30.4167)

# Get the mean Z-score after recovery
df <- d %>% select(studyid, country, region, subjid, wasting_episode, episode_id, agedays, wast_rec, whz) %>% group_by(studyid, country, subjid) %>%
      mutate(wasting_episode = lag(wasting_episode),
              l1=lead(whz), l2=lead(whz, 2), l3=lead(whz, 3), l4=lead(whz, 4),
                   a1=lead(agedays)-agedays, a2=lead(agedays, 2)-agedays, 
                   a3=lead(agedays, 3)-agedays, a4=lead(agedays, 4)-agedays) %>% 
  filter(wast_rec==1)

#N obs and childre
df %>% ungroup() %>% summarize(n(), length(unique(paste0(subjid, subjid))))

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

df <- df %>% group_by(agecat) %>% mutate(medianRecZ=median(recZ), 
                                         IQR1 = quantile(whz, probs = c(0.25))[[1]],
                                         IQR2 = quantile(whz, probs = c(0.75))[[1]])



#test if the pooled means are significantly different
pvals <- ki.ttest(data=df, y="recZ", levels="agecat", ref="Birth", comp=c("0-6 months", "6-12 months", "12-18 months"))
pvals

#Compare birth + 0-6 montsh to 6-18 months
df$agecat2 <- as.character(df$agecat)
df$agecat2 <- factor(ifelse(df$agecat2=="Birth"|df$agecat2=="0-6 months", "0-6","6-18"))
pval <- ki.ttest(data=df, y="recZ", levels="agecat2", ref="0-6", comp=c("6-18"))
pval





#Create violin plot 
df <- df %>% group_by(agecat) %>% 
  mutate(firstMedianRecZ=medianRecZ,
         firstMedianRecZ=ifelse(studyid==first(studyid) & 
                                subjid==first(subjid) &
                                agedays==first(agedays), firstMedianRecZ,NA))

rec_violin_plot = ggplot(df,aes(x=agecat, y=recZ, fill = agecat)) + 
  geom_violin(alpha=0.2, draw_quantiles = c(0.25, 0.5, 0.75)) + 
  geom_point(data=df %>% group_by(studyid, agecat) %>% summarize(recZ = mean(recZ)),
             color = "#464646", fill = "#464646",
             size = 1.5,
             position = position_jitter(width = 0.05)) +
  
   geom_text(aes(y=firstMedianRecZ+0.1,  label=(round(firstMedianRecZ,2))), hjust=-1) +
   geom_text(data=pvals, aes(x=comp, y=-3, label=pvalcat, fill = NULL)) +
   ylab("Mean Weight-for-length Z-score\nwithin 3 months of recovery")+
   xlab("Age at wasting episode onset")+
   geom_hline(yintercept = -2, linetype="dashed") +
   scale_fill_manual(values=rep("grey30", 4)) +
   coord_cartesian(ylim=c(-3,2))
rec_violin_plot


# define standardized plot names
rec_violin_name = create_name(
  outcome = "wasting",
  cutoff = 2,
  measure = "recovery",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(rec_violin_plot, file=paste0(BV_dir,"/figures/wasting/fig-", rec_violin_name, ".png"), width=8, height=5)

saveRDS(rec_violin_plot, file=paste0(BV_dir,"/figures/plot-objects/rec_violin_plot_object.rds"))

#Get N's for figure caption
df %>% ungroup() %>% filter(agedays <= 24*30.4167) %>% 
  summarize(N=n(), nchild=length(unique(subjid)), nstudies=length(unique(paste0(studyid,country))))

df %>% group_by(studyid, country) %>% filter(agedays <= 24*30.4167) %>% 
  summarize(N=n(), nchild=length(unique(subjid)), nstudies=length(unique(paste0(studyid,country))))

