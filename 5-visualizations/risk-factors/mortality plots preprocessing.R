

rm(list=ls())
library(tidyverse)
library(ggthemes)
library(metafor)

source("C:/Users/andre/Documents/HBGDki/bmgf_shiny_app/HBGDki_shared_functions.R")

#------------------------------------------------
# Data Loading and Pre-processing
#------------------------------------------------

# Load data
try(setwd('C:/Users/andre/Documents/HBGDki/sprint_7D_longbow/'))
try(d <- get(load('wasting_analyses/wasting_results.rdata')))


#Subset to relative risks
d <- d %>% filter(type == "RR")

#Mark unadjusted vs. adjusted
d$unadjusted <- as.numeric(grepl("unadjus",d$adjustment_set))
table(d$unadjusted)

#Mark birthweight stratified
d$birthweight_strat <- as.character(as.numeric(grepl("birthwt:",d$strata_label)))
d$birthweight_strat[d$birthweight_strat=="1" & d$birthwt=="Low birth weight"] <- "Low birth weight"
d$birthweight_strat[d$birthweight_strat=="1" & d$birthwt=="Normal or high birthweight"] <- "Normal birthweight"
table(d$birthweight_strat)

#Drop duplicates
dim(d)
d <- distinct(d, strata_label, adjustment_set, outcome_variable, intervention_variable, intervention_level, parameter, estimate,  ci_lower, ci_upper, .keep_all=T)
dim(d)

#Add agecat for mortality outcomes
d$agecat <- "unstratified"

#------------------------------------------------
#Study capitalization function
#------------------------------------------------
simpleCap <- function(x) {
  s <- strsplit(x, " ")[[1]]
  paste(toupper(substring(s, 1,1)), tolower(substring(s, 2)),
        sep="", collapse=" ")
}


#------------------------------------------------
#Forest plot function
#------------------------------------------------
measure="RR"

#Strip grant identifier and add country
d$studyid <- gsub("^k.*?-" , "", d$studyid)
d$studyid <- paste0(d$studyid, ", ", paste0(substring(as.character(d$country),1,1), tolower(substring(as.character(d$country),2))))
d$studyid <- gsub("Tanzania, united republic of", "Tanzania", d$studyid)
d$studyid <- gsub("africa", "Africa", d$studyid)

