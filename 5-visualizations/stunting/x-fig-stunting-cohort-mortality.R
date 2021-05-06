##########################################
# ki longitudinal manuscripts
# stunting analysis

# child mortality at each age of follow-up
# in each cohort
##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# TO DO: need to figure out how to indicate
# if death was not measured at all 

# Read in stunting data ----------------------------------------------------
d <- readRDS(paste0(ghapdata_dir, "stunting_data.rds")) %>% 
  mutate(agemonth = round(agedays / 30.4167)) %>% 
  filter(agemonth<=24) %>% 
  filter(!is.na(haz)) %>% 
  dplyr::select(studyid, agemonth, subjid) %>% 
  group_by(studyid, agemonth) %>% 
  summarise(Nchild = n())

# Read in mortality data ----------------------------------------------------
mort_data <- readRDS(paste0(ghapdata_dir,"mortality.rds")) %>% 
  filter(dead==1) %>% 
  mutate(agemonth = round(maxage / 30.4167)) %>% 
  filter(agemonth<=24) %>% 
  dplyr::select(studyid, country, subjid, dead, agemonth) %>% 
  group_by(studyid, agemonth) %>% 
  filter(dead==1) %>% 
  summarise(Ndead = n())

# Merge stunting and mortality data ----------------------------------------------------
dmerged <- full_join(d, mort_data, 
                     by = c("studyid",  "agemonth")) %>% 
  mutate(Ndead=ifelse(is.na(Ndead), 0, Ndead))

# study_death_measure= dmerged %>% 
#   group_by(studyid) %>% 
#   summarise(maxdead = max(Ndead)) %>% 
#   mutate(no_death_measurement = ifelse(is.na(maxdead), 1, 0)) %>% 
#   dplyr::select(-maxdead)
# 
# d2 <- full_join(dmerged, study_death_measure, by = "studyid") %>% 
#   mutate(deathcat = ifelse(no_death_measurement==1, "No death measurement",
#                            ))
#   
# Prepare data for plotting ----------------------------------------------------
plotdata = dmerged %>% 
  # group_by(studyid, agemonth) %>% 
  mutate(deathrate = Ndead/Nchild*1000) %>% 
  mutate(studyid = factor(studyid, levels = rev(unique(d$studyid)))) 
  # # categorize missingness
  # mutate(datacat = cut(deathrate, 
  #                      breaks = seq(0, 1, 10, 100, 1000),
  #                      labels = c("0-1", "1-10", "10-100", "100-1000"))) %>% 
  # mutate(datacat = as.character(datacat))

# plotdata$datacat = ifelse(is.na(plotdata$datacat),
#                           "No children measured", 
#                           plotdata$datacat)
# plotdata$datacat<- factor(plotdata$datacat,
#                           levels = c("No children measured",
#                                      "0-20", "20-40", "40-60", "60-80", "80-100"))

# Data frame with all ages in all studies
allages = expand_grid(
  studyid = unique(d$studyid),
  agemonth = seq(0,24,1)
) %>% 
  mutate(studyid = factor(studyid, levels = rev(unique(d$studyid))))

master_df <- allages  %>% 
  full_join(plotdata, by = c("studyid", "agemonth"))


# Define plot features ----------------------------------------------------

#define a color for fonts
textcol <- "grey20"

# make color palette
blue_palette <- brewer.pal(n = length(unique(plotdata$datacat)),
                           name = "Blues")
blue_palette[1] = "#BFBDBD"

# Create plot ----------------------------------------------------
ggplot(master_df, aes(y= studyid, x = agemonth)) +
  # geom_tile(data = allages, fill="#CDCDCD", color = "white", size=0.25)+
  geom_tile(aes(fill = deathrate), 
            color = "white", size=0.25) +
  
  # color palette
  # scale_fill_manual(values = blue_palette, 
  #                   guide=guide_legend(title="Percentage of children with LAZ measurement",
  #                                      nrow=1)) +
  xlab("Child age, months") + 
  ylab("") + 
  
  # x axis settings
  scale_x_continuous(expand=c(0,0),
                     breaks=0:24,labels=0:24)+
  
  #set base size for all font elements
  theme_grey(base_size=10)+
  theme_bw() + 
  theme(legend.position = "bottom",
        # has to be the exact same format as for the other panel (for correct alignment)
        legend.title=element_text(color=textcol,size=8),
        #reduce/remove legend margin
        legend.margin = margin(grid::unit(0.1,"cm")),
        #change legend text properties
        legend.text=element_text(colour=textcol,size=8),
        #change legend key height
        legend.key.height=grid::unit(0.2,"cm"),
        
        # axis.text.y = element_text(hjust=1),
        #remove plot background
        plot.background=element_blank(),
        #remove plot border
        panel.border=element_blank(),
        # remove white lines 
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        
        #set x axis text size and colour
        axis.text.x=element_text(size=8,colour=textcol,angle=0,vjust=0.5),
        #set y axis text colour and adjust vertical justification
        axis.text.y=element_text(size=8,colour=textcol,hjust=1),
        #change axis ticks thickness
        axis.ticks=element_line(size=0.4)) 

