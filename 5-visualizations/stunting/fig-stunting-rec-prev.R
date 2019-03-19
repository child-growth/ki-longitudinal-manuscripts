##########################################
# ki longitudinal manuscripts
# stunting analysis

# figure: stacked density of cohorts of 
# children who recovered at different ages. 
# histograms show distribution of LAZ
# at subsequent measurements following recovery.
##########################################

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))
d = readRDS(paste0(res_dir, "stunting_rec_cohort_summary.RDS"))

d = d %>%
  mutate(
    age_rec_n = case_when(
      age_rec == "0-3 months" ~ 3,
      age_rec == "3-6 months" ~ 6,
      age_rec == "6-9 months" ~ 9,
      age_rec == "9-12 months" ~ 12
    ),
    age_meas_n = case_when(
      age_meas  == "3 month measurement" ~ 3,
      age_meas == "6 month measurement" ~ 6,
      age_meas == "9 month measurement" ~ 9,
      age_meas == "12 month measurement" ~ 12,
      age_meas == "15 month measurement" ~ 15
    )
  ) %>%
  mutate(age_rec_f = as.factor(age_rec_n)) %>%
  mutate(age_rec_f = factor(age_rec_f, levels = c(
    "3", "6", "9", "12"
  ))) %>%
  mutate(month_diff = age_meas_n - age_rec_n) %>%
  mutate(stunting_prev = stunting_prev * 100)

n=4
viridis_cols = viridis(
  n = n,
  alpha = 1,
  begin = 0.1,
  end = 0.8,
  direction = 1,
  option = "C"
)

# manually reset prevalence at time 0 to 0
# because the random effects pooling caused
# some not to equal 0 
d = d %>%
  mutate(stunting_prev = ifelse(month_diff ==0, 0, stunting_prev))

stplot = ggplot(d, aes(x = month_diff, y = stunting_prev)) +
  geom_point(aes(col = age_rec_f)) +
  # geom_errorbar(aes(ymin = prev_lb, ymax = prev_ub, col = age_rec_f),
  #               width=0.2) +
  geom_line(aes(col = age_rec_f)) +
  ylab("Stunting prevalence") + 
  xlab("Months since initial recovery from stunting") +
  scale_color_manual("Age in months\nof initial recovery", values = 
                       viridis_cols) +
  scale_x_continuous(breaks = c(0,3,6,9,12),
                     labels = c(0,3,6,9,12)) + 
  theme(legend.position = "bottom") 

ggsave(stplot, file="figures/stunting/fig_stunt_rec_cohort_st.png", 
       width=5, height=4)


