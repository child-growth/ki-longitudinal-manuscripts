


#---------------------------------------
# Plot parameters
#---------------------------------------
#Plot themes
theme_set(theme_bw())

#hbgdki pallet
tableau10 <- c("#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")




#---------------------------------------
# fit.rma function
#---------------------------------------

# random effects function, save results nicely
fit.rma=function(data,age,ni,xi,measure,nlab){
  data=filter(data,agecat==age)
  if(measure!="IR"){
    fit<-rma(ni=data[[ni]], xi=data[[xi]], 
           method="REML", measure=measure)
  }else{
    fit<-rma(ti=data[[ni]], xi=data[[xi]], 
             method="REML", measure=measure)
  }
  out=data %>%
    ungroup() %>%
    summarise(nstudies=length(unique(studyid)),
              nmeas=sum(data[[ni]][agecat==age])) %>%
    mutate(agecat=age,est=fit$beta, se=fit$se, lb=fit$ci.lb, ub=fit$ci.ub,
           nmeas.f=paste0("N=",format(sum(data[[ni]]),big.mark=",",scientific=FALSE),
                          " ",nlab),
           nstudy.f=paste0("N=",nstudies," studies"))
  return(out)
}


sem<-function(x){
  sd(x)/sqrt(length(x))
}



#---------------------------------------
# fit.escalc function
#---------------------------------------

# calc individual cohort PR variances, standard errors, and 95% CI from the rma() arguements, and append to dataset
# Input:
# meas: PR for prevalence, CI for cumulative incidence, and IR for incidence rate

#Returns:
# Inputted dataframe with appended columns
# yi = outcome of interest
# vi = variance of outcome
# se = standard error
# ci.lb = lower bound of 95% confidence interval
# ci.ub = upper bound of 95% confidence interval

fit.escalc <- function(data,age,ni,xi, meas){
  data=filter(data,agecat==age)
  
  if(meas=="PR"){
  data<-escalc(data=data, ni=data[[ni]], xi=data[[xi]], method="REML", measure="PR", append=T)
  }

  if(meas=="IR"){
  data<-escalc(data=data, ti=data[[ni]], xi=data[[xi]], method="REML", measure="IR", append=T)
  }
  
data$se <- sqrt(data$vi)
data$ci.lb <- data$yi - 1.96 * data$se 
data$ci.ub <- data$yi + 1.96 * data$se 

  return(data)
}


#---------------------------------------
# cohort-specific output formatting
#---------------------------------------
# if percentage, multiply est and ci by 100
# create cohort name for plotting
# create region variable 
# add age labels for x-axis

# Input:
# data frame with fit.escalc output 
# vector of labels for plotting

#Returns:
# data frame formatted for plotting cohort specific results
cohort.format=function(df, lab, y, est="percent"){
  y = as.numeric(y)
  
  # rescale percentages
  if(est=="percent"){
    df = df %>% mutate(y=y*100,ci.lb=ci.lb*100,ci.ub=ci.ub*100)
  }
  if(est=="rate"){
    df = df %>% mutate(y=y*1000,ci.lb=ci.lb*1000,ci.ub=ci.ub*1000)
  }

  # cohort name
  df = df %>% mutate(cohort=paste0(studyid,"-",country)) %>%
              mutate(cohort=gsub("ki[^-]*-","",cohort))
  
  # region variable
  df <- df %>% mutate(region = case_when(
    country=="BANGLADESH" | country=="INDIA"|
      country=="NEPAL" | country=="PAKISTAN"|
      country=="PHILIPPINES"                   ~ "Asia", 
      country=="KENYA"|
      country=="GHANA"|
      country=="BURKINA FASO"|
      country=="GUINEA-BISSAU"|
      country=="MALAWI"|
      country=="SOUTH AFRICA"|
      country=="TANZANIA, UNITED REPUBLIC OF"|
      country=="ZIMBABWE"|
      country=="GAMBIA"                       ~ "Africa",
      country=="BELARUS"                      ~ "Europe",
      country=="BRAZIL" | country=="GUATEMALA" |
      country=="PERU"                         ~ "Latin America",
      TRUE                                    ~ "Other"
  ))
  
   # create formatted age categories for plotting 
  df <- df %>%  mutate(agecat=droplevels(as.factor(agecat)))
  df <- df %>%  mutate(age.f = factor(agecat,levels=levels(df$agecat),
                           labels=lab))

  return(df)
}



#---------------------------------------
# recovery from stunted at age x by age y
#---------------------------------------
rec=function(agem,data){
  rec <- data %>%
    filter(agem<=r.agem[2]) %>%
    # identify last two measurements prior to 24 months
    group_by(studyid,country,subjid) %>%
    mutate(rank=min_rank(-agedays)) %>%
    # keep last two measurements 
    filter(rank<= 2) %>%
    # flag kids with 2 measurements not stunted
    mutate(rec=ifelse(haz>= -2,1,0)) %>%
    mutate(recsum=cumsum(rec)) %>%
    # one row for each kid, indicator for recovered
    summarise(maxrec=max(recsum)) %>%
    mutate(rec=ifelse(maxrec==2,1,0)) %>%
    select(-c(maxrec))
  return(rec)
}

