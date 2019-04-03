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
source(paste0(here::here(), "/0-config.R"))

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

#fix PROVIDE location
wmd$countrycohort[wmd$study_id=="PROVIDE"] <- "BANGLADESH"

unique(md$study_id)
unique(wmd$study_id)

#drop yearly COHORTS
md <- md[!(md$study_id=="COHORTS" & (md$countrycohort=="BRAZIL"|md$countrycohort=="SOUTH AFRICA")),] 
wmd <- wmd[!(wmd$study_id=="COHORTS" & (wmd$countrycohort=="BRAZIL"|wmd$countrycohort=="SOUTH AFRICA")),] 

md <- md[(md$study_id %in% wmd$study_id),]
wmd <- wmd[(wmd$study_id %in% md$study_id),]
unique(wmd$study_id)


dim(wmd)
dim(md)
md$countrycohort[is.na(md$countrycohort)] <- "singlecohort"
wmd$countrycohort[is.na(wmd$countrycohort)] <- "singlecohort"


wmd <- wmd %>% select(study_id, cohortnum, wastprev, wastprev_m0, wastprev_m1, wastprev_m2,
                      wastprev_m3, wastprev_m4, wastprev_m5, wastprev_m6,
                      wastprev_m7, wastprev_m8, wastprev_m9, wastprev_m10,
                      wastprev_m11, wastprev_m12, wastprev_m13, wastprev_m14,
                      wastprev_m15, wastprev_m16, wastprev_m17, wastprev_m18,
                      wastprev_m19, wastprev_m20, wastprev_m21, wastprev_m22,
                      wastprev_m23, wastprev_m24, meanWHZ_m0, meanWHZ_m1, meanWHZ_m2,
                      meanWHZ_m3, meanWHZ_m4, meanWHZ_m5, meanWHZ_m6,
                      meanWHZ_m7, meanWHZ_m8, meanWHZ_m9, meanWHZ_m10,
                      meanWHZ_m11, meanWHZ_m12, meanWHZ_m13, meanWHZ_m14,
                      meanWHZ_m15, meanWHZ_m16, meanWHZ_m17, meanWHZ_m18,
                      meanWHZ_m19, meanWHZ_m20, meanWHZ_m21, meanWHZ_m22,
                      meanWHZ_m23, meanWHZ_m24)
md <- merge(md, wmd, by=c('study_id', 'cohortnum'), all = TRUE)

#drop mal-ed Pakistan
md <- md[!(md$study_id=="MAL-ED" & md$countrycohort=="singlecohort"),]
dim(md)




# convert stunting prevalence and numsubj to numeric
md$stuntprev <- as.numeric(md$stuntprev)
md$numsubj <- as.numeric(md$numsubj)
for(i in 0:24){
  ni <- paste("n",i,sep="")
  wi <- paste("stuntprev_m",i,sep="")
  md[ni] <- as.numeric(md[,c(ni)])
  md[wi] <- as.numeric(md[,c(wi)])
}

# convert wasting prevalence to numeric
md$wastprev <- as.numeric(md$wastprev)
for(i in 0:24){
  wi <- paste("wastprev_m",i,sep="")
  md[wi] <- as.numeric(md[,c(wi)])
}

# convert mean HAZ and WHZ to numeric
for(i in 0:24){
  sti <- paste("meanHAZ_m",i,sep="")
  wi <- paste("meanWHZ_m",i,sep="")
  md[sti] <- as.numeric(md[,c(sti)])
  md[wi] <- as.numeric(md[,c(wi)])
}


# calculate the total number of measurements
md$nmeas <- rowSums(md[,paste('n',0:24,sep='')],na.rm=TRUE)

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
dd$region <- factor(dd$region, levels=c("Asia","Africa","Latin America",""))



dd$studycountry[dd$studycountry=="Tanzania Child 2, Tanzania"] <- "Tanzania Child 2" 

dd <- mutate(dd,
             studycountry = factor(studycountry,
                                   levels=unique(studycountry[order(region,stuntprev)]), 
                                   ordered=TRUE))

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
dnsubj <- select(dd,study_id,country,studycountry,region,stuntprev,wastprev,starts_with('n')) %>%
  select(-neurocog_data,-nutrition,-notes,-num_countries,-numcountry,-numsubj,-numobs,-nmeas, -numsubj_u24mo, -numobs_u24mo) %>%
  gather(age,nobs,-study_id,-country,-studycountry,-region,-stuntprev, -wastprev) %>%
  mutate(age=as.integer(str_sub(age,2,-1)),nobs=as.integer(nobs)) %>%
  select(study_id,country,studycountry,region,stuntprev,wastprev,age,nobs) %>%
  filter(age>=0 & age <=24 ) %>%
  arrange(region,stuntprev,wastprev) 

