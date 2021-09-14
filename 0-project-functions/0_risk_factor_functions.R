
#-----------------------------------------------------------------------------------------
# local TMLE function
#-----------------------------------------------------------------------------------------


run_ki_tmle <- function(enumerated_analyses, results_folder, overwrite=TRUE, skip_failed=F,
                        rmd_filename = here("4-longbow-tmle-analysis/run-longbow/longbow_RiskFactors.Rmd")){
  
  Sys.getenv("RSTUDIO_PANDOC")
  Sys.setenv(RSTUDIO_PANDOC="/usr/lib/rstudio-server/bin/pandoc")
  rmarkdown::pandoc_available()
  rmarkdown::pandoc_version()
  
  
  base_directory = paste0(BV_dir,"/tmle/",results_folder,"/")
  for(i in 1:length(enumerated_analyses)){
    cat(i," out of ",length(enumerated_analyses),"\n")
    output_directory = paste0(base_directory,
                              enumerated_analyses[[i]]$nodes$A,"_",
                              enumerated_analyses[[i]]$nodes$Y)
    enumerated_analyses[[i]]$output_directory <- output_directory
    cat(i,"; ", enumerated_analyses[[i]]$nodes$A,"; ", enumerated_analyses[[i]]$nodes$Y,"; res exists: ",file.exists(paste0(output_directory,"/results.rdata")),"\n")
    
    
    if(overwrite==TRUE | !file.exists(paste0(output_directory,"/results.rdata"))){
    time_run <- "fail"
      if(skip_failed==F| !file.exists(paste0(output_directory,"/obs_counts.rdata"))){
    try(time_run<-system.time(rmarkdown::render(rmd_filename,
                                                params = (enumerated_analyses[[i]]),
                                                output_file = file.path( output_directory, "/REPORT.html"),
                                                output_dir = output_directory,
                                                quiet=TRUE,
                                                output_format = rmarkdown::html_document(self_contained = TRUE,
                                                                                         keep_md = F),
                                                knit_root_dir = output_directory)))
    
    cat("\nruntime: ",time_run,"\n")
      }
    }
  }
  
  # # load and concatenate the rdata from the jobs
  results <- load_batch_results("results.rdata", results_folder = base_directory)
  obs_counts <- load_batch_results("obs_counts.rdata", results_folder = base_directory)
  
  print(head(results))
  
  # save concatenated results
  filename1 <- paste(paste('results',results_folder,Sys.Date( ),sep='_'),'RDS',sep='.')
  filename2 <- paste(paste('results',results_folder,'obs_counts',Sys.Date( ),sep='_'),'RDS',sep='.')
  saveRDS(results, file=paste0(res_dir,"rf results/raw longbow results/",filename1))
  saveRDS(obs_counts, file=paste0(res_dir,"rf results/raw longbow results/",filename2))
  
  cat("\nAll done!\n")
}

#-----------------------------------------------------------------------------------------
# Longbow prep function
#-----------------------------------------------------------------------------------------

# specify_longbow <- function(j, analyses_df=analyses, params=default_params){
#   params$data$uri <- ghapdata_dir
#   params$data$type <- "web"
#   params$data$repository_path <- NULL
#   
#   analysis <- analyses_df[j,]
#   analysis_params <- params
#   analysis_nodes <- as.list(analysis)[c("W","A","Y","strata","id")]
#   analysis_nodes$W <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
#   analysis_params$nodes <- analysis_nodes
#   analysis_params$data$uri <- paste0(analysis_params$data$uri, analysis$file)
#   return(analysis_params)
# }

specify_longbow <- function(j, analyses_df=analyses, params=default_params){
  params$data$uri <- ghapdata_dir
  params$data$repository_path <- NULL
  
  analysis <- analyses_df[j,]
  analysis_params <- params
  analysis_nodes <- as.list(analysis)[c("W","A","Y","strata","id")]
  analysis_nodes$W <- gsub("W_bmi", "W_mbmi", analysis_nodes$W[[1]])
  analysis_nodes$strata <- analysis$strata[[1]]
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$uri <- paste0(analysis_params$data$uri, analysis$file)
  analysis_params$script_params$parallelize <- TRUE
  return(analysis_params)
}




