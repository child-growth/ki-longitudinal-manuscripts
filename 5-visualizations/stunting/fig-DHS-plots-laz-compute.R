#---------------------------------------
#---------------------------------------
# estimate z-scores by age
#---------------------------------------
#---------------------------------------

#---------------------------------------
# estimate mean z-scores by age
# including all countries in each region
#---------------------------------------
#---------------------------------------
# for each region, do the cluster based pooling for each child age
#---------------------------------------

df_survey <- foreach(measure_here = unique(dhsz$measure), .combine = rbind) %:%
  foreach(region_here = c("Africa", "South Asia", "Latin America"), .combine = rbind) %dopar% {
    df <- dhsz %>% filter(measure == measure_here & region == region_here)
    result_svymean <- compute_ci_with_sampling_weights(df)
    result_svymean$measure <- measure_here
    result_svymean$region <- region_here
    result_svymean
  }

df_survey$se[df_survey$se <= 1e-1] <- 1e-1
dhs_pooled <- do_metaanalysis(df_survey, pool_over = "region")
dhs_pooled$region <- "Overall"

df_survey <- df_survey %>%
  rename(fit = zscore, fit_lb = ci_l, fit_ub = ci_u, fit_se = se) %>%
  select(measure, region, agem, fit, fit_se, fit_lb, fit_ub)
dhs_pooled <- dhs_pooled %>%
  rename(fit = est, fit_lb = lb, fit_ub = ub, fit_se = se) %>%
  select(measure, region, agem, fit, fit_se, fit_lb, fit_ub)
df_survey_output <- bind_rows(df_survey, dhs_pooled) %>%
  mutate(region = factor(region, levels = c("Overall", "Africa", "South Asia", "Latin America")))
df_survey_output$measure <- "LAZ" # rename HAZ to LAZ
saveRDS(df_survey_output, file = here::here("results", "DHS-stunting-by-region.rds"))