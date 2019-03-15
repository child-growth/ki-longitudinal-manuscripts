# shorten the description for a few studies
shorten_descriptions <- function(dd){
  dd$short_description[dd$study_id=='CONTENT'] <- 'Eval of Negl. Enteric Inf'
  dd$short_description[dd$study_id=='LCNI-5'] <- 'Lungwena Child Nutr RCT'
  dd$short_description[dd$study_id=='Burkina Faso Zn'] <- 'Zinc RCT'
  dd$short_description[dd$study_id=='AgaKhanUniv'] <- 'Aga Khan Nutr RCT'
  dd$short_description[dd$study_id=='SAS-FoodSuppl'] <- 'Food Suppl RCT'
  dd$short_description[dd$study_id=="MAL-ED"] <- 'MAL-ED'
  dd$short_description[dd$study_id=='CMIN'] <- 'CMIN'
  dd$short_description[dd$study_id=='Guatemala BSC'] <- 'Bovine Serum RCT'
  dd$short_description[dd$study_id=='Peru Huascar'] <- 'Infant growth in Huascar'
  dd$short_description[dd$study_id=='EE'] <- 'Biomarkers for EE'
  dd$short_description[dd$study_id=='GMS-Nepal'] <- 'Growth Monitoring Study'
  dd$short_description[dd$study_id=='NIH-Crypto'] <- 'NIH Crypto'
  dd$short_description[dd$study_id=='PROVIDE'] <- 'PROVIDE RCT'
  dd$short_description[dd$short_description=='Vitamin A Supplementation in Serrinha, Brazil'] <- 'Vit. A Sup., Serrinha'
  dd$short_description[dd$short_description=='Respiratory Pathogens Birth Cohort'] <- 'Resp. Pathogens'
  dd$short_description[dd$study_id=='CMC-V-BCS-2002'] <- 'CMC Birth, Vellore'
  dd$short_description[dd$study_id=='ZnMort'] <- 'PROVIDE RCT'
  dd$short_description[dd$study_id=='WASH-Bangladesh'] <- 'WASH Benefits RCT'
  dd$short_description[dd$study_id=='WASH-Kenya'] <- 'Zn Supp + Infant Mort.'
  dd$short_description[dd$study_id=='EU'] <- 'Zn Supp RCT'
  dd$short_description[dd$study_id=='IRC'] <- 'Immune Response Crypto '
  dd$short_description[dd$study_id=='JiVitA-3'] <- 'JiVitA-3'
  dd$short_description[dd$study_id=='JiVitA-4'] <- 'JiVitA-4'
  
  dd$short_description[dd$study_id=='SAS-CompFeed'] <- 'Optimal Infant Feeding'
  dd$short_description[dd$study_id=='NIH-Birth'] <- 'NIH Birth Cohort'
  return(dd)
}


