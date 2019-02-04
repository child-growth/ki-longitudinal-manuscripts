
#-----------------------------------
# stunting-study-inventory-heatmaps.R
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
# input files:
#    GHAP_metadata.rds (created by GHAPStudyMetadata.R)
#
# output files:
#    stunting-study-inventory-heatmap-n.pdf
#    stunting-study-inventory-heatmap-nbig.pdf
#    stunting-study-inventory-heatmap-prev.pdf
#    stunting-study-inventory-heatmap-n-prev.pdf
#    stunting-study-inventory-heatmap-WHOanonymous.pdf
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


# bright color blind palette:  https://personal.sron.nl/~pault/ 
cblack <- "#000004FF"
cblue <- "#3366AA"
cteal <- "#11AA99"
cgreen <- "#66AA55"
cchartr <- "#CCCC55"
cmagent <- "#992288"
cred <- "#EE3333"
corange <- "#EEA722"
cyellow <- "#FFEE33"
cgrey <- "#777777"

#-----------------------------------
# load the meta-data table from Andrew (GHAP_metadata)
#-----------------------------------
md <- readRDS('results/GHAP_metadata_stunting.rds')


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

# calculate the total number of measurements
md$nmeas <- rowSums(md[,paste('n',1:24,sep='')],na.rm=TRUE)

dd <- md




#mark measure frequencies
dd$measurefreq <- NA

dd$measurefreq[dd$studyid %in% c(
  "ki0047075b-MAL-ED",   
  "ki1000108-CMC-V-BCS-2002",              
  "ki1000108-IRC",               
  "ki1000109-EE",           
  "ki1000109-ResPak",  
  "ki1017093b-PROVIDE",  
  "ki1066203-TanzaniaChild2",           
  "ki1101329-Keneba",  
  "ki1112895-Guatemala BSC",       
  "ki1113344-GMS-Nepal",             
  "ki1114097-CONTENT"
)] <- "monthly"

dd$measurefreq[dd$studyid %in% c(
  "ki1112895-iLiNS-Zinc",  
  "kiGH5241-JiVitA-3",          
  "kiGH5241-JiVitA-4", 
  "ki1148112-LCNI-5",          
  "ki1017093-NIH-Birth",
  "ki1017093c-NIH-Crypto",   
  "ki1119695-PROBIT",         
  "ki1000304b-SAS-CompFeed",   
  "ki1000304b-SAS-FoodSuppl",   
  "ki1126311-ZVITAMBO",   
  "ki1114097-CMIN",                 
  "ki1135781-COHORTS"
)] <- "quarterly"

dd$measurefreq[dd$studyid %in% c(
  "ki1000110-WASH-Bangladesh",       
  "ki1000111-WASH-Kenya",  
  "ki1148112-iLiNS-DOSE",     
  "ki1148112-iLiNS-DYAD-M", 
  "ki1033518-iLiNS-DYAD-G",
  "ki1000125-AgaKhanUniv",           
  "ki1112895-Burkina Faso Zn",    
  "ki1000304-VITAMIN-A",  
  "ki1000304-Vitamin-B12",
  "ki1000107-Serrinha-VitA",   
  "ki1000304-EU",        
  "ki1000304-ZnMort"
)] <- "yearly"


#Add regions
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
    country=="ZIMBABWE"|
    country=="GAMBIA"                       ~ "Africa",
  country=="BELARUS"                      ~ "Europe",
  country=="BRAZIL" | country=="GUATEMALA" |
    country=="PERU"                         ~ "Latin America",
  TRUE                                    ~ "Other"
))




#-----------------------------------
# separate cohorts into monthly, quarterly, or yearly
# and drop any non-intervention cohorts with only yearly 
# measurements
#-----------------------------------
dd$cohort <- paste0(dd$study_id," ", dd$countrycohort)
dd$median_length_between_measures <- as.numeric(dd$median_length_between_measures)
paste0(unique(dd$cohort[dd$median_length_between_measures<=40]), ": ",unique(dd$median_length_between_measures[dd$median_length_between_measures<=40]))
paste0(unique(dd$cohort[dd$median_length_between_measures>40 & dd$median_length_between_measures<=100]), ": ",unique(dd$median_length_between_measures[dd$median_length_between_measures>40 & dd$median_length_between_measures<=100]))
paste0(unique(dd$cohort[dd$median_length_between_measures>100]), ": ",unique(dd$median_length_between_measures[dd$median_length_between_measures>100]))

