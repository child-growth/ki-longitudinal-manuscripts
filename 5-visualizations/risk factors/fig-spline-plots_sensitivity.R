
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


#Load haz and whz data
d <- readRDS(rf_co_occurrence_path)
d <- d %>% subset(., select=-c(tr))



#merge WLZ outcomes with covariates
cov<-readRDS("/home/andrew.mertens/data/KI/UCB-SuperLearner/Manuscript analysis data/FINAL_clean_covariates.rds")


cov <- cov %>% subset(., select=-c( region, month, W_gagebrth,    W_birthwt,     W_birthlen,   
                                    W_mage,        W_mhtcm,       W_mwtkg,       W_mbmi,        W_fage,        W_fhtcm,       W_meducyrs,    W_feducyrs,   
                                    W_nrooms,      W_nhh,         W_nchldlt5,    W_parity,         
                                    W_perdiar6,    W_perdiar24))
dim(d)
d <- left_join(d, cov, by=c("studyid","country","subjid"))
dim(d)
d <- d %>% filter(agedays < 24 * 30.4167) 
d <- subset(d, select = -c(id, arm, tr))
dim(d)


#Set global parameters
cen=365

#Adapted from: 
#http://www.ag-myresearch.com/2012_gasparrini_statmed.html

spline_meta <- function(d, Y="haz", Avar, overall=F, cen=365, type="bs"){
  
  # LOAD THE PACKAGES (mvmeta PACKAGE IS ASSUMED TO BE INSTALLED)
  require(mvmeta)
  require(dlnm)
  
  colnames(d)[which(colnames(d)==Avar)] <- "Avar"
  colnames(d)[which(colnames(d)==Y)] <- "Y"
  
  d <- d %>% filter(!is.na(Y) & !is.na(Avar))
  
  #Number of exposure levels
  nlevels <- length(unique(d$Avar))
  
  #Number of cohorts
  d$id <- paste0(d$studyid, d$country,"__", d$Avar)
  m <- length(unique(d$id))
  
  d <- droplevels(d)
  
  # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  # NOTE: set bound as average bound across studies and knots based on average quantiles, (same as example script, may need to save studies as a list first)
  # if that fails, set splines specific to each study
  # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  
  
  # DEFINE THE AVERAGE RANGE, CENTERING POINT, DEGREE AND TYPE OF THE SPLINE
  # (THESE PARAMETERS CAN BE CHANGED BY THE USER FOR ADDITIONAL ANALYSES)
  bound <- c(1,730)
  degree <- 3
  df <- 6
  
  
  
  
  # BUILT OBJECTS WHERE RESULTS WILL BE STORED:
  #   ymat IS THE MATRIX FOR THE OUTCOME PARAMETERS
  #   Slist IS THE LIST WITH (CO)VARIANCE MATRICES
  ymat <- matrix(NA,m,df,dimnames=list(unique(d$id),paste("spl",seq(df),sep="")))
  Slist <- vector("list",m)
  names(Slist) <- unique(d$id)
  
  ####################################################################
  # RUN THE FIRST-STAGE ANALYSIS
  
  for(i in 1:m){
    
    # PRINT ITERATION
    cat(i,"")
    
    # LOAD
    data <- d[d$id==unique(d$id)[i],]
    
    
    # CREATE THE SPLINE
    bt <- onebasis(data$agedays,fun=type,
                   degree=degree, 
                   df=df)
    
    # RUN THE MODEL
    #Note: add cv cross-validation
    model <- glm(Y ~ bt,family=gaussian(), data)
    
    # EXTRACT AND SAVE THE RELATED COEF AND VCOV
    predbt <- NULL
    try(predbt <- crosspred(bt,model,cen=cen))
    if(!is.null(predbt)){
      ymat[i,1:length(predbt$coef)] <- predbt$coef
      Slist[[i]] <- predbt$vcov
    }
  }
  
  Slist <- Filter(Negate(is.null), Slist)
  #Drop missing columns
  ymat<-ymat[!is.na(ymat[,1]),]
  #drop missing rows
  ymat<-ymat[, colSums(is.na(ymat)) != nrow(ymat)]
  
  ####################################################################
  # PERFORM MULTIVARIATE META-ANALYSIS
  ####################################################################
  
  
  # 1) MULTIVARIATE META-ANALYSIS
  if(overall){
    mv <- mvmeta(ymat,Slist,method="ml")
    
    # PREDICTION FROM SIMPLE META-ANALYSES WITH NO PREDICTORS
    # CENTERED TO SPECIFIC VALUE
    tmean <- seq(bound[1],bound[2],length=30)
    btmean <- onebasis(tmean,fun=type, degree=degree, df=df #,
                       #knots=knots,
                       #Bound=bound
    )
    cp <- crosspred(btmean,coef=coef(mv),vcov=vcov(mv), by=0.1, cen=cen)
    return(cp)
  }else{
    
    # 2) MULTIVARIATE META-REGRESSION - Avar-level has to be study specific predictor
    Avar_lev<- stringr::str_split(rownames(ymat),"__", simplify=T)[,2]
    (mvlat <- mvmeta(ymat~Avar_lev,Slist,method="reml"))
    
    # NB: IN VERSION 0.4.1, CONVERGENCE MAY BE INSPECTED USING THE ARGUMENT:
    #   control=list(showiter=T)
    # NB: LESS STRICT CONVERGENCE CRITERIA, USEFUL FOR HIGH DIMENSIONAL
    #   MODELS, MAY BE SELECTED BY ADDING A reltol ARGUMENT, FOR EXAMPLE:
    #   control=list(showiter=T,reltol=10^-3)
    
    ####################################################################
    # CREATE BASIS FOR PREDICTION
    ####################################################################
    
    # BASIS USED TO PREDICT AGE, EQUAL TO THAT USED FOR ESTIMATION
    #   NOTE: INTERNAL AND BOUNDARY KNOTS PLACED AT SAME VALUES AS IN ESTIMATION
    tmean <- seq(bound[1],bound[2],length=30)
    btmean <- onebasis(tmean,fun=type)
    
    
    ####################################################################
    # PREDICTION FROM MODELS
    ####################################################################
    
    # USE OF crosspred TO PREDICT THE EFFECTS FOR THE CHOSEN VALUES
    
    
    # COMPUTE PREDICTION FOR MULTIVARIATE META-REGRESSION MODELS
    #   1ST STEP: PREDICT THE OUTCOME PARAMETERS FOR SPECIFIC VALUES OF META-PREDICTOR
    #   2ND STEP: PREDICT THE RELATIONSHIP AT CHOSEN VALUES GIVEN THE PARAMETERS
    
    predAvar <- predict(mvlat,data.frame(Avar=factor(unique(d$Avar))),vcov=T)
    predlist <- list()
    for(i in 1:nlevels){
      pred <- crosspred(btmean,coef=predAvar[[i]]$fit,vcov=predAvar[[i]]$vcov, model.link="log",by=0.1,cen=cen)
      predlist[[i]] <- pred 
    }
    names(predlist) <- unique(d$Avar)
    return(predlist)
  }
}


