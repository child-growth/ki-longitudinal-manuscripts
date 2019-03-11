######################
#Ki DHS Analysis
#Spring 2019
######################
install.packages("tidyselect")


library(tidyverse)
library(ggplot2)
library(dplyr)
library(haven)

install.packages("dplyr")
options(repos = c(CRAN = "http://cran.rstudio.com/", deltarho = "http://packages.deltarho.org"))
install.packages("growthstandards")
devtools::install_github("HBGDki/growthstandards")

library(tidyverse)
library(growthstandards)

df <- read_rds("/Users/wjilek/Documents/HBGDKi/ki-longitudinal-manuscripts/DHS\ Analysis/Data/dhs_data_combined.rds")

d <- read_dta("/Users/wjilek/Documents/HBGDKi/DHS\ data/AOIR71DT/AOIR71FL.DTA") 
