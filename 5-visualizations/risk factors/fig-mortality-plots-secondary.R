
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
source(paste0(here::here(), "/0-project-functions/0_clean_study_data_functions.R"))
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))



#Plot parameters
yticks <- c( 0.50, 1.00, 2.00, 4.00, 8.00)
tableau10 <- c("#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
tableau11 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
Ylab <- "Relative Risk"
scaleFUN <- function(x) sprintf("%.0f", x)


clean_nmeans<-function(nmeas){
  nmeas <- round(nmeas/1000)
  nmeas.f <- paste0("N=",nmeas,"K children")
  return(nmeas.f)
}

clean_agecat<-function(agecat){
  agecat <- as.character(agecat)
  agecat <- gsub("months","mo.", agecat)
  agecat <- factor(agecat, levels=unique(agecat))
  return(agecat)
}


#Load data
dfull <- readRDS(paste0(BV_dir,"/results/rf results/full_RF_results.rds")) %>%
  filter(!(outcome_variable %in% c("ever_stunted","s06rec1824","sstunted","stunted",
          "ever_co","ever_swasted","ever_wasted","pers_wast","s03rec24","swasted","wast_rec90d","wasted","ever_sstunted")))


 

dHR <- readRDS(paste0(BV_dir,"/results/mortality-results/full_cox_results.RDS")) %>% filter(!is.na(HR))

#----------------------------------------
# Clean mortality data
#----------------------------------------
dHR <- dHR %>%
  mutate(
    Xname = case_when(X=="stunt"  ~ "Stunted", 
                      X=="wast"  ~ "Wasted",
                      X=="wast_muac"  ~ "Wasted (MUAC)",
                      X=="underwt"  ~ "Underweight",          
                      X=="sstunt"  ~ "Severely stunted",          
                      X=="swast"  ~ "Severely wasted",           
                      X=="swast_muac"  ~ "Severely wasted (MUAC)",           
                      X=="sunderwt"  ~ "Severely underweight",        
                      X=="stunt_uwt"  ~ "Stunted + underweight",       
                      X=="wast_uwt"  ~ "Wasted + underweight",        
                      X=="co"  ~ "Wasted + stunted",              
                      X=="ever_stunt"  ~ "Ever stunted",      
                      X=="ever_wast"  ~   "Ever wasted",        
                      X=="ever_wast_muac"  ~   "Ever wasted (MUAC)",        
                      X=="ever_uwt"  ~   "Ever underweight",         
                      X=="ever_sstunt"  ~   "Ever severely stunted",     
                      X=="ever_swast"  ~   "Ever severely wasted",       
                      X=="ever_swast_muac"  ~   "Ever severely wasted (MUAC)",       
                      X=="ever_suwt"  ~   "Ever severely underweight",        
                      X=="ever_stunt_uwt"  ~   "Ever stunted + underweight",   
                      X=="ever_wast_uwt"  ~   "Ever wasted + underweight",    
                      X=="ever_co"  ~ "Ever wasted + stunted"),
    Xname = factor(Xname, levels = rev(c(
      "Stunted", 
      "Wasted",
      "Wasted (MUAC)",
      "Underweight",          
      "Severely stunted",          
      "Severely wasted",           
      "Severely wasted (MUAC)",           
      "Severely underweight",        
      "Stunted + underweight",       
      "Wasted + underweight",        
      "Wasted + stunted",              
      "Ever stunted",      
      "Ever wasted",        
      "Ever wasted (MUAC)",        
      "Ever underweight",         
      "Ever severely stunted",     
      "Ever severely wasted",       
      "Ever severely wasted (MUAC)",       
      "Ever severely underweight",        
      "Ever stunted + underweight",   
      "Ever wasted + underweight",    
      "Ever wasted + stunted" ))))

d_ciHR <- dHR  %>% 
  droplevels(.) %>%
  dplyr::filter(Xname != "Wasted (MUAC)", 
                # Xname != "Wasted + underweight",
                # Xname != "Stunted + underweight", 
                Xname != "Severely wasted (MUAC)") %>%
  filter(grepl("ever_",X), method=="RE", 
         is.na(sex), is.na(region), agecat=="overall", adj==1) %>%
  mutate(HR = round(HR, 2), 
         ci.lb = round(ci.lb, 2), 
         ci.ub = round(ci.ub,2)) %>%
  ungroup() %>%
  arrange(HR) %>% select( Xname, HR, ci.lb, ci.ub )
knitr::kable(d_ciHR)

dHR <- dHR  %>% 
  droplevels(.) %>%
  dplyr::filter(Xname != "Wasted (MUAC)", 
                # Xname != "Wasted + underweight",
                # Xname != "Stunted + underweight", 
                Xname != "Severely wasted (MUAC)") %>%
  filter(!grepl("ever_",X), method=="RE"|is.na(method), 
         is.na(sex), is.na(region)|is.na(method), agecat=="overall", adj==1)

dHR$Xname <- recode(dHR$Xname, 
                              "Wasted + underweight" = "Wasted and underweight",
                              "Stunted + underweight" = "Stunted and underweight", 
                              "Wasted + stunted" = "Wasted and stunted", 
                              "Underweight" = "Moderately underweight", 
                              "Wasted" = "Moderately wasted", 
                              "Stunted" = "Moderately stunted")

unique(dHR$X)
dHR$severe <- 0
dHR$severe <- 1*(grepl("sstunt",dHR$X)|grepl("swast",dHR$X)|grepl("sunderwt",dHR$X))

dHR$Measure <- recode(dHR$X, 
                    "stunt"="stunted", 
                    "wast" ="wasted", 
                    "underwt"   ="underweight", 
                    "sstunt"  ="stunted",
                    "swast" = "wasted", 
                    "sunderwt"  ="underweight", 
                    "co"  ="wasted and stunted" , 
                    "wast_uwt" ="wasted and underweight" , 
                    "stunt_uwt" ="stunted and underweight")

names(dHR)[names(dHR) == 'Xname'] <- 'outcome_label' 
names(dHR)[names(dHR) == 'HR'] <- 'RR'
names(dHR)[names(dHR) == 'ci.lb'] <- 'RR.CI1'
names(dHR)[names(dHR) == 'ci.ub'] <- 'RR.CI2'

dHR <- dHR %>%
  add_column(outcome_variable = 'Hazard ratios of\nmortality before 24 months')

dropped <- c("studyid", "region", "est", "se", "N", "sparseN",  "Nstudies", "method", "X", "Y", "adj", "agecat", "df", "sex", "logHR.psi", "logSE", "HR.CI1", "HR.CI2")
dHR <- dHR[ , !(names(dHR) %in% dropped)]

table(dHR$pooled)
pmort_data_cohort <- dHR %>% filter(pooled==0)
p_prim_pooled  <- dHR %>% filter(pooled==1) %>% arrange(RR)
p_prim_pooled



#----------------------------------------
# Clean morbidity data
#----------------------------------------
unique(dfull$type)
d <- dfull %>% filter(type=="RR", adjusted==1) %>% droplevels(.)

#drop reference levels
d <- d %>% filter( ci_lower !=  ci_upper)

poolRR <- function(d, method="REML"){
  #nstudies=length(unique(d$studyid))
  nstudies <- d %>% summarise(N=n())
  
  if(d$intervention_level[1] == d$baseline_level[1]){
    est <- data.frame(logRR.psi=1, logSE=0, RR=1, RR.CI1=1, RR.CI2=1, Nstudies= nstudies$N)
  }else{
    
    fit<-NULL
    try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method=method, measure="RR"))
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="RR"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="RR"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="RR"))}
    
    if(is.null(fit)){
      est<-data.frame(logRR.psi=NA, logSE=NA, RR=NA, RR.CI1=NA,  RR.CI2=NA)
    }else{
      
      est<-data.frame(fit$b, fit$se)
      colnames(est)<-c("logRR.psi","logSE")
      
      est$RR<-exp(est$logRR.psi)
      est$RR.CI1<-exp(est$logRR.psi - 1.96 * est$logSE)
      est$RR.CI2<-exp(est$logRR.psi + 1.96 * est$logSE)
      
      est$Nstudies <- nstudies$N
    }
  }
  
  return(est)
}

