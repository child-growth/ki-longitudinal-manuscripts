#-----------------------------------
# study-inventory-heatmaps.R
#
# ben arnold (benarnold@berkeley.edu)
# modified by jade benjamin-chung (jadebc@berkeley.edu)
#
# create a heatmap of data availability
# for weight and height by study 
# in GHAP using meta-data
# (GHAP_metadata) that Andrew created
# using GHAPStudyMetadata.R
#-----------------------------------



#-----------------------------------
# preamble
#-----------------------------------
rm(list=ls())
library('dplyr')
library('tidyr')
library('stringr')
library('scales')
library('RColorBrewer')
library('ggplot2')
library('gridExtra')
library('readxl')
library('fastDummies')
library('here')

#Function source
source(paste0(here(),"/0-project-functions/0_clean_study_data_functions.R"))



#-----------------------------------
# load the meta-data table from Andrew (GHAP_metadata)
#-----------------------------------
md <- readRDS('results/GHAP_metadata_stunting.rds')
wmd <- readRDS('results/GHAP_metadata_wasting.RDS')

#Drop non-included studies
md <- mark_measure_freq(md)
wmd <- mark_measure_freq(wmd)
table(md$measurefreq)
table(wmd$measurefreq)

md <- md %>% filter(measurefreq!="yearly" & !is.na(measurefreq))
wmd <- wmd %>% filter(measurefreq!="yearly" & !is.na(measurefreq))

unique(md$study_id)
unique(wmd$study_id)


#-----------------------------------
# load figure 1 metadata
#-----------------------------------
ki_md <- read_excel('results/KI-metadata.xlsx', sheet = 'StudyMetadata')
ki_md_status <- read_excel('results/KI-metadata.xlsx', sheet = 'StudyStatus')
ki_md_status <- ki_md_status %>%
  dplyr::mutate(short_id = tolower(Short_ID))
# drop empty rows
ki_md <- ki_md[!is.na(ki_md$short_id), ]
# select only relevant columns for figure 1
ki_md <- ki_md %>%
  dplyr::select(short_id, country, subj, obs, study_id, short_description)
ki_md <- merge(ki_md, ki_md_status, by = 'short_id', all.x = TRUE)
# convert factors to numeric
ki_md <- ki_md %>%
  mutate(obs = as.integer(obs), subj = as.integer(subj))
ki_bar_data <- data.frame(ki_md)
# wide to long format
ki_md <- ki_md %>%
  dplyr::select(-Study_ID, -`included/excluded`,  -Short_ID) %>%
  gather('excludedReason', 'excludedIndicator', -short_id, -study_id,
         -country, -subj, -obs, -short_description, -reason_excluded)

ki_md <- shorten_descriptions(ki_md)
ki_md <- study_label_transformation(ki_md)
ki_md$excludedReason <- factor(ki_md$excludedReason, 
                               levels = c('included_first', 
                                          'included_high_income',
                                          'included_age',
                                          'included_ill',
                                          'included_measurement_freq',
                                          'included_small'))

ki_md <- name_labeling(ki_md)



md <- md[(md$study_id %in% wmd$study_id),]
wmd <- wmd[(wmd$study_id %in% md$study_id),]

dim(wmd)
dim(md)
md$countrycohort[is.na(md$countrycohort)] <- "singlecohort"
wmd$countrycohort[is.na(wmd$countrycohort)] <- "singlecohort"

md <- md %>% arrange(study_id, countrycohort)
wmd <- wmd %>% arrange(study_id, countrycohort)

md$id<-paste0(md$study_id,"_",md$countrycohort)
wmd$id<-paste0(wmd$study_id,"_",wmd$countrycohort)

md$temp<-1
wmd <- wmd %>% select(study_id, countrycohort, wastprev, wastprev_m1, wastprev_m2,
                      wastprev_m3, wastprev_m4, wastprev_m5, wastprev_m6,
                      wastprev_m7, wastprev_m8, wastprev_m9, wastprev_m10,
                      wastprev_m11, wastprev_m12, wastprev_m13, wastprev_m14,
                      wastprev_m15, wastprev_m16, wastprev_m17, wastprev_m18,
                      wastprev_m19, wastprev_m20, wastprev_m21, wastprev_m22,
                      wastprev_m23, wastprev_m24)
df <- merge(md, wmd, by=c('study_id', 'countrycohort'), all = TRUE)
dim(df)