# inputs:
rec.age=function(s.agem,r.agem,data){
  # subset to stunted between birth and 3 months
  stunt <- data %>%
    filter(agem<=s.agem) 
  
    if(s.agem>1){
      # identify last two measurements prior to 24 months
      stunt <- stunt %>%
        group_by(studyid,country,subjid) %>%
        mutate(rank=min_rank(-agedays)) %>%
        # drop last 2 measurements prior to 24 m
        filter(rank> 2) 
    }
    # create stunting indicator
   stunt <- stunt %>%
    mutate(measid=seq_along(subjid))  %>%
    mutate(stunted=ifelse(haz< -2,1,0),
           lagstunted=lag(stunted),
           leadstunted=lead(stunted))  %>%
    # unique stunting episode
    mutate(sepisode=ifelse(lagstunted==0 & stunted==1 & leadstunted==1 |
                             stunted==1 & measid==1,1,0)) %>%
    # identify whether child had stunting episode by 24 months 
     group_by(studyid,country,subjid) %>%
     summarise(stunted=max(sepisode,na.rm=TRUE))
  
   rec.prev <- data %>%
     filter(agem<=s.agem) %>%
     # identify last two measurements prior to 24 months
     group_by(studyid,country,subjid) %>%
     mutate(rank=min_rank(-agedays)) %>%
     # keep last two measurements 
     filter(rank<= 2) %>%
     # flag kids with 2 measurements not stunted
     mutate(rec=ifelse(haz>= -2,1,0)) %>%
     mutate(recsum=cumsum(rec)) %>%
     # one row for each kid, indicator for recovered
     summarise(maxrec=max(recsum)) %>%
     mutate(rec.prev=ifelse(maxrec==2,1,0)) %>%
     select(-c(maxrec))
   
   rec <- data %>%
     filter(agem>s.agem & agem<=r.agem) %>%
     # identify last two measurements prior to 24 months
     group_by(studyid,country,subjid) %>%
     mutate(rank=min_rank(-agedays)) %>%
     # keep last two measurements 
     filter(rank<= 2) %>%
     # flag kids with 2 measurements not stunted
     mutate(rec=ifelse(haz>= -2,1,0)) %>%
     mutate(recsum=cumsum(rec)) %>%
     # one row for each kid, indicator for recovered
     summarise(maxrec=max(recsum)) %>%
     mutate(rec=ifelse(maxrec==2,1,0)) %>%
     select(-c(maxrec))
  
    rev <- full_join(stunt, rec,by=c("studyid","country","subjid")) 
    rev <- full_join(rev, rec.prev,by=c("studyid","country","subjid")) %>%
    # subset to kids who were stunted
    filter(stunted==1) %>%
    mutate(recovered=ifelse(stunted==1 & rec==1 & rec.prev==0,1,0)) %>%
    select(-c(stunted,rec,rec.prev))
  
  return(rev)
}








# Multiple plot function
#
# ggplot objects can be passed in ..., or to plotlist (as a list of ggplot objects)
# - cols:   Number of columns in layout
# - layout: A matrix specifying the layout. If present, 'cols' is ignored.
#
# If the layout is something like matrix(c(1,2,3,3), nrow=2, byrow=TRUE),
# then plot 1 will go in the upper left, 2 will go in the upper right, and
# 3 will go all the way across the bottom.
#
multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) {
  library(grid)
  
  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)
  
  numPlots = length(plots)
  
  # If layout is NULL, then use 'cols' to determine layout
  if (is.null(layout)) {
    # Make the panel
    # ncol: Number of columns of plots
    # nrow: Number of rows needed, calculated from # of cols
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                     ncol = cols, nrow = ceiling(numPlots/cols))
  }
  
  if (numPlots==1) {
    print(plots[[1]])
    
  } else {
    # Set up the page
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))
    
    # Make each plot, in the correct location
    for (i in 1:numPlots) {
      # Get the i,j matrix positions of the regions that contain this subplot
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))
      
      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                      layout.pos.col = matchidx$col))
    }
  }
}








calc.prev.agecat <- function(d){
  d = d %>% 
    arrange(studyid,subjid,agedays) %>%
    mutate(agecat=ifelse(agedays==1,"Birth",
                         ifelse(agedays>2*30.4167 & agedays<4*30.4167,"3 months",
                                ifelse(agedays>5*30.4167 & agedays<7*30.4167,"6 months",
                                       ifelse(agedays>8*30.4167 & agedays<10*30.4167,"9 months",
                                              ifelse(agedays>11*30.4167 & agedays<13*30.4167,"12 months",
                                                     ifelse(agedays>14*30.4167 & agedays<16*30.4167,"15 months",
                                                            ifelse(agedays>17*30.4167 & agedays<19*30.4167,"18 months",
                                                                   ifelse(agedays>20*30.4167 & agedays<22*30.4167,"21 months",
                                                                          ifelse(agedays>23*30.4167& agedays<25*30.4167,"24 months","")))))))))) %>%
    mutate(agecat=factor(agecat,levels=c("Birth","3 months","6 months","9 months",
                                         "12 months","15 months","18 months","21 months","24 months"))) 
}

calc.ci.agecat <- function(d){
  d = d %>% 
    #filter(agedays>1) %>%
    mutate(agecat=ifelse(agedays<=3*30.4167,"0-3 months",
                         ifelse(agedays>3*30.4167 & agedays<=6*30.4167,"3-6 months",
                                ifelse(agedays>6*30.4167 & agedays<=9*30.4167,"6-9 months",
                                       ifelse(agedays>9*30.4167 & agedays<=12*30.4167,"9-12 months",
                                              ifelse(agedays>12*30.4167 & agedays<=15*30.4167,"12-15 months",
                                                     ifelse(agedays>15*30.4167 & agedays<=18*30.4167,"15-18 months",
                                                            ifelse(agedays>18*30.4167 & agedays<=21*30.4167,"18-21 months",
                                                                   ifelse(agedays>21*30.4167& agedays<=24*30.4167,"21-24 months",""))))))))) %>%
    mutate(agecat=factor(agecat,levels=c("0-3 months","3-6 months","6-9 months","9-12 months","12-15 months","15-18 months","18-21 months","21-24 months")))
}