create_plotdf <- function(predlist, overall=F, stratlevel=NULL){
  if(overall){
    df <- data.frame(
      level=stratlevel,
      agedays=as.numeric(rownames(predlist$matfit)),
      est=predlist$matfit[,1],
      se=predlist$matse[,1]
    )
    df <- df %>%
      mutate(ci.lb=est-1.96*se,
             ci.ub=est+1.96*se)
  }else{
    df <- NULL
    for(i in 1:length(predlist)){
      temp <- data.frame(
        level=names(predlist)[i],
        agedays=as.numeric(rownames(predlist[[i]]$matfit)),
        est=predlist[[i]]$matfit[,1],
        se=predlist[[i]]$matse[,1]
      )
      temp <- temp %>%
        mutate(ci.lb=est-1.96*se,
               ci.ub=est+1.96*se)
      df <- rbind(df, temp)
    }
  }
  return(df)    
}


offset_fun <- function(d, Y="haz", Avar, cen=365){
  
  df <- d[!is.na(d[,Avar]),]
  
  df <- df %>% filter(agedays < cen + 30 & agedays > cen - 30) %>% mutate(agecat="first", agecat=factor(agecat)) 
  
  z.summary <- cohort.summary(d=df, var=Y, ci=F, continious=T, severe=F, minN=50, measure="",  strata=c("region","studyid","country","agecat",Avar))
  z.res <- summarize_over_strata(cohort.sum=z.summary, proportion=F, continious=T, measure = "GEN",  method = "REML", strata=c("region","studyid","country","agecat",Avar),  region=F, cohort=F)
  
  z.res <- data.frame(level=z.res[,2], offset=z.res[,5])
  return(z.res)
} 




