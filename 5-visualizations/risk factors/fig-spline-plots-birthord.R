
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(),"/0-project-functions/0_descriptive_epi_wast_functions.R"))


#Load haz and whz data
d <- readRDS(rf_co_occurrence_path)
d <- d %>% subset(., select=-c(tr))



#merge WLZ outcomes with covariates
cov<-readRDS(clean_covariates_path)

table(cov$mhtcm3)
table(cov$mbmi3)

cov <- cov %>% subset(., select=-c(mbmi, mhtcm)) %>% rename(mhtcm=mhtcm3, mbmi=mbmi3, )

cov <- cov %>% subset(., select=-c( region, month, W_gagebrth,    W_birthwt,     W_birthlen,   
                                    W_mage,        W_mhtcm,       W_parity,       W_mbmi,        W_fage,        W_fhtcm,       W_meducyrs,    W_feducyrs,   
                                    W_nrooms,      W_nhh,         W_nchldlt5,    W_parity,         
                                    W_perdiar6,    W_perdiar24))
dim(d)
d <- left_join(d, cov, by=c("studyid","country","subjid"))
dim(d)
d <- d %>% filter(agedays < 24 * 30.4167) 
d <- subset(d, select = -c(id, arm, tr))
dim(d)


#N's for figure caption
d %>% ungroup() %>%  filter(!is.na(mhtcm)) %>% summarize(N=n(), Nchild=length(unique(paste0(studyid, country, subjid))), Nstudies=length(unique(paste0(studyid, country))))
d %>% ungroup() %>%  filter(!is.na(mwtkg)) %>% summarize(N=n(), Nchild=length(unique(paste0(studyid, country, subjid))), Nstudies=length(unique(paste0(studyid, country))))
d %>% ungroup() %>%  filter(!is.na(mbmi)) %>% summarize(N=n(), Nchild=length(unique(paste0(studyid, country, subjid))),  Nstudies=length(unique(paste0(studyid, country))))


#Adapted from: 
#http://www.ag-myresearch.com/2012_gasparrini_statmed.html

