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
source(paste0(here::here(), "/0-project-functions/0_risk_factor_functions.R"))

textcol = "grey20"


#-----------------------------------
# load the risk factor presence and N's
#-----------------------------------
rfp <- readRDS(here('results/cov_presence.rds'))
rfn <- readRDS(here('results/cov_N.rds'))

# gather rf presence by study into long format
rfp <- rfp %>% 
  gather(risk_factor,presence,-studyid, -country) 

# gather rf Ns by study into long format
rfn <- rfn %>% 
  gather(risk_factor, N,-studyid, -country) 

#Merge dataframes together
dim(rfp)
dim(rfn)
d <- merge(rfp, rfn, by = c("studyid", "country", "risk_factor"))
dim(d)

#Drop EE gestational age
dim(d)
d <- d %>% filter(!(studyid=="EE" & risk_factor=="gagebrth"))
dim(d)

#Mark measure frequency
d <- mark_measure_freq(d)
d <- d %>% filter(measurefreq!="yearly")

#fix PROVIDE location
d$country[d$study_id=="PROVIDE"] <- "BANGLADESH"

#remove grant identifier
d$studyid<- gsub("^k.*?-" , "", d$studyid)

#-----------------------------------
# clean study descriptions
#-----------------------------------

dd <- shorten_descriptions(d)

# # simplify Tanzania label
dd$country <- as.character(dd$country)
dd$country[dd$country=="TANZANIA, UNITED REPUBLIC OF"] <- "TANZANIA"



#-----------------------------------
# Do some final tidying up for the plot
#-----------------------------------



# make a study-country label, and make the monthly variable into a factor
# including an anonymous label (temporary) for sharing with WHO
dd <- mutate(dd,
             country=str_to_title(str_to_lower(country)), 
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
    country=="TANZANIA"|
    country=="ZIMBABWE"|
    country=="GAMBIA"                       ~ "Africa",
  country=="BELARUS"                      ~ "",
  country=="BRAZIL" | country=="GUATEMALA" |
    country=="PERU"                         ~ "Latin America",
  TRUE                                    ~ "Other"
))

table(dd$region)

dd$region <- as.character(dd$region)
dd$region[dd$region=="Latin America"] <- "Latin Am."
dd$region <- factor(dd$region, levels=c("Asia","Africa","Latin Am.",""))

dd <- mutate(dd,
             studycountry = factor(studycountry,
                                   levels=unique(studycountry[order(region, studyid)]), 
                                   ordered=TRUE))