get_batch_results <- function (batch_id, results_folder = "results"){
  
  results_folder <- paste0("/data/KI/ki-manuscript-output/tmle/",results_folder)
  
  if (dir.exists(results_folder)) {
    unlink(results_folder, recursive = TRUE)
  }
  dir.create(results_folder)
  cat(sprintf("Downloading results...\n"))
  job_statuses <- get_job_status(batch_id)
  job_ids <- names(job_statuses)
  finished_statuses <- c("success", "error")
  viewable_job_ids <- job_ids[which(job_statuses %in% finished_statuses)]
  pb <- progress_bar$new(format = "[:bar] :percent", total = length(viewable_job_ids), 
                         clear = TRUE)
  pb$tick(0)
  for (job_id in viewable_job_ids) {
    get_job_output(job_id, results_folder)
    pb$tick()
  }
}

load_batch_results <- function (results_file, results_folder = "results"){
  
  all_results_folders <- dir(results_folder, full.names = TRUE, 
                             recursive = FALSE)
  all_results_folders <- gsub("//","/",all_results_folders)
  results_files <- file.path(all_results_folders, results_file)
  one_results_file <- results_files[[1]]
  all_results <- lapply(results_files, function(one_results_file) {
    if (file.exists(one_results_file)) {
      obj_names <- load(one_results_file)
      return(get(obj_names[[1]]))
    }
    else {
      warning("Expected results file ", one_results_file, 
              " does not exist")
      return(NULL)
    }
  })
  results <- rbindlist(all_results, fill = TRUE)
}


#-----------------------------------------------------------------------------------------
# Plotting functions
#-----------------------------------------------------------------------------------------
scaleFUN <- function(x) sprintf("%.2f", x)

label_wrap <- function(variable, value) {
  lapply(strwrap(as.character(value), width=20, simplify=FALSE), 
         paste, collapse="\n")
}  



#-----------------------------------------------------------------------------------------
# Meta-analysis function
#-----------------------------------------------------------------------------------------

poolRR <- function(d, method="REML"){
  #nstudies=length(unique(d$studyid))
  nstudies <- d %>% summarise(N=n())
  
  if(d$intervention_level[1] == d$baseline_level[1]){
    est <- data.frame(logRR.psi=1, logSE=0, RR=1, RR.CI1=1, RR.CI2=1, Nstudies= nstudies$N)
  }else{
    
    fit<-NULL
    try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method=method, measure="RR"))
    if(method=="REML"){
      if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="RR"))}
      if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="RR"))}
      if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="RR"))}
    }
    if(is.null(fit)){
      est<-data.frame(logRR.psi=NA, logSE=NA, RR=NA, RR.CI1=NA,  RR.CI2=NA)
    }else{
      
      est<-data.frame(fit$b, fit$se)
      colnames(est)<-c("logRR.psi","logSE")
      
      est$RR<-exp(est$logRR)
      est$RR.CI1<-exp(est$logRR - 1.96 * est$logSE)
      est$RR.CI2<-exp(est$logRR + 1.96 * est$logSE)
      
      est$Nstudies <- nstudies$N
    }
  }
  
  return(est)
}


pool.par <- function(d, method="REML"){
  nstudies <- d %>% summarise(N=n())
  
  fit<-NULL
  try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method=method, measure="GEN"))
  if(method=="REML"){
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="GEN"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="GEN"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="GEN"))}
  }
  if(is.null(fit)){
    est<-data.frame(PAR=NA, CI1=NA,  CI2=NA)
  }else{
    est<-data.frame(fit$b, fit$ci.lb, fit$ci.ub)
    colnames(est)<-c("PAR","CI1","CI2")    
  }
  est$Nstudies <- nstudies$N
  rownames(est) <- NULL
  return(est)
}


