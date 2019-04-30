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

#########################################################################################
# Load in HBGD Data from Andrew                                                         #
#                                                                                       #
#########################################################################################
consort_ki <- readRDS("results/HBGDki_CONSORT_inclusion_Ns.rds")
consort_ki <- consort_ki[!(consort_ki$Study_ID==""), ]
consort_ki <- consort_ki[!is.na(consort_ki$Study_ID), ]


consort_ki <- consort_ki %>% select("Short_ID", "country", "nchild", "nobs", "Study_ID", "Short_Description", 
                                    "included", "included_longitudinal", "included_anthropometry", "included_low_income", 
                                    "included_ill", "included_small", "included_age", 
                                    "included_qc", "included_measurement_freq", "included_monthly")

consort_ki <- consort_ki %>% rename(short_id = Short_ID, subject_count = nchild, study_id = Study_ID,
                                    short_desc = Short_Description) %>%  
                             filter(included_qc == 1) %>% 
                             # use obs_count instead of subj_count for future
                             mutate(subject_count = as.integer(subject_count)) %>%
                             mutate(subject_count = case_when(is.na(subject_count) ~ as.double(0),
                                                              TRUE ~ as.double(subject_count))) %>%
                             # recode NA as 0
                             mutate(included = ifelse(is.na(included), 0, included),
                                    included_anthropometry = ifelse(is.na(included_anthropometry), 0, included_anthropometry),
                                    included_longitudinal = ifelse(is.na(included_longitudinal), 0, included_longitudinal),
                                    included_low_income = ifelse(is.na(included_low_income), 0, included_low_income),
                                    included_small = ifelse(is.na(included_small), 0, included_small),
                                    included_age = ifelse(is.na(included_age), 0, included_age),
                                    included_ill = ifelse(is.na(included_ill), 0, included_ill),
                                    included_qc = ifelse(is.na(included_qc), 0, included_qc),
                                    included_measurement_freq = ifelse(is.na(included_measurement_freq), 0, included_measurement_freq)) %>% 
                             # recode inclusion_indicator to be stacked
                             mutate(included_anthropometry = case_when(
                                        included_anthropometry == 1 & 
                                        included_longitudinal == 1 ~ 1, 
                                        TRUE ~ 0),
                                    included_low_income = case_when(
                                        included_anthropometry == 1 & 
                                        included_longitudinal == 1 &
                                        included_low_income == 1 ~ 1, 
                                        TRUE ~ 0),
                                    included_ill = case_when(
                                        included_anthropometry == 1 & 
                                        included_longitudinal == 1 &
                                        included_low_income == 1 &
                                        included_ill == 1 ~ 1, 
                                        TRUE ~ 0),
                                    included_small = case_when(
                                        included_anthropometry == 1 & 
                                        included_longitudinal == 1 &
                                        included_low_income == 1 &
                                        included_ill == 1 &
                                        included_small == 1 ~ 1, 
                                        TRUE ~ 0),
                                    included_age = case_when(
                                        included_anthropometry == 1 & 
                                        included_longitudinal == 1 &
                                        included_low_income == 1 &
                                        included_ill == 1 &
                                        included_small == 1 &
                                        included_age == 1 ~ 1, 
                                        TRUE ~ 0),
                                    included_qc = case_when( # replace this with quarterly
                                        included_anthropometry == 1 & 
                                        included_longitudinal == 1 &
                                        included_low_income == 1 &
                                        included_ill == 1 &
                                        included_small == 1 &
                                        included_age == 1 &
                                        included_qc == 1 ~ 1, 
                                        TRUE ~ 0),
                                    included_measurement_freq = case_when(
                                        included_anthropometry == 1 & 
                                        included_longitudinal == 1 &
                                        included_low_income == 1 &
                                        included_ill == 1 &
                                        included_small == 1 &
                                        included_age == 1 &
                                        included_qc == 1 &
                                        included_measurement_freq == 1 ~ 1, 
                                      TRUE ~ 0)
                             )

# didn't do do name labelling (no need to)

# clean country labels and separate into regions
consort_ki <- make_region(consort_ki)
consort_ki <- clean_country(consort_ki)