monthly <- c('gms_nepal','respak','irc','divids','ee','cmc_v_bcs_2002','mal_ed','tanzaniachild2','cmin','guatemala_bsc','incap','tdc','peru_huascar','content')
dd$monthly<-0
dd$monthly[dd$fstudy_id %in% monthly] <- 1

# Two of the CMIN cohorts (Brazil and Guinea-Bissau)  do not have monthly measurments
dd$monthly[dd$study_id=="CMIN" & dd$countrycohort=="BRAZIL"] <- 0
dd$monthly[dd$study_id=="CMIN" & dd$countrycohort=="GUINEA-BISSAU"] <- 0

#Mark less-than-quarterly studies
yearly <- c('jivita_3','wash_bangladesh','wash_kenya','ilins_dose','ilins_dyad_m','znmort')
dd$yearly<-0
dd$yearly[dd$fstudy_id %in% yearly] <- 1

dd$measure_freq<-"Quarterly Measurements"
dd$measure_freq[dd$monthly==1]<-"Monthly Measurements"
dd$measure_freq[dd$yearly==1]<-"Yearly"
dd$measure_freq <- factor(dd$measure_freq)

temp <- cbind(dd$study_id, dd$countrycohort, dd$median_length_between_measures, dd$measure_freq, dd$numobs)

#drop any non-intervention cohorts with only yearly measurements
dd <- dd[dd$cohort!="COHORTS BRAZIL" & dd$cohort!="COHORTS SOUTH AFRICA",]


#-----------------------------------
# basic counts and total summary stats
#-----------------------------------
# number of cohorts with monthly measurement
sum(dd$monthly==1)
# number of children
sum(dd$numsubj[dd$monthly==1])
# number of child-months
sum(dd$nmeas[dd$monthly==1])

# number of cohorts with quarterly measurement
sum(dd$monthly==0 & dd$yearly==0)
# number of children
sum(dd$numsubj[dd$monthly==0 & dd$yearly==0])
# number of child-months
sum(dd$nmeas[dd$monthly==0 & dd$yearly==0])


# number of cohorts with yearly measurement
sum(dd$yearly==1)
# number of children
sum(dd$numsubj[dd$yearly==1])
# number of child-months
sum(dd$nmeas[dd$yearly==1])


#overall totals
# number of cohorts, children, child-months
nrow(dd)
sum(dd$numsubj)
sum(dd$nmeas)

#-----------------------------------
# Do some final tidying up for the plot
#-----------------------------------

# shorten the description for a few studies
dd$short_description[dd$study_id=='CONTENT'] <- 'Eval of Negl. Enteric Inf'
dd$short_description[dd$study_id=='LCNI-5'] <- 'Lungwena Child Nutr RCT'
dd$short_description[dd$study_id=='Burkina Faso Zn'] <- 'Zinc RCT'
dd$short_description[dd$study_id=='AgaKhanUniv'] <- 'Aga Khan Nutr RCT'
dd$short_description[dd$study_id=='SAS-FoodSuppl'] <- 'Food Suppl RCT'
dd$short_description[dd$study_id=="MAL-ED"] <- 'MAL-ED'
dd$short_description[dd$study_id=='CMIN'] <- 'CMIN'
dd$short_description[dd$study_id=='Guatemala BSC'] <- 'Bovine Serum RCT'
dd$short_description[dd$study_id=='Peru Huascar'] <- 'Infant growth in Huascar'
dd$short_description[dd$study_id=='EE'] <- 'Biomarkers for EE'
dd$short_description[dd$study_id=='GMS-Nepal'] <- 'Growth Monitoring Study'
dd$short_description[dd$study_id=='NIH-Crypto'] <- 'NIH Crypto'
dd$short_description[dd$study_id=='PROVIDE'] <- 'PROVIDE RCT'
dd$short_description[dd$short_description=='Vitamin A Supplementation in Serrinha, Brazil'] <- 'Vit. A Sup., Serrinha'
dd$short_description[dd$short_description=='Respiratory Pathogens Birth Cohort'] <- 'Resp. Pathogens'
dd$short_description[dd$study_id=='CMC-V-BCS-2002'] <- 'CMC Birth, Vellore'
dd$short_description[dd$study_id=='ZnMort'] <- 'PROVIDE RCT'
dd$short_description[dd$study_id=='WASH-Bangladesh'] <- 'WASH Benefits RCT'
dd$short_description[dd$study_id=='WASH-Kenya'] <- 'Zn Supp + Infant Mort.'
dd$short_description[dd$study_id=='EU'] <- 'Zn Supp RCT'
dd$short_description[dd$study_id=='JiVitA-3'] <- 'JiVitA-3'
dd$short_description[dd$study_id=='JiVitA-4'] <- 'JiVitA-4'

