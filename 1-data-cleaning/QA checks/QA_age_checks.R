
#------------------------------------------------------------------------------------
# load packages and functions
#------------------------------------------------------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library("googlesheets")

clean_ages <- function(m){
  measure_times = unlist(strsplit(m$measure_times, ","))
  measure_times = as.numeric(gsub("Birth","0", measure_times))
  #convert to age in days
  if(m$measure_units=="weeks"){
    measure_times = measure_times*7
  }else{
    measure_times = measure_times*30.4167
  }
  #set birth to one day
  measure_times[measure_times==0] <- 1
  
  return(measure_times)
}

check_ages <- function(df, measure_times, tolerance=30){ #tolerance is number of days arond recorded measurement time to include children
  
  #get number of unique children in study
  n_children <- df$n_children[1]
  
  for(i in measure_times){
    #Number of children within a month of age
    perc_kids_measured = mean(abs(df$agedays -i) <= tolerance)
    assert_that(perc_kids_measured >= 0.5, msg = paste0("Less than 50% of measures within a month of agedays==",i))
    assert_that(perc_kids_measured >= 0.8, msg = paste0("Less than 80% of measures within a month of agedays==",i))
  }
  
  cat("Enough measurements at all ages")
}


#------------------------------------------------------------------------------------
# load data
#------------------------------------------------------------------------------------

#Load in dataset of ages for all studyid
d <- readRDS(here("results/study_age_check_data.RDS"))

#Examine all study names
unique(d$studyid)


#Load in google sheet of child ages (need to log into google acocunt first time using it)
gs <- gs_title("KI study ages") %>%
  gs_read(ws = "ages")

#Examine all study names
unique(gs$study)

#------------------------------------------------------------------------------------
# Check LCNI-5 cohort
#------------------------------------------------------------------------------------

df <- d %>% filter(studyid == "ki1148112-LCNI-5")

measure_times <- gs %>% filter(study == "Lungwena Child Nutrition RCT, Malawi") %>%
                        subset(., select = c(measure_times, measure_units)) #%>% as.character()

#convert to ages in days
measure_times <- clean_ages(measure_times)

#compare age distribution in the data to the study-recorded measurement times

check_ages(df, measure_times, tolerance=30)





