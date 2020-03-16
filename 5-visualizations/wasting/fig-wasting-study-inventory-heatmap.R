#-----------------------------------
# study-inventory-heatmaps.R
#
# andrew mertens (amertens@berkeley.edu)
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
source(paste0(here(),"/0-project-functions/0_descriptive_epi_shared_functions.R"))

dd <- readRDS(file=here("results/KI_metadata_wasting.RDS"))



#-----------------------------------
# Do some final tidying up for the plot
#-----------------------------------


# shorten the description for a few studies
dd <- shorten_descriptions(dd)
table(dd$studyid, is.na(dd$short_description))


# # simplify Tanzania label
dd$country[dd$country=='TANZANIA, UNITED REPUBLIC OF'] <- 'TANZANIA'


# make a study-country label, and make the monthly variable into a factor
# including an anonymous label (temporary) for sharing with WHO
dd <- dd %>% ungroup()
dd <- mutate(dd,
             country=str_to_title(str_to_lower(country)), 
             studycountry=paste0(short_description,', ', country, ' - ', start_year)) 

dd$region <- factor(dd$region, levels=c("South Asia","Africa","Latin America",""))



dd$studycountry[dd$studycountry=="Tanzania Child 2, Tanzania"] <- "Tanzania Child 2" 

dd <- mutate(dd,
             studycountry = factor(studycountry,
                                   levels=unique(studycountry[order(overall_wastprev)]), 
                                   ordered=TRUE))
levels(dd$studycountry)


# categorize wasting prevalence
dd$wpcat <- cut(dd$overall_wastprev,breaks=c(0,5,10,20,30,40,50,60,100),labels=c("<5","5-10","10-20","20-30","30-40","40-50","50-60",">60"))
dd$wpcat <- factor(dd$wpcat)


# categorize wasting prevalence, set wasting prevalence category estimates to missing if n<50
dd$wpcat <- cut(dd$wastprev,breaks=c(0,5,10,20,30,40,50,60,100),labels=c("<5","5-10","10-20","20-30","30-40","40-50","50-60",">60"))
dd$wpcat <- factor(dd$wpcat)
dd$wpcat[dd$N<50] <- NA

# categorize number of observations

N_breaks <- c(1,50, 100, 250, 500, 750, 1000, 1500, 2000, 100000)
dd$ncat <- cut(dd$N,
               breaks=N_breaks,
               labels=c('<50','50-100','100-250','250-500','500-750','750-1000','1000-1500','1500-2000','>2000'))
dd$ncat <- factor(dd$ncat)



# categorize mean WHZ
summary(dd$meanWHZ)
dd$whzcat <- cut(dd$meanWHZ,breaks=c(-5, -1, -0.75, -0.5,-0.25,0,0.5,1,5), labels=c("<= -1","(-1,-0.75]", "(-0.75,-0.5]", "(-0.5,-0.25]", "(-0.25,0]", "(0,0.5]",  "(0.5,1]", ">1"))
table(dd$whzcat)
dd$whzcat<- factor(dd$whzcat)
dd$whzcat[dd$N<50 | is.nan(dd$whzcat)] <- NA
table(dd$whzcat)


#Make cohort-specific summary dataset
dp <- dd %>% group_by(studycountry) %>% slice(1) %>%
  select(studycountry, region, overall_nmeas, overall_wastprev)
  




# Sort by wasting prevalence
dp <- droplevels(dp)
dd <- droplevels(dd)
dp <- dp %>% 
  group_by(region) %>%
  dplyr::arrange((overall_wastprev), .by_group = TRUE)
dp$studycountry <- sapply(dp$studycountry, function(x) as.character(x))
dp$studycountry <- factor(dp$studycountry, levels = unique(dp$studycountry))


##Fill missing age-cohort combinations as NA so they appear as grey 
dd <- dd  %>% 
  tidyr::expand(agecat, studycountry, region) %>%
  left_join(dd, by = c("agecat", "studycountry", "region")) %>%
  group_by(studycountry, region) %>%
  mutate(N_missing_ages=sum(is.na(whzcat))) %>%
  filter(N_missing_ages!=24) %>%
  droplevels(.) %>% 
  ungroup()

