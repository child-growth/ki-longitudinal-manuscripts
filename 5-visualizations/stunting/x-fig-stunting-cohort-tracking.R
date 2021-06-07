##########################################
# ki longitudinal manuscripts
# stunting analysis

# % of children measured at each age of follow-up
# in each cohort
##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# Read in data ----------------------------------------------------
d <- readRDS(paste0(ghapdata_dir, "stunting_data.rds")) %>% 
  mutate(agemonth = round(agedays / 30.4167)) %>% 
  filter(agemonth<=24) %>% 
  filter(!is.na(haz)) %>% 
  mutate(country = str_to_sentence(country)) %>% 
  mutate(cohortid = paste0(studyid, " - ", country)) 

d <- calc.ci.agecat(d, range = 3, birth="yes")


# Monthly cohorts ----------------------------------------------------
dmonthly <- d %>% filter(studyid %in% monthly_cohorts) 
  
# check included cohorts
assert_that(setequal(unique(dmonthly$studyid), monthly_cohorts),
            msg = "Check data. Included cohorts do not match.")

## Create child-month dataset ----------------------------------------------------
# In this dataset, if measid does not equal
# age months, it means that the child did not
# have measurements each month
d_childmonths <- dmonthly %>% 
  ungroup() %>% 
  distinct() %>% 
  group_by(cohortid, subjid) %>% 
  mutate(measid=seq_along(agemonth)) %>% 
  arrange(cohortid, subjid, agemonth) 

table(d_childmonths$agemonth==d_childmonths$measid)

## Expand to include all ages from 0-24 m ----------------------------------------------------
full <- tidyr::expand(d_childmonths, 
                  nesting(cohortid, subjid),agemonth=seq(0,24,1))

# For studies that had truncated measurement
# (ie not for all months 0-24) subset data
monthly_cohort_ages <- d_childmonths %>% 
  group_by(cohortid) %>% 
  summarise(minage = min(agemonth),
            maxage = max(agemonth))

full_monthly <- full_join(full, monthly_cohort_ages, by = "cohortid") %>% 
  filter(agemonth >= minage & agemonth <=maxage) %>% 
  dplyr::select(-c(minage, maxage))

## Identify missing observations by age for each individual ----------------------------------------------------
mergedata_monthly = full_join(d_childmonths, full_monthly, 
                      by = c("cohortid", "subjid", "agemonth")) %>% 
  arrange(cohortid, subjid, agemonth)  %>% 
  mutate(datapresent = ifelse(!is.na(measid), 1, 0)) %>% 
  group_by(cohortid, agemonth) %>% 
  summarise(percent_meas = mean(datapresent)*100) %>% 
  mutate(measurefreq = "Monthly")

df = full_join(d_childmonths, full_monthly, 
                              by = c("cohortid", "subjid", "agemonth")) %>% 
  arrange(cohortid, subjid, agemonth)  %>% 
  mutate(datapresent = ifelse(!is.na(measid), 1, 0)) %>% 
  group_by(cohortid, agemonth) %>% filter()

table(df$cohortid, df$datapresent)


# Quarterly cohorts ----------------------------------------------------
quarterly_cohorts <- monthly_and_quarterly_cohorts[!(monthly_and_quarterly_cohorts %in% monthly_cohorts)]

dquart <- d %>% filter(studyid %in% quarterly_cohorts)

## Create child-quarter dataset ----------------------------------------------------
# In this dataset, if measid does not equal
# age months, it means that the child did not
# have measurements each month
d_childquarter <- dquart %>% 
  ungroup() %>% 
  dplyr::select(cohortid, subjid, agemonth, agecat) %>% 
  # drop kids with agedays > 24 months
  filter(!is.na(agecat)) %>% 
  distinct() %>% 
  group_by(cohortid, subjid) %>% 
  mutate(measid=seq_along(agecat)) %>% 
  arrange(cohortid, subjid, agecat) %>% 
  mutate(agecatord = case_when(
    agecat == "0-3 months" ~ 1,
    agecat == "3-6 months" ~ 2,
    agecat == "6-9 months" ~ 3,
    agecat == "9-12 months" ~ 4,
    agecat == "12-15 months" ~ 5,
    agecat == "15-18 months" ~ 6,
    agecat == "18-21 months" ~ 7,
    agecat == "21-24 months" ~ 8
  ))

## Expand to include all ages from 0-24 m ----------------------------------------------------
full_quart_complete <- tidyr::expand(d_childquarter, 
                      nesting(cohortid, subjid),agecatord=seq(1,8,1))

# For studies that had truncated measurement
# (ie not for all months 0-24) subset data
quart_cohort_ages <- d_childquarter  %>% 
  group_by(cohortid) %>% 
  summarise(minage = min(agecatord),
            maxage = max(agecatord))

full_quart <- full_join(full_quart_complete, quart_cohort_ages, by = "cohortid") %>% 
  filter(agecatord >= minage & agecatord <=maxage) %>% 
  dplyr::select(-c(minage, maxage))

## Identify missing observations by age for each individual ----------------------------------------------------
mergedata_quart = full_join(d_childquarter, full_quart, 
                              by = c("cohortid", "subjid", "agecatord" )) %>% 
  arrange(cohortid, subjid, agecatord)  %>% 
  mutate(datapresent = ifelse(!is.na(measid), 1, 0)) %>% 
  mutate(agecat = case_when(
    agecatord == 1 ~ "0-3 months",
    agecatord == 2 ~ "3-6 months",
    agecatord == 3 ~ "6-9 months",
    agecatord == 4 ~ "9-12 months",
    agecatord == 5 ~ "12-15 months",
    agecatord == 6 ~ "15-18 months",
    agecatord == 7 ~ "18-21 months",
    agecatord == 8 ~ "21-24 months"
  )) %>% 
  group_by(cohortid, agecat, agecatord) %>% 
  summarise(percent_meas = mean(datapresent)*100) %>% 
  mutate(measurefreq = "Quarterly")


