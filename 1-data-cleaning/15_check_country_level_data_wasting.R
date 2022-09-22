



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
df <- readRDS(file="/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-country-metrics.rds")
 


head(df)

df <- df %>% filter(studyid %in% monthly_cohorts)

head(df)

dim(df)
dim(df %>% select(studyid, subjid, country, brthyr, region ) %>% distinct())
dim(df %>% ungroup() %>% select(studyid,  country, brthyr, region ) %>% distinct())






#Make a table 1 (with maybe continuous or categorical) or density plot by region showing how region is the main differeniator
#(table1 package)
ggplot(df, aes(x=gii, color=region, fill=region, group=region)) + geom_histogram(alpha=0.1) + theme(legend.position = "bottom")
ggplot(df, aes(x=gini, color=region, fill=region, group=region)) + geom_histogram(alpha=0.1) + theme(legend.position = "bottom")


df$decade <- cut(df$brthyr, breaks=c(-9999999, 2000, 2010 ,9999999), labels = c("90s", "2000s","2010s"), include.lowest = T, right=T)
table(df$decade)
table(df$region, df$decade)
round(prop.table(table(df$decade))*100,2)

prop.table(table(df$region, df$decade),1)

  
#layers of discomfort:
#-country level

#Response
#Note why we grouped by region- intentional, motivated by stakeholders at meeting and among co-authors

#Note the
#This is what we did
#These are our concerns:
# -Country level indicators to 
# Then looking at the distribution, they are basically sorted by region
# For these reasons, we don't don't see these groupings as 


summary(df$gdp)
#https://blogs.worldbank.org/opendata/new-world-bank-country-classifications-income-level-2021-2022
df$gdp_cat <- cut(df$gdp, breaks=c(-9999999,1026,9999999), labels = c("Low income", "Middle income"), include.lowest = T, right=T)
table(df$gdp_cat)
table(df$region, df$gdp_cat)
table(df$country, df$gdp_cat)
round(prop.table(table(df$gdp_cat))*100,2)


summary(df$gdi)
summary(100* abs(df$gdi-1))
summary( abs(df$gdi-1))
quantile(100* abs(df$gdi-1), na.rm=T, probs = seq(0, 1, 0.3333333333333333333))


#https://hdr.undp.org/sites/default/files/hdr2020_technical_notes.pdf
df$gdi_cat <- cut(100*abs(df$gdi-1), breaks=c(-9999999, 10, 16,9999999), 
                  labels = c("High/Medium","Low", "Very low"), 
                  include.lowest = T, right=T)

df$gdi_cat = droplevels(df$gdi_cat)
table(df$gdi_cat)
round(prop.table(table(df$gdi_cat))*100,2)
table(df$region, df$gdi_cat)

summary(df$gii)
quantile(df$gii, na.rm=T)
quantile(df$gii, na.rm=T, probs = seq(0, 1, 0.3333333333333333333))


# #https://hdr.undp.org/sites/default/files/hdr2020_technical_notes.pdf
# df$gii_cat <- cut(df$gii, breaks=c(-9999999,  0.4, 9999999),
#                   labels = c("High","Low"),
#                   # df$gii_cat <- cut(df$gii, breaks=c(-9999999,  0.4, 9999999), 
#                   #                   labels = c("Low", "High"), 
#                   include.lowest = T, right=T)
# table(df$gii_cat)
# round(prop.table(table(df$gii_cat))*100,2)
# 

df$gii_cat <- cut(df$gii, breaks=c(-9999999,  0.555, 0.654, 9999999),
labels = c("High", "Medium","Low"),
# df$gii_cat <- cut(df$gii, breaks=c(-9999999,  0.4, 9999999), 
#                   labels = c("Low", "High"), 
                  include.lowest = T, right=T)
table(df$gii_cat)
round(prop.table(table(df$gii_cat))*100,2)
table(df$region, df$gii_cat)


summary(df$chi)
quantile(df$chi, na.rm=T)
quantile(df$chi, na.rm=T, probs = seq(0, 1, 0.3333333333333333333))


df$chi_cat <- cut(df$chi, breaks=c(-9999999,  28.9, 32.19338  , 9999999), 
                  labels = c("High", "Medium","Low"), 
                  include.lowest = T, right=T)
table(df$chi_cat)
round(prop.table(table(df$chi_cat))*100,2)
table(df$region, df$chi_cat)



summary(df$gini)
quantile(df$gini, na.rm=T)
quantile(df$gini, na.rm=T, probs = seq(0, 1, 0.3333333333333333333))




df$gini_cat <- cut(df$gini, breaks=c(-9999999,  35.4, 44.65714, 9999999), 
                   labels = c("Low", "Medium","High"), 
                   include.lowest = T, right=T)
table(df$gini_cat)
round(prop.table(table(df$gini_cat))*100,2)
table(df$region, df$gini_cat)
table(df$country, df$gini_cat)
table(df$studyid, df$gini_cat)



summary(df$he)
quantile(df$he, na.rm=T)
quantile(df$he, na.rm=T, probs = seq(0, 1, 0.3333333333333333333))


df$he_cat <- cut(df$he, breaks=c(-9999999,  4.442350,  5.557048, 9999999), 
                   labels = c("Low","Medium","High"), 
                   include.lowest = T, right=T)
table(df$he_cat)
round(prop.table(table(df$he_cat))*100,2)
table(df$region, df$he_cat)


summary(df$pov)
quantile(df$pov, na.rm=T)
quantile(df$pov, na.rm=T, probs = seq(0, 1, 0.3333333333333333333))


df$pov_cat <- cut(df$pov, breaks=c(-9999999,  18.38333,  51.040, 9999999), 
                 labels = c("Low", "Medium","High"), 
                 include.lowest = T, right=T)
table(df$pov_cat)
round(prop.table(table(df$pov_cat))*100,2)
table(df$region, df$pov_cat)


summary(df$mort)
quantile(df$mort, na.rm=T)
quantile(df$mort, na.rm=T, probs = seq(0, 1, 0.3333333333333333333))


df$mort_cat <- cut(df$mort, breaks=c(-9999999,  50,  80, 9999999), 
                  labels = c("<50 per 100,000", "50-80 per 100,000",">80 per 100,000"), 
                  include.lowest = T, right=F)
table(df$mort_cat)
round(prop.table(table(df$mort_cat))*100,2)
table(df$region, df$mort_cat)



saveRDS(df, file="/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-country-metric-categories_wasting.rds")

