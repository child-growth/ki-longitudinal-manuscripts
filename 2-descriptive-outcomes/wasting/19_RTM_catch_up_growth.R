

#https://stats.stackexchange.com/questions/479115/regression-to-the-mean-and-its-formula-in-r
#https://bmcmedresmethodol.biomedcentral.com/articles/10.1186/1471-2288-13-119
rm(list = ls())

source(paste0(here::here(), "/0-config.R"))

#------------------------------------------------------------------
#  Load data
#------------------------------------------------------------------

dfull <- readRDS(wasting_data_path) %>% filter(agedays < 731, studyid %in% monthly_cohorts)
#df <- calc.monthly.agecat(dfull)

dfull$agecat <- cut(dfull$agedays,
                    breaks = c(0:24) * 30.4167 , include.lowest = F,
                    labels = paste0(1:24, " months"))

levels(dfull$agecat)[1] <- "One month"

dfull %>% group_by(studyid, country, agecat) %>%
  summarize(mn=mean(whz, na.rm=T)) %>% arrange(-mn)
 
# dfull <- dfull %>% filter(!is.na(agecat))
# dfull <- dfull %>% group_by(studyid, country, measurefreq, subjid, agecat) %>%
#   summarise(whz=mean(whz, na.rm=T)) %>% ungroup()
# 
# table(dfull$studyid)
# df <- dfull %>% filter(!is.na(whz))
# 
# levels(df$agecat)



# dfull <- dfull %>% filter(studyid=="GMS-Nepal")
# agecats = c("One month","4 months")

#------------------------------------------------------------------
#  RTM functions
#------------------------------------------------------------------

#Get correlations between monthly measures
whz_corr <- function(subjid, whz1, whz2, agecat, sampmean_whz_monthly, popmean_whz_monthly, sd_whz_monthly, var_whz_monthly, N, first_wast){
  rho= cor(whz1, whz2, use="pairwise.complete.obs")
  return(data.frame(subjid, rho, whz1, whz2, agecat, sampmean_whz_monthly, popmean_whz_monthly, sd_whz_monthly, var_whz_monthly, N, first_wast))
}

calc_rtm <- function(d, wast=T){
  d <- d %>% arrange(agecat) %>%
    summarise(first_N=first(N),
              last_N=last(N),
              popmean_pre=first(popmean_pre),
              sampmean_pre=first(sampmean_whz_monthly),
              sampmean_post=last(sampmean_whz_monthly),
              popsd_pre=first(sd_whz_monthly),
              popvar_pre=first(var_whz_monthly),
              mean_rho=mean_rho[1])
  
  d$within_sub_var = (1-d$mean_rho)*d$popvar_pre
  d$between_sub_var = d$mean_rho * d$popvar_pre
  d$coef=d$within_sub_var/sqrt(d$within_sub_var+d$between_sub_var)
  if(wast){
    d$z=(d$popmean_pre+2)/d$popsd_pre
  }else{
    d$z=(-2-d$popmean_pre)/d$popsd_pre
  }
  d$C=dnorm(d$z)/(1-pnorm(d$z))
  d$E_pre = d$popmean_pre-d$C*d$popsd_pre
  d$E_post = d$popmean_pre -(d$C* d$popsd_pre * d$mean_rho)
  d$RTM=d$E_post-d$E_pre
  d$catch_up_growth=ifelse(abs(d$E_post)>abs(d$sampmean_post), "Yes", "No")
  d$catch_up_growth_col=ifelse((d$catch_up_growth=="Yes" & wast) | (d$catch_up_growth=="No" & !wast), "Observed", "Expected")
  
  return(d)
}


# agecats = c("One month","2 months", "3 months", "4 months", "5 months", "6 months")
# agecats = c("One month","3 months")
# agecats = c("6 months", "12 months")
# agecats = c("6 months", "7 months", "8 months", "9 months", "10 months", "11 months", "12 months")

#dfull <- dfull %>% filter(studyid=="CMIN Peru89")

