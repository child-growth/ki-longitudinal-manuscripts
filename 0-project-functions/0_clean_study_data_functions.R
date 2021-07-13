# shorten the description for a few studies

shorten_descriptions<-function(dd){
  dd$short_description <- NA
  dd$short_description[dd$studyid=='TanzaniaChild2'] <- 'Tanzania Child 2'
  dd$short_description[dd$studyid=='CONTENT'] <- 'CONTENT'
  dd$short_description[dd$studyid=='LCNI-5'] <- 'Lungwena Child Nutr RCT'
  dd$short_description[dd$studyid=='Burkina Faso Zn'] <- 'Zinc RCT'
  dd$short_description[dd$studyid=='AgaKhanUniv'] <- 'Aga Khan Nutr RCT'
  dd$short_description[dd$studyid=='SAS-FoodSuppl'] <- 'Food Suppl RCT'
  dd$short_description[dd$studyid=="MAL-ED"] <- 'MAL-ED'
  dd$short_description[dd$studyid=='Guatemala BSC'] <- 'Bovine Serum RCT'
  dd$short_description[dd$studyid=='Peru Huascar'] <- 'Infant growth in Huascar'
  dd$short_description[dd$studyid=='EE'] <- 'Biomarkers for EE'
  dd$short_description[dd$studyid=='GMS-Nepal'] <- 'Growth Monitoring Study'
  dd$short_description[dd$studyid=='NIH-Crypto'] <- 'NIH Crypto'
  dd$short_description[dd$studyid=='PROVIDE'] <- 'PROVIDE RCT'
  dd$short_description[dd$studyid=='Vita'] <- 'Vit. A Supp RCT, Serrinha'
  dd$short_description[dd$studyid=='ResPak'] <- 'Resp. Pathogens'
  dd$short_description[dd$studyid=='CMC-V-BCS-2002'] <- 'CMC Birth, Vellore'
  dd$short_description[dd$studyid=='ZnMort'] <- 'PROVIDE RCT'
  dd$short_description[dd$studyid=='EU'] <- 'Zn Supp RCT'
  dd$short_description[dd$studyid=='IRC'] <- 'Immune Response Crypto'
  dd$short_description[dd$studyid=='JiVitA-3'] <- 'JiVitA-3'
  dd$short_description[dd$studyid=='JiVitA-4'] <- 'JiVitA-4'
  dd$short_description[dd$studyid=='Keneba'] <- 'MRC Keneba'
  dd$short_description[dd$studyid=='SAS-CompFeed'] <- 'Optimal Infant Feeding'
  dd$short_description[dd$studyid=='NIH-Birth'] <- 'NIH Birth Cohort'
  
  dd$short_description[dd$studyid=='PROBIT'] <- 'PROBIT RCT'
  dd$short_description[dd$studyid=='ZVITAMBO'] <- 'ZVITAMBO RCT'
  dd$short_description[dd$studyid=='iLiNS-Zinc'] <- 'iLiNS-Zinc RCT'
  dd$short_description[dd$studyid=='COHORTS' & dd$country=='PHILIPPINES'] <- 'Cebu Cohort'
  dd$short_description[dd$studyid=='COHORTS' & dd$country=='GUATEMALA'] <- 'INCAP Nutr Supp RCT'
  dd$short_description[dd$studyid=='COHORTS' & dd$country=='INDIA'] <- 'New Delhi Birth Cohort'
  
 
  dd$short_description[dd$studyid=='TDC'] <- 'Transmission Dyn. Crypto'
  dd$short_description[is.na(dd$short_description)] <- dd$studyid[is.na(dd$short_description)]
  
  return(dd)
}
 
