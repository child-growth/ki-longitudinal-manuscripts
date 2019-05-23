
#-----------------------------------------
# Process data for seasonal difference figures
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))

source("5-visualizations/0-plot-themes.R")
theme_set(theme_ki())



d <- readRDS("U:/ucb-superlearner/data/seasonality_data.rds")

d$region[d$region=="Asia"] <- "South Asia"
d$region <- factor(d$region, levels=c("Africa", "Latin America", "South Asia"))


d$cohort <- paste0(d$studyid, " ", d$country)

d$month <- floor(d$jday/30.417) + 1
table(d$month)

#Monsoon is assumed to be June-Sept
d$monsoon <- factor(ifelse(d$month > 5 & d$month < 10, "Wet", "Dry"))

d <- d %>% filter(region=="South Asia")




d$birthcat <- cut(d$birthday+1, breaks=c(0, 91, 182, 273, 365), labels=c("Born Jan-Mar","Born Apr-June","Born Jul-Sept","Born Oct-Dec"))
#d$birthcat <- cut(d$birthday+1, breaks=c(0, 61, 122, 183, 243, 304, 365), labels=c("Born Jan-Feb","Born Mar-Apr","Born May-Jun","Born Jul-Aug","Born Sept-Oct","Born Nov-Dec"))

d <- d %>% group_by(birthcat) %>% mutate(meanZ=mean(whz), prev=mean(whz < -2))

#Mark each child year and study season
d$childyear <- factor(floor(d$agedays/365.1) + 1, labels = c("Year 1","Year 2"))
d$studyyear <- factor(floor(d$studyday/365) + 1, labels = c("Year 1","Year 2","Year 3"))
d$studyseason <- factor(paste0(d$studyyear,"-", d$monsoon))
d$childseason <- factor(paste0(d$childyear,"-", d$monsoon))


#Make sure the inter-monsoon periods have the same category
monsoon_timing <- d %>% group_by(monsoon, studyyear) %>% summarize(mean_age = mean(studyday))

d$studyseason <- as.character(d$studyseason)
d$studyseason[d$studyseason=="Year 1-Dry" & d$studyday > monsoon_timing$mean_age[1]] <- "Year 2-Dry"
d$studyseason[d$studyseason=="Year 2-Dry" & d$studyday > monsoon_timing$mean_age[2]] <- "Year 3-Dry"
d$studyseason <- factor(d$studyseason, levels=c("Year 1-Dry", "Year 1-Wet",
                                                "Year 2-Dry", "Year 2-Wet",
                                                "Year 3-Dry", "Year 3-Wet"))

monsoon_timing <- d %>% group_by(monsoon, childyear) %>% summarize(mean_age = mean(agedays))

d$childseason <- as.character(d$childseason)
d$childseason[d$childseason=="Year 1-Dry" & d$agedays > monsoon_timing$mean_age[1]] <- "Year 2-Dry"
d$childseason[d$childseason=="Year 2-Dry" & d$agedays > monsoon_timing$mean_age[2]] <- "Year 3-Dry"
d$childseason <- factor(d$childseason, levels=c("Year 1-Dry", "Year 1-Wet", 
                                                "Year 2-Dry", "Year 2-Wet",
                                                "Year 3-Dry"))
table(d$childseason)
table(d$childseason, d$studyseason, d$birthcat)


#Create category to summarize mean WLZ based on season and birthcat
d$childseason_birthcat <- factor(interaction(d$childseason, d$birthcat))
table(d$childseason_birthcat)
table(d$birthcat, d$childseason)

#Summarize mean WLZ
# df <- d %>% group_by(studyid, country, birthcat, childseason, childseason_birthcat) %>% 
#   summarize(age=mean(agedays), mean_wlz=mean(whz, na.rm=T), var_wlz=var(whz, na.rm=T)) %>%
#   filter(!is.na(var_wlz)) %>% filter(!is.na(childseason))
# df
# 
# df <- droplevels(df)


