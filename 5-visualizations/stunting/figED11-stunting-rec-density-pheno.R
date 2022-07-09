##########################################
# ki longitudinal manuscripts
# stunting analysis

# figure: stacked density of cohorts of 
# children who recovered at different ages. 
# histograms show distribution of LAZ
# at subsequent measurements following recovery.

# inputs: stunt_rec_cohort.RDS

# outputs: 
# fig-laz-2-rec_dist-overall--allage-primary.png
# figdata-laz-2-rec_dist-overall--allage-primary.RDS
# fig-stunting-rec-density-rev2-Fig_4B.png
# fig-stunting-rec-density-rev2-Fig_4B_legend.png

##########################################

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
# % stunted / median 
# --------------------------------------------

# function to get % stunted and min, med, max
# for each recovery cohort at each subsequent
# measurement age 
summarize_dist = function(data, age_recov){
  
  data = data %>% filter(age_rec == age_recov) 
  
  tab_age_meas =  table(data$age_meas)
  
  
  age_meas_list = rev(names(tab_age_meas[tab_age_meas>0]))
  
  res = matrix(NA, nrow = length(age_meas_list), ncol = 11)
  
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

    re = fit.rma(
      data = prev.cohort,
      ni = "nmeas",
      xi = "nxprev",
      measure = "PLO",
      nlab = "children"
    )
    
    meanlaz_data = data %>%
      ungroup() %>%
      filter(age_meas == age_meas_list[[i]] | 
               age_meas == age_meas_list[[1]]) %>%
      mutate(x = ifelse(age_meas == age_meas_list[[i]], 1, 0),
             age_meas = droplevels(age_meas))
    
    if(i>1){
      glm.fit = glm(haz ~ x, data = meanlaz_data)
      meanlaz = data.frame(meandiff =  glm.fit$coefficients[2])
      meanlaz$lb = confint(glm.fit)[2,1]
      meanlaz$ub = confint(glm.fit)[2,2]
    }
    
    res[i,1] = age_recov
    res[i,2] = age_meas_list[i]
    res[i,3] = as.character(length(unique(y$studyid)))
    res[i,4] = as.character(length(unique(y$country)))
    res[i,5] = as.character(length(unique(y$subjid)))
    res[i,6] = as.character(as.numeric(re$est))
    res[i,7] = as.character(as.numeric(re$lb))
    res[i,8] = as.character(as.numeric(re$ub))
    if(i==1){
      res[i,9] = as.character("")
      res[i,10] = as.character("")
      res[i,11] = as.character("")
    }else{
      res[i,9] = as.character(as.numeric(meanlaz$meandiff))
      res[i,10] = as.character(as.numeric(meanlaz$lb))
      res[i,11] = as.character(as.numeric(meanlaz$ub))
    }
  }
  
  res = as.data.frame(res)
  colnames(res) = c("age_rec", "age_meas",
                    "nstudy", "ncountry", "nchild",
                    "stunting_prev", "prev_lb", "prev_ub", 
                    "mean_diff_laz", "mean_diff_lb", "mean_diff_ub")
  
  res$stunting_prev = as.numeric(as.character(res$stunting_prev))
  res$prev_lb = as.numeric(as.character(res$prev_lb))
  res$prev_ub = as.numeric(as.character(res$prev_ub))
  
  res$mean_diff_laz = as.numeric(as.character(res$mean_diff_laz))
  res$mean_diff_lb = as.numeric(as.character(res$mean_diff_lb))
  res$mean_diff_ub = as.numeric(as.character(res$mean_diff_ub))
  
  return(res)
  
}

age_rec_list = as.list(levels(plot_data$age_rec))
results_list = lapply(age_rec_list, function(x) summarize_dist(
  data = plot_data, age_recov = x))

results_df = bind_rows(results_list)


saveRDS(results_df, file = paste0(res_dir, "stunting/stunting_rec_cohort_summary.RDS"))


# --------------------------------------------
# further prepare data for the plot
# --------------------------------------------
# drop HAZ at tails of distributions
plot_data_sub = plot_data %>% filter(haz >=-5 & haz <=3.5)

