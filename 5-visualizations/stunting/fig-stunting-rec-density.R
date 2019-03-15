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
        "9-12 months"
      )
  )
  )

# --------------------------------------------
# stacked histogram plot
# --------------------------------------------
# drop HAZ at tails of distributions
plot_data_sub = plot_data %>% filter(haz >=-5 & haz <=3.5)

# rename labels
plot_data_sub = plot_data_sub %>%
  mutate(age_rec_f = case_when(
    age_rec == "0-3 months" ~ "Stunting recovery\nat 3 months",
    age_rec == "3-6 months" ~ "Stunting recovery\nat 6 months",
    age_rec == "6-9 months" ~ "Stunting recovery\nat 9 months",
    age_rec == "9-12 months" ~ "Stunting recovery\nat 12 months"
  )) %>%
  mutate(age_rec_f = factor(age_rec_f, levels = c(
    "Stunting recovery\nat 3 months",
    "Stunting recovery\nat 6 months",
    "Stunting recovery\nat 9 months",
    "Stunting recovery\nat 12 months"
  )))

plot_data_sub = plot_data_sub %>%
  mutate(age_meas_n = gsub(" month measurement", "", age_meas)) %>%
  mutate(age_meas_n = factor(age_meas_n, levels = c("15", "12", "9", "6", "3")))


rec_histogram_plot = ggplot(plot_data_sub, 
                            aes(x=haz, y = age_meas_n, fill = ..x..)) + 
  geom_density_ridges_gradient(stat = "binline", 
                               binwidth=.1, 
                               scale=0.8,
                               size=0.01) + 
  facet_grid(~age_rec_f) +
  ylab("Measurement age, months")+
  xlab("Length-for-age Z-score")+
  scale_x_continuous(breaks = seq(-5, 3.5, 1), 
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_viridis(name = "LAZ", option = "magma", direction= -1) 

# to do: add better labels, n, etc

ggsave(rec_histogram_plot, file="figures/stunting/fig_stunt_rec_dist_hist.png", width=11, height=6)

# --------------------------------------------
# % stunted / median 
# --------------------------------------------

# function to get % stunted and min, med, max
# for each recovery cohort at each subsequent
# measurement age 
summarize_dist = function(age_recov, data){

  data = data %>% filter(age_rec == age_recov) 
  
  tab_age_meas =  table(data$age_meas)
  

  age_meas_list = rev(names(tab_age_meas[tab_age_meas>0]))
  
  res = matrix(NA, nrow = length(age_meas_list), ncol = 8)
  
  for(i in 1:(length(age_meas_list))){
    y = data %>% 
      ungroup() %>%
      filter(age_rec == age_recov & 
               age_meas == age_meas_list[i]) %>%
      mutate(stunted = ifelse(haz < -2 , 1, 0))

    prev.cohort = y %>%
      group_by(studyid,country) %>%
      summarise(nmeas=length(unique(subjid)),
                prev=mean(stunted),
                nxprev=sum(stunted==1))
    
    re = fit.rma.rec.cohort(
      data = prev.cohort,
      ni = "nmeas",
      xi = "nxprev",
      measure = "PLO",
      nlab = "children"
    )

    res[i,1] = age_recov
    res[i,2] = age_meas_list[i]
    res[i,3] = length(unique(y$studyid))
    res[i,4] = length(unique(y$country))
    res[i,5] = length(unique(y$subjid))
    res[i,6] = re$est
    res[i,7] = re$lb
    res[i,8] = re$ub
    
  }
  
  res = as.data.frame(res)
  colnames(res) = c("age_rec", "age_meas",
                    "nstudy", "ncountry", "nchild",
                        "stunting_prev", "prev_lb", "prev_ub")

  
  res$stunting_prev = as.numeric(as.character(res$stunting_prev))
  res$prev_lb = as.numeric(as.character(res$prev_lb))
  res$prev_ub = as.numeric(as.character(res$prev_ub))
  
  return(res)
  
}

age_rec_list = as.list(levels(plot_data$age_rec))
results_list = lapply(age_rec_list, function(x) summarize_dist(
  data = plot_data, age_rec = x))

results_df = bind_rows(results_list)


saveRDS(results_df, file = paste0(res_dir, "stunting_rec_cohort_summary.RDS"))