#Summarize WLZ change
df <- d %>% group_by(studyid, country, subjid, birthcat, childseason, childseason_birthcat) %>% 
  summarize(age1=mean(agedays), wlz1=mean(whz)) %>%
  group_by(studyid, country, subjid, birthcat) %>% arrange(studyid, country, subjid, birthcat, age1) %>%
  mutate(age2=lead(age1), wlz2=lead(wlz1), wlz_diff=wlz2-wlz1) %>%
  group_by(studyid, country, birthcat, childseason, childseason_birthcat) %>% 
  summarize(nmeas=sum(!is.na(wlz_diff)), meandiff=mean(wlz_diff, na.rm=T), vardiff=var(wlz_diff, na.rm=T),
            mean_age1=mean(age1, na.rm=T), mean_age2=mean(age2, na.rm=T)) %>%
  filter(!is.na(vardiff)) %>% filter(!is.na(childseason))
df

df <- droplevels(df)


# Test interactions by calculating linear calculation of interaction pvalues
# 
# #GLM's to get interaction P-values
# fit <- glm(whz ~ birthcat*childseason , data=d)
# summary(fit)
# vcovCL <- sandwichSE(d, fm = fit, cluster = d$subjid)
# rfit <- coeftest(fit, vcovCL)
# lc <- washb_lincom(lc=c(rep(0, 7), rep(1,11)),fit=rfit,vcv=vcovCL, measure="RD")
# lc
# 
# lc=c(rep(0, 8), rep(1,12))
# fit=rfit
# vcv=vcovCL
# measure="RD"
# 
# x <- fit
#   coef <- paste(rownames(x)[which(lc != 0)], collapse = " + ")
# 
#   est <- (t(lc) %*% x[, 1])
#   se <- sqrt(t(lc) %*% vcv %*% lc)
#   Z <- (est)/se
#   P <- 2 * pnorm(-abs(Z))

# #Using washb glm function to get subgroup P-values
# library(washb)
# res2 <- washb_glm(Y=d$whz, tr=d$childseason, W=d["birthcat"], V="birthcat", pair=NULL, id=1:nrow(d), contrast=c("Year 1-Dry", "Year 1-Wet"), family="gaussian")
# res2$fit
# res2$lincom




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

# #T-test of differences over seasonal change, by birth cohorts 
# # DO I NEED TO DO THIS BY COHORT, AND THEN POOL WITH RE?
# ttest_res <- NULL
# for(i in 1:4){
#   dsub=d[d$birthcat==levels(d$birthcat)[i],]
#   dsub <- droplevels(dsub)
#   for(j in 1:(length(levels(dsub$studyseason))-1)){
#     res <- ki.ttest(data=dsub, y="whz", levels="studyseason", ref=levels(dsub$studyseason)[j], comp=levels(dsub$studyseason)[j+1])
#     res <- data.frame(birthcat=levels(dsub$birthcat)[1] , ref=levels(dsub$studyseason)[j] , res)
#     ttest_res <- rbind(ttest_res, res)
#   }
# }
# ttest_res <- ttest_res %>% arrange(ref)
# ttest_res


#Pool seasonal changes across cohorts

#Pool means
# fit.cont.rma <- function(data,age,yi,vi,ni,nlab){
#   cat(age,"\n")
#   data = data[data$agecat==age,]
#   
#   fit <- NULL
#   try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="REML", measure = "GEN"))
#   if(is.null(fit)){try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="ML", measure = "GEN"))}
#   if(is.null(fit)){try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="DL", measure = "GEN"))}
#   if(is.null(fit)){try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="HE", measure = "GEN"))}
#   
#   out = data %>%
#     ungroup() %>%
#     summarise(nstudies=length(unique(studyid)),
#               nmeas=sum(data[[ni]])) %>%
#     mutate(agecat=age, birthcat=data$birthcat[1], childseason=data$childseason[1], 
#            mean_age=data$age[1], 
#            est=fit$beta, se=fit$se, lb=fit$ci.lb, ub=fit$ci.ub,
#            nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),
#                           " ",nlab),
#            nstudy.f=paste0("N=",nstudies," studies"))
#   return(out)
# }


