




# install.packages("devtools")
# devtools::install_github("HBGDki/ghap")
rm(list=ls())
library(ghap)
library(tidyverse)


studies <- get_study_list()



 #DHS data 
d<-read.csv("U:/data/DHS/DHS/import/dhs_children_individuals.csv")


#3 studies not downloaded with GHAP package
d <- read.csv("U:/data/cpp4/Final/adam/AD_CPP_LAND001.csv")
d <- d %>% filter(AGEDAYS > 0 & AGEDAYS < 24*30.4167) #%>% filter(!is.na(BIRTHWT))
d %>% group_by(COUNTRY) %>% summarize(obs=n(), subj=n_distinct(SUBJID))

d <- read.csv("U:/data/ig21/IG-201706/adam/ads_full.csv")
d <- d %>% filter(AGEDAYS > 0 & AGEDAYS < 24*30.4167) %>% filter(!is.na(HAZ))
d %>% group_by(COUNTRY) %>% summarize(obs=n(), subj=n_distinct(SUBJID))

d <- read.csv("U:/data/hlts/HealthyStart-201606/adam/ADS_FULL_ki1000153_HealthyStart.csv")
d <- d %>% filter(AGEDAYS > 0 & AGEDAYS < 24*30.4167) %>% filter(!is.na(HAZ))
d %>% group_by(COUNTRY) %>% summarize(obs=n(), subj=n_distinct(SUBJID))


#Function format
GHAP_metadata <- function(studyid, resdf=resdf){
  
  d <- res <- NULL
  
  cat(studyid,":\n")
  
  try(d <- use_study(studyid))
  
  if(!is.null(d)){
    
    #filter out prenatal measurements
    d <- d %>% filter(agedays > 0)
    
    #filter out measures without anthro
    d <- d %>% filter(!is.na(whz))
    
    for(i in unique(d$country)){
      df <- d %>% filter(country==i)
      
      #Number obs under 2
      obs <- nrow(df[df$agedays < 24*30.4167,])
  
      #Number of unique subjects under 2
      subj <- length(unique(df$subjid[df$agedays < 24*30.4167])) 
    
      cat("Country:",i,"\nObs: ",obs,"\nSubj:",subj,"\n\n")
      res<-rbind(res, data.frame(short_id=studyid, country=i, subj, obs))
    }
  }else{
    res<-rbind(res, data.frame(short_id=studyid, country=NA, subj=NA, obs=NA))
  }
  
  resdf <- rbind(resdf, res)
  
  return(resdf)
}




d<-NULL
d<-GHAP_metadata("bfzn", resdf=d)
d<-GHAP_metadata("eu", resdf=d)
d<-GHAP_metadata("vita", resdf=d)
d<-GHAP_metadata("svta", resdf=d)
d<-GHAP_metadata("vb12", resdf=d)
d<-GHAP_metadata("akup", resdf=d)
d<-GHAP_metadata("ilnd", resdf=d)
d<-GHAP_metadata("ildm", resdf=d)
d<-GHAP_metadata("cmc", resdf=d)
d<-GHAP_metadata("cntt", resdf=d)
d<-GHAP_metadata("ee", resdf=d)
d<-GHAP_metadata("gmsn", resdf=d)
d<-GHAP_metadata("gbsc", resdf=d)
d<-GHAP_metadata("irc", resdf=d)
d<-GHAP_metadata("knba", resdf=d)
d<-GHAP_metadata("mlex", resdf=d)
d<-GHAP_metadata("prvd", resdf=d)
d<-GHAP_metadata("rspk", resdf=d)
d<-GHAP_metadata("tzc2", resdf=d)
d<-GHAP_metadata("cmin", resdf=d)
d<-GHAP_metadata("jvt3", resdf=d)
d<-GHAP_metadata("lnsz", resdf=d)
d<-GHAP_metadata("jvt4", resdf=d)
d<-GHAP_metadata("lcn5", resdf=d)
d<-GHAP_metadata("nbrt", resdf=d)
d<-GHAP_metadata("ncry", resdf=d)
d<-GHAP_metadata("prbt", resdf=d)
d<-GHAP_metadata("cmpf", resdf=d)
d<-GHAP_metadata("fspp", resdf=d)
d<-GHAP_metadata("zvit", resdf=d)
d<-GHAP_metadata("cort", resdf=d)
d<-GHAP_metadata("wsb", resdf=d)
d<-GHAP_metadata("wsk", resdf=d)
d<-GHAP_metadata("zmrt", resdf=d)
d<-GHAP_metadata("dnbc", resdf=d)
d<-GHAP_metadata("dfbc", resdf=d)
d<-GHAP_metadata("pops", resdf=d)
d<-GHAP_metadata("smcc", resdf=d)
d<-GHAP_metadata("bmbm", resdf=d)
d<-GHAP_metadata("bglu", resdf=d)
d<-GHAP_metadata("cppp", resdf=d)
d<-GHAP_metadata("cpp1", resdf=d)
d<-GHAP_metadata("cpp4", resdf=d)
d<-GHAP_metadata("dtwl", resdf=d)
d<-GHAP_metadata("epch", resdf=d)
d<-GHAP_metadata("fels", resdf=d)
d<-GHAP_metadata("hlts", resdf=d)
d<-GHAP_metadata("disc", resdf=d)
d<-GHAP_metadata("nghs", resdf=d)
d<-GHAP_metadata("taag", resdf=d)
d<-GHAP_metadata("fgs", resdf=d)
d<-GHAP_metadata("uma", resdf=d)
d<-GHAP_metadata("umi", resdf=d)
d<-GHAP_metadata("umm", resdf=d)
d<-GHAP_metadata("umn", resdf=d)
d<-GHAP_metadata("ifps", resdf=d)
d<-GHAP_metadata("ecls", resdf=d)
d<-GHAP_metadata("ehrs", resdf=d)
d<-GHAP_metadata("gsto", resdf=d)
d<-GHAP_metadata("solr", resdf=d)
d<-GHAP_metadata("phua", resdf=d)
d<-GHAP_metadata("eegg", resdf=d)
d<-GHAP_metadata("tdc", resdf=d)
d<-GHAP_metadata("bngd", resdf=d)
d<-GHAP_metadata("npre", resdf=d)
d<-GHAP_metadata("bts", resdf=d)
d<-GHAP_metadata("hemy", resdf=d)
d<-GHAP_metadata("ib21", resdf=d)
d<-GHAP_metadata("ig21", resdf=d)
d<-GHAP_metadata("bigu", resdf=d)
d<-GHAP_metadata("gual", resdf=d)
d<-GHAP_metadata("grip", resdf=d)
d<-GHAP_metadata("ppd", resdf=d)
d<-GHAP_metadata("zinf", resdf=d)
d<-GHAP_metadata("zsga", resdf=d)
d<-GHAP_metadata("zlbw", resdf=d)
d<-GHAP_metadata("eczn", resdf=d)
d<-GHAP_metadata("pzn", resdf=d)
d<-GHAP_metadata("dvds", resdf=d)
d<-GHAP_metadata("imnc", resdf=d)
d<-GHAP_metadata("wfrst", resdf=d)