spline_meta <- function(d, Y="haz", Avar, overall=F, cen=365, type="ps", mean_aic=F, forcedf=NULL){
  
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
  df <- 10
  
  
  
  
  # BUILT OBJECTS WHERE RESULTS WILL BE STORED:
  #   ymat IS THE MATRIX FOR THE OUTCOME PARAMETERS
  #   Slist IS THE LIST WITH (CO)VARIANCE MATRICES
  ymat <- matrix(NA,m,df,dimnames=list(unique(d$id),paste("spl",seq(df),sep="")))
  Slist <- vector("list",m)
  names(Slist) <- unique(d$id)
  
  ####################################################################
  # RUN THE FIRST-STAGE ANALYSIS
  fullres <-NULL
  for(i in 1:m){
    
    res <- get_df_aic(data=d[d$id==unique(d$id)[i],], splinetype=type, splinedegree=degree, degreefreedom=df)
    fullres <- bind_rows(fullres, res)
  }
  bestdf <- fullres %>% group_by(df) %>% summarize(med_aic=median(aic, na.rm=T), mean_aic=mean(aic, na.rm=T)) 
  if(mean_aic){ #Use mean when median is too low for fit
    bestdf <- bestdf %>%  filter(mean_aic==min(mean_aic))
  }else{
    bestdf <- bestdf %>%  filter(med_aic==min(med_aic))
  }
    
  bestdf <- bestdf$df
    
    if(!is.null(forcedf)){bestdf<-forcedf}
  
  for(i in 1:m){
    
    # PRINT ITERATION
    cat(i,"")
  
    # LOAD
    data <- d[d$id==unique(d$id)[i],]
    

    # CREATE THE SPLINE
    bt <- onebasis(data$agedays,fun=type,
                   degree=degree, 
                   df=bestdf)

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
   btmean <- onebasis(tmean,fun=type, degree=degree, df=bestdf #,
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


offset_fun <- function(d, Y="haz", Avar, cen=365, range=60){
  
  df <- d[!is.na(d[,Avar]),]
  
  df <- df %>% filter(agedays < cen + range & agedays > cen - range) %>% mutate(agecat="first", agecat=factor(agecat)) 
  
  z.summary <- cohort.summary(d=df, var=Y, ci=F, continious=T, severe=F, minN=50, measure="",  strata=c("region","studyid","country","agecat",Avar))
  z.res <- summarize_over_strata(cohort.sum=z.summary, proportion=F, continious=T, measure = "GEN",  method = "REML", strata=c("region","studyid","country","agecat",Avar),  region=F, cohort=F)
  
  z.res <- data.frame(level=z.res[,2], offset=z.res[,5])
  return(z.res)
} 
  

#Function to pick degrees of freedom from lowest mean AIC across cohorts
get_df_aic <- function(data, splinetype=type, splinedegree=degree, degreefreedom=df){
  res <- NULL
  for(i in splinedegree:degreefreedom){
    # CREATE THE SPLINE
    bt <- onebasis(data$agedays,fun=splinetype,
                   degree=splinedegree, 
                   df=i)
    
    # RUN THE MODEL
    #Note: add cv cross-validation
    model <- glm(Y ~ bt,family=gaussian(), data)
    
    res <- bind_rows(res, data.frame(cohort=data$id[1] , df=i, aic=model$aic))    
  }

return(res)

}

orange_color_gradient = c("#FF7F0E", "#ffb26e", "#f5caab")
blue_color_gradient = c("#1F77B4", "#85cdff", "#b8e7ff")
purple_color_gradient = c("#7644ff", "#b3adff", "#e4dbff")

#------------------------------------------------------------------------------------------------
# WLZ-birth order
#------------------------------------------------------------------------------------------------

# predlist1 <- spline_meta(d[d$mwtkg==">=58 kg",], Y="whz", Avar="mwtkg", overall=T, cen=365)
# plotdf1 <- create_plotdf(predlist1, overall=T, stratlevel=">=58 kg")
# predlist2 <- spline_meta(d[d$mwtkg=="<52 kg",], Y="whz", Avar="mwtkg", overall=T, cen=365)
# plotdf2 <- create_plotdf(predlist2, overall=T, stratlevel="<52 kg")
# predlist3 <- spline_meta(d[d$mwtkg=="[52-58) kg",], Y="whz", Avar="mwtkg", overall=T, cen=365)
# plotdf3 <- create_plotdf(predlist3, overall=T, stratlevel="[52-58) kg")
# plotdf_wlz_parity <- rbind(plotdf1,plotdf2,plotdf3)
table(d$parity)
predlist1 <- spline_meta(d[d$parity=="1",], Y="whz", Avar="parity", overall=T, cen=365)
plotdf1 <- create_plotdf(predlist1, overall=T, stratlevel="1")
predlist2 <- spline_meta(d[d$parity=="2",], Y="whz", Avar="parity", overall=T, cen=365)
plotdf2 <- create_plotdf(predlist2, overall=T, stratlevel="2")
predlist3 <- spline_meta(d[d$parity=="3+",], Y="whz", Avar="parity", overall=T, cen=365)
plotdf3 <- create_plotdf(predlist3, overall=T, stratlevel="3+")
plotdf_wlz_parity <- rbind(plotdf1,plotdf2,plotdf3)


offsetZ_wlz_parity <- offset_fun(d, Y="whz", Avar="parity", cen=365)


plotdf_wlz_parity <- left_join(plotdf_wlz_parity, offsetZ_wlz_parity, by="level")
plotdf_wlz_parity <- plotdf_wlz_parity %>%
  mutate(est= est + offset,
         ci.lb= ci.lb + offset,
         ci.ub= ci.ub + offset)

#plotdf_wlz_parity <- plotdf_wlz_parity %>% mutate(level = factor(level, levels=c( ">=58 kg", "[52-58) kg", "<52 kg")))
plotdf_wlz_parity <- plotdf_wlz_parity %>% mutate(level = factor(level, levels=c( "1", "2","3+")))


Avar="birth order"


p1 <- ggplot() +
  geom_line(data=plotdf_wlz_parity, aes(x=agedays, y=est, group=level, color=level), size=1.25) +
  #geom_ribbon(data=plotdf_wlz_parity, aes(x=agedays,ymin=ci.lb, ymax=ci.ub, group=level, color=level,  fill=level), alpha=0.3, color=NA) +
  scale_color_manual(values=orange_color_gradient, name = paste0( Avar)) +
  scale_fill_manual(values=orange_color_gradient, name = paste0( Avar)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:12*30.41*2, labels = 0:12*2) +
  scale_y_continuous(limits=c(-1, -0.18), breaks = seq(-1.2, 0.4, 0.2), labels = seq(-1.2, 0.4, 0.2)) +
  xlab("Child age in months") + ylab("Mean WLZ") +
  #coord_cartesian(ylim=c(-2,1)) +
  ggtitle(paste0("Spline curves of WLZ, stratified by\nlevels of ", Avar)) +
  theme(legend.position = c(0.8,0.9))

print(p1)




#------------------------------------------------------------------------------------------------
# LAZ- birth order
#------------------------------------------------------------------------------------------------

predlist1 <- predlist2 <- predlist3 <- NULL

table(d$parity)
predlist1 <- spline_meta(d[d$parity=="1",], Y="haz", Avar="parity", overall=T, cen=180)
plotdf1 <- create_plotdf(predlist1, overall=T, stratlevel="1")
predlist2 <- spline_meta(d[d$parity=="2",], Y="haz", Avar="parity", overall=T, cen=180)
plotdf2 <- create_plotdf(predlist2, overall=T, stratlevel="2")
predlist3 <- spline_meta(d[d$parity=="3+",], Y="haz", Avar="parity", overall=T, cen=180, mean_aic=T)
plotdf3 <- create_plotdf(predlist3, overall=T, stratlevel="3+")
plotdf_laz_parity <- rbind(plotdf1,plotdf2,plotdf3)



offsetZ_laz_parity <- offset_fun(d, Y="haz", Avar="parity", cen=180)


plotdf_laz_parity <- left_join(plotdf_laz_parity, offsetZ_laz_parity, by="level")
plotdf_laz_parity <- plotdf_laz_parity %>% 
  mutate(est= est + offset,
         ci.lb= ci.lb + offset,
         ci.ub= ci.ub + offset)

plotdf_laz_parity <- plotdf_laz_parity %>% mutate(level = factor(level, levels=c( "1", "2","3+")))


light_blue_color_gradient = c("#0fb3bf", "#83ced3", "#c5e0e2")

p2 <- ggplot() + 
  geom_line(data=plotdf_laz_parity, aes(x=agedays, y=est, group=level, color=level), size=1.25) +
  #geom_ribbon(data=plotdf_wlz_mhtcm, aes(x=agedays,ymin=ci.lb, ymax=ci.ub, group=level, color=level,  fill=level), alpha=0.3, color=NA) +
  scale_color_manual(values=light_blue_color_gradient, name = paste0( Avar)) +
  scale_fill_manual(values=light_blue_color_gradient, name = paste0( Avar)) +
  scale_x_continuous(limits=c(1,730), expand = c(0, 0),
                     breaks = 0:12*30.41*2, labels = 0:12*2) +
  scale_y_continuous(limits=c(-2.2, -0.75), breaks = seq(-2.2, 0.4, 0.2), labels = seq(-2.2, 0.4, 0.2)) + 
  xlab("Child age in months") + ylab("Mean LAZ") + 
  #coord_cartesian(ylim=c(-2,1)) +
  #ggtitle(paste0("Spline curves of LAZ, stratified by\nlevels of ", Avar)) +
  theme(legend.position = c(0.8,0.9))
print(p2)


# #Save plot objects
# p1 <- p3 <- NULL
 saveRDS(list(p1, p2),  file=paste0(BV_dir,"/figures/plot-objects/risk-factor/birth_order_spline_objects.RDS"))

 
 pos2 = pos = c(0.895,0.835)
 
 p1a <- p1   + ggtitle("") + theme(legend.position = pos2, legend.spacing.y = unit(0.5, 'mm'),  legend.title=element_text(size=8), legend.text=element_text(size=6)) + guides(color = guide_legend("Birth order", nrow=1)) + theme(legend.key = element_blank(), legend.background = element_blank()) 
 p2a <- p2   + ggtitle("") + theme(legend.position = pos2, legend.spacing.y = unit(0.5, 'mm'),  legend.title=element_text(size=8), legend.text=element_text(size=6)) + guides(color = guide_legend("Birth order", nrow=1)) + theme(legend.key = element_blank(), legend.background = element_blank()) 

 titleA <- ggdraw() + draw_label("Stratified by birth order", fontface='bold')

 #Faceted plots
 Twoby1plotA <- plot_grid(p1a, p2a, labels = c("",""), ncol = 2)
 Twoby1plotA_t <- plot_grid(titleA, Twoby1plotA, ncol=1, rel_heights=c(0.1, 1.5))

 Twoby1plotA_t <- plot_grid(titleA, p1a, p2a, ncol=1, rel_heights=c(0.1, 1, 1))
 
  
 ggsave(Twoby1plotA_t, file=paste0(BV_dir,"/figures/manuscript-figure-composites/risk-factor/ED_spline_birth_order.png"), width=7, height=5)
 
 
 