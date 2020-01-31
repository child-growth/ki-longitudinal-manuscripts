
#-----------------------------------------
# Process data for seasonal difference figures
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
library(lmtest)

d <- readRDS(paste0(ghapdata_dir,"/seasonality_data.rds"))
d <- d %>% filter(measurefreq=="monthly")

d$region[d$region=="Asia"] <- "South Asia"
d$region <- factor(d$region, levels=c("Africa", "Latin America", "South Asia"))


d$cohort <- paste0(d$studyid, " ", d$country)

d$month <- floor(d$jday/30.417) + 1
d$birthmonth <- floor(d$birthday/30.417) + 1
table(d$month)
table(d$birthmonth)

#Monsoon is assumed to be June-September
#d$monsoon <- factor(ifelse(d$month > 4 & d$month < 11, "leaving monsoon", "entering monsoon"))
d$monsoon <- factor(ifelse(d$month > 5 & d$month < 10, "leaving monsoon", "entering monsoon"))

d <- d %>% filter(region=="South Asia")



mlen <- 30.417
d$birthcat <- cut(d$birthmonth, breaks=c(0, 3, 6, 9, 365), labels=c("Born Jan-Mar","Born Apr-June","Born Jul-Sept","Born Oct-Dec"))
table(d$birthcat)

d <- d %>% group_by(birthcat) %>% mutate(meanZ=mean(whz), prev=mean(whz < -2))

#Mark each year and season
d$studyyear <- factor(floor(d$studyday/365) + 1, labels = c("Year 1","Year 2","Year 3"))
d$studyseason <- factor(paste0(d$studyyear,"-", d$monsoon))


# Note: need to calculate WLZ change over seasons 
# (Summarize in boxplots)
d$season_change <- NA
# d$season_change[d$monsoon=="Not monsoon"] <- "Entering monsoon season"
# d$season_change[d$monsoon=="Monsoon"] <- "Leaving monsoon season"
# d$season_change <- factor(d$season_change, levels=c("Entering monsoon season", "Leaving monsoon season"))

#Make sure the inter-monsoon periods have the same category
monsoon_timing <- d %>% group_by(monsoon, studyyear) %>% summarize(mean_age = mean(studyday))

d$studyseason <- as.character(d$studyseason)
d$studyseason[d$studyseason=="Year 1-entering monsoon" & d$studyday > monsoon_timing$mean_age[1]] <- "Year 2-entering monsoon"
d$studyseason[d$studyseason=="Year 2-entering monsoon" & d$studyday > monsoon_timing$mean_age[2]] <- "Year 3-entering monsoon"
d$studyseason <- factor(d$studyseason, levels=c("Year 1-entering monsoon", "Year 1-leaving monsoon", 
                                                "Year 2-entering monsoon", "Year 2-leaving monsoon", 
                                                "Year 3-entering monsoon", "Year 3-leaving monsoon"))

#Create category to summarize mean WLZ based on season and birthcat
d$studyseason_birthcat <- factor(interaction(d$studyseason, d$birthcat))
table(d$studyseason_birthcat)
table(d$birthcat, d$studyseason)



#Line up season category based on which number season it is by child age (child'd first monsoon, etc.)
d$childseason <- d$studyseason
d$childseason[d$birthcat=="Born Oct-Dec"] <- gsub("Year 2-entering monsoon","Year 1-entering monsoon",d$childseason[d$birthcat=="Born Oct-Dec"])
d$childseason[d$birthcat=="Born Oct-Dec"] <- gsub("Year 2-leaving monsoon","Year 1-leaving monsoon",d$childseason[d$birthcat=="Born Oct-Dec"])
d$childseason[d$birthcat=="Born Oct-Dec"] <- gsub("Year 3-entering monsoon","Year 2-entering monsoon",d$childseason[d$birthcat=="Born Oct-Dec"])
d$childseason[d$birthcat=="Born Oct-Dec"] <- gsub("Year 3-leaving monsoon","Year 2-leaving monsoon",d$childseason[d$birthcat=="Born Oct-Dec"])

d$childseason <- gsub("Year 1-entering monsoon","Entering 1st monsoon",d$childseason)
d$childseason <- gsub("Year 1-leaving monsoon","Leaving 1st monsoon",d$childseason)
d$childseason <- gsub("Year 2-entering monsoon","Entering 2nd monsoon",d$childseason)
d$childseason <- gsub("Year 2-leaving monsoon","Leaving 2nd monsoon",d$childseason)
d$childseason <- gsub("Year 3-entering monsoon","Entering 3rd monsoon",d$childseason)
d$childseason <- gsub("Year 3-leaving monsoon","Leaving 3rd monsoon",d$childseason)

d$childseason <- factor(d$childseason, levels=unique(d$childseason))

