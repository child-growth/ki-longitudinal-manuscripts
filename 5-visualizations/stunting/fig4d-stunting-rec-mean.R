##########################################
# ki longitudinal manuscripts
# stunting analysis

# figure: mean LAZ of
# children who recovered at different ages. 

# inputs: stunting_rec_cohort_summary.RDS

# outputs:
# fig-stunt-2-rec_prev-overall--allage-primary.png
# fig-laz-2-rec_laz-overall--allage-primary.png
# figdata-stunt-2-rec_prev-overall--allage-primary.RDS
# figdata-laz-2-rec_laz-overall--allage-primary.RDS
##########################################

#-----------------------------------------
# Preamble
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

cohort = readRDS(paste0(res_dir, "stunting_rec_cohorts.RDS"))
pool = readRDS(paste0(res_dir, "stunting_rec_cohort_summary.RDS"))

pool = pool %>%
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
  mutate(stunting_prev = stunting_prev * 100,
         prev_lb = prev_lb * 100,
         prev_ub = prev_ub * 100) %>% 
  filter(!is.na(mean_diff_laz)) 

n=4
viridis_cols = viridis(
  n = n,
  alpha = 1,
  begin = 0.1,
  end = 0.8,
  direction = 1,
  option = "C"
)

bluegreen = brewer.pal(n = 5, name = "YlGnBu")[2:5]


#---------------------------------------
# Mean difference in LAZ plot
#---------------------------------------
meandiff_plot = ggplot(pool, aes(x = month_diff, y = mean_diff_laz)) +
  geom_point(data=d, aes(col = age_rec_f), position= position_dodge(width=1.8)) +
  geom_point(aes(col = age_rec_f), position= position_dodge(width=1.8)) +
  geom_pointrange(aes(ymin = mean_diff_lb, ymax = mean_diff_ub, col = age_rec_f),
                  position= position_dodge(width=1.8), size=1.3) +
  ylab("Mean difference in\nLAZ (95% CI)") + 
  xlab("Months since LAZ rose\nfrom below to above -2") +
  scale_color_manual("Age in months\n when LAZ\nrose above -2", values = 
                       bluegreen, guide = FALSE) +
  scale_x_continuous(breaks = c(3,6,9,12),
                     labels = c(3,6,9,12)) + 
  scale_y_continuous(breaks = seq(-1,1,0.25),
                     labels = seq(-1,1,0.25)) +
  theme(axis.text.x = element_text(size=14),
        axis.text.y = element_text(size=14),
        axis.title.x = element_text(size=16),
        axis.title.y = element_text(size=16)) 


#---------------------------------------
# define standardized plot names
#---------------------------------------
meandiff_plot_name = create_name(
  outcome = "laz",
  cutoff = 2,
  measure = "mean after LAZ rose above -2",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "primary"
)

#---------------------------------------
# save plot and underlying data
#---------------------------------------
ggsave(meandiff_plot, file=paste0(fig_dir, "stunting/fig-",meandiff_plot_name,".png"), 
       width=5, height=4)

saveRDS(md_data, file=paste0(figdata_dir_stunting, "figdata-",meandiff_plot_name,".RDS"))