#------------------------------------------------------------------------------------------------
# WLZ- maternal weight
#------------------------------------------------------------------------------------------------

predlist1 <- spline_meta(d[d$mwtkg==">=58 kg",], Y="whz", Avar="mwtkg", overall=T, cen=cen)
plotdf1 <- create_plotdf(predlist1, overall=T, stratlevel=">=58 kg")
predlist2 <- spline_meta(d[d$mwtkg=="<52 kg",], Y="whz", Avar="mwtkg", overall=T, cen=cen)
plotdf2 <- create_plotdf(predlist2, overall=T, stratlevel="<52 kg")
predlist3 <- spline_meta(d[d$mwtkg=="[52-58) kg",], Y="whz", Avar="mwtkg", overall=T, cen=cen)
plotdf3 <- create_plotdf(predlist3, overall=T, stratlevel="[52-58) kg")
plotdf_wlz_mwtkg <- rbind(plotdf1,plotdf2,plotdf3)

offsetZ_wlz_mwtkg <- offset_fun(d, Y="whz", Avar="mwtkg", cen=cen)


plotdf_wlz_mwtkg <- left_join(plotdf_wlz_mwtkg, offsetZ_wlz_mwtkg, by="level")
plotdf_wlz_mwtkg <- plotdf_wlz_mwtkg %>% 
  mutate(est= est + offset,
         ci.lb= ci.lb + offset,
         ci.ub= ci.ub + offset)

plotdf_wlz_mwtkg <- plotdf_wlz_mwtkg %>% mutate(level = factor(level, levels=c( ">=58 kg", "[52-58) kg", "<52 kg")))


Avarwt="Maternal weight"

purple_color_gradient = c("#7644ff", "#b3adff", "#e4dbff")

p1 <- ggplot() +
  geom_line(data=plotdf_wlz_mwtkg, aes(x=agedays, y=est, group=level, color=level), size=1.25) +
  #geom_ribbon(data=plotdf_wlz_mwtkg, aes(x=agedays,ymin=ci.lb, ymax=ci.ub, group=level, color=level,  fill=level), alpha=0.3, color=NA) +
  scale_color_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_fill_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:12*30.41*2, labels = 0:12*2) +
  scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = seq(-1.2, 0.4, 0.2)) + 
  xlab("Child age in months") + ylab("Mean WLZ") +
  #coord_cartesian(ylim=c(-2,1)) +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avarwt)) +
  theme(legend.position = c(0.8,0.9))

print(p1)




#------------------------------------------------------------------------------------------------
# WLZ- maternal height
#------------------------------------------------------------------------------------------------

predlist1 <- predlist2 <- predlist3 <- NULL