d_cohort <- d
RMAest <- d %>% group_by(intervention_variable, intervention_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()
RMAest_FE <- d %>% group_by(intervention_variable, intervention_level, outcome_variable) %>%
  do(poolRR(., method="FE")) %>% as.data.frame()
RMAest_region <- d %>% group_by(region, intervention_variable, intervention_level, outcome_variable) %>%
  do(poolRR(.)) %>% as.data.frame()

RMAest <- bind_rows(data.frame(RMAest, analysis="Random Effects"),
                    data.frame(RMAest_FE, analysis="Fixed Effects"),
                    data.frame(RMAest_region, analysis="Region")) %>%
  mutate(analysis = factor(analysis, levels=c("Random Effects", "Fixed Effects","Region")))

#Save cleaned data
saveRDS(RMAest, paste0(BV_dir,"/results/rf results/pooled_mortality_RR_results.rds"))


d <- d %>% 
  mutate(cohort = paste0(studyid,"-",country)) %>%
  subset(., select = c(cohort,  intervention_variable, outcome_variable, estimate,  ci_lower, ci_upper)) %>%
  rename(RR=estimate,  RR.CI1=ci_lower, RR.CI2=ci_upper)

colnames(d)
colnames(RMAest)
d$pooled <- 0
RMAest$pooled <- 1
RMAest$pooled <- 1
RMAest$cohort <- "pooled"
d <- bind_rows(RMAest, d)
d <- droplevels(d)

#--------------------------------------------------------------
# Clean labels
#--------------------------------------------------------------

d$RFlabel <- NA
d$RFlabel[d$intervention_variable=="ever_wasted06"] <- "Wasted under 6mo" 
d$RFlabel[d$intervention_variable=="ever_wasted024"] <- "Wasted under 24mo" 
d$RFlabel[d$intervention_variable=="ever_swasted06"] <-  "Severely wasted under 6mo" 
d$RFlabel[d$intervention_variable=="ever_swasted024"] <-  "Severely wasted under 24mo" 
d$RFlabel[d$intervention_variable=="pers_wasted06"] <- "Persistently wasted under 6mo"
d$RFlabel[d$intervention_variable=="ever_stunted06"] <- "Stunted under 6mo" 
d$RFlabel[d$intervention_variable=="ever_sstunted06"] <- "Severely stunted under 6mo" 
d$RFlabel[d$intervention_variable=="pers_wasted024"] <- "Persistently wasted under 24mo"
d$RFlabel[d$intervention_variable=="ever_stunted024"] <- "Stunted under 24mo" 
d$RFlabel[d$intervention_variable=="ever_sstunted024"] <- "Severely stunted under 24mo"
d$RFlabel[d$intervention_variable=="ever_wasted06_noBW"] <- "Wasted under 6mo, excluding birth"  
d$RFlabel[d$intervention_variable=="ever_swasted06_noBW"] <-  "Severely wasted under 6mo, excluding birth"  
d$RFlabel[d$intervention_variable=="ever_wasted024_noBW"] <-  "Wasted under\n24mo, excluding birth"  
d$RFlabel[d$intervention_variable=="ever_swasted024_noBW"] <-  "Severely wasted under 24mo, excluding birth"  
d$RFlabel[d$intervention_variable=="ever_underweight06"] <-  "Underweight under 6mo"
d$RFlabel[d$intervention_variable=="ever_sunderweight06"] <-  "Severely underweight under 6mo"
d$RFlabel[d$intervention_variable=="ever_underweight024"] <-  "Underweight under 24mo"
d$RFlabel[d$intervention_variable=="ever_sunderweight024"] <-  "Severely underweight under 24mo"
d$RFlabel[d$intervention_variable=="ever_co06"] <-  "Wasted and stunted under 6mo"
d$RFlabel[d$intervention_variable=="ever_co024"] <-  "Wasted and stunted under 24mo"
d$RFlabel[d$intervention_variable=="ever_wasted624"] <- "Wasted 6 to 24mo" 
d$RFlabel[d$intervention_variable=="ever_swasted624"] <-  "Severely wasted 6 to 24mo" 
d$RFlabel[d$intervention_variable=="pers_wasted624"] <- "Persistently wasted 6 to 24mo"
d$RFlabel[d$intervention_variable=="ever_stunted624"] <- "Stunted 6 to 24mo" 
d$RFlabel[d$intervention_variable=="ever_sstunted624"] <- "Severely stunted 6 to 24mo" 
d$RFlabel[d$intervention_variable=="ever_underweight624"] <-  "Underweight 6 to 24mo"
d$RFlabel[d$intervention_variable=="ever_sunderweight624"] <-  "Severely underweight 6 to 24mo"
d$RFlabel[d$intervention_variable=="ever_co624"] <-  "Wasted and stunted 6 to 24mo"
d$RFlabel[d$intervention_variable=="ever_wast_uwt06"] <-  "Wasted and underweight under 6mo"
d$RFlabel[d$intervention_variable=="ever_stunt_uwt06"] <-  "Stunted and underweight under 6mo"

d$Measure <- NA
d$Measure <- ifelse(grepl("nderweight",d$RFlabel),"Underweight",d$Measure)
d$Measure <- ifelse(grepl("tunted",d$RFlabel),"Stunted",d$Measure)
d$Measure <- ifelse(grepl("asted",d$RFlabel),"Wasted",d$Measure)
d$Measure <- ifelse(grepl("ersistently wasted",d$RFlabel),"Persistently wasted",d$Measure)
d$Measure <- ifelse(grepl("asted and stunted",d$RFlabel),"Wasted and stunted",d$Measure)
d$Measure <- ifelse(grepl("asted and underweight",d$RFlabel),"Wasted and underweight",d$Measure)
d$Measure <- ifelse(grepl("tunted and underweight",d$RFlabel),"Stunted and underweight",d$Measure)
table(d$Measure)


d$severe <- factor(ifelse(grepl("evere",d$RFlabel),"Yes","No"))
table(d$severe)

unique(d$outcome_variable)
d$outcome_variable <- factor(d$outcome_variable, levels=c("pers_wasted624", "co_occurence",
                           "dead","dead0plus","dead624","dead6plus"))
levels(d$outcome_variable) <- c(#"Relative risk of\nmortality by 24 months",
  "Relative risk of\npersistent wasting from 6-24mo",  
  "Relative risk of concurrent\nwasting and stunting at 18mo",
  "Relative risk of\nmortality by 24 months",
  "Relative risk of\nmortality (any age)",
  "Relative risk of\nmortality between 6 and 24 months",
  "Relative risk of\nmortality after 6 months"
)
table(d$outcome_variable)
table(d$intervention_variable)



d$agerange <- factor(ifelse(grepl("24",d$RFlabel),"6-24 months","0-6 months"))
table(d$agerange)

d$type <- paste0(d$severe, " ", d$agerange)
d$type <- factor(d$type, levels=c("No 0-6 months", "Yes 0-6 months", "No 6-24 months", "Yes 6-24 months"))

d$BW <- factor(ifelse(grepl("birth",d$RFlabel),"*",""))
table(d$BW)

d$intervention_variable <- factor(d$RFlabel)


#Drop 6-24 month outcomes
d <- d %>% filter(agerange!="6-24 months")

d<-droplevels(d)

d$intervention_variable <- as.character(d$intervention_variable)
d <- d %>% arrange(outcome_variable, RR)
d$intervention_variable <- factor(d$intervention_variable, levels=unique(d$intervention_variable))


table(d$type, d$Measure)
d = d %>% mutate(Measure=tolower(Measure),
                 type = gsub("No", "Moderately", type),
                 type = gsub("Yes", "Severely", type),
                 type = gsub(" 0-6 months", "", type))

d = d %>% mutate(outcome_label = paste(type, " ", Measure, sep = ""),
                 outcome_label = gsub("Moderately persistently wasted", "Persistently wasted", outcome_label), 
                 outcome_label = gsub("Moderately wasted and stunted", "Wasted and stunted", outcome_label),
                 outcome_label = gsub("Moderately wasted and underweight", "Wasted and underweight", outcome_label),
                 outcome_label = gsub("Moderately stunted and underweight", "Stunted and underweight", outcome_label),
                 outcome_label = factor(outcome_label, levels=unique(outcome_label)))

d$severe<-factor(ifelse(grepl("evere",d$RFlabel),1,0),levels=c("0","1"))


#--------------------------------------------------------------
# Seperate datasets
#--------------------------------------------------------------

# #separate mort TMLE RR
table(d$outcome_variable)
 dmortRR <- d %>% filter( outcome_variable %in% c("Relative risk of\nmortality by 24 months",
                                                  "Relative risk of\nmortality (any age)",
                                       "Relative risk of\nmortality between 6 and 24 months",
                                       "Relative risk of\nmortality after 6 months")) %>%
   droplevels()
 table(dmortRR$outcome_variable)
 
# #keep only morbidity analysis
pmort_data <- d %>% filter( outcome_variable=="Relative risk of\npersistent wasting from 6-24mo" | outcome_variable=="Relative risk of concurrent\nwasting and stunting at 18mo") %>% 
  filter(analysis=="Random Effects"|is.na(analysis)) %>% arrange(outcome_variable, RR) %>%
  mutate(outcome_label=factor(outcome_label, levels=unique(outcome_label))) 

# Merge HR data into pmort_data
table(pmort_data$outcome_variable)

p_data <- merge(x = p_prim_pooled, y = pmort_data, all = TRUE) 
table(p_data$outcome_variable)
table(p_data$cohort)

p_data$outcome_variable <- factor(p_data$outcome_variable, levels = c("Hazard ratios of\nmortality before 24 months", "Relative risk of concurrent\nwasting and stunting at 18mo", "Relative risk of\npersistent wasting from 6-24mo"))
p_data$Measure <- factor(p_data$Measure, levels = c("stunted","wasted","underweight", "wasted and stunted", "stunted and underweight", "wasted and underweight"))  
p_data$severe <- factor(p_data$severe, levels = c("0","1"))


# Drop persistent wasting from all 3 plot facets (will be moved to supplementary material)
pers_wast_data <- p_data %>%
  dplyr::filter(RFlabel == "Persistently wasted under 6mo") %>% droplevels()
p_data <- p_data %>%
  dplyr::filter(RFlabel != "Persistently wasted under 6mo" | is.na(RFlabel)) %>% droplevels()

p_data_pooled <- p_data[p_data$pooled==1,]
p_data_cohort <- p_data[p_data$pooled==0,]
table(p_data_pooled$outcome_variable)

p_data_pooled <- p_data_pooled %>% arrange(pooled, outcome_variable, RR) %>%
  mutate(outcome_label=factor(outcome_label, levels=unique(outcome_label)))
levels(p_data_pooled$outcome_label)
unique(p_data_pooled$Measure)


pmort <- ggplot(p_data_pooled, aes(x=outcome_label)) +
  geom_point(aes(y=RR, color=Measure, shape=severe), size=3, stroke = 1.5) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Measure)) +
  labs(y = "", x = "Exposure 0-6 months") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=cbbPalette[c(3,2,4,6,5,7)]) +
  scale_size_manual(values=c(4,5)) + 
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16), 
        legend.position = "none") + 
  facet_wrap(~outcome_variable, ncol=3, strip.position = "bottom") +
  coord_flip(ylim=c(1,12))
