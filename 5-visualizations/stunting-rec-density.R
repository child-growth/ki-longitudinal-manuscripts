#-----------------------------------------
# Stunting recovery density
#-----------------------------------------
library(ggjoy)
library(RColorBrewer)
library(gridExtra)

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# load individual level fake data
d = readRDS("~/Dropbox/HBGD/Manuscripts/testdata2.RDS") 

# load data created in the stunt_flowdata.R script
stunt_data = readRDS(paste0(res_dir, "fakeflow2.RDS"))
stunt_data = stunt_data %>% ungroup()

#-----------------------------------------
# function to filter data to children
# who recovered from stunting within 
# a specific age range 

# inputs:
# indiv_data = individual level data with haz and agedays
# data = dataset created for stacked bar plot with
# four stuntnig categories
# age_range = range by which stunting recovered
# label = age range label
#-----------------------------------------
get_rec = function(indiv_data, data, age_upper){
  age_lower = age_upper - 3
  age_range = paste0(age_lower, "-", age_upper, " months")
  
  rec_data = data %>% 
    filter(agecat==age_range & prev_stunted==1) %>%
    select(subjid) %>%
    mutate(subjid = as.numeric(subjid)) %>%
    mutate(rec_age = 1,
           age_rec = age_range) 
  
  rec_indiv = full_join(indiv_data, rec_data, by = c("subjid")) %>%
    filter(rec_age==1) %>%
    select(-rec_age)
  
  # subsequent measurement ages after recovery
  age_meas = seq(age_upper, 24, 3) 
  
  rec_meas_sub_list = lapply(age_meas, function(x) 
    subset_rec(data = rec_indiv, 
               age_months = x))
  
  rec_meas_sub = bind_rows(rec_meas_sub_list)

}

# --------------------------------------------
# function to subset recovery individual level 
# data to haz at a list of specific ages in months
# --------------------------------------------
subset_rec = function(data, age_months){
  out = data %>% 
    filter(agedays == age_months*30.4167) %>%
    mutate(age_meas = paste0(age_months, " month measurement"))
  return(out) 
}

age_range_list = as.list(seq(3, 21, 3))

rec_data = lapply(age_range_list, function(x)
  get_rec(
    indiv_data = d,
    data = stunt_data,
    age_upper = x
  ))

# bind list elements
plot_data = bind_rows(rec_data) 

# --------------------------------------------
# density plot of kids who recovered
# --------------------------------------------
plot_data = plot_data %>%
  mutate(age_meas = factor(
    age_meas,
    levels =
      c(
        "24 month measurement",
        "21 month measurement",
        "18 month measurement",
        "15 month measurement",
        "12 month measurement",
        "9 month measurement",
        "6 month measurement",
        "3 month measurement"
      )
  ),
  age_rec = factor(
    age_rec,
    levels =
      c(
        "0-3 months",
        "3-6 months",
        "6-9 months",
        "9-12 months",
        "12-15 months",
        "15-18 months",
        "18-21 months"
      )
  )
  )

# --------------------------------------------
# stacked density plot
# --------------------------------------------
mycol = brewer.pal(n = length(levels(plot_data$age_meas)), name = "PuBu")

rec_density_plot = ggplot(plot_data, aes(x=haz, y = age_meas)) + 
        geom_joy(aes(fill=age_meas), scale=0.5) + 
        facet_grid(~age_rec) +
        scale_fill_manual("", values = mycol) +
        ylab("Measurement following recovery")+
        xlab("Height-for-age Z-score")+
        geom_vline(xintercept = -2, linetype="dashed") 

ggsave(rec_density_plot, file="figures/stunting/stunting_rec_dens.png", width=11, height=6)




