
#-----------------------------------------
# Preamble
#-----------------------------------------
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# load stunting recovery cohort data
d = readRDS(paste0(res_dir, "stunting/stunt_rec_cohort.RDS"))

d$subjid <- as.numeric(d$subjid)

# drop data beyond 16 months since it is 
# sparse in most studies
d = d %>% filter(agedays<=16 * 30.4167)

# number of studies, countries, children included
length(names(table(paste0(d$studyid,d$country))))
length(names(table(d$country)))

x=d %>% group_by(studyid) %>% summarise(n = length(unique(subjid)))
sum(x$n)
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
    dplyr::select(studyid, country, subjid) %>%
    mutate(age_rec = age_range) %>% 
    distinct()
  
  rec_data = rec_data[!duplicated(rec_data),]
  
  rec_data_haz = full_join(rec_data, data, 
                           by = c("studyid", "country", "subjid")) %>%
    filter(!is.na(age_rec)) %>%
    dplyr::select(studyid, country, subjid, agedays, haz, age_rec)
  
  # add other phenotypes
  rec_pheno = rec_data_haz %>% 
    group_by(studyid,country,subjid) %>%
    mutate(laghaz = lag(haz)) %>%
    mutate(agem = agedays / 30.4167)  %>% 
    
    # create reverse measid
    mutate(measid = seq_along(agem),
           revmeasid = rev(seq_along(agem))) %>%
    
    mutate(stunted=ifelse(haz< -2,1,0),
           lagstunted=lag(stunted),
           lageverstunted = lag(cummax(stunted))) %>%
    
    mutate(newly_stunted = ifelse(stunted==1 & 
                                    lageverstunted == 0 , 1, 0),
           
           recover =       ifelse(stunted==0 &
                                    lagstunted==1 &
                                    lageverstunted==1, 1, 0),
           
           never_stunted =       ifelse(stunted==0 &
                                          lagstunted==0 &
                                          lageverstunted==0, 1, 0)) %>%
    
    # recoding indicators at first measurement since lag is NA
    mutate(newly_stunted = ifelse(stunted==1 & measid==1, 1, newly_stunted),
           
           never_stunted = ifelse(stunted==0 & measid==1, 1, never_stunted),
           
           recover = ifelse(stunted==0 & measid==1, 0, recover)) %>%
    
    # code relapse 
    mutate(everrecover = cummax(recover),
           evernew = cummax(newly_stunted),
           
           relapse =       ifelse(stunted==1 &
                                    lageverstunted==1 &
                                    lagstunted==0 &
                                    everrecover==1, 1, 0),
           
           still_stunted = ifelse(stunted==1 & 
                                    evernew==1 &
                                    lagstunted==1, 1, 0),
           
           not_stunted =   ifelse(stunted==0 & 
                                    lagstunted==0 &
                                    everrecover==1, 1, 0))  %>%
    
    # recode still stunted at first measurement  
    mutate(still_stunted = ifelse(measid==1, 0, still_stunted))  %>% 
    
    # drop extra columns
    dplyr::select(-c(laghaz, measid, revmeasid, lagstunted, stunted,
                     lageverstunted, everrecover, evernew))
  
  # subsequent measurement ages after recovery
  age_meas = seq(age_upper, 15, 3) 
  
  rec_meas_sub_list = lapply(age_meas, function(x) 
    subset_rec(data = rec_pheno, 
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

# check that never stunted children are not included
assert_that(names(table(plot_data$never_stunted))=="0")

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

saveRDS(plot_data, file = paste0(res_dir, "stunting/stunting_rec_cohorts.RDS"))

# --------------------------------------------
# mean laz
# --------------------------------------------

# function to get mean laz
# for each recovery cohort at each subsequent
# measurement age 
summarize_dist = function(data, age_recov){
  
  data = data %>% filter(age_rec == age_recov) 
  
  tab_age_meas =  table(data$age_meas)
  
  
  age_meas_list = rev(names(tab_age_meas[tab_age_meas>0]))
  
  # list for cohort results
  cohort_meandiff_list = list()
  
  # matrix for pooled results
  res = matrix(NA, nrow = length(age_meas_list), ncol = 8)
  
  # within each age of measurement, calculate
  # the mean difference in LAZ and get CI
  for(i in 1:(length(age_meas_list))){
    print(i)
    y = data %>% 
      ungroup() %>%
      filter(age_rec == age_recov & 
               age_meas == age_meas_list[i]) %>%
      mutate(stunted = ifelse(haz < -2 , 1, 0))
    
    # get mean LAZ in each cohort
    meanlaz_data = data %>%
      ungroup() %>%
      filter(age_meas == age_meas_list[[i]] | 
               age_meas == age_meas_list[[1]]) %>%
      mutate(x = ifelse(age_meas == age_meas_list[[i]], 1, 0),
             age_meas = droplevels(age_meas))%>% 
      # drop if n==1
      group_by(studyid) %>% 
      mutate(n=n()) %>% 
      filter(n>1)
    
    # calculate mean difference 
    cohort_list = unique(meanlaz_data$studyid)

    assert_that(length(cohort_list)>1, msg = "Less than 2 cohorts for pooling")
    
    cohort_meandiff = matrix(NA, nrow = length(cohort_list),2)
    for(k in 1:length(cohort_list)){
      if(i>1){
        cohort_data =  meanlaz_data %>% filter(studyid == cohort_list[k])
        cohort_meandiff[k,1] = cohort_list[k]
        cohort_meandiff[k,2] = mean(cohort_data$haz[cohort_data$x==1], na.rm=T) -
                     mean(cohort_data$haz[cohort_data$x==0], na.rm=T)
      }
    }
    cohort_meandiff_df = as.data.frame(cohort_meandiff)
    colnames(cohort_meandiff_df) = c("studyid", "mean_diff_laz")
    cohort_meandiff_df$mean_diff_laz = as.numeric(cohort_meandiff_df$mean_diff_laz)
    cohort_meandiff_df$age_rec = age_recov
    cohort_meandiff_df$age_meas = age_meas_list[[i]]
    cohort_meandiff_df = cohort_meandiff_df %>% 
          dplyr::select(studyid, age_rec, age_meas, mean_diff_laz)
    
    if(i>1) cohort_meandiff_list[[i]] = cohort_meandiff_df

    
    # calculate pooled mean difference (no random effects)
    if(i>1){
      glm.fit = glm(haz ~ x, data = meanlaz_data)
      pool_meanlaz = data.frame(meandiff =  glm.fit$coefficients[2])
      pool_meanlaz$lb = confint(glm.fit)[2,1]
      pool_meanlaz$ub = confint(glm.fit)[2,2]
    }
    
    
    # pooled results
    res[i,1] = age_recov
    res[i,2] = age_meas_list[i]
    res[i,3] = as.character(length(unique(y$studyid)))
    res[i,4] = as.character(length(unique(y$country)))
    res[i,5] = as.character(length(unique(y$subjid)))
    if(i==1){
      res[i,6] = as.character("")
      res[i,7] = as.character("")
      res[i,8] = as.character("")
    }else{
      res[i,6] = as.character(as.numeric(pool_meanlaz$meandiff))
      res[i,7] = as.character(as.numeric(pool_meanlaz$lb))
      res[i,8] = as.character(as.numeric(pool_meanlaz$ub))
    }
  }
  
  # process pooled output
  res = as.data.frame(res)
  colnames(res) = c("age_rec", "age_meas",
                    "nstudy", "ncountry", "nchild",
                    "mean_diff_laz", "mean_diff_lb", "mean_diff_ub")
  
  res$mean_diff_laz = as.numeric(as.character(res$mean_diff_laz))
  res$mean_diff_lb = as.numeric(as.character(res$mean_diff_lb))
  res$mean_diff_ub = as.numeric(as.character(res$mean_diff_ub))
  
  # process cohort output
  names(cohort_meandiff_list) = age_meas_list
  cohort_meandiff_df = bind_rows(cohort_meandiff_list)
  
  return(list(pooled = res, cohort = cohort_meandiff_df))
  
}

results_0_3 = summarize_dist(data = plot_data, age_recov = "0-3 months")
results_3_6 = summarize_dist(data = plot_data, age_recov = "3-6 months")
results_6_9 = summarize_dist(data = plot_data, age_recov = "6-9 months")
results_9_12 = summarize_dist(data = plot_data, age_recov = "9-12 months")

cohort_meandiff = bind_rows(
  results_0_3$cohort,
  results_3_6$cohort,
  results_6_9$cohort,
  results_9_12$cohort
)

pooled_meandiff = bind_rows(
  results_0_3$pooled,
  results_3_6$pooled,
  results_6_9$pooled,
  results_9_12$pooled
)



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
# Prep data for plotting
#---------------------------------------
pool = pooled_meandiff %>%
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
  filter(!is.na(mean_diff_laz)) 

cohort = cohort_meandiff %>% 
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
  filter(!is.na(mean_diff_laz)) 

#---------------------------------------
# Mean difference in LAZ plot
#---------------------------------------
meandiff_plot = ggplot(pool, aes(x = month_diff, y = mean_diff_laz)) +

  geom_point(aes(col = age_rec_f), position= position_dodge(width=1.8)) +
  geom_pointrange(aes(ymin = mean_diff_lb, ymax = mean_diff_ub, col = age_rec_f),
                  position= position_dodge(width=1.8), size=1.3) +
  geom_point(data=cohort,aes(col = age_rec_f),
             position= position_dodge(width=1.8), alpha = 0.3, size =3) +
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
meandiff_plot

# trying out new format
# ggplot(pool, aes(x = month_diff, y = mean_diff_laz)) +
#   geom_point(position= position_dodge(width=1.8)) +
#   geom_pointrange(aes(ymin = mean_diff_lb, ymax = mean_diff_ub),
#                   position= position_dodge(width=1.8), size=1.3) +
#   geom_point(data=cohort,
#               alpha = 0.3, size =3) +
#   # geom_line(data=cohort,aes(col = studyid),
#   #             alpha = 0.7) +
#   facet_grid(~age_rec_f) +
#   ylab("Mean difference in\nLAZ (95% CI)") + 
#   xlab("Months since LAZ rose from below to above -2") +
#   # scale_color_manual("Age in months\n when LAZ\nrose above -2", values = 
#   #                      bluegreen, guide = FALSE) +
#   scale_x_continuous(breaks = c(3,6,9,12),
#                      labels = c(3,6,9,12)) + 
#   scale_y_continuous(breaks = seq(-1,1,0.25),
#                      labels = seq(-1,1,0.25)) +
#   theme(axis.text.x = element_text(size=14),
#         axis.text.y = element_text(size=14),
#         axis.title.x = element_text(size=16),
#         axis.title.y = element_text(size=16)) 



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

saveRDS(list(pool = pool, cohort = cohort), 
        file=paste0(figdata_dir_stunting, "figdata-",meandiff_plot_name,".RDS"))


