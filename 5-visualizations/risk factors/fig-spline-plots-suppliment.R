
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


#Load haz and whz data
d <- readRDS(rf_co_occurrence_path)
d <- d %>% subset(., select=-c(tr,  region, measurefreq, sex))



#merge WLZ outcomes with covariates
cov<-readRDS("/data/KI/UCB-SuperLearner/Manuscript analysis data/FINAL_clean_covariates.rds")


exposures <- c("sex",                   "gagebrth",         "parity",        "birthwt",      
               "birthlen",      "vagbrth",       "hdlvry",        "mage",          "meducyrs",     
               "single",        "fage",          "fhtcm",         "feducyrs",      "trth2o",        "cleanck",       "impfloor",      "nrooms",       
               "nhh",           "nchldlt5",      "earlybf",       "hfoodsec",      "anywast06",     "pers_wast",     "enstunt",       "enwast",       
               "hhwealth_quart",      "impsan",        "safeh20",       "perdiar6",      "perdiar24",         "predexfd6") 


dim(d)
d <- left_join(d, cov, by=c("studyid","country","subjid"))
dim(d)
d <- d %>% filter(agedays < 24 * 30.4167) 
d <- subset(d, select = -c(id, arm, tr))
dim(d)



#------------------------------------------------------------------------------------------------
# Function to fit splines to all levels of risk factor and create plot
#------------------------------------------------------------------------------------------------


rf_spline_meta <- function(d, Avar, outcome="whz", degree=degree){
  
  d <- d %>% filter(!is.na(!!sym(Avar))) %>% as.data.frame()
  levels=unique(d[[Avar]])
  n_levels=length(levels)
  
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
    scale_color_manual(values=tableau10, name = ( Avar)) +
    scale_fill_manual(values=plotdf, name = ( Avar)) +
    scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                       breaks = 0:12*30.41*2, labels = 0:12*2) +
    xlab("Child age in months") + ylab(paste0("Mean ",outcome)) +
    ggtitle(paste0("Spline curves of ",outcome," stratified by\nlevels of ", Avar)) +
    theme(legend.position ="right")
  
  print(p)
  
  
  
  return(list(p=p, plotdf=plotdf))
}



#------------------------------------------------------------------------------------------------
# Household wealth
#------------------------------------------------------------------------------------------------

Avar="hhwealth_quart"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar="hhwealth_quart", outcome="whz", degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot here:

Avar="hhwealth_quart"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))

#XXXXXX


#------------------------------------------------------------------------------------------------
# Sex
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="sex"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="sex"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#------------------------------------------------------------------------------------------------
# anywast06
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="anywast06"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="anywast06"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#------------------------------------------------------------------------------------------------
# birthlen
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="birthlen"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="birthlen"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# birthwt
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="birthwt"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="birthwt"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# cleanck
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="cleanck"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="cleanck"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# earlybf
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="earlybf"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="earlybf"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# enstunt
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="enstunt"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="enstunt"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# enwast
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="enwast"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="enwast"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))





#------------------------------------------------------------------------------------------------
# fage
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="fage"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="fage"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# feducyrs
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="feducyrs"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="feducyrs"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# fhtcm
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="fhtcm"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="fhtcm"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# gagebrth
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="gagebrth"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="gagebrth"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# hdlvry
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="hdlvry"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="hdlvry"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# hfoodsec
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="hfoodsec"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="hfoodsec"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# impfloor
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="impfloor"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="impfloor"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# impsan
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="impsan"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="impsan"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# mage
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="mage"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="mage"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))





#------------------------------------------------------------------------------------------------
# meducyrs
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="meducyrs"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="meducyrs"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# nchldlt5
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="nchldlt5"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="nchldlt5"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# nhh
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="nhh"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="nhh"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# nrooms
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="nrooms"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="nrooms"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# parity
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="parity"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="parity"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# perdiar6
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="perdiar6"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="perdiar6"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))






#------------------------------------------------------------------------------------------------
# perdiar24
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="perdiar24"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="perdiar24"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))





#------------------------------------------------------------------------------------------------
# pers_wast
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="pers_wast"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="pers_wast"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))





#------------------------------------------------------------------------------------------------
# predexfd6
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="predexfd6"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="predexfd6"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))





#------------------------------------------------------------------------------------------------
# safeh20
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="safeh20"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="safeh20"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))



#------------------------------------------------------------------------------------------------
# single
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="single"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="single"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# trth2o
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="trth2o"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="trth2o"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))




#------------------------------------------------------------------------------------------------
# vagbrth
#------------------------------------------------------------------------------------------------

#Make WHZ plot:

Avar="vagbrth"
degree=6
outcome="whz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))


#Make LAZ plot:

Avar="vagbrth"
degree=6
outcome="haz"

res <- rf_spline_meta(d=d, Avar=Avar, outcome=outcome, degree=6)
print(res[[1]])

ggsave(res[[1]], file=paste0(here(),"/figures/risk-factor/spline-plots-new/",outcome,"-",Avar,"-spline.png"), width=6, height=6)


#Save plot data
saveRDS(res[[2]],  file=paste0(here(),"/figures/risk-factor/figure-data-new/",outcome,"-",Avar,"-spline.RDS"))







  