# gather stunting prev by month data into long format
dstuntp <- select(dd,study_id,country,studycountry,starts_with('stuntprev_m')) %>%
  gather(age,stp,-study_id,-country,-studycountry) %>%
  mutate(age=as.integer(str_sub(age,12,-1))) %>%
  select(study_id,country,studycountry,age,stp) %>%
  filter(age>=0 & age <=24 )

# gather wasting prev by month data into long format
dwastp <- select(dd,study_id,country,studycountry,starts_with('wastprev_m')) %>%
  gather(age,wp,-study_id,-country,-studycountry) %>%
  mutate(age=as.integer(str_sub(age,11,-1))) %>%
  select(study_id,country,studycountry,age,wp) %>%
  filter(age>=0 & age <=24 )

# gather meanHAZ by month data into long format
dhaz <- select(dd,study_id,country,studycountry,starts_with('meanHAZ_m')) %>%
  gather(age,haz,-study_id,-country,-studycountry) %>%
  mutate(age=as.integer(str_sub(age,10,-1))) %>%
  select(study_id,country,studycountry,age,haz) %>%
  filter(age>=0 & age <=24 )

# gather meanWHZ by month data into long format
dwhz <- select(dd,study_id,country,studycountry,starts_with('meanWHZ_m')) %>%
  gather(age,whz,-study_id,-country,-studycountry) %>%
  mutate(age=as.integer(str_sub(age,10,-1))) %>%
  select(study_id,country,studycountry,age,whz) %>%
  filter(age>=0 & age <=24 )


# join the long tables together and sort countries by measure_freq and stunting prev
dim(dnsubj)
dim(dstuntp)
dp <- left_join(dnsubj,dstuntp,by=c('study_id','studycountry','country','age'))
dim(dp)
dp <- left_join(dp,dwastp,by=c('study_id','studycountry','country','age'))
dim(dp)
dp <- left_join(dp,dhaz,by=c('study_id','studycountry','country','age'))
dim(dp)
dp <- left_join(dp,dwhz,by=c('study_id','studycountry','country','age'))
dim(dp)

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

# categorize mean HAZ
summary(dp$haz)
dp$hazcat <- cut(dp$haz,breaks=c(-5, -3, -2.5, -2,-1.5,-1,-0.5,0,5), labels=c("<= -3","(-3,-2.5]", "(-2.5,-2]", "(-2,-1.5]", "(-1.5,-1]", "(-1,-0.5]",  "(-0.5,0]", ">0" ))
table(dp$hazcat)
dp$hazcat<- factor(dp$hazcat)
dp$hazcat[dp$nobs<50 | is.nan(dp$hazcat)] <- NA

# categorize mean WHZ
summary(dp$whz)
dp$whzcat <- cut(dp$whz,breaks=c(-5, -1, -0.75, -0.5,-0.25,0,0.5,1,5), labels=c("<= -1","(-1,-0.75]", "(-0.75,-0.5]", "(-0.5,-0.25]", "(-0.25,0]", "(0,0.5]",  "(0.5,1]", ">1"))
table(dp$whzcat)
dp$whzcat<- factor(dp$whzcat)
dp$whzcat[dp$nobs<50 | is.nan(dp$whzcat)] <- NA
table(dp$whzcat)


#Subset to monthly studies
monthlystudies <- c(
  "MAL-ED",   
  "CMC-V-BCS-2002",              
  "IRC",               
  "EE",           
  "ResPak",  
  "PROVIDE", 
  "TanzaniaChild2",           
  "Keneba",  
  "Guatemala BSC",       
  "GMS-Nepal",             
  "CONTENT",
  "CMIN")

dp <- dp[dp$study_id %in% monthlystudies,]
dd <- dd[dd$study_id %in% monthlystudies,]


#Drop CMIN GUINEA-BISSAU and BRAZIL for insufficient measure frequency

dp <- dp[!(dp$studycountry %in% c("CMIN, Brazil", "CMIN, Guinea-Bissau")),]
dd <- dd[!(dd$studycountry %in% c("CMIN, Brazil", "CMIN, Guinea-Bissau")),]
# dp <- droplevels(dp)
# dd <- droplevels(dd)


# Sort by wasting prevalence
dp <- dp %>% 
  group_by(region) %>%
  dplyr::arrange(desc(wastprev), .by_group = TRUE)
dp$studycountry <- sapply(dp$studycountry, function(x) as.character(x))
dp$studycountry <- factor(dp$studycountry, levels = unique(dp$studycountry))

