
#----------------------------------
# Mock draft up of code for KI shiny app
#----------------------------------

rm(list = ls())
source(paste0(here::here(), "/0-config.R"))

#load in names of pngs in figures file
nm <- list.files(path=paste0(here::here(),"/figures/mock_shiny"))
nm

#Set names for variables from png filenames
#fig-OUTCOME-CUTOFF-MEASURE-POPULATION-LOCATION-AGE-ANALYSIS.pdf
varnames <- c("fig","outcome","sev","meas","pop","loc","age","analysis")


#create data.frame of variables contained in plot title
df <- as.data.frame(str_split(nm,"-", simplify=T), plotnames=nm)
colnames(df) <- varnames
head(df)

#clean up
df$analysis <- gsub(".png","",df$analysis)
df$sev <- ifelse(df$sev==3,1,0)

#Now subset with shiny dropdown menus to pick single row



#Print the plot by loading and displaying selected .png file



#(Eventually add: print the corresponding table)


