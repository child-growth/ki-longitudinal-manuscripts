##########################################
# ki longitudinal manuscripts
# stunting analysis
#
# make dataset with WHO linear growth velocity standard

# outputs: WHO_linear_growth_velocity_standard.RDS

##########################################

# Add WHO cm/month standards
#  https://www.who.int/childgrowth/standards/velocity/technical_report/en/
who_cm_boys <- data.frame(
  pct_50 = c(
    11.4,
    6.2,
    4.4,
    3.8,
    3.4,
    3.1,
    2.9,
    2.6
  ),
  pct_25= c(
    10.6,
    5.5,
    3.7,
    3.2,
    2.8,
    2.5,
    2.2,
    2.0
  ),
  pct_15= c(
    10.1,
    5.1,
    3.4,
    2.8,
    2.5,
    2.1,
    1.9,
    1.7
  )
)

who_cm_girls <- data.frame(
  pct_50 = c(
    10.6,
    5.9,
    4.4,
    3.9,
    3.5,
    3.2,
    2.9,
    2.7
  ),
  pct_25 = c(
    9.8,
    5.2,
    3.8,
    3.3,
    2.9,
    2.6,
    2.3,
    2.1
  ),
  pct_15= c(
    9.3,
    4.9,
    3.4,
    2.9,
    2.6,
    2.3,
    2.0,
    1.8
  )
)

who_cm_boys$sex <- 'Male'
who_cm_boys$strata <- c("0-3", "3-6", "6-9",
                        "9-12", "12-15", "15-18",
                        "18-21", "21-24")
who_cm_girls$sex <- 'Female'
who_cm_girls$strata <- c("0-3", "3-6", "6-9",
                         "9-12", "12-15", "15-18",
                         "18-21", "21-24")

who_cm <- rbind(who_cm_girls, who_cm_boys)

saveRDS(who_cm, file = paste0(res_dir, "WHO_linear_growth_velocity_standard.RDS"))