# rename labels
plot_data_sub = plot_data_sub %>%
  mutate(age_rec_f = case_when(
    age_rec == "0-3 months" ~ "Stunting reversal\nat 3 months",
    age_rec == "3-6 months" ~ "Stunting reversal\nat 6 months",
    age_rec == "6-9 months" ~ "Stunting reversal\nat 9 months",
    age_rec == "9-12 months" ~ "Stunting reversal\nat 12 months"
  )) %>%
  mutate(age_rec_f = factor(age_rec_f, levels = c(
    "Stunting reversal\nat 3 months",
    "Stunting reversal\nat 6 months",
    "Stunting reversal\nat 9 months",
    "Stunting reversal\nat 12 months"
  )))

plot_data_sub = plot_data_sub %>%
  mutate(age_meas_n = gsub(" month measurement", "", age_meas))
# mutate(age_meas_n = factor(age_meas_n, levels = c("15", "12", "9", "6", "3")))

# phenotype categories
plot_data_sub = plot_data_sub %>% mutate(pheno= case_when(
  still_stunted==1 ~ "Still stunted",
  newly_stunted==1 ~ "Newly stunted/relapsed",
  relapse==1 ~ "Newly stunted/relapsed",
  recover==1 ~ "Recovered/not stunted",
  not_stunted==1 ~ "Recovered/not stunted",
  never_stunted==1 ~ "Never stunted",
  
)) %>% 
  mutate(pheno = factor(pheno, levels = c("Never stunted", "Recovered/not stunted",
                                          "Newly stunted/relapsed", "Still stunted")))

#-----------------------------------------
# define color palette
#-----------------------------------------
pink_green = rev(brewer.pal(n = 4, name = "PiYG"))[2:4]

################################################################################
# Figure 4B
################################################################################
#### Generate Plotting Data ####
stunt_3_meas_9 <- plot_data_sub %>% filter(age_meas == '9 month measurement' & age_rec_f == "Stunting reversal\nat 3 months")
stunt_3_meas_6 <- plot_data_sub %>% filter(age_meas == '6 month measurement' & age_rec_f == "Stunting reversal\nat 3 months")
stunt_3_meas_3 <- plot_data_sub %>% filter(age_meas == '3 month measurement' & age_rec_f == "Stunting reversal\nat 3 months")
stunt_3_meas_15 <- plot_data_sub %>% filter(age_meas == '15 month measurement' & age_rec_f == "Stunting reversal\nat 3 months")
stunt_3_meas_12 <- plot_data_sub %>% filter(age_meas == '12 month measurement' & age_rec_f == "Stunting reversal\nat 3 months")

stunt_6_meas_9 <- plot_data_sub %>% filter(age_meas == '9 month measurement' & age_rec_f == "Stunting reversal\nat 6 months")
stunt_6_meas_6 <- plot_data_sub %>% filter(age_meas == '6 month measurement' & age_rec_f == "Stunting reversal\nat 6 months")
stunt_6_meas_15 <- plot_data_sub %>% filter(age_meas == '15 month measurement' & age_rec_f == "Stunting reversal\nat 6 months")
stunt_6_meas_12 <- plot_data_sub %>% filter(age_meas == '12 month measurement' & age_rec_f == "Stunting reversal\nat 6 months")

stunt_9_meas_9 <- plot_data_sub %>% filter(age_meas == '9 month measurement' & age_rec_f == "Stunting reversal\nat 9 months")
stunt_9_meas_15 <- plot_data_sub %>% filter(age_meas == '15 month measurement' & age_rec_f == "Stunting reversal\nat 9 months")
stunt_9_meas_12 <- plot_data_sub %>% filter(age_meas == '12 month measurement' & age_rec_f == "Stunting reversal\nat 9 months")

stunt_12_meas_15 <- plot_data_sub %>% filter(age_meas == '15 month measurement' & age_rec_f == "Stunting reversal\nat 12 months")
stunt_12_meas_12 <- plot_data_sub %>% filter(age_meas == '12 month measurement' & age_rec_f == "Stunting reversal\nat 12 months")

################################################################################

header_font_size = 14
#-----------------------------------------
# plot: 3m reversal, 3m measurement
#-----------------------------------------
stunt_3_meas_3_plot <- ggplot(stunt_3_meas_3, aes(x=haz)) + 
  geom_histogram(aes(fill = pheno),  bins = 80) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_manual("Age in months when\nLAZ rose above -2",
                    values = c("#999999", pink_green), drop = FALSE) +
  theme_bw() +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,1), "cm"),
         plot.title = element_text(size = header_font_size, face = "bold"),
         legend.text = element_text(size=13),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey')) + 
  geom_text(x = -5.8, y = 0, label = "3", size = 5) + 
  coord_cartesian(clip = 'off') + 
  rremove("y.grid") + 
  rremove("x.text") + 
  rremove("axis.title") + 
  ggtitle("Stunting reversal\nat 3 months")