save(d, file="U:/data/CONSORT_metadata.Rdata")
write.csv(d, file = "U:/data/CONSORT_metadata.csv")

d<-GHAP_metadata("dnbc", resdf=d)
d<-GHAP_metadata("cppp", resdf=d)
d<-GHAP_metadata("cpp1", resdf=d)
d<-GHAP_metadata("cpp4", resdf=d)
d<-GHAP_metadata("epch", resdf=d)
d<-GHAP_metadata("hlts", resdf=d)
d<-GHAP_metadata("nghs", resdf=d)
d<-GHAP_metadata("taag", resdf=d)
d<-GHAP_metadata("ifps", resdf=d)
d<-GHAP_metadata("ecls", resdf=d)
d<-GHAP_metadata("ehrs", resdf=d)
d<-GHAP_metadata("ig21", resdf=d)

studies[studies$short_id=="ig21" & !is.na(studies$short_id),]
studies$study_description[studies$short_id=="dnbc" & !is.na(studies$short_id)]
studies$study_description[studies$short_id=="cppp" & !is.na(studies$short_id)]
studies$study_description[studies$short_id=="cpp1" & !is.na(studies$short_id)]
studies$study_description[studies$short_id=="cpp4" & !is.na(studies$short_id)]
studies$study_description[studies$short_id=="epch" & !is.na(studies$short_id)]
studies$study_description[studies$short_id=="hlts" & !is.na(studies$short_id)]
studies$study_description[studies$short_id=="nghs" & !is.na(studies$short_id)]
studies$study_description[studies$short_id=="taag" & !is.na(studies$short_id)]
studies$study_description[studies$short_id=="ifps" & !is.na(studies$short_id)]
studies$study_description[studies$short_id=="ecls" & !is.na(studies$short_id)]
studies$study_description[studies$short_id=="ehrs" & !is.na(studies$short_id)]
studies$study_description[studies$short_id=="ig21" & !is.na(studies$short_id)]


studies$grant_folder[studies$short_id=="dnbc" & !is.na(studies$short_id)]
studies$grant_folder[studies$short_id=="cppp" & !is.na(studies$short_id)]
studies$grant_folder[studies$short_id=="cpp1" & !is.na(studies$short_id)]
studies$grant_folder[studies$short_id=="cpp4" & !is.na(studies$short_id)]
studies$grant_folder[studies$short_id=="epch" & !is.na(studies$short_id)]
studies$grant_folder[studies$short_id=="hlts" & !is.na(studies$short_id)]
studies$grant_folder[studies$short_id=="nghs" & !is.na(studies$short_id)]
studies$grant_folder[studies$short_id=="taag" & !is.na(studies$short_id)]
studies$grant_folder[studies$short_id=="ifps" & !is.na(studies$short_id)]
studies$grant_folder[studies$short_id=="ecls" & !is.na(studies$short_id)]
studies$grant_folder[studies$short_id=="ehrs" & !is.na(studies$short_id)]
studies$grant_folder[studies$short_id=="ig21" & !is.na(studies$short_id)]

