

rm(list=ls())
library(tidyverse)
library(reshape2)




#Risk factor functions
setwd("U:/Perminant files/R scripts/")
source("HBGDki_function.R")
setwd("U:/Perminant files/R scripts/Risk factor analysis Rally 4b/")
source("4b_RiskFactor_functions.R")
setwd("U:/data/Rally4b_data")


files <- list.files(path="U:/data/Rally4b_data")
datasets<-files[grep("_inc.Rdata",files)]

dfull<-NULL
for(i in 1:length(datasets)){
  load(datasets[i])
}

#Print names of all datasets
dataset_names<-ls()[grep("_inc",ls())]
dataset_names<-dataset_names[-grep("table",dataset_names)]
cat(paste(dataset_names, collapse=", "))

#Create list of datasets
dataset_list<-list(  akup_inc, bfzn_inc, cmc_inc, 
                     cmin_inc_peru, 
                     cmin_inc_brazil,
                     cmin_inc_guinea_bissau,
                     cmin_inc_bangladesh,
                     cort_inc_brazil,
                     cort_inc_guatemala,
                     cort_inc_india,
                     cort_inc_philippines,
                     cort_inc_southafrica,
                     cntt_inc, ee_inc, eu_inc, gmsn_inc, gsto_inc, gbsc_inc, 
                     irc_inc, jvt3_inc, jvt4_inc, knba_inc, lcn5_inc, 
                     mled_inc_bangladesh,
                     mled_inc_brazil,
                     mled_inc_india,
                     mled_inc_nepal,
                     mled_inc_peru,
                     mled_inc_pakistan,
                     mled_inc_southafrica,
                     mled_inc_tanzania,
                     nbrt_inc, prbt_inc, phua_inc, 
                     rspk_inc, cmpf_inc, fspp_inc, 
                     tdc_inc, tzc2_inc, zvit_inc, lnsz_inc)

#Etract variables needed for QA check


QA_clean<-function(x){
  
  x <- x %>% 
    subset(., select=c(STUDYID, COUNTRY,SUBJID, AGEDAYS, WHZ, HAZ, WAZ)) 
  
  x$STUDYID <- as.factor(x$STUDYID)
  x$COUNTRY <- as.factor(x$COUNTRY)
  
  x$WHZ <- as.numeric(x$WHZ)
  x$HAZ <- as.numeric(x$HAZ)
  x$WAZ <- as.numeric(x$WAZ)
  x$AGEDAYS <- as.numeric(x$AGEDAYS)
  x$SUBJID <- as.numeric(x$SUBJID)
  
  return(x)
}
dataset_list <- lapply(dataset_list, QA_clean)
class(dataset_list[[1]][1])

#Drop all but dataset list to save memory
rm(list=setdiff(ls(), "dataset_list"))
gc()

# #Bind all datasets together
d<-bind_rows(dataset_list,  .id = "df_id")

#dfull<-NULL
#for(i in 1:length(dataset_list)){
#  dfull<-bind_rows(list(dfull,dataset_list[[i]]),  .id = "df_id")
#   }

d$STUDYID<- gsub("^k.*?-" , "", d$STUDYID)

#Shorten Tanzania label
table(d$COUNTRY)
d$COUNTRY[d$COUNTRY=="TANZANIA, UNITED REPUBLIC OF"]<-"TANZANIA"
table(d$STUDYID)

#Shorten studyids
d$STUDYID[d$STUDYID=="Burkina Faso Zn"] <- "Zn"
d$STUDYID[d$STUDYID=="Guatemala BSC"] <- "BSC"
d$STUDYID[d$STUDYID=="Peru Huascar"] <- "Huascar"
d$STUDYID[d$STUDYID=="TanzaniaChild2"] <- "Child2"
d$STUDYID[d$STUDYID=="CMC-V-BCS-2002"] <- "CMC-V-BCS"

d$cohort <- factor(paste0(d$STUDYID, " ", d$COUNTRY))
d$cohort_label <- as.character(paste0(d$STUDYID, "\n", d$COUNTRY))

d<-melt(d, id.vars = c("cohort","STUDYID"), measure.vars = c("WAZ", "HAZ","WHZ"))
head(d)

#Add in GHAP formatting
## constants
##---------------------------------------------------------------------

tableau10 <- c("#1F77B4","#FF7F0E","#2CA02C","#D62728",
               "#9467BD","#8C564B","#E377C2","#7F7F7F","#BCBD22","#17BECF")

## ggplot2 settings
##---------------------------------------------------------

library(ggplot2)
theme_set(theme_bw())
scale_colour_discrete <- function(...)
  scale_colour_manual(..., values = tableau10)
scale_fill_discrete <- function(...)
  scale_fill_manual(..., values = tableau10)
# Note that in some cases the "scale_" overrides can be problematic.
# In that case, instead of using these, manually add the scale to
# your plot, e.g.:
# qplot(...) + scale_colour_manual(value = tableau10)




setwd("U:/Perminant files/R scripts/Rally 4d QA check/")
pdf("4d_anthro_dens_QA_plot.pdf",width=10,height=8.5, paper="USr")


p<-ggplot(d, aes(value, ..density.., colour = variable)) +
  facet_wrap(~cohort) +
  coord_cartesian(xlim = c(-6.5, 3.5)) +
  geom_freqpoly(binwidth = .1)  + 
  theme(strip.text.x = element_text(size = 7))+
  xlab("Density plots of anthropometry measurements across HBGDki Rally 4 cohorts")
p
dev.off()