dd$short_description[dd$study_id=='SAS-CompFeed'] <- 'Optimal Infant Feeding'
dd$short_description[dd$study_id=='NIH-Birth'] <- 'NIH Birth Cohort'


# simplify Tanzania label
dd$countrycohort[dd$countrycohort=='TANZANIA, UNITED REPUBLIC OF'] <- 'TANZANIA'

# make a study-country label, and make the monthly variable into a factor
# including an anonymous label (temporary) for sharing with WHO
dd <- mutate(dd,
             country=str_to_title(str_to_lower(countrycohort)), 
             studycountry=paste0(short_description,', ',country))

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


#Create dataset of studies we are using
colnames(dd)

studylist <- dd[,c(1:10,29:38)] %>% distinct()
library(xlsx)
write.xlsx(studylist, "U:/Data/Stunting/UCBerkeley_stunting_studylist.xlsx")
saveRDS(studylist, "U:/Data/Stunting/UCBerkeley_stunting_studylist.rds")

#-----------------------------------
# Create a long format dataset
# for ggplot2
#-----------------------------------

# gather N measurements by month data into long format
dnsubj <- select(dd,study_id,anonym,country,studycountry,measure_freq,stuntprev,starts_with('n')) %>%
  select(-neurocog_data,-nutrition,-notes,-num_countries,-numcountry,-numsubj,-numobs,-nmeas) %>%
  gather(age,nobs,-study_id,-anonym,-country,-studycountry,-measure_freq,-stuntprev) %>%
  mutate(age=as.integer(str_sub(age,2,-1)),nobs=as.integer(nobs)) %>%
  select(study_id,anonym,country,studycountry,measure_freq,stuntprev,age,nobs) %>%
  filter(age>=1 & age <=24 ) %>%
  arrange(measure_freq,stuntprev)

# gather stunting prev by month data into long format
dstuntp <- select(dd,study_id,anonym,country,studycountry,starts_with('stuntprev_m')) %>%
  gather(age,stp,-study_id,-anonym,-country,-studycountry) %>%
  mutate(age=as.integer(str_sub(age,12,-1))) %>%
  select(study_id,anonym,country,studycountry,age,stp) %>%
  filter(age>=1 & age <=24 )

# join the long tables together and sort countries by measure_freq and stunting prev
dp <- left_join(dnsubj,dstuntp,by=c('study_id','anonym','country','studycountry','age'))
  

# categorize stunting prevalence, set stunting prevalence category estimates to missing if n<50
dp$stpcat <- cut(dp$stp,breaks=c(0,5,10,20,30,40,50,60,100),labels=c("<5","5-10","10-20","20-30","30-40","40-50","50-60",">60"))

