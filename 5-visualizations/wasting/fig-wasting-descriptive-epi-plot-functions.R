##########################################
# ki longitudinal manuscripts
# wasting analysis
#
# functions for descriptive epi plots

##########################################

#-------------------------------------------------------------------------------------------
# Mean LAZ by month (primary & monthly from 0-24 months)
#-------------------------------------------------------------------------------------------

filter_df <- function(df, meas, agerange="1 month") {
  new <- df %>% filter(
    disease == "Wasting" &
      measure == meas &
      birth == "yes" &
      severe == "no" &
      age_range == agerange &
      cohort == "pooled"
  )
  
  new <- droplevels(new)
  
  new <- new %>%
    arrange(agecat) %>%
    filter(!is.na(agecat)) %>%
    filter(!is.na(region)) %>%
    mutate(agecat = as.character(agecat)) %>%
    mutate(agecat = ifelse(agecat == "Two weeks", ".5", agecat)) %>%
    mutate(agecat = gsub(" month", "", agecat)) %>%
    mutate(agecat = gsub(" months", "", agecat)) %>%
    mutate(agecat = gsub("s", "", agecat)) %>%
    mutate(agecat = ifelse(agecat == "One", "1", agecat)) %>%
    mutate(agecat = as.numeric(agecat))
  
  return(new)
}

#-------------------------------------------------------------------------------------------
# Mean LAZ by month (primary & monthly from 0-24 months)
#-------------------------------------------------------------------------------------------

plot_mean_laz <- function(df) {
  plt <- ggplot(df,aes(y=est,x=agecat, group=region)) +
    stat_smooth(aes(fill=region, color=region), se=F, span = 0.5) +
    geom_hline(yintercept = 0, colour = "black") +
    scale_y_continuous(breaks = scales::pretty_breaks(n = 10), 
                       limits = c(-2.2, 0.5)) + 
    scale_x_continuous(limits = c(0,24), breaks = seq(0,24,2), labels = seq(0,24,2)) + 
    scale_fill_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                      name = 'Region') +
    scale_color_manual(values=tableau11, drop=TRUE, limits = levels(df$measure), 
                       name = 'Region') +
    xlab("Child age, months")+
    ylab("Length-for-age Z-score") +
    ggtitle("") +
    theme(legend.position="right")
  
  return(plt)
}

#-------------------------------------------------------------------------------------------
# Lists of populations and analysis types
#-------------------------------------------------------------------------------------------

pop_list = list(c="cohort-stratified", o="overall and region-stratified")
analysis_list = list(p="primary", m="monthly cohorts measured each month from 0 to 24", f="fixed effects")

#-------------------------------------------------------------------------------------------
# Wasting prevalence (monthly from 0 to 24 months)
#-------------------------------------------------------------------------------------------
plot_prev <- function(d, meas="Prevalence", sev, ...) {
  ki_desc_plot(d,
               Disease="Wasting",
               Measure=meas, 
               Birth="yes", 
               Severe=sev, 
               Age_range="3 months", 
               Cohort="pooled",
               xlabel="Child age, months",
               ylabel='Point Prevalence (95% CI)',
               h1=69,
               h2=72, 
               ...)
}

# define standardized plot names
name_prev_plots <- function(cut=2, pop, loc="", ana) {
  create_name(
    outcome = "wasting",
    cutoff = cut,
    measure = "prevalence",
    population = pop,
    location = loc,
    age = "All ages",
    analysis = ana
  )
}

#-------------------------------------------------------------------------------------------
# Wasting cumulative incidence + incidence proportion (primary)
#-------------------------------------------------------------------------------------------

plot_ip <- function(d, meas="Incidence proportion", birth, sev, ...) {
  ki_ip_flurry_plot(d,
                    Disease="Wasting",
                    Measure=meas,
                    Birth=birth,
                    Severe=sev,
                    Age_range="3 months",
                    xlabel="Child age, months",
                    h1=90,
                    h2=90,
                    ...)
}

plot_ip_subgroup <- function(d, meas="Incidence_proportion", birth, sev, subgroup, title, reverse_colors,...) {
  
  ki_ip_flurry_subgroup_plot(d,
                             Disease="Wasting",
                             Measure=meas, 
                             Birth=birth, 
                             Severe=sev, 
                             Age_range="3 months", 
                             xlabel="Child age, months",
                             h1=90,
                             h2=90,
                             reverse_colors=F,
                             subgroup=subgroup,
                             title =title,
                             ...)
  
}



# define standardized plot names
name_inc_plots <- function(cut=2, pop, loc="", ana) {
  create_name(
    outcome = "wasting",
    cutoff = cut,
    measure = "incidence",
    population = pop,
    location = loc,
    age = "All ages",
    analysis = ana
  )
}

#-------------------------------------------------------------------------------------------
# Wasting incidence - 3 months - stratified by cohort (primary)
#-------------------------------------------------------------------------------------------
plot_ip_by_reg <- function(reg) {
  ip_plot(
    d_primary,
    Disease = "Wasting",
    Measure = "Incidence proportion",
    Birth = "strat",
    Severe = "no",
    Age_range = "3 months",
    Cohort = "pooled",
    xlabel = "Child age, months",
    ylabel = 'Incidence proportion (95% CI)',
    h1 = 69,
    h2 = 72,
    returnData = T,
    Region = reg
  )
}


# get N's for subgroup analysis plots
get_N_subgroup <- function(d, subgroup){
  d %>%
    filter(disease == "Wasting" &
             measure== "Incidence_proportion" &
             age_range == "3 months" &
             birth == "strat" &
             cohort == "pooled" &
             severe == "no") %>%
    group_by(!!sym(subgroup)) %>%
    summarise(min_study = min(nstudies, na.rm=TRUE),
              max_study = max(nstudies, na.rm=TRUE),
              min_n = min(nmeas, na.rm=TRUE),
              max_n = max(nmeas, na.rm=TRUE))  
}
