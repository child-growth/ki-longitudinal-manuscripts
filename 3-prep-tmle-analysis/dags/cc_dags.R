
library(dagitty)
library(ggdag)
library(ggplot2)
library(dplyr)


generate_dag = function(structural_equation_list){
  find_paths = function(node, bidirectional = FALSE){
    # Convert lists to strings that describe causal paths
    if (bidirectional) {
      arrow_type = " <-> "
      str_eqs = bidirectional_equations
    } else {
      arrow_type = " -> "
      str_eqs = unidirectional_equations
    }
    
    parents = paste0("{", paste(unlist(str_eqs[node]), collapse = " "), "}")
    
    return(paste(parents, arrow_type, node))
  }
  
  # Process unidirectional paths
  unidirectional_equations = structural_equation_list$unidirectional 
  unidirectional_paths = unlist(lapply(names(unidirectional_equations), find_paths))
  unidirectional_paths = paste(unidirectional_paths, collapse = "; ")
  
  # Process bidirectional paths  
  bidirectional_equations = structural_equation_list$bidirectional
  bidirectional_paths = unlist(lapply(names(bidirectional_equations), 
                                      function(x) find_paths(x, bidirectional = TRUE)))
  bidirectional_paths = paste(bidirectional_paths, collapse = "; ")
  
  # Concatenate unidirectional and bidirectional paths 
  all_paths = paste0(unidirectional_paths, "; ", bidirectional_paths)
  
  # Convert strings of paths into DAG
  dag_output = dagitty(paste0("dag{", all_paths, "}")) %>% 
    tidy_dagitty() %>% 
    dag_label(labels = structural_equation_list$labels)
  
  return(dag_output)
}






structural_equations = list(
  unidirectional = list(
    "x" = c("z2"),
    "y" = c("x", "z1", "z2"),
    "z2" = c("z1")
  ),
  bidirectional = list(
    "x" = c("z1")
  ), 
  labels = c("x" = "Sanitation Intervention",
             "y" = "Child Length", 
             "z1" = "Household Income",
             "z2" = "Latrine Access")
)

dag = generate_dag(structural_equations)
dag



structural_equations = list(
  unidirectional = list(
    "W_mwtkg" = c("arm",
                    "sex",
                    "W_mage",
                    "W_fage",
                    "meducyrs",
                    "feducyrs",
                    "hhwealth_quart", 
                    "hfoodsec",
                    "W_fhtcm",
                    "vagbrth",
                    "hdlvry",
                    "single",
                    "W_nrooms",
                    "W_nhh",
                    "W_nchldlt5",
                    "month",
                    "brthmon",
                    "W_parity",
                    "cleanck",
                    "impfloor",
                    "impsan",
                    "safeh20"),
    "wast" = c("arm",
               "sex",
               "W_mage",
               "W_fage",
               "meducyrs",
               "feducyrs",
               "hhwealth_quart", 
               "hfoodsec",
               "W_mhtcm",
               "W_mwtkg",
               "W_bmi" ,
               "W_fhtcm",
               "vagbrth",
               "hdlvry",
               "W_gagebrth",
               "W_birthwt",
               "W_birthlen",
               "single",
               "W_nrooms",
               "W_nhh",
               "W_nchldlt5",
               "month",
               "brthmon",
               "W_parity",
               "cleanck",
               "impfloor",
               "impsan",
               "safeh20",
               "predexfd6"),
    "W_mhtcm" =c("W_mwtkg"),
    "W_bmi" =c("W_mwtkg"),
    "W_gagebrth" =c("W_mwtkg"),
    "W_birthwt" =c("W_mwtkg"),
    "W_birthlen" =c("W_mwtkg"),
    "predexfd6" =c("W_mwtkg")
    ),
  labels = c("arm"="Intervention",
             "sex"="Sex", 
             "W_mage"="Mom age", 
             "W_fage"="Dad age", 
             "meducyrs"="Mom education", 
             "feducyrs"="Dad education", 
             "hhwealth_quart"="HH wealth", 
             "hfoodsec"="HH food security",
             "W_mhtcm"="Mom height",
             "W_mwtkg"="Mom weight",
             "W_bmi"="Mom BMI", 
             "W_fhtcm"="Dad height",
             "vagbrth"="Vaginal birth",
             "hdlvry"="Home delivery",
             "W_gagebrth"="Gestational age",
             "W_birthwt"="Birthweight",
             "W_birthlen"="Birthlength",
             "single"="Single parent",
             "W_nrooms"="Number of rooms in HH",
             "W_nhh"="Number of people in HH",
             "W_nchldlt5"="Number of children under 5 in HH",
             "month"="Month of measurement",
             "brthmon"="Birth month",
             "W_parity"="Birth order",
             "cleanck"="Cooking fuel",
             "impfloor"="Floor",
             "impsan"="Sanitation access",
             "safeh20"="Water source",
             "wast"="Child growth failure")
)

