# get date range for stunting paper

d <- readRDS(paste0(ghapdata_dir, "ki-manuscript-dataset.rds")) # no date
d <- readRDS(included_studies_path)
stunt <- readRDS(paste0(ghapdata_dir, "stunting_data.rds"))

stunt_studies <- unique(stunt$studyid)