#-----------------------------------
# separate cohorts into monthly, quarterly, or yearly
# and drop any non-intervention cohorts with only yearly 
# measurements
#-----------------------------------
mark_measure_freq <- function(dd){
  
  monthly_vec <- c("MAL-ED",   
                   "CMC-V-BCS-2002",              
                   "IRC",    
                   "TDC",
                   "EE",           
                   "ResPak",  
                   "PROVIDE",  
                   "TanzaniaChild2",           
                   "Keneba",  
                   "Guatemala BSC",       
                   "GMS-Nepal",    
                   "CMIN Peru89",                 
                   "CMIN Peru95",                 
                   "CMIN Bangladesh93",                 
                   "CONTENT")
  
  quarterly_vec <- c("iLiNS-Zinc",  
                     "JiVitA-3",          
                     "JiVitA-4", 
                     "LCNI-5",          
                     "CMIN Brazil89",                 
                     "CMIN GB94",                 
                     "NIH-Birth",
                     "NIH-Crypto",   
                     "PROBIT",         
                     "SAS-CompFeed",   
                     "SAS-FoodSuppl",   
                     "ZVITAMBO",   
                     "COHORTS")
  
  yearly_vec <- c("WASH-Bangladesh",       
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
                  "ZnMort")
  
  dd$measurefreq <- NA
  dd$measurefreq[dd$studyid %in% monthly_vec] <- "monthly"
  dd$measurefreq[dd$studyid %in% quarterly_vec] <- "quarterly"
  
  dd$measurefreq[dd$studyid %in% yearly_vec] <- "yearly"
  
  dd<- dd[!(dd$studyid=="COHORTS" & dd$country=="BRAZIL"),] #Drop because yearly but not an RCT
  dd<- dd[!(dd$studyid=="COHORTS" & dd$country=="SOUTH AFRICA"),] #Drop because yearly but not an RCT
  
  
  dd$cohort <- paste0(dd$study_id," ", dd$countrycohort)

  return(dd)
}