#Clean up risk factor names
dd$RFlabel <- NA
dd$RFlabel[dd$risk_factor=="sex"] <-  "Sex"
dd$RFlabel[dd$risk_factor=="enwast"] <-  "Enrolled wasted"
dd$RFlabel[dd$risk_factor=="enstunt"] <-  "Enrolled stunted"
dd$RFlabel[dd$risk_factor=="gagebrth"] <-  "Gestational age at birth"
dd$RFlabel[dd$risk_factor=="predexfd6"] <-  "Excl/Pred breastfed <6mo."
dd$RFlabel[dd$risk_factor=="mage"] <- "Mother's age" 
dd$RFlabel[dd$risk_factor=="mhtcm"] <- "Mother's height" 
dd$RFlabel[dd$risk_factor=="mwtkg"] <- "Mother's weight" 
dd$RFlabel[dd$risk_factor=="mbmi"] <- "Mother's BMI" 
dd$RFlabel[dd$risk_factor=="meducyrs"] <- "Mother's education" 
dd$RFlabel[dd$risk_factor=="feducyrs"] <- "Father's education" 
dd$RFlabel[dd$risk_factor=="parity"] <-  "Birth order" 
dd$RFlabel[dd$risk_factor=="hfoodsec"] <- "HH food security" 
dd$RFlabel[dd$risk_factor=="nchldlt5"] <-   "# of children <5 in HH"
dd$RFlabel[dd$risk_factor=="hhwealth_quart"] <-  "HH wealth" 
dd$RFlabel[dd$risk_factor=="fage"] <- "Father's age" 
dd$RFlabel[dd$risk_factor=="fhtcm"] <- "Father's height" 
dd$RFlabel[dd$risk_factor=="birthwt"] <- "Birthweight (kg)" 
dd$RFlabel[dd$risk_factor=="birthlen"] <- "Birth length (cm)" 
dd$RFlabel[dd$risk_factor=="vagbrth"] <- "Vaginal birth" 
dd$RFlabel[dd$risk_factor=="hdlvry"] <- "Child delivered at home" 
dd$RFlabel[dd$risk_factor=="single"] <- "Single parent" 
dd$RFlabel[dd$risk_factor=="nrooms"] <- "# of rooms in HH" 
dd$RFlabel[dd$risk_factor=="nhh"] <- "# of people in HH" 
dd$RFlabel[dd$risk_factor=="anywast06"] <- "Any wasting  <6 mo." 
dd$RFlabel[dd$risk_factor=="pers_wast"] <- "Persistent wasting  <6 mo." 
dd$RFlabel[dd$risk_factor=="trth2o"] <- "Treats drinking water" 
dd$RFlabel[dd$risk_factor=="cleanck"] <- "Clean cooking fuel usage" 
dd$RFlabel[dd$risk_factor=="impfloor"] <- "Improved floor" 
dd$RFlabel[dd$risk_factor=="impsan"] <- "Improved sanitation" 
dd$RFlabel[dd$risk_factor=="safeh20"] <- "Safe water source" 
dd$RFlabel[dd$risk_factor=="perdiar6"] <- "Diarrhea <6 mo. (% days)" 
dd$RFlabel[dd$risk_factor=="perdiar24"] <- "Diarrhea <24 mo.  (% days)" 
dd$RFlabel[dd$risk_factor=="earlybf"] <- "Breastfed hour after birth" 
dd$RFlabel[dd$risk_factor=="predfeed3"] <-  "Predominant breastfeeding under 3 mo."
dd$RFlabel[dd$risk_factor=="predfeed36"] <-  "Predominant breastfeeding from 3-6 mo."
dd$RFlabel[dd$risk_factor=="predfeed6"] <-  "Predominant breastfeeding under 6 mo."
dd$RFlabel[dd$risk_factor=="exclfeed3"] <-  "Exclusive breastfeeding under 3 mo."
dd$RFlabel[dd$risk_factor=="exclfeed36"] <-  "Exclusive breastfeeding from 3-6 mo."
dd$RFlabel[dd$risk_factor=="exclfeed6"] <-  "Exclusive breastfeeding under 6 mo."
dd$RFlabel[dd$risk_factor=="month"] <-  "Month of measurement"
dd$RFlabel[dd$risk_factor=="brthmon"] <-  "Birth month"
dd$RFlabel[dd$risk_factor=="lag_WHZ_quart"] <-  "Prior WLZ"
dd$RFlabel[dd$risk_factor=="rain_quartile"] <-  "Rain quartile"

table(dd$risk_factor, is.na(dd$RFlabel))
dd <- dd %>% filter(!is.na(RFlabel))
# dfull <- dd
# dd <- dd %>% filter(N>0) 

# Sort by size 
dd <- dd %>% group_by(region, risk_factor) %>% mutate(sumN=sum(N))
dd <- dd %>% 
  group_by(region) %>%
  dplyr::arrange(-sumN, .by_group = TRUE) 
dd$RFlabel <- factor(dd$RFlabel, levels = unique(dd$RFlabel))



#aggregate N's for topbar
dhist_a <- dd %>% group_by(risk_factor) %>% summarize(N=sum(N))  %>% mutate(risk_factor=factor(risk_factor, levels=unique(dd$risk_factor))) %>% arrange(risk_factor)


dd <- dd %>% 
  group_by(region, studycountry) %>% mutate(maxN=max(N, na.rm=T))%>%
  group_by(region) %>%
  dplyr::arrange(maxN, .by_group = TRUE) 
dd$studycountry <- sapply(dd$studycountry, function(x) as.character(x))
dd$studycountry <- factor(dd$studycountry, levels = unique(dd$studycountry))

#aggregate N's for sidebar
dhist_c <- dd %>% group_by(region, studycountry) %>% summarize(N=max(N, na.rm=T))%>% mutate(studycountry=factor(studycountry, levels=unique(dd$studycountry))) %>% arrange(studycountry)



#-----------------------------------
# Plot heatmaps
#-----------------------------------

#define a color for fonts
textcol = "grey20"