#-----------------------------------------
# plot: 3m reversal, 6m measurement
#-----------------------------------------
stunt_3_meas_6_plot <- ggplot(stunt_3_meas_6, aes(x=haz)) + 
  geom_histogram(aes(fill = pheno),  bins = 80, show.legend = FALSE) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_manual("Age in months when\nLAZ rose above -2",
                    values = pink_green) +
  theme_bw() +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,1), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  geom_text(x = -5.8, y = 0, label = "6", size = 5) + 
  coord_cartesian(clip = 'off') + 
  rremove("y.grid") + 
  rremove("x.text") + 
  rremove("axis.title")

#-----------------------------------------
# plot: 3m reversal, 9m measurement
#-----------------------------------------
stunt_3_meas_9_plot <- ggplot(stunt_3_meas_9, aes(x=haz)) + 
  geom_histogram(aes(fill = pheno),  bins = 80, show.legend = FALSE) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_manual("Age in months when\nLAZ rose above -2",
                    values = pink_green) +
  theme_bw() +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,1), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  geom_text(x = -5.8, y = 0, label = "9", size = 5) + 
  coord_cartesian(clip = 'off') + 
  rremove("y.grid") + 
  rremove("x.text") + 
  rremove("axis.title")

#-----------------------------------------
# plot: 3m reversal, 12m measurement
#-----------------------------------------
stunt_3_meas_12_plot <- ggplot(stunt_3_meas_12, aes(x=haz)) + 
  geom_histogram(aes(fill = pheno),  bins = 80, show.legend = FALSE) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_manual("Age in months when\nLAZ rose above -2",
                    values = pink_green) +
  theme_bw() +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,1), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  geom_text(x = -5.8, y = 0, label = "12", size = 5) + 
  coord_cartesian(clip = 'off') + 
  rremove("y.grid") + 
  rremove("x.text") +
  rremove("axis.title")

#-----------------------------------------
# plot: 3m reversal, 15m measurement
#-----------------------------------------
stunt_3_meas_15_plot <- ggplot(stunt_3_meas_15, aes(x=haz)) + 
  geom_histogram(aes(fill = pheno),  bins = 80, show.legend = FALSE) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_manual("Age in months when\nLAZ rose above -2",
                    values = pink_green) +
  theme_bw() +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.x = element_text(size = 13),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,1), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  geom_text(x = -5.8, y = 0, label = "15", size = 5) + 
  coord_cartesian(clip = 'off') + 
  rremove("y.grid") + 
  rremove("axis.title")

################################################################################
#-----------------------------------------
# plot: 6m reversal, 3m measurement BLANK
#-----------------------------------------
stunt_6_meas_3_plot <- ggplot() + 
  ggtitle("Stunting reversal\nat 6 months") + 
  theme_bw() + 
  theme(plot.margin = unit(c(0,0.25,0,0.25), "cm"), 
        panel.border = element_rect(colour = "white", fill = NA),
        plot.title = element_text(size = header_font_size, face = "bold"))

#-----------------------------------------
# plot: 6m reversal, 6m measurement 
#-----------------------------------------
stunt_6_meas_6_plot <- ggplot(stunt_6_meas_6, aes(x=haz)) + 
  geom_histogram(aes(fill = pheno),  bins = 80, show.legend = FALSE) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_manual("Age in months when\nLAZ rose above -2",
                    values = pink_green) +
  theme_bw() +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,0.25), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  rremove("y.grid") + 
  rremove("x.text") + 
  rremove("axis.title")

#-----------------------------------------
# plot: 6m reversal, 9m measurement 
#-----------------------------------------
stunt_6_meas_9_plot <- ggplot(stunt_6_meas_9, aes(x=haz)) + 
  geom_histogram(aes(fill = pheno),  bins = 80, show.legend = FALSE) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_manual("Age in months when\nLAZ rose above -2",
                    values = pink_green) +
  theme_bw() +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,0.25), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  rremove("y.grid") + 
  rremove("x.text") + 
  rremove("axis.title")