pmort



pmort_flurry <- ggplot(p_data_pooled, aes(x=outcome_label)) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2), color="#287D8EFF") +
  geom_point(aes(y=RR), color="#878787", fill="#878787", size=2, stroke=0,
             data=p_data_cohort,
             position=position_jitter(width=0.2), alpha=0.5) +
  geom_point(aes(y=RR), color="#878787", fill="#878787", size=2, stroke=0,
             data=pmort_data_cohort,
             position=position_jitter(width=0.2), alpha=0.5) +
  geom_point(aes(y=RR), size=3, stroke = 1, color="#287D8EFF") +
  labs(y = "", x = "Exposure 0-6 months") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  #scale_colour_manual(values=cbbPalette[-1]) +
  scale_size_manual(values=c(4,5)) + 
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16), 
        legend.position = "none") + 
  facet_wrap(~outcome_variable, ncol=3, strip.position = "bottom") +
  coord_flip(ylim=c(1,12))
pmort_flurry

ggsave(pmort, file=paste0(BV_dir,"/figures/risk-factor/fig-mort+morb-RR.png"), width=14, height=5.2)
ggsave(pmort_flurry, file=paste0(BV_dir,"/figures/risk-factor/fig-mort+morb-RR-flurry.png"), width=14, height=5.2)