# Prepare data for plotting ----------------------------------------------------
plotdata_monthly = mergedata_monthly %>% 
  # categorize missingness
  mutate(datacat = cut(percent_meas, 
                       breaks = seq(0,100, 20),
                       labels = c("0-20", "20-40", "40-60", "60-80", "80-100"))) %>% 
  mutate(datacat = as.character(datacat))

plotdata_monthly$datacat = ifelse(is.na(plotdata_monthly$datacat),
                          "No children measured", 
                          plotdata_monthly$datacat)

plotdata_quart = mergedata_quart %>% 
  # categorize missingness
  mutate(datacat = cut(percent_meas, 
                       breaks = seq(0,100, 20),
                       labels = c("0-20", "20-40", "40-60", "60-80", "80-100"))) %>% 
  mutate(datacat = as.character(datacat))

plotdata_quart$datacat = ifelse(is.na(plotdata_quart$datacat),
                                  "No children measured", 
                                plotdata_quart$datacat)

# Data frame with all ages in all studies
allages_monthly = expand_grid(
  cohortid = unique(dmonthly$cohortid),
  agemonth = seq(0,24,1)
) %>%
  mutate(cohortid = factor(cohortid, levels = rev(unique(dmonthly$cohortid))))

allages_quart = expand_grid(
  cohortid = unique(dquart$cohortid),
  agecatord = seq(1,8,1)
) %>%
  mutate(cohortid = factor(cohortid, levels = rev(unique(dquart$cohortid))))

# Merge data with master of all ages 
master_df_monthly <- allages_monthly  %>%
  full_join(plotdata_monthly, by = c("cohortid", "agemonth")) %>% 
  full_join(monthly_cohort_ages, by = "cohortid") %>% 
  mutate(datacat = ifelse(agemonth < minage, "No children measured", datacat),
         datacat = ifelse(agemonth > maxage, "No children measured", datacat)) %>% 
  mutate(cohortid = factor(cohortid, levels = rev(unique(dmonthly$cohortid)))) %>% 
  mutate(datacat = factor(datacat,levels = c(
    "No children measured","0-20", "20-40", "40-60", "60-80", "80-100"
  )))
  

master_df_quart <- allages_quart  %>%
  full_join(plotdata_quart, by = c("cohortid", "agecatord")) %>% 
  full_join(quart_cohort_ages, by = "cohortid") %>% 
  mutate(datacat = ifelse(agecatord < minage, "No children measured", datacat),
         datacat = ifelse(agecatord > maxage, "No children measured", datacat)) %>% 
  mutate(agecat = case_when(
    agecatord == 1 ~ "0-3 months",
    agecatord == 2 ~ "3-6 months",
    agecatord == 3 ~ "6-9 months",
    agecatord == 4 ~ "9-12 months",
    agecatord == 5 ~ "12-15 months",
    agecatord == 6 ~ "15-18 months",
    agecatord == 7 ~ "18-21 months",
    agecatord == 8 ~ "21-24 months"
  )) %>% 
  mutate(agecat = gsub(" months", "", agecat)) %>% 
  mutate(agecat = factor(agecat, levels = c(
    "0-3", "3-6", "6-9", "9-12", "12-15", 
    "15-18", "18-21", "21-24"
  ))) %>% 
  mutate(cohortid = factor(cohortid, levels = rev(unique(dquart$cohortid)))) %>% 
  mutate(datacat = factor(datacat,levels = c(
    "No children measured","0-20", "20-40", "40-60", "60-80", "80-100"
  )))



# Define plot features ----------------------------------------------------

#define a color for fonts
textcol <- "grey20"

# make color palette
blue_palette <- brewer.pal(n = length(unique(master_df_quart$datacat)),
                           name = "Blues")
blue_palette[1] = "#BFBDBD"


# Create monthly plot ----------------------------------------------------
plot_monthly <- ggplot(master_df_monthly, aes(y= cohortid, x = agemonth)) +
  geom_tile(aes(fill = datacat), 
            color = "white", size=0.25)  + 
  # color palette
  scale_fill_manual(values = blue_palette, 
                    guide=guide_legend(title="% of children with LAZ measurement",
                                       nrow=1)) +
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


# Create quarterly plot ----------------------------------------------------
plot_quarterly <- ggplot(master_df_quart, aes(y= cohortid, x = agecat)) +
  geom_tile(aes(fill = datacat), 
            color = "white", size=0.25) + 
  # color palette
  scale_fill_manual(values = blue_palette,
                    guide=guide_legend(title="% of children\nwith LAZ\nmeasurement",
                                       nrow=3)) +
  xlab("Child age, months") + 
  ylab("") + 

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
        axis.ticks=element_line(size=0.4)) +
  theme(legend.key.height= unit(0.5, 'cm'),
        legend.key.width= unit(0.75, 'cm'))


# Save plots ----------------------------------------------------

ggsave(plot_monthly, file=paste0(fig_dir, "stunting/fig-measurement-heatmap-monthly.png"), 
       width=8.5, height=5)
ggsave(plot_quarterly, file=paste0(fig_dir, "stunting/fig-measurement-heatmap-quarterly.png"), 
       width=4.75, height=4)
