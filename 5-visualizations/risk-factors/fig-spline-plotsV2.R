
#Code adapted from 
#https://github.com/alecri/differences-in-mean/blob/master/diff_in_means.R

rm(list = ls())
#source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))

library(dplyr)
library(rms)
library(dosresmeta)

#Plot themes
source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())



#Load haz and whz data
load("U:/ucb-superlearner/data/co-occurrence_data.RData")
d <- d %>% subset(., select=-c(tr))


#merge WLZ outcomes with covariates
cov<-readRDS("U:/ucb-superlearner/Manuscript analysis data/FINAL_clean_covariates.rds")


cov <- cov %>% subset(., select=-c( month, W_gagebrth,    W_birthwt,     W_birthlen,   
                                    W_mage,        W_mhtcm,       W_mwtkg,       W_mbmi,        W_fage,        W_fhtcm,       W_meducyrs,    W_feducyrs,   
                                    W_nrooms,      W_nhh,         W_nchldlt5,    W_parity,         
                                    W_perdiar6,    W_perdiar24))
dim(d)
d <- left_join(d, cov, by=c("studyid","country","subjid"))
dim(d)
d <- d %>% filter(agedays < 24 * 30.4167)
d <- subset(d, select = -c(id, arm, tr))
dim(d)

#Calculate age in months
d$agemonth <- round(d$agedays/30.4167)

#save varnames
#varnames <- colnames(d)[-c(1:11)]

#d <- d[sample(10000),]


df <- d %>% mutate(strata_id = paste0(studyid, country, birthwt)) %>% filter(!is.na(haz)) %>% group_by(strata_id, agemonth) %>% summarise(y=mean(haz), sd=sd(haz), n=n()) %>% filter(n >10)

knots <- quantile(df$agemonth, c(.1, .5, .9))

## Obtaining mean differences, variances, and (co)varinace matrices for the all the studies
cov.md <- by(df, df$strata_id, function(x) covar.smd(y, sd, n, "md", data = x))
df$md <- unlist(lapply(cov.md, function(x) x$y))
df$vmd <- unlist(lapply(cov.md, function(x) x$v))
## Data presented in Table 3
df


df <- df %>% group_by(strata_id) %>% mutate(Nages=n()) %>% ungroup()
summary(df$Nages)

## Dose-response meta-analysis
spl <- dosresmeta(formula = y ~ rcs(agemonth, knots), id = strata_id , sd = sd, n = n, covariance = "md", data = as.data.frame(df))


newdata <- data.frame(agemonth = seq(0, 24, length.out = 100))
pred <- predict(spl, newdata )
colnames(pred)[1] <- "agemonth"
pred$Avar<-"Avar"

p <- ggplot(pred) + 
  geom_line(aes(x=agemonth, y=pred, group=Avar, color=Avar), size=2) +
  geom_ribbon(aes(x=agemonth,ymin=ci.lb, ymax=ci.ub, group=Avar, color=Avar,  fill=Avar), alpha=0.3, color=NA)
p

# +
#   scale_color_manual(values=rep(tableau10,2), name = paste0("Levels of ", Aname))+
#   scale_fill_manual(values=rep(tableau10,2), name = paste0("Levels of ", Aname))+
#   scale_x_continuous(limits=c(1,730), expand = c(0, 0),
#                      breaks = 0:24*30.41, labels = 0:24) +
#   xlab("Child age in months") + ylab("Mean WLZ") + 
#   ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Aname)) +
#   theme(legend.position = "right")









#Add RF labels
d <- d %>% rename(
  `Gender`=sex ,
  `Enrolled wasted`= enwast,
  `Gestational age at birth`= gagebrth,
  `Exclusive or Predominant breastfeeding under 6 months`= predexfd6,
  `Mother's age`= mage,
  `Mother's height`= mhtcm,
  `Mother's weight`= mwtkg,
  `Mother's BMI`= mbmi,
  `Mother's education`= meducyrs,
  `Birth order`= parity,
  `Household food security`= hfoodsec,
  `Number of children <5 in household`= nchldlt5,
  `Household wealth`= hhwealth_quart,
  `Father's age`= fage,
  `Father's height`= fhtcm,
  `Birthweight (kg)`= birthwt,
  `Birth length (cm)`= birthlen,
  `Vaginal birth`= vagbrth,
  `Child delivered at home`= hdlvry,
  `Single parent`= single,
  `Number of rooms in household`= nrooms,
  `Number of people in household`= nhh,
  `Maternal education quartile`= meducyrs,
  `Paternal education quartile`= feducyrs,
  `Any wasting before 6 months age`= anywast06,
  `Persistent wasting before 6 months age`= pers_wast,
  `Treats drinking water`= trth2o,
  `Clean cooking fuel usage`= cleanck,
  `Improved floor`= impfloor,
  `Improved sanitation`= impsan,
  `Safe water source`= safeh20,
  `Quartile of diarrhea longitudinal\nprevalence under 6 months`= perdiar6,
  `Quartile of diarrhea longitudinal\nprevalence under 24 months`= perdiar24,
  `Breastfeed within an hour of birth`= earlybf,
  `Predominant breastfeeding under 3 months`= predfeed3,
  `Predominant breastfeeding from 3-6 months`= predfeed36,
  `Predominant breastfeeding under 6 months`= predfeed6,
  `Exclusive breastfeeding under 3 months`= exclfeed3,
  `Exclusive breastfeeding from 3-6 months`= exclfeed36,
  `Exclusive breastfeeding under 6 months`= exclfeed6,
  #`Month of measurement`= month,
  `Birth month`= brthmon,
  `Enrolled stunted` = enstunt,
  `Enrolled wasted` = enwast)