#Add Region
d <- d %>% mutate(Region = case_when(
  country=="BANGLADESH" | country=="INDIA"|
    country=="NEPAL" | country=="PAKISTAN"|
    country=="PHILIPPINES"                   ~ "Asia", 
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



#Pooled effects
RMAest_RE <- d %>% group_by(intervention_variable, agecat, intervention_level, outcome_variable, unadjusted,birthweight_strat) %>%
  do(try(poolRR(.))) %>% mutate(studyid="Pooled - Random", Region="Pooled", pooled=1) %>% as.data.frame()
RMAest_RE_asia <- d %>% filter(Region=="Asia") %>% group_by(intervention_variable, agecat, intervention_level, outcome_variable, unadjusted,birthweight_strat) %>%
  do(try(poolRR(.))) %>% mutate(studyid="Pooled - Random", Region="Asia", pooled=1) %>% as.data.frame()



#merge in pooled effects
d <- d %>% rename(RR=estimate, RR.CI1=ci_lower, RR.CI2=ci_upper) %>% 
  mutate(Nstudies=1, pooled=0, Region=as.character(Region)) %>% 
  subset(., select=c(studyid, country, Region, intervention_variable,agecat,intervention_level, baseline_level,
                     RR, RR.CI1, RR.CI2, pooled, adjustment_set, outcome_variable, unadjusted,birthweight_strat))
dfull <- bind_rows(d, RMAest_RE, RMAest_RE_asia)


#d <- RMAest_RE
d <- bind_rows(RMAest_RE, RMAest_RE_asia)


d <- droplevels(d)
d$agecat <- as.character(d$agecat)
d$agecat <- gsub(" \\(no birth st.\\)","", d$agecat)
d$agecat <- gsub(" \\(no birth wast\\)","", d$agecat)
table(d$agecat)

d <- d %>% filter(
  agecat=="unstratified" |
    agecat=="0-24 months" |
    agecat=="0-6 months" | 
    agecat=="24 months" |
    agecat=="6-24 months" | 
    agecat=="6 months" |
    agecat=="Birth")

d$agecat[grepl("-",d$agecat)] <- paste0(d$agecat[grepl("-",d$agecat)],"\ncumulative incidence")
d$agecat[!grepl("-",d$agecat)] <- paste0(d$agecat[!grepl("-",d$agecat)]," prevalence")
d$agecat[d$agecat=="Birth"] <- "Birth prevalence"
d$agecat[grepl("06", d$intervention_variable)] <- "0-6 months\ncumulative incidence"
d$agecat[grepl("024", d$intervention_variable)] <- "0-24 months\ncumulative incidence"


d$agecat <- factor(d$agecat, levels=c("unstratified", "Birth prevalence", "0-6 months\ncumulative incidence",
                                      "6 months prevalence","6-24 months\ncumulative incidence",
                                      "0-24 months\ncumulative incidence","24 months prevalence"))

unique(d$intervention_level)
d$intervention_level <- factor(d$intervention_level, 
                               levels=c("0","1",
                                        "<48 cm" , "[48-50) cm",                                    
                                        "Low birth weight","Normal or high birthweight", 
                                        "2","3","4","5","6","7","8","9",  "10" , "11","12" ,
                                        "<32" , "[32-38)", ">=38",
                                        "Low", "Medium", "High",                    
                                        "<162 cm", "[162-167) cm" , ">=167 cm",
                                        "Preterm", "Early term", "Full or late term",           
                                        "Food Insecure", "Mildly Food Insecure", "Food Secure",               
                                        "Wealth Q1", "Wealth Q2", "Wealth Q3", "Wealth Q4",
                                        "<25","[25-30)",">=30",                      
                                        "Underweight", "Normal weight", "Overweight or Obese",
                                        "<151 cm", "[151-155) cm", ">=155 cm",
                                        "<52 kg", "[52-58) kg", ">=58 kg",
                                        "2+","3 or less","4-5","6-7","8+","3+","4+",                                                 
                                        "0%","(0%, 5%]",">5%","Female","Male",
                                        "WHZ Q1", "WHZ Q2", "WHZ Q3", "WHZ Q4"))



unique(d$intervention_variable)
d$intervention_variable <- factor(d$intervention_variable,
                                  levels=c("sex","birthlen","birthwt", "gagebrth",
                                           "hdlvry","vagbrth",
                                           "enwast","enstunt","anywast06","pers_wast",
                                           "earlybf","predexfd6",
                                           "predfeed3","predfeed36","predfeed6",
                                           "exclfeed3","exclfeed36","exclfeed6",
                                           "perdiar6","perdiar24",
                                           "mage","fage","mhtcm","fhtcm",
                                           "mwtkg","mbmi","single",
                                           "meducyrs","feducyrs","parity",
                                           "nchldlt5","nhh","nrooms",
                                           "hhwealth_quart","hfoodsec",
                                           "impsan","safeh20","trth2o",
                                           "impfloor","cleanck",
                                           "brthmon" ,"month",
                                           "lag_WHZ_quart",
                                           "ever_wasted06",      
                                           "ever_swasted06",      "pers_wasted06",       "ever_stunted06",      "ever_sstunted06",    
                                           "ever_wasted024",      "ever_swasted024",     "pers_wasted024",      "ever_stunted024",    
                                           "ever_sstunted024",    "ever_wasted06_noBW",  "ever_swasted06_noBW", "ever_wasted024_noBW",
                                           "ever_swasted024_noBW","ever_underweight06",  "ever_sunderweight06", "ever_underweight024",
                                           "ever_sunderweight024","ever_co06", "ever_co024"  
                                  ))   


#Add variable labels
unique(d$intervention_variable)

d$RFlabel <- NA
d$RFlabel[d$intervention_variable=="sex"] <-  "Gender"
d$RFlabel[d$intervention_variable=="enwast"] <-  "Enrolled wasted"
d$RFlabel[d$intervention_variable=="gagebrth"] <-  "Gestational age at birth"
d$RFlabel[d$intervention_variable=="predexfd6"] <-  "Exclusive or Predominant breastfeeding under 6 months"
d$RFlabel[d$intervention_variable=="mage"] <- "Mother's age" 
d$RFlabel[d$intervention_variable=="mhtcm"] <- "Mother's height" 
d$RFlabel[d$intervention_variable=="mwtkg"] <- "Mother's weight" 
d$RFlabel[d$intervention_variable=="mbmi"] <- "Mother's BMI" 
d$RFlabel[d$intervention_variable=="meducyrs"] <- "Mother's education" 
d$RFlabel[d$intervention_variable=="parity"] <-  "Birth order" 
d$RFlabel[d$intervention_variable=="hfoodsec"] <- "Household food security" 
d$RFlabel[d$intervention_variable=="nchldlt5"] <-   "Number of children <5 in household"
d$RFlabel[d$intervention_variable=="hhwealth_quart"] <-  "Household wealth" 
d$RFlabel[d$intervention_variable=="fage"] <- "Father's age" 
d$RFlabel[d$intervention_variable=="fhtcm"] <- "Father's height" 
d$RFlabel[d$intervention_variable=="birthwt"] <- "Birthweight (kg)" 
d$RFlabel[d$intervention_variable=="birthlen"] <- "Birth length (cm)" 
d$RFlabel[d$intervention_variable=="vagbrth"] <- "Vaginal birth" 
d$RFlabel[d$intervention_variable=="hdlvry"] <- "Child delivered at home" 
d$RFlabel[d$intervention_variable=="single"] <- "Single parent" 
d$RFlabel[d$intervention_variable=="nrooms"] <- "Number of rooms in household" 
d$RFlabel[d$intervention_variable=="nhh"] <- "Number of people in household" 
d$RFlabel[d$intervention_variable=="meducyrs"] <- "Maternal education quartile" 
d$RFlabel[d$intervention_variable=="feducyrs"] <- "Paternal education quartile" 
d$RFlabel[d$intervention_variable=="anywast06"] <- "Any wasting before 6 months age" 
d$RFlabel[d$intervention_variable=="pers_wast"] <- "Persistent wasting before 6 months age" 
d$RFlabel[d$intervention_variable=="trth2o"] <- "Treats drinking water" 
d$RFlabel[d$intervention_variable=="cleanck"] <- "Clean cooking fuel usage" 
d$RFlabel[d$intervention_variable=="impfloor"] <- "Improved floor" 
d$RFlabel[d$intervention_variable=="impsan"] <- "Improved sanitation" 
d$RFlabel[d$intervention_variable=="safeh20"] <- "Safe water source" 
d$RFlabel[d$intervention_variable=="perdiar6"] <- "Quartile of diarrhea longitudinal\nprevalence under 6 months" 
d$RFlabel[d$intervention_variable=="perdiar24"] <- "Quartile of diarrhea longitudinal\nprevalence under 24 months" 
d$RFlabel[d$intervention_variable=="earlybf"] <- "Breastfeed within an hour of birth" 
d$RFlabel[d$intervention_variable=="predfeed3"] <-  "Predominant breastfeeding under 3 months"
d$RFlabel[d$intervention_variable=="predfeed36"] <-  "Predominant breastfeeding from 3-6 months"
d$RFlabel[d$intervention_variable=="predfeed6"] <-  "Predominant breastfeeding under 6 months"
d$RFlabel[d$intervention_variable=="exclfeed3"] <-  "Exclusive breastfeeding under 3 months"
d$RFlabel[d$intervention_variable=="exclfeed36"] <-  "Exclusive breastfeeding from 3-6 months"
d$RFlabel[d$intervention_variable=="exclfeed6"] <-  "Exclusive breastfeeding under 6 months"
d$RFlabel[d$intervention_variable=="month"] <-  "Month of measurement"
d$RFlabel[d$intervention_variable=="brthmon"] <-  "Birth month"
d$RFlabel[d$intervention_variable=="lag_WHZ_quart"] <-  "Mean WHZ in the prior 3 months"

d$RFlabel[d$intervention_variable=="enstunt"] <-  "Enrolled stunted"
d$RFlabel[d$intervention_variable=="ever_wasted06"] <-  "Ever wasted"       
d$RFlabel[d$intervention_variable=="ever_swasted06"] <- "Ever severely wasted"       
d$RFlabel[d$intervention_variable=="pers_wasted06"] <-  "Persistently wasted"        
d$RFlabel[d$intervention_variable=="ever_stunted06"] <-  "Ever stunted"       
d$RFlabel[d$intervention_variable=="ever_sstunted06"] <-  "Ever severely stunted"      
d$RFlabel[d$intervention_variable=="ever_wasted024"] <-  "Ever wasted"       
d$RFlabel[d$intervention_variable=="ever_swasted024"] <-  "Ever severely wasted"       
d$RFlabel[d$intervention_variable=="pers_wasted024"] <-  "Persistently wasted"        
d$RFlabel[d$intervention_variable=="ever_stunted024"] <-  "Ever stunted"    
d$RFlabel[d$intervention_variable=="ever_sstunted024"] <-  "Ever severely stunted"      
d$RFlabel[d$intervention_variable=="ever_wasted06_noBW"] <-  "Ever wasted - no birth wasting"  
d$RFlabel[d$intervention_variable=="ever_swasted06_noBW"] <-  "Ever severely wasted - no birth wasting" 
d$RFlabel[d$intervention_variable=="ever_wasted024_noBW"] <-  "Ever wasted - no birth wasting" 
d$RFlabel[d$intervention_variable=="ever_swasted024_noBW"] <- "Ever severely wasted - no birth wasting"  
d$RFlabel[d$intervention_variable=="ever_underweight06"] <-  "Ever underweight"   
d$RFlabel[d$intervention_variable=="ever_sunderweight06"] <-  "Ever severely underweight"  
d$RFlabel[d$intervention_variable=="ever_underweight024"] <-  "Ever underweight"
d$RFlabel[d$intervention_variable=="ever_sunderweight024"] <-  "Ever severely underweight"   
d$RFlabel[d$intervention_variable=="ever_co06"] <-  "Ever wasted and stunted"              
d$RFlabel[d$intervention_variable=="ever_co024"] <-  "Ever wasted and stunted"  

#order by Region
d$Region <- as.character(d$Region)
d$Region <- factor(d$Region, levels=c("Pooled","Asia", "Latin America","Africa","Europe"))
d <- d[with(d, order(desc(pooled), Region)),]
unique(d$studyid)

d$studyid <- as.character(d$studyid)
d$studyid <- factor(d$studyid, levels=unique(d$studyid))
d$order <- as.numeric(d$studyid)

#Clean up adjustment sets (drop W_ and the missingness indicators)
d$adjustment_set <- gsub("W_","",d$adjustment_set)
#d$adjustment_set <- gsub("delta_","m_",d$adjustment_set)
for(i in 1:30){d$adjustment_set <- gsub("(delta_).*?,", "", d$adjustment_set)}
d$adjustment_set <- gsub("(delta_).*?", "", d$adjustment_set)
d$adjustment_set <- gsub("  ", " ", d$adjustment_set)
d$adjustment_set <- gsub("  ", " ", d$adjustment_set)
d$adjustment_set <- gsub("  ", " ", d$adjustment_set)

for(i in 1:nrow(d)){
  if(nchar(d$adjustment_set[i])>50 & !is.na(d$adjustment_set[i])){
    d$adjustment_set[i] <- paste0(substr(d$adjustment_set[i],1,50),"\n",substr(d$adjustment_set[i],50, nchar(d$adjustment_set[i])))
  }
}


d <- droplevels(d)

# Drop missing values in variables for user selection
d <- d %>% drop_na(agecat, outcome_variable, intervention_variable)

#Add reference N's to the studyid label
d$studyid <- as.character(d$studyid)
d <- d %>% fill(baseline_level) %>%  fill(baseline_level, .direction="up") 

if(measure=="RR"){
  d$studyid2 <- paste0(d$studyid, ": ",d$N_cases," cases / ",d$N)
  d$studyid2[d$pooled==1] <- paste0(d$studyid[d$pooled==1], ": ",d$Nstudies[d$pooled==1]," studies, ",d$N_cases[d$pooled==1]," cases / ",d$N[d$pooled==1])
  d$studyid2[d$intervention_level!=d$baseline_level] <- NA
}else{
  d$Ns <- paste0("N= ",d$N," Mean=",d$mean)
  d$studyid2 <- paste0(d$studyid, ": ","N= ",d$N," Mean=",d$mean)
  d$studyid2[d$intervention_level!=d$baseline_level] <- NA
  d$studyid2[d$pooled==1] <- d$studyid[d$pooled==1]
}

d <- d %>% 
  group_by(studyid) %>% 
  fill(studyid2) %>%  fill(studyid2, .direction="up") %>% 
  ungroup()

table(d$studyid2)

d <- d[with(d, order(desc(pooled), Region)),]
d$studyid <- factor(d$studyid, levels=unique(d$studyid))
d$studyid2 <- factor(d$studyid2, levels=unique(d$studyid2))



stdyID <- levels(d$studyid)
Nstud <- addNA(factor(d$adjustment_set))

if(measure=="RR"){
  d$Ns <- paste0(d$N_cases," cases / ",d$N)
  d$Ns[d$pooled==1] <- paste0(d$Nstudies[d$pooled==1]," studies, ",d$N_cases[d$pooled==1]," cases / ",d$N[d$pooled==1])
  d$Ns[is.na(d$N)] <- ""
}else{
  d$Ns <- paste0("N= ",d$N," Mean=",d$mean)
  d$Ns[is.na(d$N)] <- ""
}

#Order dataframe
unique(d$outcome_variable)
d$outcome_variable <- factor(d$outcome_variable, levels = c("wasted", "ever_wasted", "pers_wast", "wast_rec90d", "swasted", 
                                                            "stunted", "ever_stunted", "sstunted", "s03rec24",
                                                            "dead", "co_occurence", "pers_wasted624"))
d <- d %>% arrange(outcome_variable)

saveRDS(d, 'C:/Users/andre/Dropbox/HBGDki figures/Mortality/mortality_results_processed.rds')