dag = generate_dag(structural_equations)
dag


### Plot parents of exposure
ggdag_parents(dag, "W_mwtkg", 
              use_labels = "label",
              text = FALSE) + 
  theme_dag_blank() 



# ### Plot minimally sufficient adjustment set
# ggdag_adjustment_set(dag, 
#                      exposure = "W_mwtkg", 
#                      outcome = "wast", 
#                      type = "minimal", # could also be "all" or "canonical"
#                      effect = "total") + # could also be "direct" 
#   theme_dag_blank() 


#------------------------------------------------------------
#Simplified DAG
#------------------------------------------------------------

structural_equations = list(
  unidirectional = list(
    "W_mwtkg" = c("arm",
                  "sex",
                  "W_mage",
                  "meducyrs",
                  "hhwealth_quart", 
                  "hfoodsec",
                  "W_nrooms"),
    "wast" = c("arm",
               "sex",
               "W_mage",
               "meducyrs",
               "hhwealth_quart", 
               "hfoodsec",
               "W_mhtcm",
               "W_gagebrth",
               "W_birthwt",
               "W_nrooms",
               "predexfd6"),
    "W_mhtcm" =c("W_mwtkg"),
    "W_gagebrth" =c("W_mwtkg"),
    "W_birthwt" =c("W_mwtkg"),
    "predexfd6" =c("W_mwtkg")
  ),
  labels = c("arm"="Intervention",
             "sex"="Sex", 
             "W_mage"="Parental age", 
             "meducyrs"="Parental education", 
             "hhwealth_quart"="HH wealth", 
             "hfoodsec"="HH food security",
             "W_mhtcm"="Parental anthropometry",
             "W_birthwt"="Birth size",
             "predexfd6"="Breastfeeding practice",
             "W_gagebrth"="Birth characteristics",
             "single"="Single parent",
             "W_nrooms"="Household size and WASH characteristics",
             "wast"="Child growth failure")
)

dag = generate_dag(structural_equations)



### Plot parents of exposure
ggdag_parents(dag, "W_mwtkg", 
              use_labels = "label",
              text = FALSE) + 
  theme_dag_blank() 





