dd$whzcat = as.character(dd$whzcat)
dd$whzcat = ifelse(is.na(dd$whzcat), "Fewer than 50\nobservations", dd$whzcat)
dd$whzcat<- factor(dd$whzcat, levels = c("<= -1", "(-1,-0.75]", "(-0.75,-0.5]", 
                                         "(-0.5,-0.25]", "(-0.25,0]", "(0,0.5]",  "(0.5,1]", ">1",
                                         "Fewer than 50\nobservations"))




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
hm <- ggplot(dd,aes(x=as.numeric(agecat),y=studycountry)) +
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
    axis.text.y=element_text(size=8,vjust = 0.5,colour=textcol),
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
sidebar <- ggplot(data = dp, aes(x = studycountry)) + 
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
viridis_cols = c(viridis(
  n = length(levels(dd$whzcat)) - 1,
  alpha = 1,
  begin = 0,
  end = 0.8,
  direction = -1,
  option = "C"
),
"grey90")

# heat map
wastphm <- hm + 
  aes(fill=whzcat) +
  labs(x="Age in months",y="",title="b") +
  scale_fill_manual(na.value="grey90", 
                    guide=guide_legend(title="Mean WLZ",title.vjust = 1,
                                       label.position="bottom",label.hjust=0.1,nrow=1),
                    values = viridis_cols) 




# wasting prevalence side bar plot
wpbar <- sidebar +
  aes(y=overall_wastprev*100, fill=region) +
  labs(x = "",y="Wasting Prevalence (%)",title="d") +
  scale_y_continuous(expand=c(0,0),limits=c(0,30),
                     breaks=seq(0,20,by=5),labels=seq(0,20,by=5)) +
  geom_hline(yintercept = seq(0,20,by=5),color='white',size=0.3)


# number of obs side bar plot
nbar <- sidebar +
  aes(y=overall_nmeas /1000,fill=region) +
  labs(x = "",y="N measurements (1000s)",title="c") +
  scale_y_continuous(expand=c(0,0),limits=c(0,50),
                     breaks=seq(0,50,by=10),labels=seq(0,50,by=10)) +
  geom_hline(yintercept = seq(0,50,by=10),color='white',size=0.3)

#-----------------------------------
# n by age top plot 
#-----------------------------------
nagebar <- ggplot(dd, aes(y = N/1000, x = as.numeric(agecat))) +
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
  ylab("N measurements (1000s)") + xlab("") +
  geom_hline(yintercept = seq(0,12,by=2),color='white',size=0.3) +
  ggtitle("a")



# add margin around plots
wastphm2 = wastphm + theme(plot.margin = unit(c(0, 0.25, 0, 0.25), "cm"))
# wpbar2 = wpbar + theme(plot.margin = unit(c(1.6,0.3,0.9,0.1), "cm"))
# nbar2 = nbar + theme(plot.margin = unit(c(1.6,0.25,0.9,0.1), "cm"))
nbar2 = nbar + theme(plot.margin = unit(c(1,0.25,1.3,0.1), "cm"))
wpbar2 = wpbar + theme(plot.margin = unit(c(1,0.3,1.3,0.1), "cm"))
nagebar2 = nagebar + theme(plot.margin = unit(c(0.15,0.13, -0.9 ,4.05), "cm"))
empty <- grid::textGrob("")

awstpgrid <- grid.arrange(nagebar2,empty, empty,
                          wastphm2, nbar2, wpbar2, nrow = 2, ncol = 3,
                          heights = c(25,100),
                          widths=c(100,20,20))



# define standardized plot names
awstpgrid_name = create_name(
  outcome = "wasting and wlz" ,
  cutoff = 2,
  measure = "heatmap",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot and underlying data
ggsave(filename=here(paste0("figures/wasting/fig-",awstpgrid_name, ".pdf")),
      plot = awstpgrid,device='pdf',width=12,height=8)
saveRDS(list(dd = dd,
             dp = dp),
        file=paste0(figdata_dir_wasting,"figdata-",awstpgrid_name,".RDS"))
