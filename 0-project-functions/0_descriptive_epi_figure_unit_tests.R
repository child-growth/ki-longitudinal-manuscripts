library(assertthat)

####################################################
# test_desc_epi_figure
#
# Usage: check that figure data passes basic checkpoints using assertion statements
#
# Inputs:
#   - data: figure data that is passed through ggplot object
#   - binary_outcome: boolean value (TRUE if figure describes a binary_outcome, else FALSE)
#   - expected_cohorts: a vector containing cohorts expected to be displayed in figure
#   - expected_regions: a vector containing regions expected to be displayed in figure
#   - expected_ages: a vector containing ages expected to be displayed in figure
#   - expected_analysis_method: a string describing expected analysis method ("REML" or "FE")
#
# Outputs:
#   - TRUE, if all assertion statements pass 
####################################################

data = df_primary

test_desc_epi_figure = function(data, 
                                binary_outcome = FALSE,
                                expected_analysis_method = "REML",
                                expected_cohorts = c(), 
                                expected_regions = c("Africa", "Latin America", "Overall", "South Asia"), 
                                expected_ages = c(0.5, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 
                                                  11.0, 12.0, 13.0, 14.0, 15.0, 16.0, 17.0, 18.0, 19.0, 20.0, 
                                                  21.0, 22.0, 23.0, 24.0)){
  
  # Check that the values for est, lb, ub, nstudy.f, agecat, region, and disease are not null
  assert_that(sum(is.na(data$est)) == 0, msg = "Data contains null estimate values") 
  assert_that(sum(is.na(data$lb)) == 0, msg = "Data contains null lower bound values") 
  assert_that(sum(is.na(data$ub)) == 0, msg = "Data contains null upper bound values") 
  assert_that(sum(is.na(data$nstudy.f)) == 0, msg = "Data contains null study count values") 
  assert_that(sum(is.na(data$agecat)) == 0, msg = "Data contains null age category values") 
  assert_that(sum(is.na(data$region)) == 0, msg = "Data contains null region values") 
  assert_that(sum(is.na(data$disease)) == 0, msg = "Data contains null outcome indicator values")
  
  # If figure describes a binary outcome, check that CIs don't drop under 0
  if (binary_outcome) {
    assert_that(min(data$lb) >= 0, msg = "CIs span below 0 for a binary outcome")
  }
  
  # Check that data only contains the expected analysis method
  assert_that(length(unique(data$method.used)) == 1, msg = "Data contains more than one analysis method")
  assert_that(unique(data$method.used) == expected_analysis_method, msg = "Data does not contain the expected analysis method")
  
  # Check that data contains all expected regions
  missing_regions = c()
  
  for (region in expected_regions) {
    if (!(region %in% data$region)) {
      missing_regions = append(missing_regions, region)
    }
  }
  
  assert_that(length(missing_regions) == 0, msg = paste0("The following regions are missing from the data: ",
                                                          paste(sort(missing_regions), collapse = ", ")))
  
  # Check that data contains all expected age categories
  missing_agecats = c()
  
  for (agecat in expected_ages) {
    if (!(agecat %in% data$agecat)) {
      missing_agecats = append(missing_agecats, agecat)
    }
  }
  
  assert_that(length(missing_agecats) == 0, msg = paste0("The following regions are missing from the data: ",
                                                         paste(sort(missing_agecats), collapse = ", ")))
  
  return (TRUE)
}