d$childseason_birthcat <- factor(interaction(d$childseason, d$birthcat))
d$childseason_birthcat <- factor(d$childseason_birthcat, levels=unique(d$childseason_birthcat))
table(d$childseason_birthcat)


#Test interaction by comparing models with and without interaction terms
Nstudies <- length(unique(d$cohort))
LRp <- data.frame(cohort=unique(d$cohort), p=rep(NA, Nstudies))
for(i in 1:Nstudies){
  fit_main <- glm(whz ~ birthcat+childseason , data=d[d$cohort==unique(d$cohort)[i],])
  fit_int <- glm(whz ~ birthcat*childseason , data=d[d$cohort==unique(d$cohort)[i],])
  LRp[i,2] <- lrtest(fit_main, fit_int)[2, 5]
}
LRp




#Meta-analysis of p-values:
#https://stats.stackexchange.com/questions/168181/r-package-for-combining-p-values-using-fishers-or-stouffers-method
library(metap)
allmetap(LRp$p, method="all")

#Count number of children
d %>% filter(agedays < 24 * 30.4167) %>%
  group_by(studyid, country, subjid) %>% 
  group_by(region) %>%
  summarize(nobs=n(), nchild=length(unique(paste0(studyid, country, subjid))), nstudies = length(unique(paste0(studyid, country))))



#Summarize change by monsoon season 
df <- d %>% group_by(studyid, country, subjid, birthcat, childseason, childseason_birthcat) %>%
  summarize(age1=mean(agedays), wlz1=mean(whz)) %>%
  group_by(studyid, country, subjid, birthcat) %>% arrange(studyid, country, subjid, birthcat, age1) %>%
  mutate(age2=lead(age1), wlz2=lead(wlz1), wlz_diff=wlz2-wlz1) %>%
  group_by(studyid, country, birthcat, childseason, childseason_birthcat) %>%
  summarize(nmeas=sum(!is.na(wlz_diff)), meandiff=mean(wlz_diff, na.rm=T), vardiff=var(wlz_diff, na.rm=T),
            mean_age1=mean(age1, na.rm=T), mean_age2=mean(age2, na.rm=T)) %>%
  filter(!is.na(vardiff)) %>% filter(!is.na(childseason))
df
dim(df)

# df <- d %>% group_by(studyid, country, birthcat, childseason, childseason_birthcat) %>% 
#   summarize(age1=mean(agedays), wlz1=mean(whz), sd1=sd(whz), n1=n()) %>%
#   group_by(studyid, country, birthcat) %>% arrange(studyid, country, birthcat, age1) %>%
#   mutate(age2=lead(age1), wlz2=lead(wlz1), sd2=lead(sd1), n2=lead(n1)) %>% filter(!is.na(childseason)) #%>%
#   #filter(!(n1 < 10 | n2 < 10))
# df
# dim(df)


df <- droplevels(df)


#T-test of differences over seasonal change, by birth cohorts 
#ki.ttest(data=df, y=, levels, ref, comp)

#Pool seasonal changes across cohorts
# fit.md.rma <- function(data,age,y1i,sd1i,n1i,y2i,sd2i,n2i){
#   cat(age,"\n")
#   data=filter(data,agecat==age)
#   
#   fit <- NULL
#   try(fit <- rma(m1i=data[[y1i]], sd1i=data[[sd1i]], n1i=data[[n1i]],m2i=data[[y2i]], sd2i=data[[sd2i]], n2i=data[[n2i]], method="REML", measure = "MD"))
#   if(is.null(fit)){try(fit <- rma(m1i=data[[y1i]], sd1i=data[[sd1i]], n1i=data[[n1i]],m2i=data[[y2i]], sd2i=data[[sd2i]], n2i=data[[n2i]], method="ML", measure = "MD"))}
#   if(is.null(fit)){try(fit <- rma(m1i=data[[y1i]], sd1i=data[[sd1i]], n1i=data[[n1i]],m2i=data[[y2i]], sd2i=data[[sd2i]], n2i=data[[n2i]], method="DL", measure = "MD"))}
#   if(is.null(fit)){try(fit <- rma(m1i=data[[y1i]], sd1i=data[[sd1i]], n1i=data[[n1i]],m2i=data[[y2i]], sd2i=data[[sd2i]], n2i=data[[n2i]], method="HE", measure = "MD"))}
#   
#   out = data %>%
#     ungroup() %>%
#     summarise(nstudies=length(unique(studyid)),
#               nmeas_t1=sum(data[[n1i]][agecat==age]),
#               nmeas_t2=sum(data[[n2i]][agecat==age])) %>%
#     mutate(agecat=age, birthcat=data$birthcat[1], childseason=data$childseason[1], 
#            mean_age1=data$age1[1], mean_age2=data$age2[1],
#            est=fit$beta, se=fit$se, lb=fit$ci.lb, ub=fit$ci.ub)
#   return(out)
# }

