
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



dHR <- readRDS(paste0(BV_dir,"/results/cox_results_no_overlap_agestrat.RDS")) %>% filter(!is.na(HR))
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
          is.na(region)|is.na(method), agecat=="overall", adj==0)


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
p_prim_pooled

p_prim_pooled %>% select(Measure, RR, RR.CI1, RR.CI2)



p_data <- p_prim_pooled
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





#Without cohort-specific estimates
unique(p_data_pooled$outcome_variable)

table(p_data_pooled$cgf_cat, p_data_pooled$agecat_strat)

pmort <- ggplot(p_data_pooled %>% filter(outcome_variable=="Relative hazard of\nmortality before 24 months") %>%
                  arrange(RR) %>% mutate(cgf_cat=factor(cgf_cat, levels=unique(cgf_cat))),
                       aes(x=agecat_strat)) +
  facet_wrap(~cgf_cat) +
  geom_linerange(aes(ymin=RR.CI1, ymax=RR.CI2), color="#287D8EFF") +
  geom_point(aes(y=RR), size=3, stroke = 1, color="#287D8EFF") +
  labs(y = "", x = "CGF Exposure prior\nto death or censoring") +
  geom_hline(yintercept = 1, linetype = "dashed") +
  scale_y_continuous(breaks=c(0.5 ,1, 2, 4, 8, 16), trans='log10', labels=c("0.5","1","2","4","8","16")) +
  scale_size_manual(values=c(4,5)) + 
  scale_shape_manual(values=c(16,21)) +
  theme(strip.placement = "outside",
        panel.spacing = unit(0, "lines"),
        plot.title = element_text(hjust = 0.5),
        strip.background = element_blank(),
        text = element_text(size=16), 
        legend.position = "none") + 
  coord_flip(ylim=c(0.2,32))
pmort