dp$stpcat <- factor(dp$stpcat)
dp$stpcat[dp$nobs<50 | is.nan(dp$stp)] <- NA

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
  facet_grid(measure_freq~.,scales='free_y',space='free_y') +
  #add border white colour of line thickness 0.25
  geom_tile(colour="white",size=0.25)+
  #remove extra space
  scale_y_discrete(expand=c(0,0))+
  scale_x_continuous(expand=c(0,0),
                     breaks=1:24,labels=1:24)+
  #one unit on x-axis is equal to one unit on y-axis.
  #equal aspect ratio x and y axis
  coord_equal()+
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
  facet_grid(measure_freq~.,scales='free_y',space='free_y') +
  #remove extra space
  scale_x_discrete(expand=c(0,0)) +
  scale_fill_manual(values=rep('gray70',5),na.value="grey90",
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

nhm <- hm +
  aes(fill=ncat) +
  labs(x="Age in months",y="",title="N children measured by month of age") +
  scale_fill_brewer(palette = "Greens",na.value="grey90",
                    guide=guide_legend(title="Number of Measurements",title.vjust = 1,
                                       label.position="bottom",label.hjust=0.5,nrow=1))

nbar <- sidebar +
  aes(y=nmeas/1000,fill=stpcat) +
  labs(x = "",y="Child-Months (x1000)",title="Sample size") +
  scale_y_continuous(expand=c(0,0),limits=c(0,130),
                     breaks=seq(0,120,by=20),labels=seq(0,120,by=20)) +
  geom_hline(yintercept = seq(0,120,by=20),color='white',size=0.3) 


ngrid <- grid.arrange(nhm, nbar, nrow = 1, ncol = 2, widths=c(100,20))
ggsave(filename="U:/Figures/stunting-study-inventory-heatmap-n2.pdf",plot = ngrid,device='pdf',width=10,height=9)


#-----------------------------------
# STUNTING PREVALENCE HEAT MAP
#-----------------------------------

# heat map
stphm <- hm +
  aes(fill=stpcat) +
  labs(x="Age in months",y="",title="Stunting prevalence by month of age") +
  scale_fill_brewer(palette = "YlOrRd",na.value="grey90",
                    guide=guide_legend(title="Stunting (%)",title.vjust = 1,
                                       label.position="bottom",label.hjust=0.5,nrow=1))
  
# stunting prevalence side bar plot
stpbar <- sidebar +
  aes(y=stuntprev,fill=stpcat) +
  labs(x = "",y="Overall Prevalence (%)",title="Stunting (%)") +
  scale_y_continuous(expand=c(0,0),limits=c(0,70),
                     breaks=seq(0,70,by=10),labels=seq(0,70,by=10)) +
  geom_hline(yintercept = seq(0,70,by=10),color='white',size=0.3)
  
  
# combined plot
stpgrid <- grid.arrange(stphm, stpbar, nrow = 1, ncol = 2, widths=c(100,20))
ggsave(filename="U:/Figures/stunting-study-inventory-heatmap-prev.pdf",plot = stpgrid,device='pdf',width=10,height=9)




#-----------------------------------
# measurement heat map with stunting
# prevalence
#-----------------------------------
ngridbig <- grid.arrange(nhm,nbar,stpbar,nrow=1,ncol=3,widths=c(100,20,20))
ggsave(filename="U:/Figures/stunting-study-inventory-heatmap-nbig2.pdf",plot = ngridbig,device='pdf',width=12,height=9)
ggsave(filename="U:/Figures/stunting-study-inventory-heatmap-nbig2.png",plot = ngridbig,device='png',width=12,height=9)


#-----------------------------------
# giant panel of both heat maps
#-----------------------------------
hmbiggest <- grid.arrange(nhm,nbar,stphm,stpbar,nrow=1,ncol=4,widths=c(100,20,100,20))
ggsave(filename="U:/Figures/stunting-study-inventory-heatmap-n-prev2.pdf",plot = hmbiggest,device='pdf',width=20,height=9)

#-----------------------------------
# anonymized heatmap for WHO
#-----------------------------------
nhma <- nhm + aes(y=anonym) + ylab("")
stphma <- stphm + aes(y=anonym) + ylab("")
hmwho <- grid.arrange(nhma,nbar,stphma,stpbar,nrow=1,ncol=4,widths=c(100,20,100,20))
ggsave(filename="U:/Figures/stunting-study-inventory-heatmap-WHOanonymous2.pdf",plot = hmwho,device='pdf',width=18,height=9)



#-----------------------------------
# print # measurements in each group
#-----------------------------------
# number of children per group 

# dd %>% 
#   group_by(measure_freq) %>%
#   summarise(sum(numsubj)) 
# 
# # number of child-months per group 
# dd %>% 
#   group_by(measure_freq) %>%
#   mutate(numobs=as.numeric(numobs)) %>%
#   summarise(children=sum(numsubj),months=sum(numobs)) %>%
#   mutate(months=months*c(1,3,12)) %>%
#   mutate(child_mo=children*months) 
# 
# # number of measurements per group
# dd %>% 
#   group_by(measure_freq) %>%
#   summarise(sum(nmeas))



