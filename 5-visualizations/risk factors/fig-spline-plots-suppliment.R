
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


#Load LAZ and WLZ data
d <- readRDS(rf_co_occurrence_path)
d <- d %>% subset(., select=-c(tr,  region, measurefreq, sex))



#merge WLZ outcomes with covariates
cov<-readRDS("/data/KI/UCB-SuperLearner/Manuscript analysis data/FINAL_clean_covariates.rds")

dim(d)
d <- left_join(d, cov, by=c("studyid","country","subjid"))
dim(d)
d <- d %>% filter(agedays < 24 * 30.4167) 
d <- subset(d, select = -c(id, arm, tr))
dim(d)

#clean up labels
title_vec <-
  c("sex","Sex",
    "enwast","Enrolled wasted",
    "enstunt","Enrolled stunted",
    "gagebrth","Gestational age at birth",
    "predexfd6","Excl/Pred breastfed <6mo.",
    "mage","Mother's age",
    "mhtcm","Mother's height",
    "mwtkg","Mother's weight",
    "mbmi","Mother's BMI",
    "meducyrs","Mother's education",
    "feducyrs","Father's education",
    "parity","Birth order",
    "hfoodsec","HH food security",
    "nchldlt5", "# of children <5 in HH",
    "hhwealth_quart","HH wealth",
    "fage","Father's age",
    "fhtcm","Father's height",
    "birthwt","Birthweight (kg)",
    "birthlen","Birth length (cm)",
    "vagbrth","Vaginal birth",
    "hdlvry","Child delivered at home",
    "single","Single parent",
    "nrooms","# of rooms in HH",
    "nhh","# of people in HH",
    "anywast06","Any wasting  <6 mo.",
    "pers_wast","Persistent wasting  <6 mo.",
    "trth2o","Treats drinking water",
    "cleanck","Clean cooking fuel usage",
    "impfloor","Improved floor",
    "impsan","Improved sanitation",
    "safeh20","Safe water source",
    "perdiar6","Diarrhea <6 mo. (% days)",
    "perdiar24","Diarrhea <24 mo.  (% days)",
    "earlybf","Breastfed hour after birth",
    "predfeed3","Predominant breastfeeding under 3 mo.",
    "predfeed36","Predominant breastfeeding from 3-6 mo.",
    "predfeed6","Predominant breastfeeding under 6 mo.",
    "exclfeed3","Exclusive breastfeeding under 3 mo.",
    "exclfeed36","Exclusive breastfeeding from 3-6 mo.",
    "exclfeed6","Exclusive breastfeeding under 6 mo.",
    "month","Month of measurement",
    "brthmon","Birth month",
    "lag_WLZ_quart","Prior WLZ",
    "rain_quartile","Rain quartile")

#set exposures
exposures <- c("sex",                   "gagebrth",         "parity",        "birthwt",      
               "birthlen",      "vagbrth",       "hdlvry",        "mage",          "meducyrs",     
               "single",        "fage",          "fhtcm",         "feducyrs",      "trth2o",        "cleanck",       "impfloor",      "nrooms",       
               "nhh",           "nchldlt5",      "earlybf",       "hfoodsec",      "anywast06",     "pers_wast",     "enstunt",       "enwast",       
               "hhwealth_quart",      "impsan",        "safeh20",       "perdiar6",      "perdiar24",         "predexfd6") 

colnames(d)[which(colnames(d)=="haz")] <- "LAZ"
colnames(d)[which(colnames(d)=="whz")] <- "WLZ"

#------------------------------------------------------------------------------------------------
# Function to fit splines to all levels of risk factor and create plot
#------------------------------------------------------------------------------------------------