#Save plot object
saveRDS(list(pmort,pmort_flurry), file=paste0(BV_dir,"/results/rf_mort+morb_plot_object.RDS"))

#To do:
# Change the legend to refer to one plot
# Change plot references throughout the manuscript



#Save single plot of mortality TMLE RR's
dsub <- dmortRR %>% arrange(RR) %>% 
  filter(pooled==1, analysis=="Random Effects", 
         Measure!="persistently wasted",
         outcome_variable=="Relative risk of\nmortality by 24 months") %>%
  mutate(outcome_label=factor(outcome_label, levels=unique(outcome_label))) %>%
  droplevels()

p1 <- ggplot(dsub, aes(x=outcome_label)) +
  geom_point(aes(y=RR, color=Measure, shape=severe), size=3, stroke = 1.5) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Measure)) +
  labs(y = "", x = "Exposure 0-6 months") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=cbbPalette[-1]) +
  scale_fill_manual(values=cbbPalette[-1]) +
  scale_size_manual(values=c(4,5)) +
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16), 
        legend.position = "none") + 
  ggtitle(dsub$outcome_variable[1]) + 
  coord_flip(ylim=c(1,9))
p1

ggsave(p1, file=paste0(BV_dir,"/figures/risk-factor/fig-mort-RR.png"), width=5.2, height=5.2)