table(d$mhtcm)
predlist1 <- spline_meta(d[d$mhtcm==">=155 cm",], Y="whz", Avar="mhtcm", overall=T)
plotdf1 <- create_plotdf(predlist1, overall=T, stratlevel=">=155 cm")
predlist2 <- spline_meta(d[d$mhtcm=="<151 cm",], Y="whz", Avar="mhtcm", overall=T)
plotdf2 <- create_plotdf(predlist2, overall=T, stratlevel="<151 cm")
predlist3 <- spline_meta(d[d$mhtcm=="[151-155) cm",], Y="whz", Avar="mhtcm", overall=T)
plotdf3 <- create_plotdf(predlist3, overall=T, stratlevel="[151-155) cm")
plotdf_wlz_mhtcm <- rbind(plotdf1,plotdf2,plotdf3)

offsetZ_wlz_mhtcm <- offset_fun(d, Y="whz", Avar="mhtcm")


plotdf_wlz_mhtcm <- left_join(plotdf_wlz_mhtcm, offsetZ_wlz_mhtcm, by="level")
plotdf_wlz_mhtcm <- plotdf_wlz_mhtcm %>% 
  mutate(est= est + offset,
         ci.lb= ci.lb + offset,
         ci.ub= ci.ub + offset)

plotdf_wlz_mhtcm <- plotdf_wlz_mhtcm %>% mutate(level = factor(level, levels=c( ">=155 cm", "[151-155) cm", "<151 cm")))

Avar="Maternal height"

light_blue_color_gradient = c("#0fb3bf", "#83ced3", "#c5e0e2")

p2 <- ggplot() + 
  geom_line(data=plotdf_wlz_mhtcm, aes(x=agedays, y=est, group=level, color=level), size=1.25) +
  #geom_ribbon(data=plotdf_wlz_mhtcm, aes(x=agedays,ymin=ci.lb, ymax=ci.ub, group=level, color=level,  fill=level), alpha=0.3, color=NA) +
  scale_color_manual(values=light_blue_color_gradient, name = paste0( Avar)) +
  scale_fill_manual(values=light_blue_color_gradient, name = paste0( Avar)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:12*30.41*2, labels = 0:12*2) +
  scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = seq(-1.2, 0.4, 0.2)) + 
  xlab("Child age in months") + ylab("Mean WLZ") + 
  #coord_cartesian(ylim=c(-2,1)) +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avar)) +
  theme(legend.position = c(0.8,0.9))
print(p2)


#------------------------------------------------------------------------------------------------
# LAZ- maternal weight
#------------------------------------------------------------------------------------------------

df <- d %>% filter(!is.na(mwtkg))# %>% filter(agedays < 24* 30.4167)
dim(df)
#df %>% group_by(studyid, country, subjid) %>% slice(1) %>% ungroup() %>% summarize(n(), Nstudies=length(unique(paste0(studyid, country))))


predlist1 <- predlist2 <- predlist3 <- NULL


predlist1 <- spline_meta(d[d$mwtkg==">=58 kg",], Y="haz", Avar="mwtkg", overall=T)
plotdf1 <- create_plotdf(predlist1, overall=T, stratlevel=">=58 kg")
predlist2 <- spline_meta(d[d$mwtkg=="<52 kg",], Y="haz", Avar="mwtkg", overall=T)
plotdf2 <- create_plotdf(predlist2, overall=T, stratlevel="<52 kg")
predlist3 <- spline_meta(d[d$mwtkg=="[52-58) kg",], Y="haz", Avar="mwtkg", overall=T)
plotdf3 <- create_plotdf(predlist3, overall=T, stratlevel="[52-58) kg")
plotdf_laz_mwtkg <- rbind(plotdf1,plotdf2,plotdf3)

offsetZ_laz_mwtkg <- offset_fun(d, Y="haz", Avar="mwtkg")


plotdf_laz_mwtkg <- left_join(plotdf_laz_mwtkg, offsetZ_laz_mwtkg, by="level")
plotdf_laz_mwtkg <- plotdf_laz_mwtkg %>% 
  mutate(est= est + offset,
         ci.lb= ci.lb + offset,
         ci.ub= ci.ub + offset)

plotdf_laz_mwtkg <- plotdf_laz_mwtkg %>% mutate(level = factor(level, levels=c( ">=58 kg", "[52-58) kg", "<52 kg")))


