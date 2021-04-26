rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

library(tictoc)
library(sf)
library(ncdf4)
library(raster)
#remotes::install_github("mikejohnson51/AOI") #to get climateR
#remotes::install_github("mikejohnson51/climateR")
library(AOI)
library(climateR)

#library(rgee)
#library(geojsonio)
#install.packages("rgee")
#rgee::ee_install()
#install.packages("geojsonio")
# install.packages(remotes)
# remotes::install_github("mikejohnson51/climateR")


ki_cohort_filepath = "/data/KI/UCB-SuperLearner/Manuscript analysis data/ki_cohort_gps_data.rds"
ki_cohorts = readRDS(ki_cohort_filepath)

assert_that(all(monthly_cohorts %in% unique(ki_cohorts$studyid)))

# #check locations:
# gps_loc <- ki_cohorts %>% distinct(studyid, latitude, longitud) %>%
#   rename(lat=latitude, long=longitud)
# 
# world <- map_data('world')
#   map_plot <- ggplot(world, aes(long, lat)) +
#   geom_map(map=world, aes(map_id=region), fill=NA, color="grey20") +
#   coord_quickmap() + theme_bw() + 
#   geom_point(data=gps_loc, aes(x = long, y = lat), size=1) 
# map_plot


ki_cohorts$studyid <- paste0(ki_cohorts$studyid, ": ", ki_cohorts$country)
cohort_ids = unique(ki_cohorts$studyid)

process_cohort_ppts = function(cohort_id, data_radius=1000){
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
    
    # Buffer circles by 10k
    dat_circles <- st_buffer(dat_sf, dist = data_radius)
    
    find_ppt_values = function(cohort_dates){
      ppt = getTerraClim(dat_circles, 
                         "prcp", 
                         startDate = cohort_dates[["start_date"]], 
                         endDate = cohort_dates[["start_date"]])
      ppt_mean = mean(getValues(ppt$prcp), na.rm=T)
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

# monthy_ppt_values = lapply(cohort_ids, process_cohort_ppts) %>% bind_rows()
# colnames(monthy_ppt_values) = c("long", "lat", "month", "year", "avg_ppt", "studyid")
# 
# monthy_ppt_values$country <- str_split_fixed(monthy_ppt_values$studyid, ": ", 2)[,2]
# monthy_ppt_values$studyid <- str_split_fixed(monthy_ppt_values$studyid, ": ", 2)[,1]
# 
# saveRDS(monthy_ppt_values, "~/data/KI/UCB-SuperLearner/Manuscript analysis data/monthy_ppt_values_1k.RDS")

# #10km radius
# monthy_ppt_values_10km = lapply(cohort_ids, process_cohort_ppts, 10000) %>% bind_rows()
# colnames(monthy_ppt_values_10km) = c("long", "lat", "month", "year", "avg_ppt", "studyid")
# monthy_ppt_values_10km$country <- str_split_fixed(monthy_ppt_values_10km$studyid, ": ", 2)[,2]
# monthy_ppt_values_10km$studyid <- str_split_fixed(monthy_ppt_values_10km$studyid, ": ", 2)[,1]
# 
# saveRDS(monthy_ppt_values_10km, "~/data/KI/UCB-SuperLearner/Manuscript analysis data/monthy_ppt_values_10k.RDS")

#50km radius
monthy_ppt_values_50km = lapply(cohort_ids, process_cohort_ppts, 50000) %>% bind_rows()
colnames(monthy_ppt_values_50km) = c("long", "lat", "month", "year", "avg_ppt", "studyid")
monthy_ppt_values_50km$country <- str_split_fixed(monthy_ppt_values_50km$studyid, ": ", 2)[,2]
monthy_ppt_values_50km$studyid <- str_split_fixed(monthy_ppt_values_50km$studyid, ": ", 2)[,1]

saveRDS(monthy_ppt_values_50km, "~/data/KI/UCB-SuperLearner/Manuscript analysis data/monthy_ppt_values_50k.RDS")

