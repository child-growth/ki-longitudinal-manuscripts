



rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
df <- readRDS(file="/data/KI/UCB-SuperLearner/Manuscript analysis data/ki-country-metrics.rds")

head(df)


head(df)
table(is.na(df$gii))

table(df$studyid, is.na(df$brthyr))

table(df$country, is.na(df$gdp))
table(df$country, is.na(df$gii))
table(country_metrics$country)

#some missing birthyears
df[is.na(df$gdp) & df$country=="PAKISTAN",]

#explore variation in country-level metrics
ggplot(df, aes(x=gdp)) + geom_histogram()
ggplot(df, aes(x=gdp)) + geom_density() + facet_wrap(~country)
df[df$gdp==max(df$gdp, na.rm=T),]

ggplot(df, aes(x=gdi)) + geom_histogram()
ggplot(df, aes(x=gii)) + geom_histogram()
ggplot(df, aes(x=chi)) + geom_histogram()
ggplot(df, aes(x=gini)) + geom_histogram()
ggplot(df, aes(x=he)) + geom_histogram()
ggplot(df, aes(x=pov)) + geom_histogram()


#put histograms in google doc after imputing birthyear and subsetting to 1-row per child
#stunting incidence
table(df$studyid, (df$gini>50))