Avarwt="Maternal weight"

p3 <- ggplot() + 
  geom_line(data=plotdf_laz_mwtkg, aes(x=agedays, y=est, group=level, color=level), size=1.25) +
  #geom_ribbon(data=plotdf_laz_mwtkg, aes(x=agedays,ymin=ci.lb, ymax=ci.ub, group=level, color=level,  fill=level), alpha=0.3, color=NA) +
  scale_color_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_fill_manual(values=purple_color_gradient, name = paste0( Avarwt)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:12*30.41*2, labels = 0:12*2) +
  scale_y_continuous(limits=c(-2.2, -0.4), breaks = seq(-2.2, -0.4, 0.2), labels = seq(-2.2, -0.4, 0.2)) + 
  xlab("Child age in months") + ylab("Mean LAZ") + 
  #coord_cartesian(ylim=c(-2,1)) +
  ggtitle(paste0("Spline curves of LAZ, stratified by\nlevels of ", Avarwt)) +
  theme(legend.position = c(0.8,0.9))
print(p3)


#------------------------------------------------------------------------------------------------
# LAZ- maternal height
#------------------------------------------------------------------------------------------------

df <- d %>% filter(!is.na(mhtcm))# %>% filter(agedays < 24* 30.4167)
dim(df)
#df %>% group_by(studyid, country, subjid) %>% slice(1) %>% ungroup() %>% summarize(n(), Nstudies=length(unique(paste0(studyid, country))))


predlist1 <- predlist2 <- predlist3 <- NULL

predlist1 <- spline_meta(d[d$mhtcm==">=155 cm",], Y="haz", Avar="mhtcm", overall=T)
plotdf1 <- create_plotdf(predlist1, overall=T, stratlevel=">=155 cm")
predlist2 <- spline_meta(d[d$mhtcm=="<151 cm",], Y="haz", Avar="mhtcm", overall=T)
plotdf2 <- create_plotdf(predlist2, overall=T, stratlevel="<151 cm")
predlist3 <- spline_meta(d[d$mhtcm=="[151-155) cm",], Y="haz", Avar="mhtcm", overall=T)
plotdf3 <- create_plotdf(predlist3, overall=T, stratlevel="[151-155) cm")
plotdf_laz_mhtcm <- rbind(plotdf1,plotdf2,plotdf3)

offsetZ_laz_mhtcm <- offset_fun(d, Y="haz", Avar="mhtcm")


plotdf_laz_mhtcm <- left_join(plotdf_laz_mhtcm, offsetZ_laz_mhtcm, by="level")
plotdf_laz_mhtcm <- plotdf_laz_mhtcm %>% 
  mutate(est= est + offset,
         ci.lb= ci.lb + offset,
         ci.ub= ci.ub + offset)

plotdf_laz_mhtcm <- plotdf_laz_mhtcm %>% mutate(level = factor(level, levels=c( ">=155 cm", "[151-155) cm", "<151 cm")))

Avar="Maternal height"

p4 <- ggplot() + 
  geom_line(data=plotdf_laz_mhtcm, aes(x=agedays, y=est, group=level, color=level), size=1.25) +
  #geom_ribbon(data=plotdf_laz_mhtcm, aes(x=agedays,ymin=ci.lb, ymax=ci.ub, group=level, color=level,  fill=level), alpha=0.3, color=NA) +
  scale_color_manual(values =light_blue_color_gradient, name = paste0( Avar)) +
  scale_fill_manual(values = light_blue_color_gradient, name = paste0( Avar)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:12*30.41*2, labels = 0:12*2) +
  scale_y_continuous(limits=c(-2.2, -0.4), breaks = seq(-2.2, -0.4, 0.2), labels = seq(-2.2, -0.4, 0.2)) + 
  xlab("Child age in months") + ylab("Mean LAZ") + 
  #coord_cartesian(ylim=c(-2,1)) +
  ggtitle(paste0("Spline curves of LAZ, stratified by\nlevels of ", Avar)) +
  theme(legend.position = c(0.8,0.9))