# bf_covariates = c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#                   "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#                   "vagbrth","hdlvry",
#                   "W_gagebrth","W_birthwt","W_birthlen",
#                   "single",
#                   "W_nrooms","W_nhh","W_nchldlt5",
#                   "month","brthmon","W_parity",
#                   "trth2o","cleanck","impfloor","impsan","safeh20")
# 
# 
# adjustment_sets <- list( 
#   
#   gagebrth=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#              #"W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#              "single",
#              "W_nrooms","W_nhh","W_nchldlt5",
#              "brthmon","W_parity",
#              "trth2o","cleanck","impfloor","impsan","safeh20"),         
#   
#   birthwt=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#             #"W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#             "vagbrth","hdlvry",
#             "single",
#             "W_nrooms","W_nhh","W_nchldlt5",
#             "brthmon","W_parity",
#             "trth2o","cleanck","impfloor","impsan","safeh20"),   
#   
#   birthlen=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#              #"W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#              "vagbrth","hdlvry",
#              "single",
#              "W_nrooms","W_nhh","W_nchldlt5",
#              "brthmon","W_parity",
#              "trth2o","cleanck","impfloor","impsan","safeh20"),   
#   
#   enstunt=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#             #"W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#             "vagbrth","hdlvry",
#             "single",
#             "W_nrooms","W_nhh","W_nchldlt5",
#             "brthmon","W_parity",
#             "trth2o","cleanck","impfloor","impsan","safeh20"),     
#   
#   enwast=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#            #"W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#            "vagbrth","hdlvry",
#            "single",
#            "W_nrooms","W_nhh","W_nchldlt5",
#            "brthmon","W_parity",
#            "trth2o","cleanck","impfloor","impsan","safeh20"),  
#   
#   vagbrth=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#             "hdlvry",
#             "single",
#             "W_nrooms","W_nhh","W_nchldlt5",
#             "brthmon","W_parity",
#             "trth2o","cleanck","impfloor","impsan","safeh20"),     
#   
#   hdlvry=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#            "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#            "single",
#            "W_nrooms","W_nhh","W_nchldlt5",
#            "brthmon","W_parity",
#            "trth2o","cleanck","impfloor","impsan","safeh20"),      
#   
#   mage=c("arm","W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#          "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#          "single",
#          "W_nrooms","W_nhh","W_nchldlt5",
#          "trth2o","cleanck","impfloor","impsan","safeh20"),   
#   
#   fage=c("arm","W_mage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#          "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#          "single",
#          "W_nrooms","W_nhh","W_nchldlt5",
#          "brthmon",
#          "trth2o","cleanck","impfloor","impsan","safeh20"),     
#   
#   mhtcm=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#           "W_fhtcm",
#           "single",
#           "W_nrooms",
#           "trth2o","cleanck","impfloor","impsan","safeh20"),    
#   
#   mwtkg=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#           "W_fhtcm",
#           "single",
#           "W_nrooms","W_nhh","W_nchldlt5",
#           "brthmon","W_parity",
#           "trth2o","cleanck","impfloor","impsan","safeh20"),
#   
#   mbmi=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#          "W_fhtcm",
#          "single",
#          "W_nrooms","W_nhh","W_nchldlt5",
#          "brthmon","W_parity",
#          "trth2o","cleanck","impfloor","impsan","safeh20"),      
#   
#   single=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#            "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#            "W_nrooms","W_nhh","W_nchldlt5",
#            "trth2o","cleanck","impfloor","impsan","safeh20"),    
#   
#   fhtcm=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#           "W_mhtcm","W_mwtkg","W_bmi",
#           "single",
#           "W_nrooms",
#           "trth2o","cleanck","impfloor","impsan","safeh20"),     
#   
#   nrooms=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#            "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#            "single",
#            "W_nhh","W_nchldlt5",
#            "W_parity",
#            "trth2o","cleanck","impfloor","impsan","safeh20"),    
#   
#   nhh=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#         "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#         "single",
#         "W_nrooms",
#         "W_parity",
#         "trth2o","cleanck","impfloor","impsan","safeh20"),    
#   
#   nchldlt5=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#              "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#              "single",
#              "W_nrooms",
#              "W_parity",
#              "trth2o","cleanck","impfloor","impsan","safeh20"),
#   
#   hhwealth_quart=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", 
#                    "W_gagebrth","W_birthwt","W_birthlen",
#                    "single","W_nhh","W_nchldlt5",
#                    "W_parity"), 
#   
#   parity=c("arm","W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#            "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#            "vagbrth","hdlvry",
#            "single",
#            "W_nrooms",
#            "trth2o","cleanck","impfloor","impsan","safeh20"),   
#   
#   meducyrs=c("arm", "W_mage", "W_fage", "feducyrs", "hhwealth_quart",
#              "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#              "W_gagebrth","W_birthwt","W_birthlen",
#              "single",
#              "W_nrooms","W_nhh","W_nchldlt5",
#              "trth2o","cleanck","impfloor","impsan","safeh20"),
#   
#   feducyrs=c("arm", "W_mage", "W_fage", "meducyrs",  "hhwealth_quart", 
#              "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#              "W_gagebrth","W_birthwt","W_birthlen",
#              "single",
#              "W_nrooms","W_nhh","W_nchldlt5",
#              "trth2o","cleanck","impfloor","impsan","safeh20"), 
#   
#   hfoodsec=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart",
#              "vagbrth","hdlvry",
#              "single",
#              "W_nrooms","W_nhh","W_nchldlt5",
#              "brthmon","W_parity",
#              "trth2o","cleanck","impfloor","impsan","safeh20"),
#   
#   anywast06=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#               #"W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#               "vagbrth","hdlvry",
#               "single",
#               "W_nrooms","W_nhh","W_nchldlt5",
#               "month","brthmon","W_parity",
#               "trth2o","cleanck","impfloor","impsan","safeh20"),
#   
#   pers_wast=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#               #"W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#               "vagbrth","hdlvry",
#               "single",
#               "W_nrooms","W_nhh","W_nchldlt5",
#               "month","brthmon","W_parity",
#               "trth2o","cleanck","impfloor","impsan","safeh20"),
#   
#   trth2o=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#            "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#            "single",
#            "W_nrooms","W_nhh","W_nchldlt5",
#            "brthmon","W_parity",
#            "cleanck","impfloor","impsan","safeh20"), 
#   
#   cleanck=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#             "single",
#             "W_nrooms","W_nhh","W_nchldlt5",
#             "W_parity",
#             "trth2o","impfloor","impsan","safeh20"), 
#   
#   impfloor=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#              "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#              "single",
#              "W_nrooms","W_nhh","W_nchldlt5",
#              "W_parity",
#              "trth2o","cleanck","impsan","safeh20"),  
#   
#   impsan=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#            "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#            "single",
#            "W_nrooms","W_nhh","W_nchldlt5",
#            "W_parity",
#            "trth2o","cleanck","impfloor","safeh20"), 
#   
#   safeh20=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#             "single",
#             "W_nrooms","W_nhh","W_nchldlt5",
#             "W_parity",
#             "trth2o","cleanck","impfloor","impsan"),
#   
#   perdiar6=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#              "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#              "vagbrth","hdlvry",
#              "W_gagebrth","W_birthwt","W_birthlen",
#              "single",
#              "W_nrooms","W_nhh","W_nchldlt5",
#              "month","brthmon","W_parity",
#              "trth2o","cleanck","impfloor","impsan","safeh20"), 
#   
#   perdiar24=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#               "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#               "vagbrth","hdlvry",
#               "W_gagebrth","W_birthwt","W_birthlen",
#               "single",
#               "W_nrooms","W_nhh","W_nchldlt5",
#               "month","brthmon","W_parity",
#               "trth2o","cleanck","impfloor","impsan","safeh20"), 
#   
#   predfeed3=bf_covariates,
#   predfeed6=bf_covariates,
#   predfeed36=bf_covariates,
#   exclfeed3=bf_covariates,
#   exclfeed6=bf_covariates, 
#   exclfeed36=bf_covariates,
#   predexfd6=bf_covariates,
#   
#   earlybf=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
#             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
#             "vagbrth","hdlvry",
#             "W_gagebrth","W_birthwt","W_birthlen",
#             "single",
#             "W_nrooms","W_nhh","W_nchldlt5",
#             "brthmon","W_parity",
#             "trth2o","cleanck","impfloor","impsan","safeh20")
# )
# save(adjustment_sets, file=here("/results/adjustment_sets_list.Rdata"))