#-----------------------------------
# separate cohorts into monthly, quarterly, or yearly
# and drop any non-intervention cohorts with only yearly 
# measurements
#-----------------------------------
mark_measure_freq <- function(dd){
  dd$measurefreq <- NA
  
  dd$measurefreq[dd$studyid %in% c(
    "ki0047075b-MAL-ED",   
    "ki1000108-CMC-V-BCS-2002",              
    "ki1000108-IRC",               
    "ki1000109-EE",           
    "ki1000109-ResPak",  
    "ki1017093b-PROVIDE",  
    "ki1066203-TanzaniaChild2",           
    "ki1101329-Keneba",  
    "ki1112895-Guatemala BSC",       
    "ki1113344-GMS-Nepal",             
    "ki1114097-CONTENT"
  )] <- "monthly"
  
  dd$measurefreq[dd$studyid %in% c(
    "ki1112895-iLiNS-Zinc",  
    "kiGH5241-JiVitA-3",          
    "kiGH5241-JiVitA-4", 
    "ki1148112-LCNI-5",          
    "ki1017093-NIH-Birth",
    "ki1017093c-NIH-Crypto",   
    "ki1119695-PROBIT",         
    "ki1000304b-SAS-CompFeed",   
    "ki1000304b-SAS-FoodSuppl",   
    "ki1126311-ZVITAMBO",   
    "ki1114097-CMIN",                 
    "ki1135781-COHORTS"
  )] <- "quarterly"
  
  dd$measurefreq[dd$studyid %in% c(
    "ki1000110-WASH-Bangladesh",       
    "ki1000111-WASH-Kenya",  
    "ki1148112-iLiNS-DOSE",     
    "ki1148112-iLiNS-DYAD-M", 
    "ki1033518-iLiNS-DYAD-G",
    "ki1000125-AgaKhanUniv",           
    "ki1112895-Burkina Faso Zn",    
    "ki1000304-VITAMIN-A",  
    "ki1000304-Vitamin-B12",
    "ki1000107-Serrinha-VitA",   
    "ki1000304-EU",        
    "ki1000304-ZnMort"
  )] <- "yearly"
  
  
  #Mark COHORTS and CMIN cohorts with different measurement frequency than quarterly
  dd$measurefreq[dd$studyid=="ki1114097-CMIN" & dd$country=="BANGLADESH"] <- "monthly"
  dd$measurefreq[dd$studyid=="ki1114097-CMIN" & dd$country=="PERU"] <- "monthly"
  
  
  
  #mark measure frequency of ID's with grant identifiers stripped:
  dd$measurefreq[dd$studyid %in% c(
    "MAL-ED", "MAL-ED",
    "CMC-V-BCS-2002",              
    "IRC",               
    "EE",           
    "ResPak",  
    "PROVIDE", 
    "TanzaniaChild2",           
    "Keneba",  
    "Guatemala BSC",       
    "GMS-Nepal",             
    "CONTENT"
  )] <- "monthly"
  
  dd$measurefreq[dd$study_id=="MAL-ED"] <- "monthly"
  dd$measurefreq[dd$study_id=="PROVIDE"] <- "monthly"
  
  dd$measurefreq[dd$studyid %in% c(
    "iLiNS-Zinc",  
    "JiVitA-3",          
    "JiVitA-4", 
    "LCNI-5",          
    "NIH-Birth",
    "NIH-Crypto",   
    "PROBIT",         
    "SAS-CompFeed",   
    "SAS-FoodSuppl",   
    "ZVITAMBO",   
    "CMIN",                 
    "COHORTS"
  )] <- "quarterly"
  
  dd$measurefreq[dd$studyid %in% c(
    "WASH-Bangladesh",       
    "WASH-Kenya",  
    "iLiNS-DOSE",     
    "iLiNS-DYAD-M", 
    "iLiNS-DYAD-G",
    "AgaKhanUniv",           
    "Burkina Faso Zn",    
    "VITAMIN-A",  
    "Vitamin-B12",
    "Serrinha-VitA",   
    "EU",        
    "ZnMort"
  )] <- "yearly"
  
  
  #Mark COHORTS and CMIN cohorts with different measurement frequency than quarterly
  dd$measurefreq[dd$studyid=="CMIN" & dd$country=="BANGLADESH"] <- "monthly"
  dd$measurefreq[dd$studyid=="CMIN" & dd$country=="PERU"] <- "monthly"
  dd<- dd[!(dd$studyid=="COHORTS" & dd$country=="BRAZIL"),] #Drop because yearly but not an RCT
  dd<- dd[!(dd$studyid=="COHORTS" & dd$country=="SOUTH AFRICA"),] #Drop because yearly but not an RCT
  
  

  
  dd$cohort <- paste0(dd$study_id," ", dd$countrycohort)

  return(dd)
}




study_label_transformation <- function(df){
  # # simplify Tanzania label
  df$country[df$country=='TANZANIA, UNITED REPUBLIC OF'] <- 'TANZANIA'
  
  # make a study-country label, and make the monthly variable into a factor
  # including an anonymous label (temporary) for sharing with WHO
  df <- mutate(df,
               country=str_to_title(str_to_lower(country)), 
               cohort=paste0(short_description,'-',country))
  
  #Add regions with ugly Europe hack to change ordering
  df <- df %>% mutate(country = toupper(country))
  df <- df %>% mutate(region = case_when(
    country=="BANGLADESH" | country=="INDIA"|
      country=="NEPAL" | country=="PAKISTAN"|
      country=="PHILIPPINES"| country=="CHINA"|
      country=="THAILAND"|country=="SINGAPORE"|
      country=='OMAN'~ "Asia",
    country=="KENYA"|
      country=="GHANA"|
      country=="BURKINA FASO"|
      country=="GUINEA-BISSAU"|
      country=="MALAWI"|
      country=="SOUTH AFRICA"|
      country=="TANZANIA, UNITED REPUBLIC OF"|
      country=="TANZANIA"|
      country=="ZIMBABWE"|
      country=="GAMBIA"|
      country=='CONGO, THE DEMOCRATIC REPUBLIC OF' ~ "Africa",
    country=="BRAZIL" | country=="GUATEMALA" |
      country=="PERU"|country=='ECUADOR'   ~ "Latin America",
    country=='UNITED STATES' | country=='UNITED KINGDOM'|country=='ITALY'|
      # country=='NETHERLANDS'|
      country=='BELARUS'~ 'N.America & Europe',
    TRUE                                    ~ "Other"
  ))
  return(df)
}



name_labeling <- function(df){
  df <- df %>%
    mutate(label = case_when(
      is.na(reason_excluded) ~ 'Longitudinal cohorts',
      reason_excluded == 'High income' ~ 'Located in low- or middle income countries',
      reason_excluded == 'enrolled ill' ~ 'Enrollment not restricted to acutely ill children',
      reason_excluded == 'insufficient measurement freq' ~ 'Monthly growth measurements',
      reason_excluded == '<200' ~ 'Enrolled >= 200 children',
      reason_excluded == 'Wrong age range' ~ 'Enrolled correct age range'
    ))
}