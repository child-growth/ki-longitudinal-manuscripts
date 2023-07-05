
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
  filter(outcome_variable %in% c("co_occurence","pers_wasted624"), intervention_variable!="pers_wasted06") 
table(dfull$country)

dHR <- readRDS(paste0(BV_dir,"/results/cox_results_no_overlap.RDS")) %>% filter(!is.na(HR))
table(dHR$studyid)
unique(dHR$studyid)



#----------------------------------------
# Clean mortality data
#----------------------------------------
unique(dHR$X)
dHR <- dHR %>%
  mutate(
    cgf_cat = case_when(X=="stunt"  ~ "Mod. stunted alone", 
                      X=="wast"  ~ "Mod. wasted alone",
                      X=="wast_muac"  ~ "Wasted (MUAC)",
                      X=="underwt"  ~ "Mod. underweight alone",          
                      X=="sstunt"  ~ "Sev. stunted alone",          
                      X=="swast"  ~ "Sev. wasted alone",           
                      X=="swast_muac"  ~ "Sev. wasted (MUAC)",           
                      X=="sunderwt"  ~ "Sev. underweight alone",        
                      X=="stunt_uwt"  ~ "Mod. stunted + underweight",       
                      X=="wast_uwt"  ~ "Mod. wasted + underweight",        
                      X=="co"  ~ "Mod. wasted + stunted",  
                      X=="sstunt_suwt"  ~ "Sev. stunted + underweight",       
                      X=="swast_suwt"  ~ "Sev. wasted + underweight",    
                      X=="sev_co"  ~ "Sev. wasted + stunted"))

dHR <- dHR  %>% 
  droplevels(.) %>%
  dplyr::filter(cgf_cat != "Wasted (MUAC)", 
                cgf_cat != "Sev. wasted (MUAC)") %>%
  filter(!grepl("ever_",X), method=="RE"|is.na(method), 
          is.na(region)|is.na(method), agecat=="overall", adj==0, is.na(sex))


unique(dHR$X)
unique(dHR$cgf_cat)
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
                    "sev_co"  ="wasted and stunted" , 
                    "wast_uwt" ="wasted and underweight" , 
                    "stunt_uwt" ="stunted and underweight")

names(dHR)[names(dHR) == 'HR'] <- 'RR'
names(dHR)[names(dHR) == 'ci.lb'] <- 'RR.CI1'
names(dHR)[names(dHR) == 'ci.ub'] <- 'RR.CI2'

dHR <- dHR %>%
  add_column(outcome_variable = 'Relative hazard of\nmortality before 24 months')
unique(dHR$studyid)


dropped <- c("studyid", "region", "est", "se", "N", "sparseN",  "Nstudies", "method", "X", "Y", "adj", "agecat", "df", "sex", "logHR.psi", "logSE", "HR.CI1", "HR.CI2")
dHR <- dHR[ , !(names(dHR) %in% dropped)]

table(dHR$pooled)
pmort_data_cohort <- dHR %>% filter(pooled==0)
p_prim_pooled  <- dHR %>% filter(pooled==1) %>% arrange(RR)
dim(p_prim_pooled)
p_prim_pooled

p_prim_pooled %>% select(Measure, RR, RR.CI1, RR.CI2)


#----------------------------------------
# Clean morbidity data
#----------------------------------------
unique(dfull$type)
d <- dfull %>% filter(type=="RR") %>% droplevels(.)
#d <- dfull %>% filter(type=="RR", adjusted==1) %>% droplevels(.)

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
  mutate(analysis = factor(analysis, levels=c("Random Effects", "Fixed Effects","Region"))) %>%
  mutate(pooled=1)

#Save cleaned data
saveRDS(RMAest, paste0(BV_dir,"/results/rf results/pooled_morbidity_RR_results.rds"))


d <- d %>% 
  mutate(cohort = paste0(studyid,"-",country),pooled=0) %>%
  subset(., select = c(cohort,  intervention_variable, outcome_variable, estimate,  ci_lower, ci_upper, pooled)) %>%
  rename(RR=estimate,  RR.CI1=ci_lower, RR.CI2=ci_upper)

d <- bind_rows(RMAest, d)
d <- droplevels(d)


#--------------------------------------------------------------
# Clean labels
#--------------------------------------------------------------

unique(d$intervention_variable)

d$cgf_cat <- NA
d$cgf_cat[d$intervention_variable=="ever_wasted06"] <- "Mod. wasted alone" 
d$cgf_cat[d$intervention_variable=="ever_swasted06"] <-  "Sev. wasted alone" 

