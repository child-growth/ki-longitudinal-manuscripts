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
# load the risk factor missingness and N's
#-----------------------------------
# rfp <- readRDS(paste0(BV_dir,'/results/cov_missingness.rds'))
# 
# saveRDS(rfp, file=paste0(here::here(),"/data/cov_missingness_plotdf.RDS"))
rfp <- readRDS(paste0(here::here(),"/data/cov_missingness_plotdf.RDS")) %>% subset(., select=-c(vagbrth))


# gather rf missingness by study into long format
d <- rfp %>% 
  gather(risk_factor,missingness,-studyid, -country) #%>%
  #mutate(missingness = (100-missingness))
summary(d$missingness)
head(d)





#Mark measure frequency
d <- mark_measure_freq(d)
d <- d %>% filter(measurefreq!="yearly")
unique(d$studyid)

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

dd <- dd %>% arrange(region, studyid) %>%
  mutate(studycountry = factor(studycountry,levels=unique(studycountry)))

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
dd$RFlabel[dd$risk_factor=="sga"] <- "Small-for-gestational age" 
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

#Sort by missingness
dd <- dd %>%
  group_by(region) %>%
  dplyr::arrange(missingness, .by_group = TRUE)
dd$RFlabel <- factor(dd$RFlabel, levels = unique(dd$RFlabel))


dd <- dd %>%
  group_by(region, studycountry) %>% mutate(maxmissingness=max(missingness, na.rm=T))%>%
  group_by(region) %>%
  dplyr::arrange(maxmissingness, .by_group = TRUE)
dd$studycountry <- sapply(dd$studycountry, function(x) as.character(x))
dd$studycountry <- factor(dd$studycountry, levels = unique(dd$studycountry))
table(dd$studycountry)



#-----------------------------------
# Plot heatmaps
#-----------------------------------

#define a color for fonts
textcol = "grey20"

#NOTE! Do I have missigness reversed?
dd %>% filter(risk_factor=="sex")

#make categorical missingness
summary(dd$missingness)
#dd$missingness[dd$missingness>50] <- NA
summary(dd$missingness)
summary(dd$missingness[dd$missingness<50])
dd$miss_cat <- cut(dd$missingness, include.lowest = TRUE, breaks=c(0, 0.5, 1, 5, 10, 25, 50, 90, 100))
table(dd$miss_cat )

dd$miss_cat <-  recode(dd$miss_cat, "(90,100]"="Not Measured", "(50,90]"=">50")


viridis_cols = c(viridis(
  n = length(levels(dd$miss_cat)) - 1,
  alpha = 1,
  begin = 0.5,
  end = 1,
  direction = -1,
  option = "B"
),"grey90")

viridis_cols

hm <- ggplot(dd,aes(x=RFlabel,y=studycountry, fill=factor(miss_cat))) +
  facet_grid(region~., scales = "free_y", space="free") +
  geom_tile(colour="white",size=0.25) +
  scale_y_discrete(expand=c(0,0))+
  theme_grey(base_size=10)+
  scale_fill_manual(na.value="grey90", 
                    guide=guide_legend(title="Percent missing",title.vjust = 1,
                                       label.position="bottom",label.hjust=0.1,nrow=1),
                    values = viridis_cols) +
  theme(
    #aspect.ratio = 1,
    legend.title=element_text(color=textcol,size=8),
    legend.margin = margin(grid::unit(0.1,"cm")),
    legend.text=element_text(colour=textcol,size=7,face="bold"),
    legend.key.height=grid::unit(0.2,"cm"),
    legend.key.width=grid::unit(1,"cm"),
    legend.position = "bottom",
    axis.text.x=element_text(size=6,colour=textcol,angle=45,hjust=1),
    axis.text.y=element_text(size=6,vjust = 0.2,colour=textcol),
    axis.ticks=element_line(size=0.4),
    plot.title=element_text(colour=textcol,hjust=0,size=12,face="bold"),
    strip.text.x = element_text(size=10),
    strip.text.y = element_text(angle=270,size=10),
    plot.background=element_blank(),
    panel.border=element_blank(),
    strip.background =element_rect(color = "grey20", size = 1, fill="grey100")
  ) + 
  labs(x="Exposure",y="",title="b") #+
  #scale_fill_manual(values = c("grey90", "#287D8EFF"))
hm



ggsave(hm, file=paste0(here::here(),"/figures/fig-rf-cov-missigness-heatmap.png"), width=6, height=6)
ggsave(hm, file=paste0(BV_dir,"/figures/risk-factor/fig-rf-cov-missigness-heatmap.png"), width=6, height=6)


# # save plot 
# ggsave(filename=paste0(BV_dir,"/figures/risk-factor/fig-rf-cov-missigness-heatmap.png"),
#        plot = rfhmgrid,device='png',width=18.3,height=18.6, units = 'cm')
