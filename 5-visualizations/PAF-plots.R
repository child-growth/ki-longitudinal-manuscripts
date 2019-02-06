

rm(list=ls())
library(tidyverse)

load('results/pool_par.RData')
par <-d
# load('results/pool_paf.RData')

RMA_clean <- function(RMAest, outcome="binary",
                      agecatlevels=c("3 months prevalence", "3-6 months\ncumulative incidence", "0-6 months (no birth st.)\ncumulative incidence","0-6 months\ncumulative incidence",
                                     "6 months prevalence","6-9 months\ncumulative incidence","9 months prevalence","9-12 months\ncumulative incidence","12 months prevalence",
                                     "12-15 months\ncumulative incidence","15 months prevalence","15-18 months\ncumulative incidence","18 months prevalence",
                                     "0-24 months (no birth st.)","6-24 months\ncumulative incidence","0-24 months (no birth st.)\ncumulative incidence","0-24 months\ncumulative incidence","24 months prevalence")){
  
  
  # #Make sure Nstudies is constant across RF levels
  # RMAest <- RMAest %>% group_by(agecat, intervention_variable) %>%
  #   mutate(Nstudies=paste0("N studies: ",max(Nstudies)),
  #          Nstudies=ifelse(intervention_level==first(intervention_level),Nstudies,"")) %>% ungroup()
  
  
  #Order factors for plotting
  table(RMAest$agecat)
  
  RMAest <- droplevels(RMAest)
  # RMAest$agecat <- as.character(RMAest$agecat)
  # 
  # if(outcome=="velocity"){
  #   RMAest$agecat[grepl("-",RMAest$agecat)] <- paste0(RMAest$agecat[grepl("-",RMAest$agecat)],"\nvelocity")
  # }else{
  #   if(outcome=="pers_wasted"){
  #     RMAest$agecat[grepl("-",RMAest$agecat)] <- paste0(RMAest$agecat[grepl("-",RMAest$agecat)],"\npersistant wasting")
  #   }else{
  #     RMAest$agecat[grepl("-",RMAest$agecat)] <- paste0(RMAest$agecat[grepl("-",RMAest$agecat)],"\ncumulative incidence")
  #     RMAest$agecat[!grepl("-",RMAest$agecat)] <- paste0(RMAest$agecat[!grepl("-",RMAest$agecat)]," prevalence")
  #   }
  # }
  # #RMAest$agecat[grepl(" \\(no birth st\\.\\)\\\ncumulative incidence",RMAest$agecat)] <- "cumulative incidence\n(no birth stunting)"
  # 
  # 
  # RMAest$agecat <- factor(RMAest$agecat, levels=agecatlevels)
  
  RMAest$RFlabel <- NA
  
  #Fix WHZ quartile RF levels
  RMAest$RFlabel[RMAest$RFlabel=="1" & RMAest$intervention_variable=="lag_WHZ_quart"] <- "WHZ Q1"
  RMAest$RFlabel[RMAest$RFlabel=="2" & RMAest$intervention_variable=="lag_WHZ_quart"] <- "WHZ Q2"
  RMAest$RFlabel[RMAest$RFlabel=="3" & RMAest$intervention_variable=="lag_WHZ_quart"] <- "WHZ Q3"
  RMAest$RFlabel[RMAest$RFlabel=="4" & RMAest$intervention_variable=="lag_WHZ_quart"] <- "WHZ Q4"
  
  #Change binary variables into yes/no
  binvars <- c("hdlvry","vagbrth", "enwast","anywast06","pers_wast", "earlybf","predexfd6",
               "predfeed3","predfeed36","predfeed6","exclfeed3","exclfeed36","exclfeed6",
               "perdiar6","perdiar24","impsan","safeh20","trth2o","impfloor","cleanck")
  RMAest$intervention_level[RMAest$intervention_level=="0" & RMAest$intervention_variable %in% binvars] <- "No"
  RMAest$intervention_level[RMAest$intervention_level=="1" & RMAest$intervention_variable %in% binvars] <- "Yes"
  
  #Att birthweight grams
  RMAest$intervention_level[RMAest$intervention_level=="Low birth weight"] <- "< 2500 g"
  RMAest$intervention_level[RMAest$intervention_level=="Normal or high birthweight"] <- ">= 2500 g"
  
  unique(RMAest$intervention_level)
  RMAest$intervention_level <- gsub("Wealth ","",RMAest$intervention_level)
  RMAest$intervention_level <- factor(RMAest$intervention_level, 
                                      levels=c("0","1", "No", "Yes",
                                               "<48 cm" , "[48-50) cm",  ">=50 cm",                                  
                                               "< 2500 g",">= 2500 g", 
                                               "2","3","4","5","6","7","8","9",  "10" , "11","12" ,
                                               "<32" , "[32-38)", ">=38",
                                               "Low", "Medium", "High",                    
                                               "<162 cm", "[162-167) cm" , ">=167 cm",
                                               "Preterm", "Early term", "Full or late term",           
                                               "Food Insecure", "Mildly Food Insecure", "Food Secure",               
                                               "Q1", "Q2", "Q3", "Q4",
                                               "<25","[25-30)",">=30",                      
                                               "Underweight", "Normal weight", "Overweight or Obese",
                                               "<151 cm", "[151-155) cm", ">=155 cm",
                                               "<52 kg", "[52-58) kg", ">=58 kg",
                                               "2+","3 or less","4-5","6-7","8+","3+","4+",                                                 
                                               "0%","(0%, 5%]",">5%","Female","Male",
                                               "WHZ Q1", "WHZ Q2", "WHZ Q3", "WHZ Q4"))
  
  
  
  unique(RMAest$intervention_variable)
  RMAest$intervention_variable <- factor(RMAest$intervention_variable,
                                         levels=c("sex","birthlen","birthwt", "gagebrth",
                                                  "hdlvry","vagbrth",
                                                  "enwast","anywast06","pers_wast",
                                                  "earlybf","predexfd6",
                                                  "predfeed3","predfeed36","predfeed6",
                                                  "exclfeed3","exclfeed36","exclfeed6",
                                                  "perdiar6","perdiar24",
                                                  "mage","fage","mhtcm","fhtcm",
                                                  "mwtkg","mbmi","single",
                                                  "meducyrs","feducyrs",
                                                  "parity",
                                                  "nchldlt5","nhh","nrooms",
                                                  "hhwealth_quart","hfoodsec",
                                                  "impsan","safeh20","trth2o",
                                                  "impfloor","cleanck",
                                                  "brthmon" ,"month",
                                                  "lag_WHZ_quart"))   
  
  
  #Add variable labels
  unique(RMAest$intervention_variable)
  
  RMAest$RFlabel[RMAest$intervention_variable=="sex"] <-  "Gender"
  RMAest$RFlabel[RMAest$intervention_variable=="enwast"] <-  "Enrolled wasted"
  RMAest$RFlabel[RMAest$intervention_variable=="gagebrth"] <-  "Gestational age at birth"
  RMAest$RFlabel[RMAest$intervention_variable=="predexfd6"] <-  "Excl./Pred. breastfeeding under 6 months"
  RMAest$RFlabel[RMAest$intervention_variable=="mage"] <- "Mother's age" 
  RMAest$RFlabel[RMAest$intervention_variable=="mhtcm"] <- "Mother's height" 
  RMAest$RFlabel[RMAest$intervention_variable=="mwtkg"] <- "Mother's weight" 
  RMAest$RFlabel[RMAest$intervention_variable=="mbmi"] <- "Mother's BMI" 
  RMAest$RFlabel[RMAest$intervention_variable=="meducyrs"] <- "Mother's education" 
  RMAest$RFlabel[RMAest$intervention_variable=="parity"] <-  "Birth order" 
  RMAest$RFlabel[RMAest$intervention_variable=="hfoodsec"] <- "Household food security" 
  RMAest$RFlabel[RMAest$intervention_variable=="nchldlt5"] <-   "Number of children <5 in household"
  RMAest$RFlabel[RMAest$intervention_variable=="hhwealth_quart"] <-  "Household wealth" 
  RMAest$RFlabel[RMAest$intervention_variable=="fage"] <- "Father's age" 
  RMAest$RFlabel[RMAest$intervention_variable=="fhtcm"] <- "Father's height" 
  RMAest$RFlabel[RMAest$intervention_variable=="birthwt"] <- "Birthweight (kg)" 
  RMAest$RFlabel[RMAest$intervention_variable=="birthlen"] <- "Birth length (cm)" 
  RMAest$RFlabel[RMAest$intervention_variable=="vagbrth"] <- "Vaginal birth" 
  RMAest$RFlabel[RMAest$intervention_variable=="hdlvry"] <- "Child delivered at home" 
  RMAest$RFlabel[RMAest$intervention_variable=="single"] <- "Single parent" 
  RMAest$RFlabel[RMAest$intervention_variable=="nrooms"] <- "Number of rooms in household" 
  RMAest$RFlabel[RMAest$intervention_variable=="nhh"] <- "Number of people in household" 
  RMAest$RFlabel[RMAest$intervention_variable=="meducyrs"] <- "Maternal education quartile" 
  RMAest$RFlabel[RMAest$intervention_variable=="feducyrs"] <- "Paternal education quartile" 
  RMAest$RFlabel[RMAest$intervention_variable=="anywast06"] <- "Any wasting before 6 months age" 
  RMAest$RFlabel[RMAest$intervention_variable=="pers_wast"] <- "Persistent wasting before 6 months age" 
  RMAest$RFlabel[RMAest$intervention_variable=="trth2o"] <- "Treats drinking water" 
  RMAest$RFlabel[RMAest$intervention_variable=="cleanck"] <- "Clean cooking fuel usage" 
  RMAest$RFlabel[RMAest$intervention_variable=="impfloor"] <- "Improved floor" 
  RMAest$RFlabel[RMAest$intervention_variable=="impsan"] <- "Improved sanitation" 
  RMAest$RFlabel[RMAest$intervention_variable=="safeh20"] <- "Safe water source" 
  RMAest$RFlabel[RMAest$intervention_variable=="perdiar6"] <- "Percent days with diarrhea under 6 months" 
  RMAest$RFlabel[RMAest$intervention_variable=="perdiar24"] <- "Percent days with diarrhea under 24 months" 
  RMAest$RFlabel[RMAest$intervention_variable=="earlybf"] <- "Breastfeed within an hour of birth" 
  RMAest$RFlabel[RMAest$intervention_variable=="predfeed3"] <-  "Predominant breastfeeding under 3 months"
  RMAest$RFlabel[RMAest$intervention_variable=="predfeed36"] <-  "Predominant breastfeeding from 3-6 months"
  RMAest$RFlabel[RMAest$intervention_variable=="predfeed6"] <-  "Predominant breastfeeding under 6 months"
  RMAest$RFlabel[RMAest$intervention_variable=="exclfeed3"] <-  "Exclusive breastfeeding under 3 months"
  RMAest$RFlabel[RMAest$intervention_variable=="exclfeed36"] <-  "Exclusive breastfeeding from 3-6 months"
  RMAest$RFlabel[RMAest$intervention_variable=="exclfeed6"] <-  "Exclusive breastfeeding under 6 months"
  RMAest$RFlabel[RMAest$intervention_variable=="month"] <-  "Month of measurement"
  RMAest$RFlabel[RMAest$intervention_variable=="brthmon"] <-  "Birth month"
  RMAest$RFlabel[RMAest$intervention_variable=="lag_WHZ_quart"] <-  "Mean WHZ in the prior 3 months"
  
  RMAest$intervention_variable <- factor(RMAest$intervention_variable)
  
  
  RMAest$RFtype <- NA
  RMAest$RFtype[RMAest$intervention_variable=="sex"] <-  "Birth characteristics"
  RMAest$RFtype[RMAest$intervention_variable=="enwast"] <-  "Wasting" 
  RMAest$RFtype[RMAest$intervention_variable=="gagebrth"] <-  "Birth characteristics"
  RMAest$RFtype[RMAest$intervention_variable=="predexfd6"] <-  "Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="mage"] <- "Parent background" 
  RMAest$RFtype[RMAest$intervention_variable=="mhtcm"] <- "Parent anthro" 
  RMAest$RFtype[RMAest$intervention_variable=="mwtkg"] <- "Parent anthro" 
  RMAest$RFtype[RMAest$intervention_variable=="mbmi"] <- "Parent anthro" 
  RMAest$RFtype[RMAest$intervention_variable=="parity"] <-  "Birth characteristics" 
  RMAest$RFtype[RMAest$intervention_variable=="hfoodsec"] <- "SES" 
  RMAest$RFtype[RMAest$intervention_variable=="nchldlt5"] <-   "Household"
  RMAest$RFtype[RMAest$intervention_variable=="hhwealth_quart"] <-  "SES" 
  RMAest$RFtype[RMAest$intervention_variable=="fage"] <- "Parent background" 
  RMAest$RFtype[RMAest$intervention_variable=="fhtcm"] <- "Parent anthro" 
  RMAest$RFtype[RMAest$intervention_variable=="birthwt"] <- "Birth characteristics"
  RMAest$RFtype[RMAest$intervention_variable=="birthlen"] <- "Birth characteristics"
  RMAest$RFtype[RMAest$intervention_variable=="vagbrth"] <- "Birth characteristics"
  RMAest$RFtype[RMAest$intervention_variable=="hdlvry"] <- "Birth characteristics" 
  RMAest$RFtype[RMAest$intervention_variable=="single"] <- "Parent background"
  RMAest$RFtype[RMAest$intervention_variable=="nrooms"] <- "Household"
  RMAest$RFtype[RMAest$intervention_variable=="nhh"] <- "Household"
  RMAest$RFtype[RMAest$intervention_variable=="meducyrs"] <- "Parent background" 
  RMAest$RFtype[RMAest$intervention_variable=="feducyrs"] <- "Parent background" 
  RMAest$RFtype[RMAest$intervention_variable=="anywast06"] <- "Wasting" 
  RMAest$RFtype[RMAest$intervention_variable=="pers_wast"] <- "Wasting" 
  RMAest$RFtype[RMAest$intervention_variable=="trth2o"] <- "WASH" 
  RMAest$RFtype[RMAest$intervention_variable=="cleanck"] <- "Household"
  RMAest$RFtype[RMAest$intervention_variable=="impfloor"] <- "WASH" 
  RMAest$RFtype[RMAest$intervention_variable=="impsan"] <- "WASH" 
  RMAest$RFtype[RMAest$intervention_variable=="safeh20"] <- "WASH" 
  RMAest$RFtype[RMAest$intervention_variable=="perdiar6"] <-  "Postnatal child health"
  RMAest$RFtype[RMAest$intervention_variable=="perdiar24"] <-  "Postnatal child health"
  RMAest$RFtype[RMAest$intervention_variable=="earlybf"] <-"Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="predfeed3"] <- "Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="predfeed36"] <-  "Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="predfeed6"] <-  "Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="exclfeed3"] <-  "Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="exclfeed36"] <- "Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="exclfeed6"] <-  "Breastfeeding"
  RMAest$RFtype[RMAest$intervention_variable=="month"] <-  "Time"
  RMAest$RFtype[RMAest$intervention_variable=="brthmon"] <-  "Time"
  RMAest$RFtype[RMAest$intervention_variable=="enwast"] <-  "Postnatal child health"
  RMAest$RFtype[RMAest$intervention_variable=="anywast06"] <-  "Postnatal child health"
  RMAest$RFtype[RMAest$intervention_variable=="pers_wast"] <-  "Postnatal child health"
  
  
  
  
  
  return(RMAest)
}

