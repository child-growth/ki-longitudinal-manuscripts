##########################################
# ki longitudinal manuscripts
#
# define unit test functions 
##########################################
# # , age, disease, severe, birth, measure
# filter_data = function(data, data_name, region_name, age_list, disease_name){
#   data = data %>% filter(
#     region == region_name &
#     agecat %in% age_list &
#     disease == disease_name &
#     severe == severe 
#       
#   )
#   
#   data_name = paste0(data_name, "-", region_name)
#   return(list(data = data, data_name = data_name))
# }
# 
# x=filter_data(data = d,
#             data_name = "Desc",
#             region_name = "Overall",
#             age_list = c("Birth", "3 months"))

##############################################
# check_cohorts
##############################################
# Usage: check_cohorts(data, data_name)
# Description: Take an input dataframe with each row summarizing the N's and cases from a single
#             cohort and then calculated the parameter of interest specified by measure, pooled
#             across all cohorts
#
# Args/Options:
# data:        A data frame containing results with a column called cohort_names 
#              that contains 
# cohort_list: Vector of cohort names as strings

check_cohorts = function(data, check_column, values_list){
  # get list of unique cohort names in dataset
  # included_cohort = unique(unlist(strsplit(as.character(df$cohort_names), split = ",")))
  column = data[, colnames(data) %in% check_column]
  observed_column_values = unique(unlist(strsplit(as.character(column), split = ",")))
  
  extra_values = observed_column_values[!observed_column_values %in% values_list]
  missing_values = values_list[!values_list %in% observed_column_values]
  
  # 
  if(length(extra_values)==0 & length(missing_values)>0){
    assert_that(setequal(observed_column_values, values_list),
                msg = paste0("The following values are not present in the data: ", missing_values,                    collapse=", "))
  }
  if(length(extra_values)>0 & length(missing_values)>0){
    assert_that(setequal(observed_column_values, values_list),
              msg = paste0("The following values are not present in the data: ", missing_values,   
                           ". The following values are present in the data but absent in values_list:                           ", extra_values, collapse=", "))
  }
  if(length(extra_values)>0 & length(missing_values)==0){
    assert_that(setequal(observed_column_values, values_list),
                msg = paste0("The following values are present in the data but absent in values_list:                           ", extra_values, collapse=", "))
  }
}


##############################################
# check_country
##############################################

##############################################
# check_pooling_method
##############################################

##############################################
# check_number_studies
##############################################

##############################################
# check_duplicates
##############################################

##############################################
# check_zscore_outliers
##############################################

##############################################
# check_age_range
##############################################

##############################################
# check_variables
##############################################