# create tally of # of exclusions to sort by, for consistent plotting
consort_ki <- consort_ki %>% mutate(inclusionTally = 
                                    included_longitudinal +
                                    included_anthropometry +
                                    included_low_income +
                                    included_ill +
                                    included_small +
                                    included_age +
                                    included_qc +
                                    included_measurement_freq)  
consort_ki <- consort_ki %>% filter(inclusionTally > 0)

# wide to long format
consort_ki_long <- consort_ki %>% gather('inclusion_metric', 'indicator', 
                                         included_longitudinal,
                                         included_anthropometry,
                                         included_low_income,
                                         included_ill,
                                         included_small,
                                         included_age,
                                         included_qc,
                                         included_measurement_freq)

# ordering/naming of exclusion reasons
consort_ki_long$inclusion_metric <- factor(consort_ki_long$inclusion_metric,
                                      levels = c('included_longitudinal',
                                                 'included_anthropometry',
                                                 'included_low_income',
                                                 'included_ill',
                                                 'included_small',
                                                 'included_age',
                                                 'included_qc',
                                                 'included_measurement_freq'))

#########################################################################################
# HEATMAP                                                                               #
#   - Fill in cell with color if the study meets the inclusion criteria for the column  #
#   - Otherwise make gray                                                               #
#########################################################################################

# define a color for fonts
textcol <- "grey20"

consort_ki_hm <- consort_ki_long %>%
  group_by(region) %>%
  arrange(desc(inclusionTally), inclusion_metric, desc(subject_count), .by_group = TRUE)

consort_ki_hm$cohort <- sapply(consort_ki_hm$cohort, function(x) as.character(x))
consort_ki_hm$cohort <- factor(consort_ki_hm$cohort, levels = unique(consort_ki_hm$cohort))


# color each region separately
consort_ki_hm <- consort_ki_hm %>% mutate(indicator_region = case_when(
                                  indicator == 1 & region == "Africa" ~ 1,
                                  indicator == 1 & region == "Asia" ~ 2,
                                  indicator == 1 & region == "Latin America" ~ 3,
                                  indicator == 1 & region == "N.America & Europe" ~ 4,
                                  indicator == 1 & region == "Other" ~ 5,
                                  indicator == 0 ~ 0))
consort_ki_hm$indicator_region <- factor(consort_ki_hm$indicator_region, levels = c(0, 1, 2, 3, 4, 5))

# heat map plot scheme
hm <- ggplot(consort_ki_hm, aes(x = inclusion_metric, y = cohort)) +
  
  # add border white colour of line thickness 0.25
  geom_tile(aes(fill = indicator_region), color = "white", size = 0.25) +
  
  # remove extra space
  scale_y_discrete(expand = c(0,0)) +
  scale_x_discrete(expand = c(0,0),
                   breaks = 1:5) +
  
  scale_fill_manual(values=c("gray", "#1F77B4", "#2CA02C", "#FF7F0E", "#D62728", "black"), na.value="grey90") +
  
  # facet over geographic region
  facet_grid(region ~ ., scales = "free_y", space = "free_y") +
  
  #set base size for all font elements
  theme_grey(base_size = 10) +
  labs(x="Exclusion Reason",y="", title="") +
  #theme options
  theme(
    # hide legend
    legend.position = 'none',
    #set x axis text size and colour
    axis.text.x = element_text(size = 8, colour = textcol),
    #set y axis text colour and adjust vertical justification
    axis.text.y = element_text(size = 8, vjust = 0.2, colour = textcol),
    #change axis ticks thickness
    axis.ticks = element_line(size = 0.4),
    # axis.ticks.x=element_blank(),
    #change title font, size, colour and justification
    plot.title = element_text(colour = textcol, hjust = 0, size = 12, face = "bold"),
    #format facet labels
    strip.text.x = element_text(size = 20),
    strip.text.y = element_text(angle = 270, size = 10),
    #remove plot background
    plot.background = element_blank(),
    #remove plot border
    panel.border = element_blank()
    # plot.margin = margin(0, 0.5, 0, 9.25, "cm")
  )
hm
# save as (550, 5000) for good dim

#####################################################################################
# SIDEBAR PLOT                                                                      #
#   - Plot number of observations in each study                                     #
#   - Change subject_count to # of obs!                                             #
#####################################################################################