pool.prev <- function(d, method="REML"){
  nstudies <- d %>% summarise(N=n())
  
  fit<-NULL
  try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method=method, measure="GEN"))
  if(method=="REML"){
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="GEN"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="GEN"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="GEN"))}
  }
  if(is.null(fit)){
    est<-data.frame(prev=NA, CI1=NA,  CI2=NA)
  }else{
    est<-data.frame(fit$b, fit$ci.lb, fit$ci.ub)
    colnames(est)<-c("prev","CI1","CI2")    
  }
  est$Nstudies <- nstudies$N
  rownames(est) <- NULL
  return(est)
}



pool.Zpar <- function(d, method="REML"){
  nstudies <- d %>% summarise(N=n())
  
  fit<-NULL
  try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method=method, measure="GEN"))
  if(method=="REML"){
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="GEN"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="GEN"))}
    if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="GEN"))}
  }
  if(is.null(fit)){
    est<-data.frame(PAR=NA, CI1=NA,  CI2=NA)
  }else{
    est<-data.frame(fit$b, fit$ci.lb, fit$ci.ub)
    colnames(est)<-c("PAR","CI1","CI2")    
  }
  est$Nstudies <- nstudies$N
  rownames(est) <- NULL
  return(est)
}


#Pooled continious estimate function
pool.cont <- function(d, method="REML"){
  nstudies <- d %>% summarise(N=n())
  
  #cat("Var: ", d$intervention_variable[1], " level: ",d$intervention_level[1] ," age: ", d$agecat[1] , "nstudies: ", nstudies$N, "\n")
  
  if(d$intervention_level[1] == d$baseline_level[1]){
    est <- data.frame(ATE=0, CI1=0, CI2=0, Nstudies= nstudies$N)
  }else{
    
    fit<-NULL
    try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method=method, measure="GEN"))
    if(method=="REML"){
      if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="ML", measure="GEN"))}
      if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="DL", measure="GEN"))}
      if(is.null(fit)){try(fit<-rma(yi=untransformed_estimate, sei=untransformed_se, data=d, method="HE", measure="GEN"))}
    }
    est<-data.frame(fit$b, fit$ci.lb, fit$ci.ub)
    colnames(est)<-c("ATE","CI1","CI2")
    est$Nstudies <- nstudies$N
  }
  rownames(est) <- NULL
  return(est)
}



#-----------------------------------------------------------------------------------------
# Clean Longbow output
#-----------------------------------------------------------------------------------------

