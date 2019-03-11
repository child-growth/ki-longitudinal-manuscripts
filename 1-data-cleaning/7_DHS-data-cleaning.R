######################
#Ki DHS Analysis
#Spring 2019
#This script evaluates the GHAP DHS data. We concluded that this data does not include the z-score variables we need. 

######################
#install.packages("dplyr")
library(tidyverse)
library(growthstandards)

dhs_children_individuals <- read_csv("U://ucb-superlearner/Other data/DHS/dhs_children_individuals.csv")

#subset to countries in latin america, sub-saharan africa and south asia
DHS <- dhs_children_individuals %>%
  filter(DHScode != "AZ" & DHScode !="BJ" & DHScode != "JO" & DHScode != "KK" & 
           DHScode != "KY" & DHScode != "MB" & DHScode != "TR" & DHScode != "UA" & 
           DHScode != "UZ" & DHScode != "YE" & DHScode != "TH" & DHScode != "VN" & 
           DHScode != "ID" & DHScode != "KH")
#subset to most recent year for each country
DHS <- DHS %>% group_by(DHScode) %>% mutate(maxyear=max(year)) %>% filter(year==maxyear)
# make new new region variable 
DHS$region <- rep(NA, nrow(DHS))
DHS <- DHS %>% 
  mutate(region = case_when(DHScode == "BD" | DHScode == "IA" | DHScode == "LK" | 
                              DHScode == "MV" | DHScode == "NP" | DHScode == "PK" 
                            ~ "South Asia",
                            DHScode == "BO" | DHScode == "BR" | DHScode == "DR" | 
                              DHScode == "EC" | DHScode == "GU" | DHScode == "HN" | 
                              DHScode == "HT" | DHScode == "MX" | DHScode == "NC" | 
                              DHScode == "PE" | DHScode == "PH" | DHScode == "PY" ~ "Latin America", 
                            is.na(region) ~ "Sub Saharan Africa")) 




d <- DHS %>% subset(., select=c(DHScode, region, year, b4, hw1, hw3, hw2)) %>%
            rename(sex=b4, age=hw1, weight=hw2, height=hw3) %>%
            filter(age <= 24) %>% #Drop children over two
            mutate(aged=round(age*30.4167)) #Convert age to days for Z-score calculation

#Get most recent survey year
dim(d)
d <- d %>% group_by(DHScode) %>% mutate(lastyear=max(year)) %>% filter(year==lastyear)
dim(d)


#sex must be "Male" or "Female"
table(d$sex)
d$sex[d$sex=="female"] <- "Female"
d$sex[d$sex=="male"] <- "Male"

#Replace missing weight and height
summary(d$height)
summary(d$weight)
d$height[d$height>2000 | d$height<400] <- NA
d$weight[d$weight>900 | d$weight<10] <- NA
summary(d$height)
summary(d$weight)


d$haz <- who_htcm2zscore(d$agde, d$height/10, sex = d$sex)
d$haz[d$haz < -6 | d$haz > 6] <- NA
summary(d$haz)

d$whz <- who_wtkg2zscore(d$aged, d$weight/10, sex = d$sex)
d$whz[d$whz < -5 | d$whz > 5] <- NA
summary(d$whz)

#summarize mean and SD by region
region <- d %>% group_by(region) %>% summarize(haz_mn=mean(haz, na.rm=T), haz_sd=sd(haz, na.rm=T), whz_mn=mean(whz, na.rm=T), whz_sd=sd(whz, na.rm=T))
region


#Get plot data with less age categories
plot_df <- d %>% filter(age==0 | age ==6 | age==12 | age==18 |age==24)


#code for plots
p <- ggplot(data=plot_df,aes(x=whz,group=region,color=region,fill=region)) +
  facet_wrap(~age,nrow=1) +
  geom_density(aes(y=..density..),color=NA,alpha=0.7)+
  geom_vline(aes(xintercept= -2), size=2) +
  scale_x_continuous(limits = c(-5,5), breaks = c(-4:4)) +
  # scale_fill_manual(values=rep(pcols[4],10)) +
  # scale_color_manual(values=rep(pcols[4],10))  +
  labs(x="WLZ",y="Density") +
  theme_minimal(base_size=16) +
  theme(legend.position = "none") +
  ggtitle("WLZ distribution by child age")
p