dd <- dd %>% 
  group_by(region) %>%
  dplyr::arrange(wastprev, .by_group = TRUE) 
dd$studycountry <- sapply(dd$studycountry, function(x) as.character(x))
dd$studycountry <- factor(dd$studycountry, levels = unique(dd$studycountry))

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
  #facet_grid(region~. ) + #,scales='free_y',space='free_y') +
  facet_grid(region~., scales = "free_y", space="free") +
  #add border white colour of line thickness 0.25
  geom_tile(colour="white",size=0.25)+
  #remove extra space
  scale_y_discrete(expand=c(0,0))+
  scale_x_continuous(expand=c(0,0),
                     breaks=0:24,labels=0:24)+
  #one unit on x-axis is equal to one unit on y-axis.
  #equal aspect ratio x and y axis
  #coord_fixed()+
  #set base size for all font elements
  theme_grey(base_size=10)+
  #theme options
  theme(
    aspect.ratio = 1,
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



#-----------------------------------
# WASTING PREVALENCE HEAT MAP
#-----------------------------------

# heat map
wastphm <- hm + 
  aes(fill=whzcat) +
  labs(x="Age in months",y="",title="b") +
  scale_fill_viridis(na.value="grey90", option = "C", discrete = T,
                       direction = -1,
                       end = 0.8,
                       guide=guide_legend(title="Mean WLZ",title.vjust = 1,
                                          label.position="bottom",label.hjust=0.5,nrow=1))

# wasting prevalence side bar plot
wpbar <- sidebar +
  aes(y=wastprev,fill=wpcat) +
  labs(x = "",y="Wasting Prevalence (%)",title="d") +
  scale_y_continuous(expand=c(0,0),limits=c(0,30),
                     breaks=seq(0,20,by=5),labels=seq(0,20,by=5)) +
  geom_hline(yintercept = seq(0,20,by=5),color='white',size=0.3)

# stunting prevalence side bar plot
stpbar <- sidebar +
  aes(y=stuntprev,fill=stpcat) +
  labs(x = "",y="Stunting Prevalence (%)",title="d") +
  scale_y_continuous(expand=c(0,0),limits=c(0,70),
                     breaks=seq(0,70,by=10),labels=seq(0,70,by=10)) +
  geom_hline(yintercept = seq(0,70,by=10),color='white',size=0.3)

# number of obs side bar plot
nbar <- sidebar +
  aes(y=nmeas/1000,fill=wpcat) +
  labs(x = "",y="Sample size (1000s)",title="c") +
  scale_y_continuous(expand=c(0,0),limits=c(0,50),
                     breaks=seq(0,50,by=10),labels=seq(0,50,by=10)) +
  geom_hline(yintercept = seq(0,50,by=10),color='white',size=0.3)

#-----------------------------------
# n by age top plot 
#-----------------------------------
nagebar <- ggplot(dp, aes(y = nobs/1000, x = age)) +
  geom_bar(stat = "identity", fill='gray70') +  
  scale_x_continuous(breaks = seq(0,24,1), labels = seq(0,24,1)) +
  theme(
    # make background white
    panel.background = element_blank(),
    # remove major grid lines
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    plot.title=element_text(colour=textcol,hjust=0.04,size=12,face="bold"),
    # remove x axis ticks
    axis.title.x=element_blank(),
    axis.text.x=element_blank(),
    axis.ticks.x=element_blank(),
    panel.border = element_blank(),
    axis.title.y = element_text(size=10)
  ) +
  scale_y_continuous(expand=c(0,0),limits=c(0,12),
                     breaks=seq(0,12,by=2),labels=seq(0,12,by=2))+
  ylab("Sample size (1000s)") + xlab("") +
  geom_hline(yintercept = seq(0,12,by=2),color='white',size=0.3) +
  ggtitle("a")



# add margin around plots
wastphm2 = wastphm + theme(plot.margin = unit(c(0,0.25,0.25,0.25), "cm"))
wpbar2 = wpbar + theme(plot.margin = unit(c(1.575,0.3,1.825,0.1), "cm"))
nbar2 = nbar + theme(plot.margin = unit(c(1.575,0.25,1.825,0.1), "cm"))
nagebar2 = nagebar + theme(plot.margin = unit(c(0.25,0.31,0,3.2), "cm"))
empty <- grid::textGrob("") 

awstpgrid <- grid.arrange(nagebar2,empty, empty,
                          wastphm2, nbar2, wpbar2, nrow = 2, ncol = 3,
                        heights = c(25,100),
                        widths=c(100,20,20))


# combined plot
ggsave(filename="figures/wasting/wasting-study-inventory-heatmap.pdf",plot = awstpgrid,device='pdf',width=12,height=9)