get_rtm_zscores <- function(df,agecats){

  df <- df %>% filter(agecat %in% !!(agecats)) %>%
    group_by(studyid, country, subjid) %>% 
    arrange(studyid, country, subjid, agecat) %>%
    distinct(studyid, country, subjid, agecat, .keep_all = T) 
    
  #only keep children at both ages
  df <- df %>% group_by(studyid, country, subjid) %>% 
    mutate(N=n()) %>% filter(N>1)
  
  
  df <- df %>%
    mutate(lag_whz=lag(whz), first_wast = 1*(first(whz) < -2)) %>% 
    filter(!(agecat==agecats[length(agecats)] & is.na(lag_whz))) %>%
    droplevels(.)
  
  #table(df$first_wast)
  if(length(unique(df$first_wast))==2 & min(table(df$first_wast))>10){
  
  df2 <- df %>%
    group_by(studyid, country, first_wast, agecat) %>% 
    mutate(N=n(), sampmean_whz_monthly=mean(whz)) %>% 
    group_by(studyid, country, agecat) %>% 
    arrange(studyid, country, agecat) %>% 
    mutate(popmean_whz_monthly=mean(whz), sd_whz_monthly=sd(whz), var_whz_monthly=var(whz)) %>% 
    do(whz_corr(.$subjid, .$lag_whz,.$whz, .$agecat, .$sampmean_whz_monthly, .$popmean_whz_monthly, .$sd_whz_monthly, .$var_whz_monthly, .$N, .$first_wast)) 
   
  df2$rho[df2$rho==0] <- NA
  
  df3 <- df2 %>%
    group_by(studyid, country) %>% 
    arrange(studyid, country, agecat) %>%
    mutate(popmean_pre=first(popmean_whz_monthly)) %>% 
    #group_by(studyid, country,  first_wast) %>% need overall correlation
    group_by(studyid, country) %>% 
    mutate(mean_rho=mean(rho, na.rm=T)) %>% 
    arrange(studyid, country,  first_wast, agecat) 
  
  df4 <- df3 %>% group_by(studyid, country, first_wast) %>% 
    do(calc_rtm(d=., wast=.$first_wast[1]==1))
  
  df5 <- df4 %>% 
    filter(first_N>10 & last_N>10) %>%
    ungroup() %>% mutate(median_RTM=median(RTM, na.rm=T)) %>%
    arrange(studyid, country) 
  
  df5$age <- paste0(agecats[1],"-",agecats[2])
  }else{
    df5 <- NULL
  }
  
  return(df5)
}
  




#------------------------------------------------------------------
#  run analysis
#------------------------------------------------------------------
 resfull <- NULL
for(i in list( c("One month","4 months"),
                    c("2 months","5 months"),
                    c("3 months","6 months"),
                    c("4 months","7 months"),
                    c("5 months","8 months"),
                    c("6 months","9 months"),
                    c("7 months","10 months"),
                    c("8 months","11 months"),
                    c("9 months","12 months"),
                    c("10 months","13 months"),
                    c("11 months","14 months"),
                    c("12 months","15 months"),
                    c("13 months","16 months"),
                    c("14 months","17 months"),
                    c("15 months","18 months"),
                    c("16 months","19 months"),
                    c("17 months","20 months"),
                    c("18 months","21 months"),
                    c("19 months","22 months"),
                    c("20 months","23 months"),
                    c("21 months","24 months")
                  )){

    res <- get_rtm_zscores(df=dfull,agecats=i)
    resfull <- bind_rows(resfull, res)
}

# for(i in list( c("One month","2 months","3 months","4 months"),
#                paste0(rep(2:5)," months"),
#                paste0(rep(2:5) + 1," months"),
#                paste0(rep(2:5) + 2," months"),
#                paste0(rep(2:5) + 3," months"),
#                paste0(rep(2:5) + 4," months"),
#                paste0(rep(2:5) + 5," months"),
#                paste0(rep(2:5) + 6," months"),
#                paste0(rep(2:5) + 7," months"),
#                paste0(rep(2:5) + 8," months"),
#                paste0(rep(2:5) + 9," months"),
#                paste0(rep(2:5) + 10," months"),
#                paste0(rep(2:5) + 11," months"),
#                paste0(rep(2:5) + 12," months"),
#                paste0(rep(2:5) + 13," months"),
#                paste0(rep(2:5) + 14," months"),
#                paste0(rep(2:5) + 15," months"),
#                paste0(rep(2:5) + 16," months"),
#                paste0(rep(2:5) + 17," months"),
#                paste0(rep(2:5) + 18," months"),
#                paste0(rep(2:5) + 19," months")
# )){
# 
#   res <- get_rtm_zscores(df=dfull,agecats=i)
#   resfull <- bind_rows(resfull, res)
# }

# #test 
# dcmc <- dfull %>% filter(studyid=="CMC-V-BCS-2002")
# head(dcmc)
# res1 <- get_rtm_zscores(df=dcmc,agecats=c("6 months","9 months"))
# res2 <- get_rtm_zscores(df=dcmc,agecats=c("6 months","7 months","8 months","9 months"))
# 
# 
# res1$mean_rho
# res2$mean_rho
# 
# res1$RTM
# res2$RTM
# 
# res1$sampmean_post
# res1$E_post
# res2$E_post

