

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
library(table1)
df <- readRDS(file="/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-country-metric-categories.rds")


tab2 <- table1(~. |gdi_cat , format_number = TRUE, data=df)
tab2 <- as.data.frame(read_html(tab2) %>% html_table(fill=TRUE))
#Drop overall column
tab2 <- tab2[,!grepl("Overall",colnames(tab2))]
tab2 <- tab2[-c(1:8),]
colnames(tab2) <- paste0(str_split(colnames(tab2),"\\.", simplify = T)[,1]," ", str_split(colnames(tab2),"\\.", simplify = T)[,2])
colnames(tab2)[1] <- "."
colnames(tab2 )[8] <- "Capone 2022 in prep."      


saveRDS(df, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-country-metric-categories.rds")