print(p4)



#------------------------------------------------------------------------------------------------
# LAZ- maternal BMI
#------------------------------------------------------------------------------------------------

df <- d %>% filter(!is.na(mbmi))
dim(df)
#df %>% group_by(studyid, country, subjid) %>% slice(1) %>% ungroup() %>% summarize(n(), Nstudies=unique(paste0(studyid, country)))

#Normal weight   Underweight 

predlist1 <- spline_meta(d[d$mbmi=="Normal weight",], Y="haz", Avar="mbmi", overall=T, cen=cen)
plotdf1 <- create_plotdf(predlist1, overall=T, stratlevel="Normal weight")
predlist2 <- spline_meta(d[d$mbmi=="Underweight",], Y="haz", Avar="mbmi", overall=T, cen=cen)
plotdf2 <- create_plotdf(predlist2, overall=T, stratlevel="Underweight")

plotdf_laz_mbmi <- rbind(plotdf1,plotdf2)

offsetZ_laz_mbmi <- offset_fun(d, Y="haz", Avar="mbmi", cen=cen)


plotdf_laz_mbmi <- left_join(plotdf_laz_mbmi, offsetZ_laz_mbmi, by="level")
plotdf_laz_mbmi <- plotdf_laz_mbmi %>% 
  mutate(est= est + offset,
         ci.lb= ci.lb + offset,
         ci.ub= ci.ub + offset)

plotdf_laz_mbmi <- plotdf_laz_mbmi %>% mutate(level = factor(level, levels=c( "Normal weight", "Underweight")))


Avarwt="Maternal BMI"

brown_color_gradient = c(tableau10[6], "#c99a6b")

p5 <- ggplot() +
  geom_line(data=plotdf_laz_mbmi, aes(x=agedays, y=est, group=level, color=level), size=1.25) +
  scale_color_manual(values=brown_color_gradient, name = paste0( Avarwt)) +
  scale_fill_manual(values=brown_color_gradient, name = paste0( Avarwt)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:12*30.41*2, labels = 0:12*2) +
  scale_y_continuous(limits=c(-2.2, -0.4), breaks = seq(-2.2, -0.4, 0.2), labels = seq(-2.2, -0.4, 0.2)) + 
  xlab("Child age in months") + ylab("Mean LAZ") +
  #coord_cartesian(ylim=c(-2,1)) +
  ggtitle(paste0("Spline curves of LAZ, stratified by\nlevels of ", Avarwt)) +
  theme(legend.position = c(0.8,0.9))

print(p5)




#------------------------------------------------------------------------------------------------
# WLZ- maternal BMI
#------------------------------------------------------------------------------------------------

predlist1 <- predlist2 <- predlist3 <- NULL

table(d$mbmi)
predlist1 <- spline_meta(d[d$mbmi=="Normal weight",], Y="whz", Avar="mbmi", overall=T, cen=cen)
plotdf1 <- create_plotdf(predlist1, overall=T, stratlevel="Normal weight")
predlist2 <- spline_meta(d[d$mbmi=="Underweight",], Y="whz", Avar="mbmi", overall=T, cen=cen)
plotdf2 <- create_plotdf(predlist2, overall=T, stratlevel="Underweight")

plotdf_wlz_mbmi <- rbind(plotdf1,plotdf2)

offsetZ_wlz_mbmi <- offset_fun(d, Y="whz", Avar="mbmi", cen=cen)


plotdf_wlz_mbmi <- left_join(plotdf_wlz_mbmi, offsetZ_wlz_mbmi, by="level")
plotdf_wlz_mbmi <- plotdf_wlz_mbmi %>% 
  mutate(est= est + offset,
         ci.lb= ci.lb + offset,
         ci.ub= ci.ub + offset)

plotdf_wlz_mbmi <- plotdf_wlz_mbmi %>% mutate(level = factor(level, levels=c( "Normal weight", "Underweight")))

Avar="Maternal BMI"

