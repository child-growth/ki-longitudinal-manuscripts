rm(list=ls())

library(dplyr)
library(tictoc)

library(sf)
library(ncdf4)
library(raster)
library(climateR)

#library(rgee)
#library(geojsonio)
#install.packages("rgee")
#rgee::ee_install()
#install.packages("geojsonio")
# install.packages(remotes)
# remotes::install_github("mikejohnson51/climateR")


ki_cohort_filepath = "~/data/KI/UCB-SuperLearner/Manuscript analysis data/ki_cohort_gps_data.rds"
ki_cohorts = readRDS(ki_cohort_filepath)
cohort_ids = unique(ki_cohorts$studyid)

process_cohort_ppts = function(cohort_id){
  tic()
  print(cohort_id)
  cohort_lls = ki_cohorts %>% 
    filter(studyid == cohort_id) %>% 
    dplyr::select(longitud, latitude) %>% distinct()
  
  find_ppt_means = function(cohort_ll){
    ki_cohort_filtered = ki_cohorts %>% filter(studyid == cohort_id,
                                               longitud == cohort_ll[["longitud"]],
                                               latitude == cohort_ll[["latitude"]]) 

    cohort_dates = ki_cohort_filtered %>% 
      dplyr::select(month, year) %>% 
      distinct() %>% 
      mutate(month_str = ifelse(month<10, paste0(0, month), month),
             month_after = ifelse(month<9, paste0(0, month+1), month+1), 
             month_after = ifelse(month == 12, "01", month_after),
             start_date = as.Date(paste0(year, "-", month_str, "-", "01")), 
             end_date = as.Date(paste0(year, "-", month_after, "-", "01")) - 1) %>% 
      dplyr::select(month, year, start_date, end_date)
      
    cohort_ll_df = data.frame(longitud = cohort_ll[["longitud"]], 
                              latitude = cohort_ll[["latitude"]])

    dat_sf = st_as_sf(cohort_ll_df, coords = c("longitud", "latitude"), crs = 4326) %>% 
      st_transform(3035)
    
    # Buffer circles by 100m
    dat_circles <- st_buffer(dat_sf, dist = 1000)
    
    find_ppt_values = function(cohort_dates){
      ppt = getTerraClim(dat_circles, 
                         "prcp", 
                         startDate = cohort_dates[["start_date"]], 
                         endDate = cohort_dates[["start_date"]])
      ppt_mean = mean(getValues(ppt$prcp))
      return(ppt_mean)
    }
    
    cohort_ppts = apply(cohort_dates, 1, find_ppt_values) %>% cbind()
    colnames(cohort_ppts) = "avg_ppt"
    ppt_values = cohort_dates %>% dplyr::select(month, year) %>% bind_cols(cohort_ppts)
    return(data.frame(long = rep(cohort_ll[["longitud"]], nrow(ppt_values)), 
                      lat = rep(cohort_ll[["latitude"]], nrow(ppt_values))) %>% 
             bind_cols(ppt_values))
  }
  ll_ppt_values = apply(cohort_lls, 1, find_ppt_means) %>% bind_rows() %>% mutate(studyid = cohort_id)
  toc()
  return(ll_ppt_values)
}

monthy_ppt_values = lapply(cohort_ids, process_cohort_ppts) %>% bind_rows()
colnames(monthy_ppt_values) = c("long", "lat", "month", "year", "avg_ppt", "studyid")

saveRDS(monthy_ppt_values, "~/data/KI/UCB-SuperLearner/Manuscript analysis data/monthy_ppt_values.RDS")

# Start of GEE code, but didn't have the permisssions to install some of the dependencies on bluevelvet
# ee_Initialize()
# 
# terraclimate <- ee$ImageCollection("IDAHO_EPSCOR/TERRACLIMATE") %>% 
#   ee$ImageCollection$filterDate("2001-01-01", "2002-01-01") %>% 
#   ee$ImageCollection$map(function(x) x$select("pr")) %>% # Select only precipitation bands
#   ee$ImageCollection$toBands() %>% # from imagecollection to image
#   ee$Image$rename(sprintf("%02d",1:12)) # rename the bands of an image
# 
# ee_nc_rain <- ee_extract(x = terraclimate, y = dat_circles)