d <- anti_join(md, wmd_t, by=c('study_id', 'countrycohort'), all = TRUE)
head(d)

df <- left_join(md, wmd_t, by=c('study_id', 'countrycohort'))
dim(df)


md$study_id[!(md$study_id %in% wmd$study_id)]
md$countrycohort[!(md$countrycohort %in% wmd$countrycohort)]

wmd$study_id[!(wmd$study_id %in% md$study_id)]
wmd$countrycohort[!(wmd$countrycohort %in% md$countrycohort)]


wmd$id[!(wmd$id %in% md$id)]
md$id[!(md$id %in% wmd$id)]

d <- anti_join(md, wmd, by=c('id'))
d$id

df <- merge(md, wmd_t, by=c('id'), all = TRUE)
dim(df)
XXXXXXXXXX
INCORRECT MERGE, FIX!
  
  
  # subset studies to those that meet stunting inclusion criteria
  load("results/stunting_studies.RData")
elig=as.character(ss$short_id)
md <- md %>% filter(md$short_id %in% elig)

# convert stunting prevalence and numsubj to numeric
md$stuntprev <- as.numeric(md$stuntprev)
md$numsubj <- as.numeric(md$numsubj)
for(i in 1:24){
  ni <- paste("n",i,sep="")
  wi <- paste("stuntprev_m",i,sep="")
  md[ni] <- as.numeric(md[,c(ni)])
  md[wi] <- as.numeric(md[,c(wi)])
}

# convert wasting prevalence to numeric
md$wastprev <- as.numeric(md$wastprev)
for(i in 1:24){
  ni <- paste("n",i,sep="")
  wi <- paste("wastprev_m",i,sep="")
  md[ni] <- as.numeric(md[,c(ni)])
  md[wi] <- as.numeric(md[,c(wi)])
}

# calculate the total number of measurements
md$nmeas <- rowSums(md[,paste('n',1:24,sep='')],na.rm=TRUE)

dd <- md







#-----------------------------------
# Do some final tidying up for the plot
#-----------------------------------


# shorten the description for a few studies
dd <- shorten_descriptions(dd)

# # simplify Tanzania label
dd$countrycohort[dd$countrycohort=='TANZANIA, UNITED REPUBLIC OF'] <- 'TANZANIA'

# make a study-country label, and make the monthly variable into a factor
# including an anonymous label (temporary) for sharing with WHO
dd <- mutate(dd,
             country=str_to_title(str_to_lower(countrycohort)), 
             studycountry=paste0(short_description,', ',country))

#Add regions with ugly Europe hack to change ordering
dd <- dd %>% mutate(country = toupper(country))
dd <- dd %>% mutate(region = case_when(
  country=="BANGLADESH" | country=="INDIA"|
    country=="NEPAL" | country=="PAKISTAN"|
    country=="PHILIPPINES"                   ~ "Asia", 
  country=="KENYA"|
    country=="GHANA"|
    country=="BURKINA FASO"|
    country=="GUINEA-BISSAU"|
    country=="MALAWI"|
    country=="SOUTH AFRICA"|
    country=="TANZANIA, UNITED REPUBLIC OF"|
    country=="TANZANIA"|
    country=="ZIMBABWE"|
    country=="GAMBIA"                       ~ "Africa",
  country=="BELARUS"                      ~ "",
  country=="BRAZIL" | country=="GUATEMALA" |
    country=="PERU"                         ~ "Latin America",
  TRUE                                    ~ "Other"
))

dd$region <- as.character(dd$region)
dd$region <- factor(dd$region, levels=c("Asia","Africa","Latin America","Other"))

unique(dd$studycountry)
unique(dd$study_id)

dd$studycountry[dd$studycountry=="Tanzania Child 2, Tanzania"] <- "Tanzania Child 2" 

dd <- mutate(dd,
             monthly=factor(monthly,levels=c(1,0),
                            labels=c('Monthly Measurements','Quarterly Measurements')),
             studycountry = factor(studycountry,
                                   levels=unique(studycountry[order(monthly,stuntprev)]), 
                                   ordered=TRUE),
             anonym = factor(paste("Cohort",1:nrow(dd),dd$country)),
             anonym = factor(anonym,levels=unique(anonym[order(monthly,stuntprev)]),
                             ordered=TRUE)
)

