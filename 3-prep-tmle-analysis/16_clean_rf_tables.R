library(dplyr)

rf_table = read.csv(here("results/rf_table.csv"))

N_total = rf_table %>% filter(Level == "Total") %>% select(Variable, N)

rf_exposures = rf_table %>% filter(Level != "Total")
vars = unique(rf_table$Variable)

exposure_level_strs = c()

for (var in vars){
  filtered_table = rf_exposures %>% filter(Variable == var)
  
  exposure_levels = c()
  for (i in 1:nrow(filtered_table)) {
    level_row = filtered_table[i, ]
    level_string = paste0(level_row[["Level"]], ": ", 
                             level_row["N"], 
                             " (", level_row["Proportion"], "%)")
    exposure_levels = c(exposure_levels, level_string)
  }
  exposure_level_strs = c(exposure_level_strs, paste(exposure_levels, collapse = "\n"))
}

exposure_level_tbl = data.frame(vars, exposure_level_strs)
colnames(exposure_level_tbl) = c("Variable", "Level")

rf_merged = merge(N_total, exposure_level_tbl, by="Variable")

clean_rf = rf_merged[match(vars, rf_merged$Variable),]

full_names = list("sex" = "Sex",
                  "enwast" = "Enrolled wasted",
                  "enstunt" = "Enrolled stunted",
                  "gagebrth" = "Gestational age at birth",
                  "predexfd6" = "Excl/Pred breastfed <6mo.",
                  "mage" = "Mother's age",
                  "mhtcm" = "Mother's height",
                  "mwtkg" = "Mother's weight",
                  "mbmi" = "Mother's BMI", 
                  "meducyrs" = "Mother's education", 
                  "feducyrs" = "Father's education", 
                  "parity" = "Birth order", 
                  "hfoodsec" = "HH food security", 
                  "nchldlt5" =  "# of children <5 in HH",
                  "hhwealth_quart" = "HH wealth", 
                  "fage" = "Father's age", 
                  "fhtcm" = "Father's height", 
                  "birthwt" = "Birthweight (kg)", 
                  "birthlen" = "Birth length (cm)", 
                  "vagbrth" = "Vaginal birth", 
                  "hdlvry" = "Child delivered at home", 
                  "single" = "Single parent" ,
                  "nrooms" = "# of rooms in HH", 
                  "nhh" = "# of people in HH", 
                  "anywast06" = "Any wasting  <6 mo.", 
                  "pers_wast" = "Persistent wasting  <6 mo.", 
                  "trth2o" = "Treats drinking water" ,
                  "cleanck" = "Clean cooking fuel usage", 
                  "impfloor" = "Improved floor", 
                  "impsan" = "Improved sanitation", 
                  "safeh20" = "Safe water source", 
                  "perdiar6" = "Diarrhea <6 mo. (% days)", 
                  "perdiar24" = "Diarrhea <24 mo.  (% days", 
                  "earlybf" = "Breastfed hour after birth", 
                  "predfeed3" = "Predominant breastfeeding under 3 mo.",
                  "predfeed36" = "Predominant breastfeeding from 3-6 mo.",
                  "predfeed6" = "Predominant breastfeeding under 6 mo.",
                  "exclfeed3" = "Exclusive breastfeeding under 3 mo.",
                  "exclfeed36" = "Exclusive breastfeeding from 3-6 mo.",
                  "exclfeed6" = "Exclusive breastfeeding under 6 mo.",
                  "month" = "Month of measurement",
                  "brthmon" = "Birth month",
                  "lag_WHZ_quart" = "Lag WLZ",
                  "rain_quartile" = "Rain quartile")

clean_rf = clean_rf %>% mutate(Variable = as.character(full_names[as.character(Variable)]))
     
write.csv(clean_rf, file = here("results/rf_table_clean.csv"))