sidebar <- ggplot(data = consort_ki_hm, aes(x = cohort, y = subject_count/8/1000)) +        # change this to obs/8000 once we have obs #
  
  geom_bar(stat = "identity", fill = "gray60") +
  
  coord_flip() + 
  
  facet_grid(region ~ ., scales = 'free_y', space = 'free_y') +
  
  #remove extra space
  scale_x_discrete(expand=c(0,0)) +
  # scale_y_continuous(expand=c(0,0),limits=c(0,130),
  #                    breaks=seq(0,120,by=20),labels=seq(0,120,by=20)) +
  
  # ########################################## # re-add this in once we have observations in place of subject_count ### IMPORTANT!!! ####
  # scale_y_continuous("Total Observations (x1000)",
  #                    breaks = c(0, 740000/6, 740000/6*2, 740000/6*3, 740000/6*4, 740000/6*5, 740000),
  #                    labels = c("0", "20", "40", "60", "80", "100", "120"),
  #                    limits = c(0, 800000)) +
  
  # # add vertical lines
  # geom_hline(yintercept = seq(0,740000,by=740000/6), color='white',size=0.5) +
  
  theme_grey(base_size = 10) +
  labs(x = "",y="Total Observations (x1000)",title="Sample size") +
  theme(
    # legend options
    # has to be the exact same format as for the other panel (for correct alignment)
    legend.title = element_text(color = textcol, size = 8),
    # reduce/remove legend margin
    legend.margin = margin(grid::unit(0.1, "cm")),
    # change legend text properties
    legend.text = element_text(colour = NA, size = 7, face = "bold"),
    # change legend key height
    legend.key.height = grid::unit(0.2, "cm"),
    # set a slim legend
    legend.key.width = grid::unit(0.2, "cm"),
    # move legend to the bottom
    #legend.position = "bottom",
    # remove study labels
    axis.title.y = element_blank(), 
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    # adjust facet labels
    strip.text.x = element_blank(),
    strip.text.y = element_blank(),
    # x-axis labels
    #axis.title.x = element_text(size = 10),
    # title has to be the exact same format as for the other panel (for correct alignment)
    plot.title = element_text(colour = textcol, hjust = 0, size = 12, face = "bold"),
    # remove grid lines
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank()
  )
sidebar

#####################################################################################
# BAR CHART                                                                         #
#   - Tally the amount of studies excluded at each filter                           #
#   - Color code by region                                                          #
#####################################################################################
consort_ki_bar <- consort_ki_long[consort_ki_long$indicator == 1, ]

# add extra x factors to widen plot to include all annotation text
consort_ki_bar$inclusion_metric <- factor(consort_ki_bar$inclusion_metric,
                                           levels = c('included_longitudinal',
                                                      'included_anthropometry',
                                                      'included_low_income',
                                                      'included_ill',
                                                      'included_small',
                                                      'included_age',
                                                      'included_qc',
                                                      'included_measurement_freq',
                                                      'extra1',
                                                      'extra2',
                                                      'extra3',
                                                      'extra4',
                                                      'extra5',
                                                      'extra6',
                                                      'extra7'))
consort_ki_bar <- add_row(consort_ki_bar, subject_count = 1, inclusion_metric = "extra1")
consort_ki_bar <- add_row(consort_ki_bar, subject_count = 1, inclusion_metric = "extra2")
consort_ki_bar <- add_row(consort_ki_bar, subject_count = 1, inclusion_metric = "extra3")
consort_ki_bar <- add_row(consort_ki_bar, subject_count = 1, inclusion_metric = "extra4")
consort_ki_bar <- add_row(consort_ki_bar, subject_count = 1, inclusion_metric = "extra5")
consort_ki_bar <- add_row(consort_ki_bar, subject_count = 1, inclusion_metric = "extra6")
consort_ki_bar <- add_row(consort_ki_bar, subject_count = 1, inclusion_metric = "extra7")