rf_spline_meta <- function(d, Avar, outcome="WLZ", degree=degree){
  
  d <- d %>% filter(!is.na(!!sym(Avar))) %>% as.data.frame()
  levels=unique(d[[Avar]])
  n_levels=length(levels)
  title <- title_vec[which(title_vec==Avar)+1]
  
  predlist <- list()
  plotdflist <- list()
  for(i in 1:n_levels){
    predlist[[i]] <- spline_meta(d[d[,Avar]==levels[i],], Y=outcome, Avar=Avar, df=degree)
    plotdflist[[i]] <- create_plotdf(predlist[[i]], overall=T, stratlevel=levels[i])
  }
  
  names(plotdflist) <- levels
  plotdf <- data.frame(Avar=Avar, bind_rows(plotdflist))

  offsetZ <- offset_fun(d, Y=outcome, Avar=Avar)


  plotdf <- left_join(plotdf, offsetZ, by="level")
  plotdf <- plotdf %>%
    mutate(est= est + offset,
           ci.lb= ci.lb + offset,
           ci.ub= ci.ub + offset)

  
  
  p <- ggplot() +
    geom_line(data=plotdf, aes(x=agedays, y=est, group=level, color=level), size=1.25) +
    scale_color_manual(values=tableau10, name = "Exposure\nLevel") +
    scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                       breaks = 0:12*30.41*2, labels = 0:12*2) +
    xlab("Child age in months") + ylab(paste0("Mean ",outcome)) +
    ggtitle(paste0("Spline curves of ",outcome," stratified by\nlevels of exposure: ", title)) +
    theme(legend.position ="right")
  
  print(p)
  
  
  
  return(list(p=p, plotdf=plotdf))
}



#------------------------------------------------------------------------------------------------
# Household wealth
#------------------------------------------------------------------------------------------------

Avar="hhwealth_quart"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar="hhwealth_quart", outcome="WLZ", degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot here:

Avar="hhwealth_quart"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))

#XXXXXX


#------------------------------------------------------------------------------------------------
# Sex
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="sex"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="sex"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#------------------------------------------------------------------------------------------------
# anywast06
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="anywast06"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="anywast06"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#------------------------------------------------------------------------------------------------
# birthlen
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="birthlen"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="birthlen"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# birthwt
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="birthwt"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="birthwt"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# cleanck
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="cleanck"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="cleanck"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# earlybf
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="earlybf"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="earlybf"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# enstunt
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="enstunt"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="enstunt"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# enwast
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="enwast"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="enwast"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))





#------------------------------------------------------------------------------------------------
# fage
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="fage"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="fage"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# feducyrs
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="feducyrs"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="feducyrs"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# fhtcm
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="fhtcm"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="fhtcm"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# gagebrth
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="gagebrth"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="gagebrth"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# hdlvry
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="hdlvry"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="hdlvry"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# hfoodsec
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="hfoodsec"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="hfoodsec"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# impfloor
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="impfloor"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="impfloor"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# impsan
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="impsan"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="impsan"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# mage
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="mage"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="mage"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))





#------------------------------------------------------------------------------------------------
# meducyrs
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="meducyrs"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="meducyrs"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# nchldlt5
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="nchldlt5"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="nchldlt5"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# nhh
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="nhh"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="nhh"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# nrooms
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="nrooms"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="nrooms"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# parity
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="parity"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="parity"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# perdiar6
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="perdiar6"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="perdiar6"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))






#------------------------------------------------------------------------------------------------
# perdiar24
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="perdiar24"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="perdiar24"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))





#------------------------------------------------------------------------------------------------
# pers_wast
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="pers_wast"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="pers_wast"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))





#------------------------------------------------------------------------------------------------
# predexfd6
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="predexfd6"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="predexfd6"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))





#------------------------------------------------------------------------------------------------
# safeh20
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="safeh20"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="safeh20"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# single
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="single"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="single"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# trth2o
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="trth2o"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="trth2o"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# vagbrth
#------------------------------------------------------------------------------------------------

#Make WLZ plot:

Avar="vagbrth"
degree=6
outcome="WLZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="vagbrth"
degree=6
outcome="LAZ"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data/",outcome,"-",Avar,"-spline.RDS"))







  