# categorize stunting prevalence
dd$stpcat <- cut(dd$stuntprev,breaks=c(0,5,10,20,30,40,50,60,100),labels=c("<5","5-10","10-20","20-30","30-40","40-50","50-60",">60"))
dd$stpcat <- factor(dd$stpcat)

# categorize wasting prevalence
dd$wpcat <- cut(dd$wastprev,breaks=c(0,5,10,20,30,40,50,60,100),labels=c("<5","5-10","10-20","20-30","30-40","40-50","50-60",">60"))
dd$wpcat <- factor(dd$wpcat)



#-----------------------------------
# Create a long format dataset
# for ggplot2
#-----------------------------------

# gather N measurements by month data into long format
dnsubj <- select(dd,study_id,anonym,country,studycountry,region,stuntprev,wastprev,starts_with('n')) %>%
  select(-neurocog_data,-nutrition,-notes,-num_countries,-numcountry,-numsubj,-numobs,-nmeas) %>%
  gather(age,nobs,-study_id,-anonym,-country,-studycountry,-region,-stuntprev, -wastprev) %>%
  mutate(age=as.integer(str_sub(age,2,-1)),nobs=as.integer(nobs)) %>%
  select(study_id,anonym,country,studycountry,region,stuntprev,wastprev,age,nobs) %>%
  filter(age>=1 & age <=24 ) %>%
  arrange(region,stuntprev,wastprev) 

# gather stunting prev by month data into long format
dstuntp <- select(dd,study_id,anonym,country,studycountry,starts_with('stuntprev_m')) %>%
  gather(age,stp,-study_id,-anonym,-country,-studycountry) %>%
  mutate(age=as.integer(str_sub(age,12,-1))) %>%
  select(study_id,anonym,country,studycountry,age,stp) %>%
  filter(age>=1 & age <=24 )

# gather stunting prev by month data into long format
dwastp <- select(dd,study_id,anonym,country,studycountry,starts_with('wastprev_m')) %>%
  gather(age,wp,-study_id,-anonym,-country,-studycountry) %>%
  mutate(age=as.integer(str_sub(age,12,-1))) %>%
  select(study_id,anonym,country,studycountry,age,wp) %>%
  filter(age>=1 & age <=24 )

# join the long tables together and sort countries by measure_freq and stunting prev
dp <- left_join(dnsubj,dstuntp,by=c('study_id','anonym','country','studycountry','age'))
dp <- left_join(dp,dwastp,by=c('study_id','anonym','country','studycountry','age'))


# categorize stunting prevalence, set stunting prevalence category estimates to missing if n<50
dp$stpcat <- cut(dp$stp,breaks=c(0,5,10,20,30,40,50,60,100),labels=c("<5","5-10","10-20","20-30","30-40","40-50","50-60",">60"))

dp$stpcat <- factor(dp$stpcat)
dp$stpcat[dp$nobs<50 | is.nan(dp$stp)] <- NA

# categorize wasting prevalence, set wasting prevalence category estimates to missing if n<50
dp$wpcat <- cut(dp$wp,breaks=c(0,5,10,20,30,40,50,60,100),labels=c("<5","5-10","10-20","20-30","30-40","40-50","50-60",">60"))

dp$wpcat <- factor(dp$wpcat)
dp$wpcat[dp$nobs<50 | is.nan(dp$wp)] <- NA

# categorize number of observations

N_breaks <- c(1,50, 100, 250, 500, 750, 1000, 1500, 2000, 100000)
dp$ncat <- cut(dp$nobs,
               breaks=N_breaks,
               labels=c('<50','50-100','100-250','250-500','500-750','750-1000','1000-1500','1500-2000','>2000'))
dp$ncat <- factor(dp$ncat)




#-----------------------------------
# Basic plot schemes
#
# there is one for a heat map and 
# a second for a side bar plot
# to summarize a single dimension
# (such as N or stunting prevalence)
#
# there is a little bit of 
# a trick here  to ensure that
# they have the two plots render
# have the same exact dimensions
# so that the line up properly in
# the grid.arrange() function.
# to do this, you need to create a 
# "ghost" legend in the side bar
# using a fake fill.  It uses the 
# aes.overide arguments to make 
# everything white so that you can't
# see it.
#-----------------------------------

#define a color for fonts
textcol <- "grey20"

