rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

loadRData <- function(fileName){
  #loads an RData file, and returns it
  load(fileName)
  get(ls()[ls() != "fileName"])
}

check_data_frame = function(data){
  print("Dimensions:")
  print(dim(data))
  print("--------------------------------------")

  print(paste0("Class of Data: ", class(data)))
  print("--------------------------------------")
  
  for (column in colnames(data)){
    print(paste0("Column: ", column))

    print(paste0("Class: ", class(data[[column]])))

    print("Summary:")
    print(summary(data[[column]]))
    print("--------------------------------------")
    
  }
}

dir = "U://ucb-superlearner/Manuscript analysis data/"
files = list.files(path=dir, pattern='*', full.names = FALSE)
files = files[!files %in% c("cleaned individual study rds datasets",
                            "covariate creation intermediate datasets",
                            "raw SAS datasets",
                            "cleaned individual study rds datasets - Old",
                            "raw SAS datasets - Old")]




for (file_path in files){
  sink(paste0("1-data-cleaning/QA checks/dataset-checks/", tools::file_path_sans_ext(file_path), '-check.txt'))
  
  print(paste0("File Name: ", file_path))
  
  if (grepl(".rdata", tolower(file_path))){
    data = loadRData(paste0(dir, file_path))
    if (class(data) == "list"){
      for (list in data){
        print(paste0("List Name: ", names(list)))
        check_data_frame(list)
      }
    } else{
      check_data_frame(data)
    }
  } 
  if (grepl(".rds", tolower(file_path))){
    data = readRDS(paste0(dir, file_path))
    check_data_frame(data)
  }

  sink()
}
