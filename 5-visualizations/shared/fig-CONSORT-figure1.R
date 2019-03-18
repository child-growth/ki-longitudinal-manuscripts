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
# ki_md <- read_excel('results/KI-metadata.xlsx', sheet = 'StudyMetadata')
# ki_md_status <- read_excel('results/KI-metadata.xlsx', sheet = 'StudyStatus')

ki_md <- read.csv('results/KI-metadata.csv')
ki_md_status <- read.csv('results/KI-studyStatus.csv')

colnames(ki_md_status)[which(colnames(ki_md_status)=="Short_ID")] = "short_id"
ki_md_status = ki_md_status %>% mutate(short_id = tolower(short_id))

# drop empty rows
ki_md <- ki_md[!is.na(ki_md$short_id), ]

# why do 91 rows have no short_id? dropping for now
nrow(ki_md)
ki_md <- ki_md %>% filter(short_id != "")
nrow(ki_md)

# select only relevant columns for figure 1
ki_md <- ki_md %>% select(short_id, country, subj, obs, study_id,
                          short_description)

# ki_md_m <- merge(ki_md, ki_md_status, by = 'short_id', all.x = TRUE)
ki_md_m <- full_join(ki_md, ki_md_status, by = 'short_id')

# convert factors to numeric
ki_md_m <- ki_md_m %>% mutate(obs = as.integer(obs), subj = as.integer(subj))

# ki_bar_data <- data.frame(ki_md)

# wide to long format
# ki_md <- ki_md %>%
#   # select(-Study_ID, -`included.excluded`) %>%
#   mutate(excludedIndicator = ifelse(reason_excluded == "", 0, 1))

# ki_md = ki_md %>% rename(excludedReason = reason_excluded)

# reshape included study reasons 
ki_inc <- ki_md_m %>% filter(included.excluded == "included")
ki_exc <- ki_md_m %>% filter(included.excluded == "Excluded") %>%
  select(short_id, country, study_id, short_description, reason_excluded)

ki_inc_long = ki_inc %>%
  gather('reason', 'included_indicator', included_first, included_high_income, 
         included_age, included_ill, included_measurement_freq, included_small) 

ki_inc_long = ki_inc_long %>% select(-c(subj, obs, Study_ID, included.excluded))

# shorten study descriptions to fit labels on figure
ki_md <- ki_md %>% mutate(study_id = as.character(study_id))
# to do: debug this function
# ki_md_long <- shorten_descriptions(ki_md_long)

# transform study location labels
ki_md <- ki_md %>% mutate(country = as.character(country))
# to do: debug this function
# ki_md <- study_label_transformation(ki_md)

# ordering/naming of exclusion reasons
ki_md$excludedReason <- factor(ki_md$excludedReason, 
                               levels = c('included_first', 
                                          'included_high_income',
                                          'included_age',
                                          'included_ill',
                                          'included_measurement_freq',
                                          'included_small'))

ki_md <- name_labeling(ki_md)



#####--------------------------------------------------------------------------
##### Heat map

# Fill in cell with color if the study meets the inclusion criteria for the column
# Otherwise make gray 
#####--------------------------------------------------------------------------
#define a color for fonts
textcol <- "grey20"

# ordering heatmap by exclusion reason then sample size
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
hm1

#####--------------------------------------------------------------------------
# side bar plot scheme
# Number of observations (nobs) in each cohorts
#####--------------------------------------------------------------------------
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
sidebar1

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
# x axis = reason
# fill = region
# y = nobs -- number of children, not number of cohorts
#--------------------------------------------------------------------------
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
