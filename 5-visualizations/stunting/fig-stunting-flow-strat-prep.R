##########################################
# ki longitudinal manuscripts
# stunting analysis

# prepare non random effects pooled data 
# to plot as a stacked bar chart showing 
# proportion of children who were newly stunted, 
# still stunted, relapsed, recovered, never stunted

# inputs: 
# stuntflow.RDS

# outputs: 
# stunt-flow-data-pooled.RDS"
# stunt-flow-data-region.RDS"
##########################################
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

# load data
stunt_data = readRDS(paste0(res_dir, "stuntflow.RDS"))

# number of studies, countries, children included
length(names(table(stunt_data$studyid)))
length(names(table(stunt_data$country)))
x=stunt_data %>% group_by(studyid) %>% summarise(n = length(unique(subjid)))
sum(x$n)

#-----------------------------------------
# format data for plot
#-----------------------------------------
format_plot_data = function(data, group_vars = NULL){
  
  data = data %>% ungroup()
  
  if(!is.null(group_vars)){
    group_vars_sym <- syms(group_vars)
    data_fn = data %>%
      group_by(!!!(group_vars_sym)) 
  }else{
    data_fn = data 
  }
  data_fn = data_fn %>%
    # drop measurements beyond 15 months since
    # data is sparse
    filter(agem <= 15) %>%
    
    mutate(
      classif = case_when(
        never_stunted == 1 ~ "Never stunted",
        recover == 1 ~ "Stunting reversed",
        not_stunted == 1 ~ "No longer stunted",
        still_stunted == 1 ~ "Still stunted",
        newly_stunted == 1 ~ "Newly stunted",
        relapse == 1 ~ "Stunting relapse"
        
      )
    ) %>%
    mutate(classif = factor(
      classif,
      levels = c(      "Never stunted",
                       "No longer stunted",
                       "Stunting reversed",
                       "Newly stunted",
                       "Stunting relapse",
                       "Still stunted")
    ))
  
  if(!is.null(group_vars)){
    data_fn = data_fn %>% 
      select(!!!(group_vars_sym), subjid, agem, classif) %>%
      mutate(freq = 1) 
  }else{
    data_fn = data_fn %>% 
      select(subjid, agem, classif) %>%
      mutate(freq = 1) 
  }
  
  # obtain %s within each stratum and month 
  if(!is.null(group_vars)){
    age_classif_totals = data_fn %>%
      group_by(!!!(group_vars_sym), agem, classif) %>%
      summarise(n = sum(freq))
    
    age_totals = data_fn %>%
      group_by(!!!(group_vars_sym),agem) %>%
      summarise(tot = sum(freq))
    
    plot_data = full_join(age_classif_totals, age_totals,
                          by = c(group_vars, "agem"))
    
  }

  if(is.null(group_vars)){
    age_classif_totals = data_fn %>%
      group_by( agem, classif) %>%
      summarise(n = sum(freq))
    
    age_totals = data_fn %>%
      group_by(agem) %>%
      summarise(tot = sum(freq))
    
    plot_data = full_join(age_classif_totals, age_totals, by = c("agem"))
    
  }
  
  
  # calculate % within each month
  plot_data = plot_data %>% 
    mutate(percent = n/tot * 100) %>%
    ungroup() %>%
    mutate(agem= as.factor(agem))
  
  # fix region
  if("region" %in% colnames(plot_data)){
    plot_data = plot_data %>%
      mutate(region = factor(region, levels = c("Africa",
                                                "Latin America", "South Asia")))
  }
  
  return(plot_data)
  
}

plot_overall = format_plot_data(stunt_data)
plot_region = format_plot_data(stunt_data, group_vars = "region")

plot_overall = plot_overall %>%
  mutate(region = "Overall")

plot_region = bind_rows(plot_region, plot_overall)

plot_region = plot_region %>%
  mutate(region = factor(region, levels = c("Overall", "Africa",
                                            "Latin America", "South Asia")))

# summarise n within region 
plot_region %>% 
  group_by(region) %>%
  summarise(min = min(n),
            max = max(n))

saveRDS(plot_overall, file = paste0(res_dir, "stunt-flow-data-pooled.RDS"))
saveRDS(plot_region, file = paste0(res_dir, "stunt-flow-data-region.RDS"))