#Fixed effects
d3 <- d %>% 
  filter(pooled==1, analysis=="Fixed Effects", 
         Measure!="persistently wasted",
         outcome_variable %in% c("Relative risk of\nmortality by 24 months",
                                 "Relative risk of\npersistent wasting from 6-24mo",
                                 "Relative risk of concurrent\nwasting and stunting at 18mo")) %>%
  mutate(outcome_variable=factor(outcome_variable, levels=c("Relative risk of\nmortality by 24 months",
                                                      "Relative risk of\npersistent wasting from 6-24mo",
                                                      "Relative risk of concurrent\nwasting and stunting at 18mo"))) %>%
  arrange(outcome_variable, RR) %>% 
  mutate(outcome_label=factor(outcome_label, levels=unique(outcome_label))) %>%
  droplevels()

pmort <- ggplot(d3, aes(x=outcome_label)) +
  geom_point(aes(y=RR, color=Measure, shape=severe), size=3, stroke = 1.5) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Measure)) +
  #geom_tmext(aes(x=as.numeric(intervention_variable)+0.1, y=RR+0.1, label=BW), size=8) +
  labs(y = "", x = "Exposure 0-6 months") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(1, 2, 4, 8), trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=cbbPalette[-1]) +
  scale_fill_manual(values=cbbPalette[-1]) +
  scale_size_manual(values=c(4,5)) +
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16), 
        legend.position = "none") + 
  facet_wrap(~outcome_variable, ncol=3, strip.position = "bottom") +
  coord_flip(ylim=c(1,9))