#Pool Z-score differences
fit.cont.rma <- function(data,age,yi,vi,ni,nlab){
  cat(age,"\n")
  data=filter(data,agecat==age)
  
  fit <- NULL
  try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="REML", measure = "GEN"))
  if(is.null(fit)){try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="ML", measure = "GEN"))}
  if(is.null(fit)){try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="DL", measure = "GEN"))}
  if(is.null(fit)){try(fit <- rma(yi=data[[yi]], vi=data[[vi]], method="HE", measure = "GEN"))}
  
  out = data %>%
    ungroup() %>%
    summarise(nstudies=length(unique(studyid)),
              nmeas=sum(data[[ni]][agecat==age])) %>%
    mutate(agecat=age, birthcat=data$birthcat[1], childseason=data$childseason[1], 
           mean_age1=mean(data$mean_age1), mean_age2=mean(data$mean_age2),
           est=fit$beta, se=fit$se, lb=fit$ci.lb, ub=fit$ci.ub,
           nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),
                          " ",nlab),
           nstudy.f=paste0("N=",nstudies," studies"))
  return(out)
}



# estimate random effects, format results
df$agecat <- df$childseason_birthcat
whz.res=lapply((levels(df$childseason_birthcat)),function(x) 
  fit.cont.rma(data=df, ni="nmeas", yi="meandiff", vi="vardiff", nlab="children",age=x))
whz.res=as.data.frame(rbindlist(whz.res))
whz.res

whz.res$est=as.numeric(whz.res$est)
whz.res$lb=as.numeric(whz.res$lb)
whz.res$ub=as.numeric(whz.res$ub)
whz.res$ptest.f=sprintf("%0.0f",whz.res$est)
whz.res$birthcat <- factor(whz.res$birthcat, levels=unique(whz.res$birthcat))

#whz.res$age_label <- round(whz.res$mean_age/30.4167)
whz.res$age_label <- paste0(round(whz.res$mean_age1/30.4167),"->",round(whz.res$mean_age2/30.4167))

#Combine age with seasonal change for X-axis label
whz.res$childseason_label <- paste0(whz.res$childseason, "-", whz.res$age_label)

# Note: need to add in pvalues from ttest comparing before and after WLZ

XXXXXXXXXXXXXXXXXXXXXXXXXXXX
TO DO
Add agelabel to the x-axis label
Change Year1-dry to "entering first monsoon", etc.

p <- ggplot(whz.res,aes(y=est,x=childseason_label)) +
  geom_errorbar(aes(color=birthcat, ymin=lb, ymax=ub), width = 0) +
  geom_point(aes(fill=birthcat, color=birthcat), size = 2) +
  geom_hline(yintercept = 0, linetype="dashed") +
  #geom_text(aes(x = childseason, y = est+0.1, label = age_label), hjust = 1) +
  scale_color_manual(values=tableau10[c(7:10)]) +
  xlab("Season change")+
  ylab("Mean WLZ change") +
  # add space to the left and right of points on x axis
  # to accommodate point estimate labels
  #scale_x_discrete(expand = expand_scale(add = 1)) +
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) +
  theme(strip.text = element_text(size=18, margin = margin(t = 0))) +
  theme(axis.text.x = element_text(size = 12, angle=45, hjust = 0.75, vjust=0.75)) +
  theme(axis.title.y = element_text(size = 14)) +
  ggtitle("") +
  facet_grid(~birthcat, scales="free_x") #+
#scale_x_discrete(aes(labels= season_change)) 
p


#ggsave(p, file=paste0(here(),"/figures/wasting/seasonal_trajectories_seasondiff.png"), width=14, height=5)