RMA_clean <- function(RMAest, outcome="binary",
                      agecatlevels=c("3 months prevalence", "3-6 months\ncumulative incidence", "0-6 months (no birth st.)\ncumulative incidence","0-6 months\ncumulative incidence",
                                     "6 months prevalence","6-9 months\ncumulative incidence","9 months prevalence","9-12 months\ncumulative incidence","12 months prevalence",
                                     "12-15 months\ncumulative incidence","15 months prevalence","15-18 months\ncumulative incidence","18 months prevalence",
                                     "0-24 months (no birth st.)","6-24 months\ncumulative incidence","0-24 months (no birth st.)\ncumulative incidence","0-24 months\ncumulative incidence","24 months prevalence")){
  
  
  #Order factors for plotting  
  RMAest <- droplevels(RMAest)

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
  RMAest$baseline_level[RMAest$baseline_level=="0" & RMAest$intervention_variable %in% binvars] <- "No"
  RMAest$baseline_level[RMAest$baseline_level=="1" & RMAest$intervention_variable %in% binvars] <- "Yes"
  
  #Att birthweight grams
  RMAest$intervention_level[RMAest$intervention_level=="Low birth weight"] <- "< 2500 g"
  RMAest$intervention_level[RMAest$intervention_level=="Normal or high birthweight"] <- ">= 2500 g"
  RMAest$baseline_level[RMAest$baseline_level=="Low birth weight"] <- "< 2500 g"
  RMAest$baseline_level[RMAest$baseline_level=="Normal or high birthweight"] <- ">= 2500 g"
  
  unique(RMAest$intervention_level)
  RMAest$intervention_level <- gsub("Wealth ","",RMAest$intervention_level)
  RMAest$intervention_level <- gsub("Wealth","",RMAest$intervention_level)
  RMAest$intervention_level <- factor(RMAest$intervention_level, 
                                      levels=c("0","1", "No", "Yes",
                                               "<48 cm" , "[48-50) cm",  ">=50 cm",                                  
                                               "< 2500 g",">= 2500 g", 
                                               "2","3","4","5","6","7","8","9",  "10" , "11","12" ,
                                               "<32" , "[32-38)", ">=38",
                                               "<30" , "[30-35)", ">=35",
                                               "<20","[20-30)","<25","[25-30)",">=30",
                                               "Low", "Medium", "High",                    
                                               "<162 cm", "[162-167) cm" , ">=167 cm",
                                               "Preterm", "Early term", "Full or late term",           
                                               "Food Insecure", "Mildly Food Insecure", "Food Secure",               
                                               "Q1", "Q2", "Q3", "Q4",
                                               "Underweight", "Normal weight", "Overweight or Obese",
                                               "<151 cm", "[151-155) cm", ">=155 cm",
                                               "<52 kg", "[52-58) kg", ">=58 kg",
                                               "2+","3 or less","4-5","6-7","8+","3+","4+",                                                 
                                               "[0%, 2%]",">2%","Female","Male",
                                               "Opposite max rain", "Pre-max rain","Max rain",
                                               "Post-max rain",
                                               "WHZ Q1", "WHZ Q2", "WHZ Q3", "WHZ Q4"))
  
  
  
  unique(RMAest$intervention_variable)
  RMAest$intervention_variable <- factor(RMAest$intervention_variable,
                                         levels=c("sex","birthlen","birthwt", "gagebrth",
                                                  "hdlvry","vagbrth",
                                                  "enwast","enstunt","anywast06","pers_wast",
                                                  "earlybf","predexfd6",
                                                  "predfeed3","predfeed36","predfeed6",
                                                  "exclfeed3","exclfeed36","exclfeed6",
                                                  "perdiar6","perdiar24",
                                                  "mage","fage","fage_rf","mhtcm","fhtcm",
                                                  "mwtkg","mbmi","single",
                                                  "meducyrs","feducyrs",
                                                  "parity",
                                                  "nchldlt5","nhh","nrooms",
                                                  "hhwealth_quart","hfoodsec",
                                                  "impsan","safeh20","trth2o",
                                                  "impfloor","cleanck",
                                                  "brthmon" ,"month",
                                                  "lag_WHZ_quart",
                                                  "rain_quartile"))   
  
  
  #Add variable labels
  unique(RMAest$intervention_variable)
  
  RMAest$RFlabel[RMAest$intervention_variable=="sex"] <-  "Sex"
  RMAest$RFlabel[RMAest$intervention_variable=="enwast"] <-  "Enrolled wasted"
  RMAest$RFlabel[RMAest$intervention_variable=="enstunt"] <-  "Enrolled stunted"
  RMAest$RFlabel[RMAest$intervention_variable=="gagebrth"] <-  "Gestational age at birth"
  RMAest$RFlabel[RMAest$intervention_variable=="predexfd6"] <-  "Excl/Pred breastfed <6mo."
  RMAest$RFlabel[RMAest$intervention_variable=="mage"] <- "Mother's age" 
  RMAest$RFlabel[RMAest$intervention_variable=="mhtcm"] <- "Mother's height" 
  RMAest$RFlabel[RMAest$intervention_variable=="mwtkg"] <- "Mother's weight" 
  RMAest$RFlabel[RMAest$intervention_variable=="mbmi"] <- "Mother's BMI" 
  RMAest$RFlabel[RMAest$intervention_variable=="meducyrs"] <- "Mother's education" 
  RMAest$RFlabel[RMAest$intervention_variable=="feducyrs"] <- "Father's education" 
  RMAest$RFlabel[RMAest$intervention_variable=="parity"] <-  "Birth order" 
  RMAest$RFlabel[RMAest$intervention_variable=="hfoodsec"] <- "HH food security" 
  RMAest$RFlabel[RMAest$intervention_variable=="nchldlt5"] <-   "# of children <5 in HH"
  RMAest$RFlabel[RMAest$intervention_variable=="hhwealth_quart"] <-  "HH wealth" 
  RMAest$RFlabel[RMAest$intervention_variable=="fage"] <- "Father's age" 
  RMAest$RFlabel[RMAest$intervention_variable=="fage_rf"] <- "Father's age" 
  RMAest$RFlabel[RMAest$intervention_variable=="fhtcm"] <- "Father's height" 
  RMAest$RFlabel[RMAest$intervention_variable=="birthwt"] <- "Birthweight (kg)" 
  RMAest$RFlabel[RMAest$intervention_variable=="birthlen"] <- "Birth length (cm)" 
  RMAest$RFlabel[RMAest$intervention_variable=="vagbrth"] <- "Vaginal birth" 
  RMAest$RFlabel[RMAest$intervention_variable=="hdlvry"] <- "Child delivered at home" 
  RMAest$RFlabel[RMAest$intervention_variable=="single"] <- "Single parent" 
  RMAest$RFlabel[RMAest$intervention_variable=="nrooms"] <- "# of rooms in HH" 
  RMAest$RFlabel[RMAest$intervention_variable=="nhh"] <- "# of people in HH" 
  RMAest$RFlabel[RMAest$intervention_variable=="anywast06"] <- "Any wasting  <6 mo." 
  RMAest$RFlabel[RMAest$intervention_variable=="pers_wast"] <- "Persistent wasting  <6 mo." 
  RMAest$RFlabel[RMAest$intervention_variable=="trth2o"] <- "Treats drinking water" 
  RMAest$RFlabel[RMAest$intervention_variable=="cleanck"] <- "Clean cooking fuel usage" 
  RMAest$RFlabel[RMAest$intervention_variable=="impfloor"] <- "Improved floor" 
  RMAest$RFlabel[RMAest$intervention_variable=="impsan"] <- "Improved sanitation" 
  RMAest$RFlabel[RMAest$intervention_variable=="safeh20"] <- "Safe water source" 
  RMAest$RFlabel[RMAest$intervention_variable=="perdiar6"] <- "Diarrhea <6 mo. (% days)" 
  RMAest$RFlabel[RMAest$intervention_variable=="perdiar24"] <- "Diarrhea <24 mo.  (% days)" 
  RMAest$RFlabel[RMAest$intervention_variable=="earlybf"] <- "Breastfed hour after birth" 
  RMAest$RFlabel[RMAest$intervention_variable=="predfeed3"] <-  "Predominant breastfeeding under 3 mo."
  RMAest$RFlabel[RMAest$intervention_variable=="predfeed36"] <-  "Predominant breastfeeding from 3-6 mo."
  RMAest$RFlabel[RMAest$intervention_variable=="predfeed6"] <-  "Predominant breastfeeding under 6 mo."
  RMAest$RFlabel[RMAest$intervention_variable=="exclfeed3"] <-  "Exclusive breastfeeding under 3 mo."
  RMAest$RFlabel[RMAest$intervention_variable=="exclfeed36"] <-  "Exclusive breastfeeding from 3-6 mo."
  RMAest$RFlabel[RMAest$intervention_variable=="exclfeed6"] <-  "Exclusive breastfeeding under 6 mo."
  RMAest$RFlabel[RMAest$intervention_variable=="month"] <-  "Month of measurement"
  RMAest$RFlabel[RMAest$intervention_variable=="brthmon"] <-  "Birth month"
  RMAest$RFlabel[RMAest$intervention_variable=="lag_WHZ_quart"] <-  "Prior WLZ"
  RMAest$RFlabel[RMAest$intervention_variable=="rain_quartile"] <-  "Rain quartile"
  
  
  
  RMAest$intervention_variable <- factor(RMAest$intervention_variable)
  
  
  RMAest$RFtype <- NA
  RMAest$RFtype[RMAest$intervention_variable=="sex"] <-  "Birth characteristics"
  RMAest$RFtype[RMAest$intervention_variable=="enwast"] <-  "Postnatal child health" 
  RMAest$RFtype[RMAest$intervention_variable=="enstunt"] <-  "Postnatal child health" 
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
  RMAest$RFtype[RMAest$intervention_variable=="fage_rf"] <- "Parent background" 
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
  RMAest$RFtype[RMAest$intervention_variable=="rain_quartile"] <-  "Time"
  RMAest$RFtype[RMAest$intervention_variable=="enwast"] <-  "Postnatal child health"
  RMAest$RFtype[RMAest$intervention_variable=="anywast06"] <-  "Postnatal child health"
  RMAest$RFtype[RMAest$intervention_variable=="pers_wast"] <-  "Postnatal child health"
  
  return(RMAest)
}