study_label_transformation <- function(df){
  # # simplify Tanzania label
  # df$country[df$country=='TANZANIA, UNITED REPUBLIC OF'] <- 'TANZANIA'
  
  # make a study-country label, and make the monthly variable into a factor
  # including an anonymous label (temporary) for sharing with WHO
  df <- mutate(df,
               country=str_to_title(str_to_lower(country))) 
  
  try(df <- mutate(df,cohort=paste0(short_description,'-',country)))
  
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

# for hgbd dataset
clean_country <- function(df){
  
  df$country <- as.character(df$country)
  
  df <- df %>% mutate(country = case_when(
    country == "AFG" ~ "Afghanistan",
    country == "AGO" ~ "Angola",
    country == "BDI" ~ "Burundi",
    country == "BFA" ~ "Burkina Faso",
    country == "BGD" ~ "Bangladesh",
    country == "BGD, BRA, IND, NPL, PER, PAK, ZAF, TZA" ~ "Other",
    country == "BGD, IND, PAK" ~ "Other",
    country == "BGD, MWI" ~ "Other",
    country == "BGD, PAK, TZA, ZMB, GHA" ~ "Other",
    country == "BLR" ~ "Belarus",
    country == "BLZ" ~ "Belize",
    country == "BRA" ~ "Brazil",
    country == "BRA, GBR, KEN, PAK, THA, ZAF " ~ "Other",
    country == "BRA, GTM, IND, PHL, ZAF" ~ "Other",
    country == "CHN" ~ "China",
    country == "CIV" ~ "Cote d'lvoire",
    country == "CMR" ~ "Cameroon",
    country == "COD" ~ "Congo, Democratic Republic of the",
    country == "COD, GTM, IND, PAK" ~ "Other",
    country == "DNK" ~ "Denmark",
    country == "ECU" ~ "Ecuador",
    country == "EGY" ~ "Egypt",
    country == "ETH" ~ "Ethiopia",
    country == "GBR" ~ "United Kingdom",
    country == "GHA" ~ "Ghana",
    country == "GMB" ~ "Gambia",
    country == "GMB, MLI, MOZ, KEN, IND, BGD, PAK" ~ "Other",
    country == "GNB" ~ "Guinea-Bissau",
    country == "GTM" ~ "Guatemala",
    country == "IDN" ~ "Indonesia",
    country == "IND" ~ "India",
    country == "IRQ" ~ "Iraq",
    country == "ITA" ~ "Italy",
    country == "KEN" ~ "Kenya",
    country == "KEN, CHN, GBR, IND, ITA, KEN, OMN, USA" ~ "Other",
    country == "KHM" ~ "Cambodia",
    country == "MDG" ~ "Madagascar",
    country == "MEX" ~ "Mexico",
    country == "MLI" ~ "Mali",
    country == "MMR" ~ "Myanmar",
    country == "MOZ" ~ "Mozambique",
    country == "MWI" ~ "Malawi",
    country == "NER" ~ "Niger",
    country == "NGA" ~ "Nigeria",
    country == "NLD" ~ "Netherlands",
    country == "NPL" ~ "Nepal",
    country == "OMN" ~ "Oman",
    country == "PAK" ~ "Pakistan",
    country == "PER" ~ "Peru",
    country == "PER, BRA, GNB, BGD" ~ "Other",
    country == "PHL" ~ "Philippines",
    country == "RWA" ~ "Rwanda",
    country == "SDN" ~ "Sudan",
    country == "SGP" ~ "Singapore",
    country == "SSD" ~ "South Sudan",
    country == "TCD" ~ "Chad",
    country == "THA" ~ "Thailand",
    country == "TUR" ~ "Turkey",
    country == "TZA" ~ "Tanzania",
    country == "UGA" ~ "Uganda",
    country == "USA" ~ "United States",
    country == "USA, GTM" ~ "Other",
    country == "VNM" ~ "Vietnam",
    country == "YEM" ~ "Yemen",
    country == "ZAF" ~ "South Africa",
    country == "ZMB" ~ "Zambia",
    country == "ZWE" ~ "Zimbabwe",
    TRUE ~ "Other"
    ))
                                  
  try(df <- mutate(df, cohort = paste0(short_desc,'-', country)))
  
  return(df)
}

# for hgbd dataset
make_region <- function(df){
  
  df$country <- as.character(df$country)
  
  df <- df %>% mutate(region = case_when(
    country == "AFG" ~ "Asia",
    country == "AGO" ~ "Africa",
    country == "BDI" ~ "Africa",
    country == "BFA" ~ "Africa",
    country == "BGD" ~ "Asia",
    country == "BGD, BRA, IND, NPL, PER, PAK, ZAF, TZA" ~ "Other",
    country == "BGD, IND, PAK" ~ "Other",
    country == "BGD, MWI" ~ "Other",
    country == "BGD, PAK, TZA, ZMB, GHA" ~ "Other",
    country == "BLR" ~ "N.America & Europe",
    country == "BLZ" ~ "N.America & Europe",
    country == "BRA" ~ "Latin America",
    country == "BRA, GBR, KEN, PAK, THA, ZAF " ~ "Other",
    country == "BRA, GTM, IND, PHL, ZAF" ~ "Other",
    country == "CHN" ~ "Asia",
    country == "CIV" ~ "Africa",
    country == "CMR" ~ "Africa",
    country == "COD" ~ "Africa",
    country == "COD, GTM, IND, PAK" ~ "Other",
    country == "DNK" ~ "N.America & Europe",
    country == "ECU" ~ "Latin America",
    country == "EGY" ~ "Africa",
    country == "ETH" ~ "Africa",
    country == "GHA" ~ "Africa",
    country == "GMB" ~ "Africa",
    country == "GMB, MLI, MOZ, KEN, IND, BGD, PAK" ~ "Other",
    country == "GTM" ~ "Latin America",
    country == "IDN" ~ "Asia",
    country == "IND" ~ "Asia",
    country == "IRQ" ~ "Asia",
    country == "KEN" ~ "Africa",
    country == "KEN, CHN, GBR, IND, ITA, KEN, OMN, USA" ~ "Other",
    country == "KHM" ~ "Asia",
    country == "MDG" ~ "Africa",
    country == "MEX" ~ "Latin America",
    country == "MLI" ~ "Africa",
    country == "MMR" ~ "Asia",
    country == "MOZ" ~ "Africa",
    country == "MWI" ~ "Africa",
    country == "NER" ~ "Africa",
    country == "NGA" ~ "Africa",
    country == "NLD" ~ "N.America & Europe",
    country == "NPL" ~ "Asia",
    country == "PAK" ~ "Asia",
    country == "PER" ~ "Latin America",
    country == "PER, BRA, GNB, BGD" ~ "Other",
    country == "PHL" ~ "Asia",
    country == "RWA" ~ "Africa",
    country == "SDN" ~ "Africa",
    country == "SGP" ~ "Asia",
    country == "SSD" ~ "Africa",
    country == "TCD" ~ "Africa",
    country == "TUR" ~ "N.America & Europe",
    country == "TZA" ~ "Africa",
    country == "UGA" ~ "Africa",
    country == "USA" ~ "N.America & Europe",
    country == "USA, GTM" ~ "Other",
    country == "VNM" ~ "Asia",
    country == "YEM" ~ "Africa",
    country == "ZAF" ~ "Africa",
    country == "ZMB" ~ "Africa",
    country == "ZWE" ~ "Africa",
    TRUE ~ "Other"
  ))
  
  df$region <- factor(df$region, 
                      levels = c("Africa",
                                 "Asia",
                                 "Latin America",
                                 "N.America & Europe",
                                 "Other"))
  
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





# for hgbd metadataset
make_region <- function(df){
  
  df$country <- as.character(df$country)
  
  df <- df %>% mutate(region = case_when(
    country == "AFG" ~ "Asia",
    country == "AGO" ~ "Africa",
    country == "BDI" ~ "Africa",
    country == "BFA" ~ "Africa",
    country == "BGD" ~ "Asia",
    country == "BGD, BRA, IND, NPL, PER, PAK, ZAF, TZA" ~ "Other",
    country == "BGD, IND, PAK" ~ "Other",
    country == "BGD, MWI" ~ "Other",
    country == "BGD, PAK, TZA, ZMB, GHA" ~ "Other",
    country == "BLR" ~ "N.America & Europe",
    country == "BLZ" ~ "N.America & Europe",
    country == "BRA" ~ "Latin America",
    country == "BRA, GBR, KEN, PAK, THA, ZAF " ~ "Other",
    country == "BRA, GTM, IND, PHL, ZAF" ~ "Other",
    country == "CHN" ~ "Asia",
    country == "CIV" ~ "Africa",
    country == "CMR" ~ "Africa",
    country == "COD" ~ "Africa",
    country == "COD, GTM, IND, PAK" ~ "Other",
    country == "DNK" ~ "N.America & Europe",
    country == "ECU" ~ "Latin America",
    country == "EGY" ~ "Africa",
    country == "ETH" ~ "Africa",
    country == "GHA" ~ "Africa",
    country == "GMB" ~ "Africa",
    country == "GMB, MLI, MOZ, KEN, IND, BGD, PAK" ~ "Other",
    country == "GTM" ~ "Latin America",
    country == "IDN" ~ "Asia",
    country == "IND" ~ "Asia",
    country == "IRQ" ~ "Asia",
    country == "KEN" ~ "Africa",
    country == "KEN, CHN, GBR, IND, ITA, KEN, OMN, USA" ~ "Other",
    country == "KHM" ~ "Asia",
    country == "MDG" ~ "Africa",
    country == "MEX" ~ "Latin America",
    country == "MLI" ~ "Africa",
    country == "MMR" ~ "Asia",
    country == "MOZ" ~ "Africa",
    country == "MWI" ~ "Africa",
    country == "NER" ~ "Africa",
    country == "NGA" ~ "Africa",
    country == "NLD" ~ "N.America & Europe",
    country == "NPL" ~ "Asia",
    country == "PAK" ~ "Asia",
    country == "PER" ~ "Latin America",
    country == "PER, BRA, GNB, BGD" ~ "Other",
    country == "PHL" ~ "Asia",
    country == "RWA" ~ "Africa",
    country == "SDN" ~ "Africa",
    country == "SGP" ~ "Asia",
    country == "SSD" ~ "Africa",
    country == "TCD" ~ "Africa",
    country == "TUR" ~ "N.America & Europe",
    country == "TZA" ~ "Africa",
    country == "UGA" ~ "Africa",
    country == "USA" ~ "N.America & Europe",
    country == "USA, GTM" ~ "Other",
    country == "VNM" ~ "Asia",
    country == "YEM" ~ "Africa",
    country == "ZAF" ~ "Africa",
    country == "ZMB" ~ "Africa",
    country == "ZWE" ~ "Africa",
    TRUE ~ "Other"
  ))
  
  df$region <- factor(df$region, 
                      levels = c("Africa",
                                 "Asia",
                                 "Latin America",
                                 "N.America & Europe",
                                 "Other"))
  
  return(df)
}




# for ghap dataset
mark_region <- function(df){
  
  df$country <- as.character(df$country)
  df <- df %>% mutate(country = toupper(country),
                      region = case_when(
    country=="BANGLADESH" | country=="INDIA"|
      country=="NEPAL" | country=="PAKISTAN"|
      country=="PHILIPPINES"| country=="CHINA"|
      country=="THAILAND"|country=="SINGAPORE"|
      country=='OMAN'~ "South Asia",
    country=="KENYA"|
      country=="GHANA"|
      country=="BURKINA FASO"|
      country=="GUINEA-BISSAU"|
      country=="MALAWI"|
      country=="MALI"|
      country=="MOZAMBIQUE"|
      country=="SOUTH AFRICA"|
      country=="TANZANIA, UNITED REPUBLIC OF"|
      country=="TANZANIA"|
      country=="ZIMBABWE"|
      country=="GAMBIA"|
      country=="CONGO, THE DEMOCRATIC REPUBLIC OF" ~ "Africa",
    country=="BRAZIL" | country=="GUATEMALA" |
      country=="PERU"|country=='ECUADOR' | country=="MEXICO" |
      country=="BELIZE" ~ "Latin America",
    country=="UNITED STATES" | country=="UNITED KINGDOM" | country=="ITALY"|
      country== "NETHERLANDS"|
      country=="BELARUS" ~ "N.America & Europe",
    TRUE ~ "Other"
  ))
 
  
  df$region <- factor(df$region, 
                      levels = c("Africa",
                                 "South Asia",
                                 "Latin America",
                                 "N.America & Europe",
                                 "Other"))
  
  return(df)
}