#------------------------------------------------------------------
#  Format for plot 
#------------------------------------------------------------------
plotdf <- resfull
plotdf$age <- gsub(" months","",plotdf$age)
plotdf$age <- gsub("One month","1",plotdf$age)
plotdf$age = factor(plotdf$age, levels= (c("1-4",
                                              "2-5",
                                              "3-6",
                                              "4-7",
                                              "5-8",
                                              "6-9",
                                              "7-10",
                                              "8-11",
                                              "9-12",
                                              "10-13",
                                              "11-14",
                                              "12-15",
                                              "13-16",
                                              "14-17",
                                              "15-18",
                                              "16-19",
                                              "17-20",
                                              "18-21",
                                              "19-22",
                                              "20-23",
                                              "21-24")))
# plotdf$age = factor(plotdf$age, levels= (c("1-2",
#                                            "2-3",
#                                            "3-4",
#                                            "4-5",
#                                            "5-6",
#                                            "6-7",
#                                            "7-8",
#                                            "8-9",
#                                            "9-10",
#                                            "10-11",
#                                            "11-12",
#                                            "12-13",
#                                            "13-14",
#                                            "14-15",
#                                            "15-16",
#                                            "16-17",
#                                            "17-18",
#                                            "18-19",
#                                            "19-20",
#                                            "20-21",
#                                            "21-22")))
plotdf <- plotdf %>% arrange(age)
plotdf$age <- factor(as.numeric(plotdf$age))

RTM <- plotdf %>% distinct(first_wast, age, median_RTM)


#------------------------------------------------------------------
#  Plot results
#------------------------------------------------------------------

plotdf <- plotdf %>% mutate(cohort=paste0(studyid,"-",country), cgf=ifelse(first_wast ==1,"Wasted","Non-wasted"))

obs <- plotdf %>% subset(., select = c(cohort, age, sampmean_pre, sampmean_post, cgf, catch_up_growth, median_RTM)) %>%
  rename(zscore=sampmean_post) %>% mutate(cat="Observed")
exp <- plotdf %>% subset(., select = c(cohort, age, sampmean_pre, E_post, cgf, catch_up_growth, median_RTM )) %>%
  rename(zscore=E_post ) %>% mutate(cat="Expected")

plotdf1 <- bind_rows(obs, exp)
plotdf1 <- plotdf1 %>% mutate(cgf=factor(cgf, levels=c("Wasted","Non-wasted")))

#Plot updates
#Shorten X-axis labels- done, but just use firt month
#Sort X-axis- done
#Add color to plots based on direction of recovery- done
#Add medians as horizontal lines, colored by direction of effect
#Make a plot of differences
#Add median RTM effect to plot somehow (need to get median stratified by wasting status)

#Fix colors!
p <- ggplot(plotdf1, aes(x=age, y=zscore, group=interaction(cohort,age))) +
  geom_point(aes(color=cat),position=position_dodge(0.5)) +
  geom_line(aes(color=catch_up_growth), position=position_dodge(0.5),  alpha=0.5, size=2) +
  scale_color_manual(values = cbbPalette[c(2,2,3,3)]) +
  facet_wrap(~cgf) +
  geom_hline(yintercept=0) +
  theme(legend.position = "bottom")

p

#plotdf[plotdf$zscore>1,]


plotdf_diff <- plotdf %>% mutate(diff=sampmean_post-E_post, direction=sign(diff))
plotdf_diff_median <- plotdf_diff %>% group_by(age, cgf) %>% 
  summarise(median_diff = median(diff, na.rm=T))

temp <- plotdf_diff[plotdf_diff$diff==max(plotdf_diff$diff, na.rm=T), ] %>% filter(!is.na(studyid))
temp

pdiff <- ggplot(plotdf_diff) +
  geom_point(aes(x=age, y=diff, group=interaction(cohort,age), color=factor(direction)),position=position_dodge(0.5)) +
  #geom_smooth(aes(x=as.numeric(age), y=diff), color="grey30") +
  geom_point(data=plotdf_diff_median, aes(x=age, y=median_diff), shape=95, color="grey30", size=12) +
  #geom_line(aes(color=catch_up_growth), position=position_dodge(0.5),  alpha=0.5) +
  scale_color_manual(values = cbbPalette[c(2,3,2)]) +
  facet_wrap(~cgf ) +
  geom_hline(yintercept=0) +
  theme(legend.position = "none")

pdiff

#Make a plot of pre mean connected to post and expected means
plotdf2_1 <- plotdf1 %>% subset(., select = c(cohort, age,  zscore , cgf, catch_up_growth, cat)) %>% mutate(time="Post") %>%
  group_by(age, cgf, cat) %>% mutate(med_Z=median(zscore, na.rm=T))