#Adapted from: 
#http://www.ag-myresearch.com/2012_gasparrini_statmed.html

spline_meta <- function(d, Y="haz", Avar, overall=T, cen=365, type="bs", bound=c(1,730), degree=3, df = 10, center=365){
  
  # LOAD THE PACKAGES (mvmeta PACKAGE IS ASSUMED TO BE INSTALLED)
  require(mvmeta)
  require(dlnm)
  
  colnames(d)[which(colnames(d)==Avar)] <- "Avar"
  colnames(d)[which(colnames(d)==Y)] <- "Y"
  
  d <- d %>% filter(!is.na(Y) & !is.na(Avar))
  
  #Number of exposure levels
  nlevels <- length(unique(d$Avar))
  
  #Number of cohorts
  d$id <- paste0(d$studyid, d$country,"__", d$Avar)
  m <- length(unique(d$id))
  
  d <- droplevels(d)
  
  # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  # NOTE: set bound as average bound across studies and knots based on average quantiles, (same as example script, may need to save studies as a list first)
  # if that fails, set splines specific to each study
  # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  

  # BUILT OBJECTS WHERE RESULTS WILL BE STORED:
  #   ymat IS THE MATRIX FOR THE OUTCOME PARAMETERS
  #   Slist IS THE LIST WITH (CO)VARIANCE MATRICES
  ymat <- matrix(NA,m,df,dimnames=list(unique(d$id),paste("spl",seq(df),sep="")))
  Slist <- vector("list",m)
  names(Slist) <- unique(d$id)
  
  ####################################################################
  # RUN THE FIRST-STAGE ANALYSIS
  
  for(i in 1:m){
    
    # PRINT ITERATION
    cat(i,"")
    
    # LOAD
    data <- d[d$id==unique(d$id)[i],]
    
    
    # CREATE THE SPLINE
    bt <- onebasis(data$agedays,fun=type,
                   degree=degree, 
                   df=df)
    
    # RUN THE MODEL
    #Note: add cv cross-validation
    model <- glm(Y ~ bt,family=gaussian(), data)
    
    # EXTRACT AND SAVE THE RELATED COEF AND VCOV
    predbt <- NULL
    try(predbt <- crosspred(bt,model,cen=center))
    if(!is.null(predbt)){
      ymat[i,1:length(predbt$coef)] <- predbt$coef
      Slist[[i]] <- predbt$vcov
    }
  }
  
  Slist <- Filter(Negate(is.null), Slist)
  #Drop missing columns
  ymat<-ymat[!is.na(ymat[,1]),]
  #drop missing rows
  ymat<-ymat[, colSums(is.na(ymat)) != nrow(ymat)]
  
  ####################################################################
  # PERFORM MULTIVARIATE META-ANALYSIS
  ####################################################################
  
  
  # 1) MULTIVARIATE META-ANALYSIS
  if(overall){
    mv <- mvmeta(ymat,Slist,method="ml")
    
    # PREDICTION FROM SIMPLE META-ANALYSES WITH NO PREDICTORS
    # CENTERED TO SPECIFIC VALUE
    tmean <- seq(bound[1],bound[2],length=30)
    btmean <- onebasis(tmean,fun=type, degree=degree, df=df #,
                       #knots=knots,
                       #Bound=bound
    )
    cp <- crosspred(btmean,coef=coef(mv),vcov=vcov(mv), by=0.1, cen=center)
    return(cp)
  }else{
    
    # 2) MULTIVARIATE META-REGRESSION - Avar-level has to be study specific predictor
    Avar_lev<- stringr::str_split(rownames(ymat),"__", simplify=T)[,2]
    (mvlat <- mvmeta(ymat~Avar_lev,Slist,method="reml"))
    
    # NB: IN VERSION 0.4.1, CONVERGENCE MAY BE INSPECTED USING THE ARGUMENT:
    #   control=list(showiter=T)
    # NB: LESS STRICT CONVERGENCE CRITERIA, USEFUL FOR HIGH DIMENSIONAL
    #   MODELS, MAY BE SELECTED BY ADDING A reltol ARGUMENT, FOR EXAMPLE:
    #   control=list(showiter=T,reltol=10^-3)
    
    ####################################################################
    # CREATE BASIS FOR PREDICTION
    ####################################################################
    
    # BASIS USED TO PREDICT AGE, EQUAL TO THAT USED FOR ESTIMATION
    #   NOTE: INTERNAL AND BOUNDARY KNOTS PLACED AT SAME VALUES AS IN ESTIMATION
    tmean <- seq(bound[1],bound[2],length=30)
    btmean <- onebasis(tmean,fun=type)
    
    
    ####################################################################
    # PREDICTION FROM MODELS
    ####################################################################
    
    # USE OF crosspred TO PREDICT THE EFFECTS FOR THE CHOSEN VALUES
    
    
    # COMPUTE PREDICTION FOR MULTIVARIATE META-REGRESSION MODELS
    #   1ST STEP: PREDICT THE OUTCOME PARAMETERS FOR SPECIFIC VALUES OF META-PREDICTOR
    #   2ND STEP: PREDICT THE RELATIONSHIP AT CHOSEN VALUES GIVEN THE PARAMETERS
    
    predAvar <- predict(mvlat,data.frame(Avar=factor(unique(d$Avar))),vcov=T)
    predlist <- list()
    for(i in 1:nlevels){
      pred <- crosspred(btmean,coef=predAvar[[i]]$fit,vcov=predAvar[[i]]$vcov, model.link="log",by=0.1,cen=center)
      predlist[[i]] <- pred 
    }
    names(predlist) <- unique(d$Avar)
    return(predlist)
  }
}