bar <- ggplot(consort_ki_bar, aes(x = inclusion_metric, y = subject_count/10000)) + 
  geom_bar(stat = 'identity', aes(fill = region)) +
  theme_grey(base_size = 10) +
  scale_y_continuous(limits = c(0, 110), breaks = seq(0, 80, by = 20), 
                     labels = seq(0, 80, by = 20)) +
  
  labs(y = 'Total Observations\n (x 10,000)') +
  # geom_text(aes(label = paste0(reason_excluded, ' (n=', floor(n/10000), ')')), 
  #                 position=position_dodge(width=0.9), vjust=-8, hjust = 0.1) +
  scale_fill_manual(values=c("#1F77B4", "#2CA02C", "#FF7F0E", "#D62728", "black")) +
  
  # Add top inclusion category labels
  annotate(geom = "text", x = 2.9, y = 90, label = "Longitudinal cohorts (n=86)", size = 2) +
  annotate(geom = "text", x = 4.5, y = 83, label = "Includes anthropometry data (n=xx)", size = 2) +
  annotate(geom = "text", x = 6.7, y = 76, label = "Located in low- or middle income countries (n=74)", size = 2) +
  annotate(geom = "text", x = 7.9, y = 69, label = "Enrollment not restricted to acutely ill children (n=41)", size = 2) +
  annotate(geom = "text", x = 7.8, y = 62, label = "Enrolled more than 200 children (n=36)", size = 2) +
  annotate(geom = "text", x = 9.1, y = 55, label = "Enrolled children between ages 0-2 (n=xx)", size = 2) +
  annotate(geom = "text", x = 9.8, y = 47, label = "Quarterly growth measurements (n=23)", size = 2) +
  annotate(geom = "text", x = 10.7, y = 40, label = "Monthly growth measurements (n=xx)", size = 2) +
  
  # Add vertical lines under labels
  geom_segment(aes(x = 1, y = 64, xend = 1, yend = 85), color = "gray") +
  geom_segment(aes(x = 2, y = 56, xend = 2, yend = 78), color = "gray") +
  geom_segment(aes(x = 3, y = 45, xend = 3, yend = 71), color = "gray") +
  geom_segment(aes(x = 4, y = 45, xend = 4, yend = 64), color = "gray") +
  geom_segment(aes(x = 5, y = 45, xend = 5, yend = 57), color = "gray") +
  geom_segment(aes(x = 6, y = 34, xend = 6, yend = 50), color = "gray") +
  geom_segment(aes(x = 7, y = 34, xend = 7, yend = 42), color = "gray") +
  geom_segment(aes(x = 8, y = 11, xend = 8, yend = 35), color = "gray") +
                    
  theme(
    # legend options
    # has to be the exact same format as for the other panel (for correct alignment)
    legend.title = element_text(color = textcol, size = 8),
    #reduce/remove legend margin
    legend.margin = margin(grid::unit(0.1,"cm")),
    #change legend text properties
    legend.text = element_text(colour = NA, size = 7, face = "bold"),
    #change legend key height
    legend.key.height = grid::unit(0.2,"cm"),
    #set a slim legend
    legend.key.width = grid::unit(0.2,"cm"),
    #move legend to the bottom
    legend.position = "",
    #adjust facet labels
    strip.text.x = element_blank(),
    strip.text.y = element_blank(),
    # x-axis labels
    axis.title.x = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    # title has to be the exact same format as for the other panel (for correct alignment)
    plot.title = element_text(colour = textcol, hjust = 0, size = 12, face = "bold"),
    # remove grid lines
    panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.background = element_blank()
  )
bar

#####################################################################################
# PLOTTING FIGURE                                                                   #
#   - plot each figure separately                                                   #
#   - save plot and underlying data                                                 #
#####################################################################################

# add margin around plots
hm = hm + theme(plot.margin = unit(c(0, 0.25, 0.7, 0.25), "cm"))
sidebar = sidebar + theme(plot.margin = unit(c(0, 0.3, .25, 0.1), "cm"))
bar = bar + theme(plot.margin = unit(c(1, 2.5, -.65, 9.7), "cm"))

grid <- grid.arrange(bar, arrangeGrob(hm, sidebar, widths = c(70, 25)),
                        nrow = 2, ncol = 1,
                        heights = c(120, 1200))

# save plot and underlying data
ggsave(filename="figures/fig-consort.pdf",
       plot = grid,device='pdf',width=9,height=20,limitsize = FALSE)

