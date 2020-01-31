
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
  cat(paste0("Total children: ", n_children, "\n"))
  errored = 0
  for(i in measure_times){
    #Number of children within a month of age
    total_kids_measured = sum(abs(df$agedays -i) <= tolerance)
    cat(paste0("N children at agedays=",round(i,0),": ", total_kids_measured, "\n"))
    
    perc_kids_measured = total_kids_measured/n_children
    if (perc_kids_measured < 0.5) {
      cat(paste0(">[ERROR] Less than 50% of measures within a month of agedays==",i,"\n"))
      errored = errored + 1
    }
    #assert_that(perc_kids_measured >= 0.5, msg = paste0("Less than 50% of measures within a month of agedays==",i))
    #assert_that(perc_kids_measured >= 0.8, msg = paste0("Less than 80% of measures within a month of agedays==",i))
  }
  if (errored > 0) {
    cat(">[Error detected in dataset] Not enough measurements at all ages, consider looking through set\n")
    cat(paste0(">Number of errors: ",errored,"/",length(measure_times),"\n"))
  } else {
    cat("Enough measurements at all ages\n")
  }
  #cat("Enough measurements at all ages")
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
unique(gs$studyid)

#------------------------------------------------------------------------------------
# Check LCNI-5 cohort
#------------------------------------------------------------------------------------

stupidity <- d %>%filter(studyid == "ki1148112-LCNI-5") %>% subset(., select = c(cohort, studyid))

df <- d %>% filter(studyid == "ki1148112-LCNI-5")

measure_times <- gs %>% filter(studyid == "Lungwena Child Nutrition RCT, Malawi") %>%
                        subset(., select = c(measure_times, measure_units)) #%>% as.character()

#convert to ages in days
measure_times <- clean_ages(measure_times)

#compare age distribution in the data to the study-recorded measurement times

check_ages(df, measure_times, tolerance=30)

#------------------------------------------------------------------------------------
# Check all studies
# ----------------------------------------------------------------------------------

for (study_ids in unique(gs$cohort)) {
  if (!is.na(study_ids)) {
    df <- d %>% filter(cohort == study_ids)
    #study id
    cat(paste0("study id: ", study_ids, "\n"))
    #get number of observations
    cat(paste0("number of observations = ", nrow(df), "\n"))
    #get number of total children in study
    cat(paste0("number of total children = ", unique(df$n_children), "\n"))
    #get number of unique children in study
    cat(paste0("number of unique children = ", length(unique(df$id)), "\n"))
    #look at timing of observations
    measure_times <- gs %>% filter(cohort == study_ids) %>%
      subset(., select = c(measure_times, measure_units))
    measure_times <- clean_ages(measure_times)
    check_ages(df, measure_times, tolerance = 30)
    #generate histograms of age distributions
    pdf(paste0("histogram of ", study_ids, ".pdf"))
    hist(df$agedays)
    dev.off()
    cat("\n")
  }
}