d$cgf_cat[d$intervention_variable=="ever_stunted06"] <- "Mod. stunted alone" 
d$cgf_cat[d$intervention_variable=="ever_sstunted06"] <- "Sev. stunted alone" 

d$cgf_cat[d$intervention_variable=="ever_underweight06"] <-  "Mod. underweight alone"
d$cgf_cat[d$intervention_variable=="ever_sunderweight06"] <-  "Sev. underweight alone"

d$cgf_cat[d$intervention_variable=="ever_co06"] <-  "Mod. wasted + stunted"
d$cgf_cat[d$intervention_variable=="ever_sev_co06"] <-  "Sev. stunted + underweight"

d$cgf_cat[d$intervention_variable=="ever_wast_uwt06"] <-  "Mod. wasted + underweight"
d$cgf_cat[d$intervention_variable=="ever_stunt_uwt06"] <-  "Mod. stunted + underweight"

d$cgf_cat[d$intervention_variable=="ever_swast_suwt06"] <-  "Sev. wasted + underweight"
d$cgf_cat[d$intervention_variable=="ever_sstunt_suwt06"] <-  "Sev. wasted + stunted"
table(d$cgf_cat)


# d$Measure <- NA
# d$Measure <- ifelse(grepl("nderweight",d$RFlabel),"Underweight",d$Measure)
# d$Measure <- ifelse(grepl("tunted",d$RFlabel),"Stunted",d$Measure)
# d$Measure <- ifelse(grepl("asted",d$RFlabel),"Wasted",d$Measure)
# d$Measure <- ifelse(grepl("ersistently wasted",d$RFlabel),"Persistently wasted",d$Measure)
# d$Measure <- ifelse(grepl("asted and stunted",d$RFlabel),"Wasted and stunted",d$Measure)
# d$Measure <- ifelse(grepl("asted and underweight",d$RFlabel),"Wasted and underweight",d$Measure)
# d$Measure <- ifelse(grepl("tunted and underweight",d$RFlabel),"Stunted and underweight",d$Measure)
# table(d$Measure)
# 
# 
# d$severe <- factor(ifelse(grepl("evere",d$RFlabel),"Yes","No"))
# table(d$severe)

unique(d$outcome_variable)
d$outcome_variable <- factor(d$outcome_variable, levels=c("pers_wasted624", "co_occurence"))
levels(d$outcome_variable) <- c(#"Relative risk of\nmortality by 24 months",
  "Relative risk of\npersistent wasting from 6-24mo",  
  "Relative risk of concurrent\nwasting and stunting at 18mo"
)
table(d$outcome_variable)
table(d$intervention_variable)


d$intervention_variable <- factor(d$cgf_cat)
d<-droplevels(d)

d$intervention_variable <- as.character(d$intervention_variable)
d <- d %>% arrange(outcome_variable, RR)
d$intervention_variable <- factor(d$intervention_variable, levels=unique(d$intervention_variable))


d$severe<-factor(ifelse(grepl("ev.",d$cgf_cat),1,0),levels=c("0","1"))

table(d$cgf_cat)
table(is.na(d$cgf_cat))
table(d$intervention_variable, is.na(d$cgf_cat))

#--------------------------------------------------------------
# Seperate datasets
#--------------------------------------------------------------


 
# #keep only morbidity analysis
pmorb_data <- d %>% filter( outcome_variable=="Relative risk of\npersistent wasting from 6-24mo" | outcome_variable=="Relative risk of concurrent\nwasting and stunting at 18mo") %>% 
  filter(analysis=="Random Effects"|is.na(analysis)) %>% arrange(outcome_variable, RR) %>%
  mutate(cgf_cat=factor(cgf_cat, levels=unique(cgf_cat))) 

# Merge HR data into pmorb_data
table(pmorb_data$outcome_variable)

p_data <- merge(x = p_prim_pooled, y = pmorb_data, all = TRUE) 
table(p_data$outcome_variable)
table(p_data$cohort)

p_data$outcome_variable <- factor(p_data$outcome_variable, levels = c("Relative hazard of\nmortality before 24 months", "Relative risk of concurrent\nwasting and stunting at 18mo", "Relative risk of\npersistent wasting from 6-24mo"))
p_data$Measure <- factor(p_data$Measure, levels = c("stunted","wasted","underweight", "wasted and stunted", "stunted and underweight", "wasted and underweight"))  
p_data$severe <- factor(p_data$severe, levels = c("0","1"))



p_data_pooled <- p_data[p_data$pooled==1,]
p_data_cohort <- p_data[p_data$pooled==0,]
table(p_data_pooled$outcome_variable)