# heat map plot scheme
hm <- ggplot(dp,aes(x=age,y=studycountry)) +
  # facet over measurement frequency
  facet_grid(region~.,scales='free_y',space='free_y') +
  #add border white colour of line thickness 0.25
  geom_tile(colour="white",size=0.25)+
  #remove extra space
  scale_y_discrete(expand=c(0,0))+
  scale_x_continuous(expand=c(0,0),
                     breaks=1:24,labels=1:24)+
  #one unit on x-axis is equal to one unit on y-axis.
  #equal aspect ratio x and y axis
  # coord_equal()+
  #set base size for all font elements
  theme_grey(base_size=10)+
  #theme options
  theme(
    # legend options
    legend.title=element_text(color=textcol,size=8),
    #reduce/remove legend margin
    legend.margin = margin(grid::unit(0.1,"cm")),
    #change legend text properties
    legend.text=element_text(colour=textcol,size=7,face="bold"),
    #change legend key height
    legend.key.height=grid::unit(0.2,"cm"),
    #set a slim legend
    legend.key.width=grid::unit(1,"cm"),
    #move legend to the bottom
    legend.position = "bottom",
    #set x axis text size and colour
    axis.text.x=element_text(size=8,colour=textcol,angle=0,vjust=0.5),
    #set y axis text colour and adjust vertical justification
    axis.text.y=element_text(size=8,vjust = 0.2,colour=textcol),
    #change axis ticks thickness
    axis.ticks=element_line(size=0.4),
    # axis.ticks.x=element_blank(),
    #change title font, size, colour and justification
    plot.title=element_text(colour=textcol,hjust=0,size=12,face="bold"),
    #format facet labels
    strip.text.x = element_text(size=10),
    strip.text.y = element_text(angle=270,size=10),
    #remove plot background
    plot.background=element_blank(),
    #remove plot border
    panel.border=element_blank()
    
    #remove plot margins
    # plot.margin=margin(grid::unit(1,"cm"))
  )


# side bar plot scheme
sidebar <- ggplot(data = dd, aes(x = studycountry)) + 
  geom_bar(stat = "identity") +
  coord_flip() + 
  facet_grid(region~.,scales='free_y',space='free_y') +
  #remove extra space
  scale_x_discrete(expand=c(0,0)) +
  scale_fill_manual(values=rep('gray70',7),na.value="grey90",
                    guide=guide_legend(title="",title.hjust = 0.5,
                                       label.position="bottom",label.hjust=0.5,nrow=1,
                                       override.aes = list(color = "white", fill="white"))) +
  theme_grey(base_size=10) +
  theme(
    # legend options
    # has to be the exact same format as for the other panel (for correct alignment)
    legend.title=element_text(color=textcol,size=8),
    #reduce/remove legend margin
    legend.margin = margin(grid::unit(0.1,"cm")),
    #change legend text properties
    legend.text=element_text(colour=NA,size=7,face="bold"),
    #change legend key height
    legend.key.height=grid::unit(0.2,"cm"),
    #set a slim legend
    legend.key.width=grid::unit(0.2,"cm"),
    #move legend to the bottom
    legend.position = "bottom",
    # remove study labels
    axis.title.y = element_blank(), 
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    #adjust facet labels
    strip.text.x = element_blank(),
    strip.text.y = element_blank(),
    # x-axis labels
    axis.title.x = element_text(size=10),
    # title has to be the exact same format as for the other panel (for correct alignment)
    plot.title=element_text(colour=textcol,hjust=0,size=12,face="bold"),
    # remove grid lines
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank()
    
  )




#####--------------------------------------------------------------------------
##### Figure 1
#####--------------------------------------------------------------------------
#define a color for fonts
textcol <- "grey20"

ki_md$excludedReason <- factor(ki_md$excludedReason, 
                               levels = c('included_first', 
                                          'included_high_income',
                                          'included_age',
                                          'included_ill',
                                          'included_measurement_freq',
                                          'included_small'))
ki_md <- ki_md %>%
  group_by(region) %>%
  arrange(desc(excludedReason), excludedIndicator, subj, .by_group = TRUE)
ki_md$cohort <- sapply(ki_md$cohort, function(x) as.character(x))
ki_md$cohort<-factor(ki_md$cohort, levels=unique(ki_md$cohort))