#Strip grant identifier and add country
d$studyid <- gsub("^k.*?-" , "", d$studyid)
d$studyid <- paste0(d$studyid, ", ", paste0(substring(as.character(d$country),1,1), tolower(substring(as.character(d$country),2))))
d$studyid <- gsub("Tanzania, united republic of", "Tanzania", d$studyid)
d$studyid <- gsub("africa", "Africa", d$studyid)


plot_list_whz <- list()
for(i in 12:ncol(d)){
  df <- d[!is.na(d[,i]),]
  Aname <- colnames(df)[i]
  colnames(df)[i] <- "Avar"
  
  plotdf <- NULL
  for(j in 1:length(levels(df$Avar))){
    cat=levels(factor(df$Avar))[j]
    di <- filter(df, Avar==cat)
    fiti<-NULL
    for(k in 1:10){
      fitk <- mgcv::gam(whz~s(agedays,bs="cr", k=k),data=di)
      if(is.null(fiti)){
        fiti <- fitk
      }else{
        if(summary(fitk)$r.sq > summary(fiti)$r.sq){fiti <- fitk}
      }
    }
    range=min(di$agedays):max(di$agedays)
    agedays=1:(diff(range(range))+1)
    newd <- data.frame(agedays=range)
    fitci <- gamCI(m=fiti,newdata=newd,nreps=1000)
    dfit <- data.frame(Avar=cat,agedays=range, 
                       fit=fitci$fit,fit_se=fitci$se.fit,
                       fit_lb=fitci$lwrS,fit_ub=fitci$uprS)
    plotdf<-rbind(plotdf,dfit)
  }
  
  p <- ggplot() + 
    geom_line(data=plotdf, aes(x=agedays, y=fit, group=Avar, color=Avar), size=2) +
    geom_ribbon(data=plotdf, aes(x=agedays,ymin=fit_lb, ymax=fit_ub, group=Avar, color=Avar,  fill=Avar), alpha=0.3, color=NA) +
    scale_color_manual(values=rep(tableau10,2), name = paste0("Levels of ", Aname))+
    scale_fill_manual(values=rep(tableau10,2), name = paste0("Levels of ", Aname))+
    scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                       breaks = 0:24*30.41, labels = 0:24) +
    xlab("Child age in months") + ylab("Mean WLZ") + 
    ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Aname)) +
    theme(legend.position = "right")
  
  
  plot_list_whz[[i-11]] <- p
  ggsave(p, file=paste0("U:/ki-longitudinal-manuscripts/figures/risk factor/Splines/whz/whz_stat_by_",varnames[i-11],".png"), height=6, width=8)
}

names(plot_list_whz) <- varnames


plot_list_haz <- list()
for(i in 12:ncol(d)){
  df <- d[!is.na(d[,i]),]
  Aname <- colnames(df)[i]
  colnames(df)[i] <- "Avar"
  
  plot_list_haz[[i-11]] <- NULL
  plotdf <- NULL
  for(j in 1:length(levels(df$Avar))){
    cat=levels(factor(df$Avar))[j]
    di <- filter(df, Avar==cat)
    fiti <- mgcv::gam(haz~s(agedays,bs="cr", k=10),data=di)
    range=min(di$agedays):max(di$agedays)
    agedays=1:(diff(range(range))+1)
    newd <- data.frame(agedays=range)
    fitci <- gamCI(m=fiti,newdata=newd,nreps=1000)
    dfit <- data.frame(Avar=cat,agedays=range, 
                       fit=fitci$fit,fit_se=fitci$se.fit,
                       fit_lb=fitci$lwrS,fit_ub=fitci$uprS)
    plotdf<-rbind(plotdf,dfit)
  }
  
  p <- ggplot() + 
    geom_line(data=plotdf, aes(x=agedays, y=fit, group=Avar, color=Avar), size=2) +
    geom_ribbon(data=plotdf, aes(x=agedays,ymin=fit_lb, ymax=fit_ub, group=Avar, color=Avar,  fill=Avar), alpha=0.3, color=NA) +
    scale_color_manual(values=rep(tableau10,2), name = paste0("Levels of ", Aname))+
    scale_fill_manual(values=rep(tableau10,2), name = paste0("Levels of ", Aname))+
    scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                       breaks = 0:24*30.41, labels = 0:24) +
    xlab("Child age in months") + ylab("Mean LAZ") + 
    ggtitle(paste0("Spline curves of LAZ, stratified by\nlevels of ", Aname)) +
    theme(legend.position = "right")
  
  
  plot_list_haz[[i-11]] <- p
  ggsave(p, file=paste0("U:/ki-longitudinal-manuscripts/figures/risk factor/Splines/haz/haz_stat_by_",varnames[i-11],".png"), height=6, width=8)
}

names(plot_list_haz) <- varnames

save(plot_list_whz, plot_list_haz, file="U:/ki-longitudinal-manuscripts/results/rf_strat_spline_plot_objects.Rdata")