table(p_data_pooled$cgf_cat)
p_data_pooled <- p_data_pooled %>% arrange(pooled, outcome_variable, RR) %>%
  mutate(cgf_cat=factor(cgf_cat, levels=unique(cgf_cat)))
levels(p_data_pooled$cgf_cat)
unique(p_data_pooled$Measure)


p_flurry <- ggplot(p_data_pooled, aes(x=cgf_cat)) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2), color="#287D8EFF") +
  geom_point(aes(y=RR), color="#878787", fill="#878787", size=2, stroke=0,
             data=p_data_cohort,
             position=position_jitter(width=0.2), alpha=0.5) +
  geom_point(aes(y=RR), color="#878787", fill="#878787", size=2, stroke=0,
             data=pmort_data_cohort,
             position=position_jitter(width=0.2), alpha=0.5) +
  geom_point(aes(y=RR), size=3, stroke = 1, color="#287D8EFF") +
  labs(y = "", x = "CGF Exposure") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(0.5 ,1, 2, 4, 8, 16), trans='log10', labels=c("0.5","1","2","4","8","16")) +
  #scale_colour_manual(values=cbbPalette[-1]) +
  scale_size_manual(values=c(4,5)) + 
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        axis.text.x = element_text(size=12),
        axis.text.y = element_text(size=12),
        text = element_text(size=16),  strip.text=element_text(size=14, vjust=0.8),
        legend.position = "none") + 
  facet_wrap(~outcome_variable, ncol=3, strip.position = "bottom") +
  coord_flip(ylim=c(0.4,16))
p_flurry

ggsave(p_flurry, file=paste0(BV_dir,"/figures/risk-factor/fig-mort+morb-RR-flurry-no-overlap.png"), width=14, height=5.2)

#Save plot object
saveRDS(p_flurry, file=paste0(BV_dir,"/results/rf_mort+morbno-overlap_plot_object.RDS"))



#Split into seperate plots
pmort_flurry <- ggplot(p_data_pooled %>% filter(outcome_variable=="Relative hazard of\nmortality before 24 months"),
                       aes(x=cgf_cat)) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2), color="#287D8EFF") +
  geom_point(aes(y=RR), color="#878787", fill="#878787", size=2, stroke=0,
             data=pmort_data_cohort,
             position=position_jitter(width=0.2), alpha=0.5) +
  geom_point(aes(y=RR), size=3, stroke = 1, color="#287D8EFF") +
  labs(y = "", x = "Exposure prior to\ndeath or censoring") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(0.5 ,1, 2, 4, 8, 16), trans='log10', labels=c("0.5","1","2","4","8","16")) +
  #scale_colour_manual(values=cbbPalette[-1]) +
  scale_size_manual(values=c(4,5)) + 
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        axis.text.x = element_text(size=12),
        axis.text.y = element_text(size=12),
        text = element_text(size=16),  strip.text=element_text(size=14, vjust=0.8),
        legend.position = "none") + 
  facet_wrap(~outcome_variable, ncol=1, strip.position = "bottom") +
  coord_flip(ylim=c(0.4,16))
pmort_flurry

ggsave(pmort_flurry, file=paste0(BV_dir,"/figures/risk-factor/fig-mort-RR-flurry-no-overlap.png"), width=6, height=5.2)


pmorb_flurry <- ggplot(p_data_pooled %>% filter(outcome_variable!="Relative hazard of\nmortality before 24 months"),
                       aes(x=cgf_cat)) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2), color="#287D8EFF") +
  geom_point(aes(y=RR), color="#878787", fill="#878787", size=2, stroke=0,
             data=p_data_cohort,
             position=position_jitter(width=0.2), alpha=0.5) +
  geom_point(aes(y=RR), size=3, stroke = 1, color="#287D8EFF") +
  labs(y = "", x = "Exposure: cumulative incidence\nunder 6 mo.") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(0.5 ,1, 2, 4, 8, 16), trans='log10', labels=c("0.5","1","2","4","8","16")) +
  #scale_colour_manual(values=cbbPalette[-1]) +
  scale_size_manual(values=c(4,5)) + 
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        axis.text.x = element_text(size=12),
        axis.text.y = element_text(size=12),
        text = element_text(size=16),  strip.text=element_text(size=14, vjust=0.8),
        #axis.text.y = element_blank(),
        legend.position = "none") + 
  facet_wrap(~outcome_variable, ncol=2, strip.position = "bottom") +
  coord_flip(ylim=c(0.9,16))
pmorb_flurry

