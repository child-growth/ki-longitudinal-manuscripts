##########################################
# ki longitudinal manuscripts
# stunting analysis

# figure: stacked density of cohorts of 
# children who recovered at different ages. 
# histograms show distribution of LAZ
# at subsequent measurements following recovery.
##########################################
#-----------------------------------------
# Stunting recovery density
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# load stunting recovery cohort data
d = readRDS(paste0(res_dir, "stunt_rec_cohort.RDS"))

d$subjid <- as.numeric(d$subjid)

# drop data beyond 16 months since it is 
# sparse in most studies
d = d %>% filter(agedays<=16 * 30.4167)

#-----------------------------------------
# function to filter data to children
# who recovered from stunting within 
# a specific age range 

# inputs:
# data = dataset created by 5_stunt_rec_cohort.R
# age_upper = age of recovery 
#-----------------------------------------
get_rec = function(data, age_upper){
  age_lower = age_upper - 3
  age_range = paste0(age_lower, "-", age_upper, " months")
  
  # identify children who recovered in 
  # this age range
  rec_data = data %>% 
    filter(prev_stunted == 1 & agecat == age_range) %>%
    select(studyid, country, subjid) %>%
    mutate(age_rec = age_range)
  
  rec_data = rec_data[!duplicated(rec_data),]
  
  rec_data_haz = full_join(rec_data, data, 
                           by = c("studyid", "country", "subjid")) %>%
    filter(!is.na(age_rec)) %>%
    select(studyid, country, subjid, agedays, haz, age_rec)
  
  # subsequent measurement ages after recovery
  age_meas = seq(age_upper, 15, 3) 
  
  
  rec_meas_sub_list = lapply(age_meas, function(x) 
    subset_rec(data = rec_data_haz, 
               age_months = x,
               age_range = age_range))
  
  
  rec_meas_sub = bind_rows(rec_meas_sub_list)
  
}


# --------------------------------------------
# function to subset recovery individual level 
# data to haz at a list of specific ages in months
# --------------------------------------------
subset_rec = function(data, age_months, age_range){
  out = data %>% 
    filter(agedays >= ((age_months-0.5)*30.4167) & 
             agedays <= ((age_months+0)*30.4167)) %>%
    mutate(age_meas = paste0(age_months, " month measurement"),
           age_rec = age_range)
  
  return(out)
}


age_range_list = as.list(seq(3, 12, 3))

rec_data = lapply(age_range_list, function(x)
  get_rec(
    data = d,
    age_upper = x
  ))


# bind list elements
plot_data = bind_rows(rec_data) 

summary = plot_data %>%
  group_by(age_rec, age_meas) %>%
  summarise(
    nchild = length(unique(subjid)),
    nstudy = length(unique(studyid)),
    ncountry = length(unique(country)),
    mean_haz= mean(haz)
  )


# --------------------------------------------
# density plot of kids who recovered
# --------------------------------------------
plot_data = plot_data %>%
  mutate(age_meas = factor(
    age_meas,
    levels =
      c(
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
        "12-15 months"
      )
  )
  )


# drop HAZ at tails of distributions
plot_data_sub = plot_data %>% filter(haz >=-5 & haz <=3.5)


# --------------------------------------------
# stacked histogram plot
# --------------------------------------------
rec_histogram_plot = ggplot(plot_data_sub, aes(x=haz, y = age_meas, fill = ..x..)) + 
  geom_density_ridges_gradient(stat = "binline", 
                               binwidth=.1, 
                               scale=0.8,
                               size=0.01) + 
  facet_grid(~age_rec) +
  ylab("Measurement following recovery")+
  xlab("Height-for-age Z-score")+
  scale_x_continuous(breaks = seq(-5, 3.5, 1), 
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_viridis(name = "LAZ", option = "magma") 

# to do: add better labels, n, etc

ggsave(rec_histogram_plot, file="figures/stunting/fig_stunt_rec_dist_hist.png", width=11, height=6)


# --------------------------------------------
# Kolmogorov-Smirnov test
# --------------------------------------------

# wrapper for ks.test
run_ks_by_age = function(age_rec, data){
  
  age_meas_list = rev(levels(data$age_meas[data$age_rec==age_rec]))
  
  ks_res = matrix(NA, nrow = length(age_meas_list), ncol = 9)
  for(i in 1:(length(age_meas_list))){
    x = plot_data %>% 
      filter(age_rec == age_rec & 
               age_meas == age_meas_list[1]) %>%
      select(haz)
    
    y = plot_data %>% 
      filter(age_rec == age_rec & 
               age_meas == age_meas_list[i]) %>%
      select(haz)
    
    y_q = quantile(y$haz, probs = c(0, .5, 1))
    
    ks_out = ks.test(x = x$haz, y = y$haz)
    
    ks_res[i, 1] = age_rec
    ks_res[i, 2] = age_meas_list[i]
    ks_res[i, 3] = y_q[1]
    ks_res[i, 4] = y_q[2]
    ks_res[i, 5] = y_q[3]
    ks_res[i, 6] = as.numeric(ks_out$statistic)
    ks_res[i, 7] = as.numeric(ks_out$p.value)
    ks_res[i, 8] = ks_out$alternative
    ks_res[i, 9] = ks_out$method
    
  }
  
  ks_res[1, 5] = ""
  ks_res[1, 6] = ""
  ks_res[1, 7] = ""
  ks_res[1, 8] = ""
  ks_res[1, 9] = ""
  
  ks_df = as.data.frame(ks_res)
  colnames(ks_df) = c("age_rec", "age_meas", 
                      "min", "median", "max",
                      "ks_stat", "pval", "tails", "method")
  
  ks_df = ks_df %>%
    mutate(min = as.numeric(as.character(min)),
           median = as.numeric(as.character(median)),
           max = as.numeric(as.character(max)),
           ks_stat = as.numeric(as.character(ks_stat)),
           pval = as.numeric(as.character(pval)))
  
  return(ks_df)
  
}

age_rec_list = as.list(levels(plot_data$age_rec))
ks_results_list = lapply(age_rec_list, function(x) run_ks_by_age(
  data = plot_data, age_rec = x))

ks_results_df = bind_rows(ks_results_list)

saveRDS(ks_results_df, file = paste0(res_dir, "ks_results_stunting.RDS"))