# heat map plot scheme
hm1 <- ggplot(ki_md,aes(x=excludedReason,y=cohort)) +
  # facet over geographic region
  facet_grid(region~.,scales='free_y',space='free_y') +
  #add border white colour of line thickness 0.25
  geom_tile(colour="white",size=0.25)+
  #remove extra space
  scale_y_discrete(expand=c(0,0))+
  scale_x_discrete(expand=c(0,0),
                   breaks=1:5)+
  #one unit on x-axis is equal to one unit on y-axis.
  #equal aspect ratio x and y axis
  # coord_equal()+
  #set base size for all font elements
  theme_grey(base_size=10)+
  #theme options
  theme(
    # hide legend
    legend.position = 'none',
    #set x axis text size and colour
    axis.text.x=element_text(size=8,colour=textcol),
    #set y axis text colour and adjust vertical justification
    axis.text.y=element_text(size=8,vjust = 0.2,colour=textcol),
    #change axis ticks thickness
    axis.ticks=element_line(size=0.4),
    # axis.ticks.x=element_blank(),
    #change title font, size, colour and justification
    plot.title=element_text(colour=textcol,hjust=0,size=12,face="bold"),
    #format facet labels
    strip.text.x = element_text(size=10),
    strip.text.y = element_text(angle=270,size=10),
    #remove plot background
    plot.background=element_blank(),
    #remove plot border
    panel.border=element_blank()
    # plot.margin = margin(0, 0.5, 0, 9.25, "cm")
    
  )


# side bar plot scheme
sidebar1 <- ggplot(data = ki_md, aes(x = cohort)) + 
  geom_bar(stat = "identity") +
  coord_flip() + 
  facet_grid(region~.,scales='free_y',space='free_y') +
  #remove extra space
  scale_x_discrete(expand=c(0,0)) +
  scale_fill_manual(values=rep('gray70',7),na.value="grey90",
                    guide=guide_legend(title="",title.hjust = 0.5,
                                       label.position="bottom",label.hjust=0.5,nrow=1,
                                       override.aes = list(color = "white", fill="white"))) +
  theme_grey(base_size=10) +
  theme(
    # legend options
    # has to be the exact same format as for the other panel (for correct alignment)
    legend.title=element_text(color=textcol,size=8),
    #reduce/remove legend margin
    legend.margin = margin(grid::unit(0.1,"cm")),
    #change legend text properties
    legend.text=element_text(colour=NA,size=7,face="bold"),
    #change legend key height
    legend.key.height=grid::unit(0.2,"cm"),
    #set a slim legend
    legend.key.width=grid::unit(0.2,"cm"),
    #move legend to the bottom
    legend.position = "bottom",
    # remove study labels
    axis.title.y = element_blank(), 
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    #adjust facet labels
    strip.text.x = element_blank(),
    strip.text.y = element_blank(),
    # x-axis labels
    axis.title.x = element_text(size=10),
    # title has to be the exact same format as for the other panel (for correct alignment)
    plot.title=element_text(colour=textcol,hjust=0,size=12,face="bold"),
    # remove grid lines
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank()
    
  )


#-----------------------------------
# measurement heat map
#-----------------------------------

nhm1 <- hm1 +
  aes(fill=as.factor(excludedIndicator)) +
  labs(x="Exclusion Reason",y="", title="") +
  scale_fill_brewer(palette = "Greens",na.value="grey90")

nbar1 <- sidebar1 + 
  # aes(y=nmeas/1000,fill=stpcat) +
  aes(y=subj/1000) +
  labs(x = "",y="Total Observations (x1000)",title="Sample size") +
  scale_y_continuous(expand=c(0,0),limits=c(0,130),
                     breaks=seq(0,120,by=20),labels=seq(0,120,by=20)) +
  geom_hline(yintercept = seq(0,120,by=20),color='white',size=0.3)


# -----------------------------------------------------------------------------
# Bar chart for the top of figure 1

ki_bar_data$reason_excluded <- factor(ki_bar_data$reason_excluded,
                                      levels = c('<200',
                                                 'insufficient measurement freq',
                                                 'enrolled ill',
                                                 'Wrong age range',
                                                 'High income',
                                                 'Included'))


ki_bar <- ki_bar_data %>%
  mutate(reason_excluded = replace_na(reason_excluded, 'Included')) %>%
  dplyr::group_by(reason_excluded) %>%
  mutate(obs = ifelse(is.na(obs), 0, obs)) %>%
  summarize(n = sum(obs)) 

# %>%
#   mutate(n = cumsum(n)) 