hm <- ggplot(dd,aes(x=RFlabel,y=studycountry, fill=factor(presence))) +
  facet_grid(region~., scales = "free_y", space="free") +
  geom_tile(colour="white",size=0.25) +
  scale_y_discrete(expand=c(0,0))+
  theme_grey(base_size=10)+
  theme(
    aspect.ratio = 1,
    legend.title=element_text(color=textcol,size=8),
    legend.margin = margin(grid::unit(0.1,"cm")),
    legend.text=element_text(colour=textcol,size=7,face="bold"),
    legend.key.height=grid::unit(0.2,"cm"),
    legend.key.width=grid::unit(1,"cm"),
    legend.position = "none",
    axis.text.x=element_text(size=8,colour=textcol,angle=45,hjust=1),
    axis.text.y=element_text(size=8,vjust = 0.2,colour=textcol),
    axis.ticks=element_line(size=0.4),
    plot.title=element_text(colour=textcol,hjust=0,size=12,face="bold"),
    strip.text.x = element_text(size=10),
    strip.text.y = element_text(angle=270,size=10),
    plot.background=element_blank(),
    panel.border=element_blank(),
    strip.background =element_rect(color = "grey20", size = 1, fill="grey100")
  ) + 
  labs(x="Exposure",y="",title="b") +
  scale_fill_manual(values = c("grey90", "#287D8EFF"))





#-----------------------------------
# n by risk factor top plot 
#-----------------------------------
nrfbar <- ggplot(dhist_a, aes(y = N/1000, x = risk_factor, fill=risk_factor)) +
  geom_bar(stat = "identity") +  
  scale_fill_manual(values=rep('gray70',50),na.value="grey90") +
  theme(
    # make background white
    panel.background = element_blank(),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    plot.title=element_text(colour=textcol,hjust=0.04,size=12,face="bold"),
    axis.title.x=element_blank(),
    axis.text.x=element_blank(),
    axis.ticks.x=element_blank(),
    panel.border = element_blank(),
    axis.title.y = element_text(size=10)
  ) +
  scale_y_continuous(expand=c(0,0), limits=c(0,100),
                     breaks=seq(0,100,by=20),labels=seq(0,100,by=20))+
  ylab("Sample size (1000's)") + xlab("") +
  geom_hline(yintercept = seq(0,100,by=20),color='white',size=0.3) +
  ggtitle("a")


#-----------------------------------
# n by study right plot 
#-----------------------------------
sidebar_c <- ggplot(data = dhist_c, aes(x = studycountry, y=N/1000, fill=region)) + 
  geom_bar(stat = "identity") +
  coord_flip() + 
  facet_grid(region~.,scales='free_y',space='free_y') +
  scale_x_discrete(expand=c(0,0)) +
  scale_fill_manual(values=rep('gray70',7),na.value="grey90",
                    guide=guide_legend(title="",title.hjust = 0.5,
                                       label.position="bottom",label.hjust=0.5,nrow=1,
                                       override.aes = list(color = "white", fill="white"))) +
  theme_grey(base_size=10) +
  theme(
    legend.title=element_text(color=textcol,size=8),
    legend.margin = margin(grid::unit(0.1,"cm")),
    legend.text=element_text(colour=NA,size=7,face="bold"),
    legend.key.height=grid::unit(0.2,"cm"),
    legend.key.width=grid::unit(0.2,"cm"),
    legend.position = "bottom",
    axis.title.y = element_blank(), 
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    strip.text.x = element_blank(),
    strip.text.y = element_blank(),
    axis.title.x = element_text(size=10),
    plot.title=element_text(colour=textcol,hjust=0,size=12,face="bold"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank()) +
  labs(x = "",y="Sample size (1000s)",title="c") +
  scale_y_continuous(expand=c(0,0),limits=c(0,30),
                     breaks=seq(0,30,by=5),labels=seq(0,30,by=5)) +
  geom_hline(yintercept = seq(0,30,by=5),color='white',size=0.3)



# add margin around plots
hm2 = hm + theme(plot.margin = unit(c(0,0,0,0), "cm")) #top, right, bottom, left
#sidebar_c2 = sidebar_c + theme(plot.margin = unit(c(0,0.25,2.955,-2.75), "cm"))
sidebar_c2 = sidebar_c + theme(plot.margin = unit(c(0,0.25,1.5,-2), "cm"))
#nrfbar2 = nrfbar + theme(plot.margin = unit(c(0, 3.5, 0, 6.655), "cm"))
nrfbar2 = nrfbar + theme(plot.margin = unit(c(0, 2.7, 0, 5.75), "cm"))
empty <- grid::textGrob("") 

rfhmgrid <- grid.arrange(nrfbar2,empty, 
                          hm2, sidebar_c2, nrow = 2, ncol = 2,
                        heights = c(25,100),
                        widths=c(100,20))



# save plot 
ggsave(filename=here("figures/manuscript-figure-composites/risk-factor/fig-rf-heatmap.png"),
       plot = rfhmgrid,device='png',width=12,height=9)