# estimate random effects, format results
# df$agecat <- df$childseason_birthcat
# whz.res=lapply((levels(df$childseason_birthcat)),function(x) 
#   fit.md.rma(data=df, n1i="n1", y1i="wlz1", sd1i="sd1", n2i="n2", y2i="wlz2", sd2i="sd2",age=x))
# whz.res=as.data.frame(rbindlist(whz.res))
# whz.res


fit.cont.rma <- function(data,age,yi,vi,ni,nlab){
  cat(age,"\n")
  data=filter(data,agecat==age)
  
  fit <- NULL
  try(fit <- rma(mi=data[[yi]], sdi=sqrt(data[[vi]]), ni=data[[ni]], method="REML", measure = "MN"))
  if(is.null(fit)){try(fit <- rma(mi=data[[yi]], sdi=sqrt(data[[vi]]), ni=data[[ni]], method="ML", measure = "MN"))}
  if(is.null(fit)){try(fit <- rma(mi=data[[yi]], sdi=sqrt(data[[vi]]), ni=data[[ni]], method="DL", measure = "MN"))}
  if(is.null(fit)){try(fit <- rma(mi=data[[yi]], sdi=sqrt(data[[vi]]), ni=data[[ni]], method="HE", measure = "MN"))}
  
  out = data %>%
    ungroup() %>%
    summarise(nstudies=length(unique(studyid)),
              nmeas=sum(data[[ni]][agecat==age])) %>%
    mutate(agecat=age, birthcat=data$birthcat[1], childseason=data$childseason[1], 
           mean_age1=data$mean_age1[1], mean_age2=data$mean_age2[1],
           est=fit$beta, se=fit$se, lb=fit$ci.lb, ub=fit$ci.ub,
           nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),
                          " ",nlab),
           nstudy.f=paste0("N=",nstudies," studies"))
  return(out)
}



df$agecat <- df$childseason_birthcat




# estimate random effects, format results
whz.res=lapply((levels(df$childseason_birthcat)),function(x) 
  fit.cont.rma(data=df, ni="nmeas", yi="meandiff", vi="vardiff",age=x, nlab="children"))
whz.res=as.data.frame(rbindlist(whz.res))
whz.res$childseason_birthcat = levels(df$childseason_birthcat)
# whz.res$birthcat <- str_split(as.character(whz.res$childseason_birthcat), pattern="monsoon.", simplify = T)[,2]
# whz.res$childseason <- str_split(as.character(whz.res$childseason_birthcat), pattern=".Born", simplify = T)[,1]
# whz.res$childseason <- factor(whz.res$childseason, levels = unique(whz.res$childseason))

whz.res$est=as.numeric(whz.res$est)
whz.res$lb=as.numeric(whz.res$lb)
whz.res$ub=as.numeric(whz.res$ub)
whz.res$ptest.f=sprintf("%0.0f",whz.res$est)
whz.res$birthcat <- factor(whz.res$birthcat, levels=unique(whz.res$birthcat))

whz.res$age_label <- paste0(round(whz.res$mean_age1/30.4167)," -> ",round(whz.res$mean_age2/30.4167))

#Combine age with seasonal change for X-axis label
whz.res$childseason_label <- paste0(whz.res$childseason, ", ", whz.res$age_label)



pdiff <- ggplot(whz.res,aes(y=est,x=childseason)) +
  geom_errorbar(aes(color=birthcat, ymin=lb, ymax=ub), width = 0) +
  geom_point(aes(fill=birthcat, color=birthcat), size = 2) +
  geom_hline(yintercept = 0, linetype="dashed") +
  #geom_text(aes(x = childseason, y = rep(c(1.2,1),8), label = age_label), hjust = 1) +
  geom_text(aes(x = childseason, y = 0.9, label = age_label), hjust = 0.5, size=4) +
  scale_color_manual(values=tableau10[c(5,7,9,10)]) +
  xlab("Season change")+
  ylab("Mean WLZ change") +
  #scale_x_discrete(sec.axis = dup_axis(trans = ~., name = waiver(), breaks = waiver())) +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
  theme(strip.text = element_text(size=18, margin = margin(t = 0))) +
  theme(axis.text.x = element_text(size = 12, angle=45, hjust = 0.75, vjust=0.75)) +
  theme(axis.title.y = element_text(size = 14)) +
  ggtitle("") +
  facet_grid(~birthcat, scales="free_x") #+
  #scale_x_discrete(aes(labels= season_change)) 
pdiff


ggsave(pdiff, file=paste0(here(),"/figures/wasting/seasonal_trajectories_seasondiff.png"), width=14, height=5)

save(pdiff, file="U:/ki-longitudinal-manuscripts/figures/plot objects/season_diff_plot.Rdata")