#-----------------------------------------
# plot: 6m reversal, 12m measurement 
#-----------------------------------------
stunt_6_meas_12_plot <- ggplot(stunt_6_meas_12, aes(x=haz)) + 
  geom_histogram(aes(fill = pheno),  bins = 80, show.legend = FALSE) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_manual("Age in months when\nLAZ rose above -2",
                    values = pink_green) +
  theme_bw() +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,0.25), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  rremove("y.grid") + 
  rremove("x.text") + 
  rremove("axis.title")

#-----------------------------------------
# plot: 6m reversal, 15m measurement 
#-----------------------------------------
stunt_6_meas_15_plot <- ggplot(stunt_6_meas_15, aes(x=haz)) + 
  geom_histogram(aes(fill = pheno),  bins = 80, show.legend = FALSE) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_manual("Age in months when\nLAZ rose above -2",
                    values = pink_green) +
  theme_bw() +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.x = element_text(size = 13),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,0.25), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  rremove("y.grid") + 
  rremove("axis.title")

################################################################################
#-----------------------------------------
# plot: 9m reversal, 3m measurement BLANK
#-----------------------------------------
stunt_9_meas_3_plot <- ggplot() + 
  ggtitle("Stunting reversal\nat 9 months") + 
  theme_bw() + 
  theme(plot.margin = unit(c(0,0.25,0,0.25), "cm"),
        panel.border = element_rect(colour = "white", fill = NA),
        plot.title = element_text(size = header_font_size, face = "bold"),)

#-----------------------------------------
# plot: 9m reversal, 6m measurement BLANK
#-----------------------------------------
stunt_9_meas_6_plot <- ggplot(stunt_9_meas_9, aes(x=haz)) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  theme_bw() +
  geom_vline(xintercept = -2, linetype="dashed") +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,0.25), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  rremove("y.grid") + 
  rremove("x.text") + 
  rremove("axis.title")

#-----------------------------------------
# plot: 9m reversal, 9m measurement 
#-----------------------------------------
stunt_9_meas_9_plot <- ggplot(stunt_9_meas_9, aes(x=haz)) + 
  geom_histogram(aes(fill = pheno),  bins = 80, show.legend = FALSE) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_manual("Age in months when\nLAZ rose above -2",
                    values = pink_green) +
  theme_bw() +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,0.25), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  rremove("y.grid") + 
  rremove("x.text") + 
  rremove("axis.title")

#-----------------------------------------
# plot: 9m reversal, 12m measurement 
#-----------------------------------------
stunt_9_meas_12_plot <- ggplot(stunt_9_meas_12, aes(x=haz)) + 
  geom_histogram(aes(fill = pheno),  bins = 80, show.legend = FALSE) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_manual("Age in months when\nLAZ rose above -2",
                    values = pink_green) +
  theme_bw() +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,0.25), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  rremove("y.grid") + 
  rremove("x.text") + 
  rremove("axis.title")

#-----------------------------------------
# plot: 9m reversal, 15m measurement 
#-----------------------------------------
stunt_9_meas_15_plot <- ggplot(stunt_9_meas_15, aes(x=haz)) + 
  geom_histogram(aes(fill = pheno),  bins = 80, show.legend = FALSE) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_manual("Age in months when\nLAZ rose above -2",
                    values = pink_green) +
  theme_bw() +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.x = element_text(size = 13),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,0.25), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  rremove("y.grid") + 
  rremove("axis.title")

################################################################################
#-----------------------------------------
# plot: 12m reversal, 3m measurement BLANK
#-----------------------------------------
stunt_12_meas_3_plot <- ggplot() + 
  ggtitle("Stunting reversal\nat 12 months") + 
  theme_bw() + 
  theme(plot.margin = unit(c(0,0.25,0,0.25), "cm"), 
        panel.border = element_rect(colour = "white", fill = NA),
        plot.title = element_text(size = header_font_size, face = "bold"),)

#-----------------------------------------
# plot: 12m reversal, 6m measurement BLANK
#-----------------------------------------
stunt_12_meas_6_plot <- ggplot(stunt_12_meas_15, aes(x=haz)) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  theme_bw() +
  geom_vline(xintercept = -2, linetype="dashed") +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,0.25), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  rremove("y.grid") + 
  rremove("x.text") + 
  rremove("axis.title")