ggsave(pmort, file=paste0(BV_dir,"/figures/risk-factor/fig-mort+morb-RR_FE.png"), width=14, height=5.2)



d4 <- d %>% 
  filter(pooled==1, analysis=="Region", region!="N.America & Europe", 
         Measure!="persistently wasted",
         outcome_variable %in% c("Relative risk of\nmortality by 24 months",
                                 "Relative risk of\npersistent wasting from 6-24mo",
                                 "Relative risk of concurrent\nwasting and stunting at 18mo")) %>%
  mutate(outcome_variable=factor(outcome_variable, levels=c("Relative risk of\nmortality by 24 months",
                                                            "Relative risk of\npersistent wasting from 6-24mo",
                                                            "Relative risk of concurrent\nwasting and stunting at 18mo"))) %>%
  arrange(outcome_variable, RR) %>% 
  mutate(outcome_label=factor(outcome_label, levels=unique(outcome_label))) %>%
  droplevels()

pregion <- ggplot(d4, aes(x=outcome_label, group=region)) +
  geom_point(aes(y=RR, color=Measure, shape=region), size=3, stroke = 1.5, position = position_dodge(0.4)) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2, color=Measure), position = position_dodge(0.4)) +
  #geom_tmext(aes(x=as.numeric(intervention_variable)+0.1, y=RR+0.1, label=BW), size=8) +
  labs(y = "", x = "Exposure 0-6 months") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(1, 2, 4, 8, 16, 32), trans='log10', labels=scaleFUN) +
  scale_colour_manual(values=cbbPalette[-1]) +
  scale_fill_manual(values=cbbPalette[-1]) +
  scale_size_manual(values=c(4,5)) +
  scale_shape_manual(values=c(16,17, 25, 22)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16),
        legend.position = "right") +
  facet_wrap(~outcome_variable, ncol=3, strip.position = "bottom") +
  #guides(shape="Region") +
  coord_flip(ylim=c(1,20)) +
  guides(
    shape = guide_legend(reverse = TRUE))


ggsave(pregion, file=paste0(BV_dir,"/figures/risk-factor/fig-mort+morb-RR_Region.png"), width=16, height=5.2)