d <- RMA_clean(d)

# select only pooled
d <- d %>% 
  filter(pooled == 1, 
                  Region == 'Pooled',
                  outcome_variable == 'ever_stunted',
                  agecat == '0-24 months\ncumulative incidence') 
d <- d[grepl("Random",d$studyid),]
d <- d %>% arrange(RFlabel, PAR)

yticks <- c( 0.5,0.6,0.7, 0.8,0.9, 1.00)

#hbgdki pallet
tableau10 <- c("Black","#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")
scaleFUN <- function(x) sprintf("%.1f", x)

#df$agecat <- "0-24 months cumulative incidence\n(no birth stunting)"
Ylab <- "Relative Risk of EBF compared to no EBF"
  
  
  

p <-  ggplot(d, aes(x=RFlabel)) + 
  geom_point(aes( y=PAR,  color=RFtype), size = 4) +
  geom_linerange(aes(ymin=PAR.CI1, ymax=PAR.CI2, color=RFtype)) +
  coord_flip() +
  # coord_flip(ylim=range(0.5,1)) +
  labs(x = "Exposure", y = "Percent reduction in cumulative incidence of stunting\nassociated with assigning each variable optimally") +
  geom_hline(yintercept = 1) +
  scale_y_continuous(breaks=yticks, labels=scaleFUN) +
  scale_shape_manual(values=c(21, 23)) +
  scale_colour_manual(values=tableau10, name = "Exposure\nCategory") +
  # scale_size_continuous(range = c(0, 0.5))+
  theme(strip.background = element_blank(),
        legend.position="right",
        strip.text.x = element_text(size=12),
        axis.text.x = element_text(size=12, angle = 45, hjust = 1)) +
  ggtitle("Exposures ranked by\nPAR") +guides(shape=FALSE)
print(p)

ggsave(p, file="figures/Stunting_par.png", width=6, height=5.6)
  