#Save plot object
saveRDS(list(pmort_flurry,pmorb_flurry), file=paste0(BV_dir,"/results/rf_mort+morb-no-overlap_plots-seperated_objects.RDS"))





# #Without cohort-specific estimates
# unique(p_data_pooled$outcome_variable)
# 
# pmort <- ggplot(p_data_pooled %>% filter(outcome_variable=="Relative hazard of\nmortality before 24 months") %>%
#                   arrange(RR) %>% mutate(cgf_cat=factor(cgf_cat, levels=unique(cgf_cat))),
#                        aes(x=cgf_cat)) +
#   geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2), color="#287D8EFF") +
#   geom_point(aes(y=RR), size=3, stroke = 1, color="#287D8EFF") +
#   labs(y = "", x = "CGF Exposure prior\nto death or censoring") +
#   geom_hline(yintercept = 1, linetype = "dashed") +
#   scale_y_continuous(breaks=c(0.5 ,1, 2, 4, 8, 16), trans='log10', labels=c("0.5","1","2","4","8","16")) +
#   scale_size_manual(values=c(4,5)) + 
#   scale_shape_manual(values=c(16,21)) +
#   theme(strip.placement = "outside",
#         panel.spacing = unit(0, "lines"),
#         plot.title = element_text(hjust = 0.5),
#         strip.background = element_blank(),
#         text = element_text(size=16),  strip.text=element_text(size=14, vjust=0.8),
#         legend.position = "none") + 
#   facet_wrap(~outcome_variable, ncol=1, strip.position = "bottom") +
#   coord_flip(ylim=c(0.4,16))
# pmort
# 
# p_co <- ggplot(p_data_pooled %>% filter(outcome_variable=="Relative risk of concurrent\nwasting and stunting at 18mo") %>%
#                  arrange(RR) %>% mutate(cgf_cat=factor(cgf_cat, levels=unique(cgf_cat))),
#                        aes(x=cgf_cat)) +
#   geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2), color="#287D8EFF") +
#   geom_point(aes(y=RR), size=3, stroke = 1, color="#287D8EFF") +
#   labs(y = "", x = "Exposure: cumulative incidence\nunder 6 mo.") +
#   geom_hline(yintercept = 1, linetype = "dashed") +
#   scale_y_continuous(breaks=c(0.5 ,1, 2, 4, 8, 16), trans='log10', labels=c("0.5","1","2","4","8","16")) +
#   #scale_colour_manual(values=cbbPalette[-1]) +
#   scale_size_manual(values=c(4,5)) + 
#   scale_shape_manual(values=c(16,21)) +
#   theme(strip.placement = "outside",
#         panel.spacing = unit(0, "lines"),
#         plot.title = element_text(hjust = 0.5),
#         strip.background = element_blank(),
#         text = element_text(size=16),  strip.text=element_text(size=14, vjust=0.8),
#         #axis.text.y = element_blank(),
#         legend.position = "none") + 
#   facet_wrap(~outcome_variable, ncol=2, strip.position = "bottom") +
#   coord_flip(ylim=c(0.9,10))
# p_co
# 
# 
# p_pers <- ggplot(p_data_pooled %>% filter(outcome_variable=="Relative risk of\npersistent wasting from 6-24mo") %>%
#                    arrange(RR) %>% mutate(cgf_cat=factor(cgf_cat, levels=unique(cgf_cat))),
#                aes(x=cgf_cat)) +
#   geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2), color="#287D8EFF") +
#   geom_point(aes(y=RR), size=3, stroke = 1, color="#287D8EFF") +
#   labs(y = "", x = " Exposure: cumulative incidence\nunder 6 mo.") +
#   geom_hline(yintercept = 1, linetype = "dashed") +
#   scale_y_continuous(breaks=c(0.5 ,1, 2, 4, 8, 16), trans='log10', labels=c("0.5","1","2","4","8","16")) +
#   #scale_colour_manual(values=cbbPalette[-1]) +
#   scale_size_manual(values=c(4,5)) + 
#   scale_shape_manual(values=c(16,21)) +
#   theme(strip.placement = "outside",
#         panel.spacing = unit(0, "lines"),
#         plot.title = element_text(hjust = 0.5),
#         strip.background = element_blank(),
#         text = element_text(size=16),  strip.text=element_text(size=14, vjust=0.8),
#         #axis.text.y = element_blank(),
#         legend.position = "none") + 
#   facet_wrap(~outcome_variable, ncol=2, strip.position = "bottom") +
#   coord_flip(ylim=c(0.9,10))
# p_pers