plotdf2_2 <- plotdf1 %>% subset(., select = c(cohort, age, sampmean_pre , cgf, catch_up_growth, cat))  %>% rename(zscore=sampmean_pre)  %>% mutate(time="Pre")
plotdf2 <- bind_rows(plotdf2_1, plotdf2_2) %>%
  mutate(time = factor(time, levels=c("Pre","Post")))
                       

#plotdf2 <- plotdf2 %>% filter(cohort=="CMC-V-BCS-2002-INDIA")
plotdf2$cat2 <- plotdf2$cat
plotdf2$cat2[plotdf2$time=="Pre"] <- "Pre"

# p <- ggplot(plotdf2, aes(x=time, y=zscore, group=interaction(cohort,age,cat))) +
#   geom_point(aes(color=cat2 )) +
#   geom_line(aes(color=cat ),  alpha=0.5) +
#   scale_color_manual(values = c(cbbPalette[c(2,3)],"grey50")) +
#   facet_wrap(~cgf) +
#   geom_hline(yintercept=0) +
#   theme(legend.position = "bottom")
# p



p_before_after <- ggplot(plotdf2, aes(x=time, y=zscore, group=interaction(cohort,age,cat))) +
  geom_point(aes(color=cat2 )) +
  geom_point(aes(color=cat, y=med_Z), shape=95, size=16) +
  geom_line(aes(color=cat ),  alpha=0.5) +
  scale_color_manual(values = c(cbbPalette[c(2,3)],"grey50")) +
  facet_grid(cgf~age) +
  geom_hline(yintercept=0) +
  theme(legend.position = "bottom")
p_before_after



ggsave(p, file=paste0(BV_dir,"/figures/wasting/fig-RTM.png"), width=14, height=6)
ggsave(pdiff, file=paste0(BV_dir,"/figures/wasting/fig-RTM-diff.png"), width=14, height=6)
ggsave(p_before_after, file=paste0(BV_dir,"/figures/wasting/fig-RTM-traj.png"), width=14, height=6)




#Combined plot, wasting only

plotdf1_wast <- plotdf1 %>% filter(cgf=="Wasted")
plotdf1_wast$catch_up_growth <- factor(ifelse(plotdf1_wast$catch_up_growth=="Yes", "Observed mean Z-score", "RTM expected mean Z-score"))
plotdf1_wast$cat <- factor(ifelse(plotdf1_wast$cat=="Observed", "Observed mean Z-score", "RTM expected mean Z-score"))


p <- ggplot(plotdf1_wast, aes(x=age, y=zscore, group=interaction(cohort,age))) +
  geom_point(aes(color=cat),position=position_dodge(0.5)) +
  geom_line(aes(color=catch_up_growth), position=position_dodge(0.5),  alpha=0.5, size=1) +
  scale_color_manual(values = cbbPalette[c(3,2)], name = "") +
  geom_hline(yintercept=0) +
  ylab("Mean Z-score after 3 months") + xlab("Age (months) at first measurement") +
  theme(legend.position = "bottom")  +
  guides(color = guide_legend(override.aes = list(linetype = 0)))
p

#plotdf[plotdf$zscore>1,]


# plotdf_diff_median <- plotdf_diff %>% group_by(age, cgf) %>% 
#   summarise(median_diff = median(diff, na.rm=T))

plotdf_diff_wast <- plotdf_diff %>% filter(cgf=="Wasted")
plotdf_diff_median_wast <- plotdf_diff_median %>% filter(cgf=="Wasted")

pdiff <- ggplot(plotdf_diff_wast) +
  geom_point(aes(x=age, y=diff, group=interaction(cohort,age)), position=position_dodge(0.25), color="grey50", alpha=0.5) +
  #geom_smooth(aes(x=as.numeric(age), y=diff), color="grey30") +
  geom_point(data=plotdf_diff_median_wast, aes(x=age, y=median_diff), shape=95, color="grey10", size=12) +
  #geom_line(aes(color=catch_up_growth), position=position_dodge(0.5),  alpha=0.5) +
  geom_hline(yintercept=0) +
  ylab("Difference in Z-scores after 3 months\n(observed minus expected)") + xlab("Age (months) at first measurement") +
  theme(legend.position = "none")

pdiff

combined_plot <- plot_grid(p, pdiff, labels=c("a","b"), ncol=1)

ggsave(combined_plot, file=paste0(BV_dir,"/figures/wasting/fig-RTM-extended-data-plot.png"), width=7, height=10)



# # #save PNG's for Nature
#severe wasting
ggsave(plot = combined_plot, width=7, height=10,
       filename=paste0(here::here(),"/figures/ED-pngs/wasting/ED-fig8.jpeg"), device='jpeg')