create_plotdf <- function(predlist, overall=F, stratlevel=NULL){
  if(overall){
    df <- data.frame(
      level=stratlevel,
      agedays=as.numeric(rownames(predlist$matfit)),
      est=predlist$matfit[,1],
      se=predlist$matse[,1]
    )
    df <- df %>%
      mutate(ci.lb=est-1.96*se,
             ci.ub=est+1.96*se)
  }else{
    df <- NULL
    for(i in 1:length(predlist)){
      temp <- data.frame(
        level=names(predlist)[i],
        agedays=as.numeric(rownames(predlist[[i]]$matfit)),
        est=predlist[[i]]$matfit[,1],
        se=predlist[[i]]$matse[,1]
      )
      temp <- temp %>%
        mutate(ci.lb=est-1.96*se,
               ci.ub=est+1.96*se)
      df <- rbind(df, temp)
    }
  }
  return(df)    
}


offset_fun <- function(d, Y="haz", Avar, center=365, range=60){
  
  df <- d[!is.na(d[,Avar]),]
  
  df <- df %>% filter(agedays < center + range & agedays > center - range) %>% mutate(agecat="first", agecat=factor(agecat)) 
  
  z.summary <- cohort.summary(d=df, var=Y, ci=F, continious=T, severe=F, minN=50, measure="",  strata=c("region","studyid","country","agecat",Avar))
  z.res <- summarize_over_strata(cohort.sum=z.summary, proportion=F, continious=T, measure = "GEN",  method = "REML", strata=c("region","studyid","country","agecat",Avar),  region=F, cohort=F)
  
  z.res <- data.frame(level=z.res[,2], offset=z.res[,5])
  return(z.res)
} 