#-----------------------------------------
# plot: 12m reversal, 9m measurement BLANK
#-----------------------------------------
stunt_12_meas_9_plot <- ggplot(stunt_12_meas_15, aes(x=haz)) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  theme_bw() +
  geom_vline(xintercept = -2, linetype="dashed") +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,0.25), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  rremove("y.grid") + 
  rremove("x.text") + 
  rremove("axis.title")

#-----------------------------------------
# plot: 12m reversal, 12m measurement BLANK
#-----------------------------------------
stunt_12_meas_12_plot <- ggplot(stunt_12_meas_12, aes(x=haz)) + 
  geom_histogram(aes(fill = pheno),  bins = 80, show.legend = FALSE) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_manual("Age in months when\nLAZ rose above -2",
                    values = pink_green) +
  theme_bw() +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,0.25), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  rremove("y.grid") + 
  rremove("x.text") +
  rremove("axis.title")

#-----------------------------------------
# plot: 12m reversal, 15m measurement 
#-----------------------------------------
stunt_12_meas_15_plot <- ggplot(stunt_12_meas_15, aes(x=haz)) + 
  geom_histogram(aes(fill = pheno),  bins = 80, show.legend = FALSE) + 
  scale_x_continuous(limits = c(-5, 3.5), breaks = seq(-5, 3.5, 1),
                     labels = seq(-5, 3.5, 1)) +
  geom_vline(xintercept = -2, linetype="dashed") +
  scale_fill_manual("Age in months when\nLAZ rose above -2",
                    values = pink_green) +
  theme_bw() +
  theme( legend.position = "bottom",
         panel.grid.major.y = element_blank(),
         panel.grid.minor.y = element_blank(),
         axis.text.x = element_text(size = 13),
         axis.text.y = element_blank(),
         axis.ticks.y = element_blank(),
         plot.margin = unit(c(0,0.25,0,0.25), "cm"),
         panel.border = element_rect(colour = "white", fill = NA),
         axis.line.x.bottom = element_line(color = 'grey'))  + 
  rremove("y.grid") +  
  rremove("axis.title")


#-----------------------------------------
#### Save legend ####
#-----------------------------------------
Fig_4B_legend <- as_ggplot(get_legend(stunt_3_meas_3_plot))
stunt_3_meas_3_plot <- stunt_3_meas_3_plot + theme(legend.position = "none")

ggsave(Fig_4B_legend, file=paste0(fig_dir, "stunting/fig-",rec_histogram_plot_name,"-pheno",
                                  "-legend.png"), width=9, height=1)


#-----------------------------------------
#### Combine Plots ####
#-----------------------------------------
Fig_4B <- ggarrange(stunt_3_meas_3_plot, stunt_6_meas_3_plot, stunt_9_meas_3_plot, stunt_12_meas_3_plot,
                    stunt_3_meas_6_plot, stunt_6_meas_6_plot, NULL, NULL,
                    stunt_3_meas_9_plot, stunt_6_meas_9_plot, stunt_9_meas_9_plot, NULL,
                    stunt_3_meas_12_plot, stunt_6_meas_12_plot, stunt_9_meas_12_plot, stunt_12_meas_12_plot,
                    stunt_3_meas_15_plot, stunt_6_meas_15_plot, stunt_9_meas_15_plot, stunt_12_meas_15_plot,
                    nrow = 5, ncol = 4)
Fig_4B <- annotate_figure(Fig_4B, 
                          bottom = text_grob("Length-for-age Z-score", size = 15, vjust = 0.5),
                          left = text_grob("Measurement age, months", size = 15, rot = 90, vjust = 1.5))

# define standardized plot names
rec_histogram_plot_name = create_name(
  outcome = "LAZ",
  cutoff = 2,
  measure = "distribution after laz >= -2",
  population = "overall",
  location = "",
  age = "All ages",
  analysis = "primary"
)

# save plot
ggsave(Fig_4B, file=paste0(fig_dir, "stunting/fig-",rec_histogram_plot_name,"-pheno",
       ".png"), width=9, height=7)

saveRDS(plot_data_sub, file=paste0(figdata_dir_stunting, "figdata-",rec_histogram_plot_name,"-pheno",".RDS"))