d <- data.frame('reason_excluded' = ki_bar$reason_excluded, n = rep(0, 6))
d$reason_excluded <- factor(d$reason_excluded,
                            levels = c('Included',
                                       'High income',
                                       'Wrong age range',
                                       'enrolled ill',
                                       'insufficient measurement freq',
                                       '<200'))
d <- d %>% arrange(reason_excluded)
d$n <- c(sum(ki_bar$n, na.rm = TRUE),
         sum(ki_bar$n, na.rm = TRUE) - 
           ki_bar[ki_bar$reason_excluded == 'High income', ]$n,
         sum(ki_bar$n, na.rm = TRUE) - 
           ki_bar[ki_bar$reason_excluded == 'High income', ]$n -
           ki_bar[ki_bar$reason_excluded == 'Wrong age range', ]$n,
         sum(ki_bar$n, na.rm = TRUE) - 
           ki_bar[ki_bar$reason_excluded == 'High income', ]$n -
           ki_bar[ki_bar$reason_excluded == 'Wrong age range', ]$n -
           ki_bar[ki_bar$reason_excluded == 'enrolled ill', ]$n,
         sum(ki_bar$n, na.rm = TRUE) - 
           ki_bar[ki_bar$reason_excluded == 'High income', ]$n -
           ki_bar[ki_bar$reason_excluded == 'Wrong age range', ]$n -
           ki_bar[ki_bar$reason_excluded == 'enrolled ill', ]$n -
           ki_bar[ki_bar$reason_excluded == 'insufficient measurement freq', ]$n,
         sum(ki_bar$n, na.rm = TRUE) - 
           ki_bar[ki_bar$reason_excluded == 'High income', ]$n -
           ki_bar[ki_bar$reason_excluded == 'Wrong age range', ]$n -
           ki_bar[ki_bar$reason_excluded == 'enrolled ill', ]$n -
           ki_bar[ki_bar$reason_excluded == 'insufficient measurement freq', ]$n -
           ki_bar[ki_bar$reason_excluded == '<200', ]$n)


levels(d$reason_excluded) <- c('Longitudinal cohorts',
                               'Located in low- or middle income countries',
                               'Enrolled correct age range',
                               'Enrollment not restricted to acutely ill children',
                               'Monthly growth measurements',
                               'Enrolled >= 200 children')

top1 <- ggplot(d, aes(x = reason_excluded, y = n/10000)) + 
  geom_bar(stat = 'identity') +
  theme_grey(base_size=10)+
  scale_y_continuous(limits = c(0, 110), breaks=seq(0,80,by=20), 
                     labels=seq(0,80,by=20)) +
  labs(y = 'Total Observations\n (x 10,000)') +
  # geom_text(aes(label = paste0(reason_excluded, ' (n=', floor(n/10000), ')')), 
  #                 position=position_dodge(width=0.9), vjust=-8, hjust = 0.1) +
  theme(
    # adjust margins for aligning with heat map
    plot.margin = margin(0, 0.25, 0, 9.25, "cm"),
    # legend options
    # has to be the exact same format as for the other panel (for correct alignment)
    legend.title=element_text(color=textcol,size=8),
    #reduce/remove legend margin
    legend.margin = margin(grid::unit(0.1,"cm")),
    #change legend text properties
    legend.text=element_text(colour=NA,size=7,face="bold"),
    #change legend key height
    legend.key.height=grid::unit(0.2,"cm"),
    #set a slim legend
    legend.key.width=grid::unit(0.2,"cm"),
    #move legend to the bottom
    legend.position = "bottom",
    #adjust facet labels
    strip.text.x = element_blank(),
    strip.text.y = element_blank(),
    # x-axis labels
    axis.title.x = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    # title has to be the exact same format as for the other panel (for correct alignment)
    plot.title=element_text(colour=textcol,hjust=0,size=12,face="bold"),
    # remove grid lines
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank()
  )

library(cowplot)
top_row <- plot_grid(top1, grid::nullGrob(), rel_widths = c(3/4, 1/4))
bottom_row <- plot_grid(nhm1, nbar1, rel_widths = c(3/4, 1/4))
ngrid1 <- plot_grid(top_row, bottom_row, nrow = 2, rel_heights = c(1/4, 3/4))


# ngrid1 <- grid.arrange(top1, grid::nullGrob(), nhm1, nbar1, nrow = 2, ncol = 2, widths=c(100,20))
ggsave(filename="figures/study-selection-heatmap-fig1.pdf",plot = ngrid1,device='pdf',width=10,height=9)