p6 <- ggplot() + 
  geom_line(data=plotdf_wlz_mbmi, aes(x=agedays, y=est, group=level, color=level), size=1.25) +
  scale_color_manual(values=brown_color_gradient, name = paste0( Avar)) +
  scale_fill_manual(values=brown_color_gradient, name = paste0( Avar)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:12*30.41*2, labels = 0:12*2) +
  scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = seq(-1.2, 0.4, 0.2)) + 
  xlab("Child age in months") + ylab("Mean WLZ") + 
  #coord_cartesian(ylim=c(-2,1)) +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avar)) +
  theme(legend.position = c(0.8,0.9))
print(p6)



#------------------------------------------------------------------------------------------------
# Format plots
#------------------------------------------------------------------------------------------------

pos = c(0.2,0.25)

p1 <- p1 + ggtitle("Spline curves of WLZ, stratified by\ncategories of maternal weight") + theme(legend.position = pos,  legend.title=element_text(size=8), legend.text=element_text(size=6)) +  guides(color = guide_legend("Maternal\nweight", nrow=3)) +scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = round(seq(-1.2, 0.4, 0.2),1)) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4)))
p2 <- p2  + ggtitle("Stratified by\ncategories of maternal height") + theme(legend.position = pos,  legend.title=element_text(size=8), legend.text=element_text(size=6))+ scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = round(seq(-1.2, 0.4, 0.2),1)) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4)))
p3 <- p3  + ggtitle("Spline curves of LAZ, stratified by\ncategories of maternal weight") + theme(legend.position = "none") + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + theme(legend.key = element_blank()) + theme(legend.key = element_blank()) +scale_y_continuous(limits=c(-2.4, -0.4), breaks = seq(-2.4, 0.4, 0.2), labels = round(seq(-2.4, 0.4, 0.2),1)) 
p4 <- p4  + ggtitle("Stratified by\ncategories of maternal height") +  theme(legend.position = "none") +guides(color = guide_legend("Maternal\nheight", nrow=3)) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + theme(legend.key = element_blank()) +scale_y_continuous(limits=c(-2.4, -0.4), breaks = seq(-2.4, 0.4, 0.2), labels = round(seq(-2.4, 0.4, 0.2),1)) 
p6 <- p6  + ggtitle("Stratified by\ncategories of maternal BMI") + theme(legend.position = pos,  legend.title=element_text(size=8), legend.text=element_text(size=6)) + guides(color = guide_legend("Maternal\nBMI", nrow=2)) + scale_color_manual(values=c(tableau10[6], "#c99a6b"), labels = c(">=18.5", "<18.5")) + scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + theme(legend.key = element_blank()) + scale_y_continuous(limits=c(-1.2, 0.4), breaks = seq(-1.2, 0.4, 0.2), labels = round(seq(-1.2, 0.4, 0.2),1)) 
p5 <- p5  + ggtitle("Stratified by\ncategories of maternal BMI") +  theme(legend.position = "none")+ scale_x_continuous(limits=c(0,730), expand = c(0, 0), breaks = 0:6*30.41*4, labels = c(0, seq(4, 24, 4))) + theme(legend.key = element_blank())  +scale_y_continuous(limits=c(-2.4, -0.4), breaks = seq(-2.4, 0.4, 0.2), labels = round(seq(-2.4, 0.4, 0.2),1)) 





#------------------------------------------------------------------------------------------------
# Save plots
#------------------------------------------------------------------------------------------------


# Combine plot objects

require(cowplot)
p_grid <- plot_grid(p1, p3, p2, p4,p6,   p5, labels = rep("",6), ncol = 2, align = 'v', axis = 'l')

ggsave(p_grid, file=paste0(here(),"/figures/risk-factor/spline_grid_sens.png"), width=10, height=10)


#Save plot objects
save(p1, p2, p3, p4, p5, p6,  file=paste0(here(),"/figures/plot-objects/risk-factor/rf_spline_sens_objects.Rdata"))

