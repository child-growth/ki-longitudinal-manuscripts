
rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

library(dagitty)
library(ggdag)


generate_dag = function(structural_equation_list, intervention, outcome){
  all_var = names(structural_equation_list$labels)
  parents = structural_equation_list$unidirectional[[intervention]]
  mediators = all_var[!all_var %in% c(intervention, outcome, parents)]
  
  figure_height = length(mediators) * 1.5
  figure_width = length(parents) 
  
  x = c(-figure_width/2, figure_width/2)
  names(x) = c(intervention, outcome)
  y = c(0, 0)
  names(y) = c(intervention, outcome)
  
  if (length(mediators) > 0) {
    for (i in 1:length(mediators)) {
      x[2 + i] = 0
      names(x)[2 + i] = mediators[i]
      
      y[2 + i] = -figure_height/2 + figure_height/(length(mediators) + 1) * i
      names(y)[2 + i] = mediators[i]
    }
  }
  
  if (length(parents) > 0) {
    for (i in 1:length(parents)) {
      n_top = floor(length(parents)/2)
      n_bottom = length(parents) - n_top
      if (i <= n_top) {
        x[2 + length(mediators) + i] = -figure_width/2 + figure_width/(n_top + 1) * i
        y[2 + length(mediators) + i] = -figure_height
      } else {
        x[2 + length(mediators) + i] = -figure_width/2 + figure_width/(n_bottom + 1) * (i - n_top)
        y[2 + length(mediators) + i] = figure_height
      }
      names(x)[2 + length(mediators) + i] = parents[i]
      names(y)[2 + length(mediators) + i] = parents[i]
    }
  }
  
  coords = list(x = x, y = y)
  
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
  dag_output = dagitty(paste0("dag{", all_paths, "}")) 
  coord_df <- coords2df(coords)
  coordinates(dag_output) <- coords2list(coord_df)
  
  dag_output = dag_output %>% 
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

dag = generate_dag(structural_equations, intervention = "x", outcome = "y")
dag

### Plot parents of exposure
ggdag_parents(dag, "x", 
              use_labels = "label",
              text = FALSE) + 
  theme_dag_blank() 



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
             #"vagbrth"="Vaginal birth",
             "sga"="Small for gestational age",
             "hdlvry"="Home delivery",
             "W_gagebrth"="Gestational age",
             "W_birthwt"="Birthweight",
             "W_birthlen"="Birthlength",
             "single"="Single parent",
             "W_nrooms"="Number of\nrooms in HH",
             "W_nhh"="Number of\npeople in HH",
             "W_nchldlt5"="Number of children\nunder 5 in HH",
             "month"="Month of measurement",
             "brthmon"="Birth month",
             "W_parity"="Birth order",
             "cleanck"="Cooking fuel",
             "impfloor"="Floor",
             "impsan"="Sanitation access",
             "safeh20"="Water source",
             "wast"="Child growth failure")
)


dag = generate_dag(structural_equations, intervention = "W_mwtkg", outcome = "wast")
dag


### Plot parents of exposure
p <- ggdag_parents(dag, "W_mwtkg", 
              use_labels = "label",
              text = FALSE) + 
  theme_dag_blank() 

ggsave(p, file=paste0(BV_dir,"/figures/dags/mwtkg.png"), height=10, width =10)


# ### Plot minimally sufficient adjustment set
# ggdag_adjustment_set(dag, 
#                      exposure = "W_mwtkg", 
#                      outcome = "wast", 
#                      type = "minimal", # could also be "all" or "canonical"
#                      effect = "total") + # could also be "direct" 
#   theme_dag_blank() 

#------------------------------------------------------------
# Example collider bias for reviewer response
#------------------------------------------------------------



structural_equations = list(
  unidirectional = list(
    "x" = c("z2"),
    "y" = c("x", "z1", "z2"),
    "y" = c("x", "z1", "z2"),
    "z2" = c("z1")
  ),
  bidirectional = list(
    "x" = c("z1")
  ), 
  labels = c("x" = "Sanitation Intervention",
             "y" = "Child Length", 
             "z1" = "Household Income",
             "col" = "Birthweight",
             "z2" = "Latrine Access")
)

dag = generate_dag(structural_equations, intervention = "x", outcome = "y")
dag

### Plot parents of exposure
p_collide <- ggdag_parents(dag, "x", 
              use_labels = "label",
              text = FALSE) + 
  theme_dag_blank() 
ggsave(p_collide, 
       file=paste0(here::here(),"/figures/dags/collider_example.png"), 
       height=10, width =10)




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
             "W_mwtkg"="Mom weight",
             "W_mhtcm"="Parental anthropometry",
             "W_birthwt"="Birth size",
             "predexfd6"="Breastfeeding practice",
             "W_gagebrth"="Birth characteristics",
             "W_nrooms"="Household size and\nWASH characteristics",
             "wast"="Child growth failure")
)

dag = generate_dag(structural_equations,intervention = "W_mwtkg", outcome = "wast")
dag


### Plot parents of exposure
p <- ggdag_parents(dag, "W_mwtkg", 
              use_labels = "label",
              text = FALSE) + 
  theme_dag_blank() 
ggsave(p, file=paste0(here::here(),"/figures/dags/cc-example-dag.png"), height=10, width =10)


ggsave(p, file=paste0(BV_dir,"/figures/risk-factor/fig-cc-dag-example.png"),  height=6, width=6)


bf_covariates = c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
                  "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
                  "hdlvry",
                  "W_gagebrth","W_birthwt","W_birthlen",
                  "single",
                  "W_nrooms","W_nhh","W_nchldlt5",
                  "month","brthmon","W_parity",
                  "trth2o","cleanck","impfloor","impsan","safeh20")


adjustment_sets <- list(

  gagebrth=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
             #"W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "brthmon","W_parity",
             "trth2o","cleanck","impfloor","impsan","safeh20"),
  sga=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
             #"W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "brthmon","W_parity",
             "trth2o","cleanck","impfloor","impsan","safeh20"),

  birthwt=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
            #"W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
            "hdlvry",
            "single",
            "W_nrooms","W_nhh","W_nchldlt5",
            "brthmon","W_parity",
            "trth2o","cleanck","impfloor","impsan","safeh20"),

  birthlen=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
             #"W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "hdlvry",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "brthmon","W_parity",
             "trth2o","cleanck","impfloor","impsan","safeh20"),

  enstunt=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
            #"W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
            "hdlvry",
            "single",
            "W_nrooms","W_nhh","W_nchldlt5",
            "brthmon","W_parity",
            "trth2o","cleanck","impfloor","impsan","safeh20"),

  enwast=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
           #"W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
           "hdlvry",
           "single",
           "W_nrooms","W_nhh","W_nchldlt5",
           "brthmon","W_parity",
           "trth2o","cleanck","impfloor","impsan","safeh20"),

  # vagbrth=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
  #           "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
  #           "hdlvry",
  #           "single",
  #           "W_nrooms","W_nhh","W_nchldlt5",
  #           "brthmon","W_parity",
  #           "trth2o","cleanck","impfloor","impsan","safeh20"),

  hdlvry=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
           "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
           "single",
           "W_nrooms","W_nhh","W_nchldlt5",
           "brthmon","W_parity",
           "trth2o","cleanck","impfloor","impsan","safeh20"),

  mage=c("arm","W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
         "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
         "single",
         "W_nrooms","W_nhh","W_nchldlt5",
         "trth2o","cleanck","impfloor","impsan","safeh20"),

  fage=c("arm","W_mage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
         "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
         "single",
         "W_nrooms","W_nhh","W_nchldlt5",
         "brthmon",
         "trth2o","cleanck","impfloor","impsan","safeh20"),

  mhtcm=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
          "W_fhtcm",
          "single",
          "W_nrooms",
          "trth2o","cleanck","impfloor","impsan","safeh20"),

  mwtkg=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
          "W_fhtcm",
          "single",
          "W_nrooms","W_nhh","W_nchldlt5",
          "brthmon","W_parity",
          "trth2o","cleanck","impfloor","impsan","safeh20"),

  mbmi=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
         "W_fhtcm",
         "single",
         "W_nrooms","W_nhh","W_nchldlt5",
         "brthmon","W_parity",
         "trth2o","cleanck","impfloor","impsan","safeh20"),

  single=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
           "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
           "W_nrooms","W_nhh","W_nchldlt5",
           "trth2o","cleanck","impfloor","impsan","safeh20"),

  fhtcm=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
          "W_mhtcm","W_mwtkg","W_bmi",
          "single",
          "W_nrooms",
          "trth2o","cleanck","impfloor","impsan","safeh20"),

  nrooms=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
           "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
           "single",
           "W_nhh","W_nchldlt5",
           "W_parity",
           "trth2o","cleanck","impfloor","impsan","safeh20"),

  nhh=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
        "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
        "single",
        "W_nrooms",
        "W_parity",
        "trth2o","cleanck","impfloor","impsan","safeh20"),

  nchldlt5=c("arm", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "single",
             "W_nrooms",
             "W_parity",
             "trth2o","cleanck","impfloor","impsan","safeh20"),

  hhwealth_quart=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs",
                   "W_gagebrth","W_birthwt","W_birthlen",
                   "single","W_nhh","W_nchldlt5",
                   "W_parity"),

  parity=c("arm","W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
           "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
           "hdlvry",
           "single",
           "W_nrooms",
           "trth2o","cleanck","impfloor","impsan","safeh20"),

  meducyrs=c("arm", "W_mage", "W_fage", "feducyrs", "hhwealth_quart",
             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "W_gagebrth","W_birthwt","W_birthlen",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "trth2o","cleanck","impfloor","impsan","safeh20"),

  feducyrs=c("arm", "W_mage", "W_fage", "meducyrs",  "hhwealth_quart",
             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "W_gagebrth","W_birthwt","W_birthlen",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "trth2o","cleanck","impfloor","impsan","safeh20"),

  hfoodsec=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart",
             "hdlvry",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "brthmon","W_parity",
             "trth2o","cleanck","impfloor","impsan","safeh20"),

  anywast06=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
              #"W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
              "hdlvry",
              "single",
              "W_nrooms","W_nhh","W_nchldlt5",
              "month","brthmon","W_parity",
              "trth2o","cleanck","impfloor","impsan","safeh20"),

  pers_wast=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
              #"W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
              "hdlvry",
              "single",
              "W_nrooms","W_nhh","W_nchldlt5",
              "month","brthmon","W_parity",
              "trth2o","cleanck","impfloor","impsan","safeh20"),

  trth2o=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
           "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
           "single",
           "W_nrooms","W_nhh","W_nchldlt5",
           "brthmon","W_parity",
           "cleanck","impfloor","impsan","safeh20"),

  cleanck=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
            "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
            "single",
            "W_nrooms","W_nhh","W_nchldlt5",
            "W_parity",
            "trth2o","impfloor","impsan","safeh20"),

  impfloor=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "W_parity",
             "trth2o","cleanck","impsan","safeh20"),

  impsan=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
           "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
           "single",
           "W_nrooms","W_nhh","W_nchldlt5",
           "W_parity",
           "trth2o","cleanck","impfloor","safeh20"),

  safeh20=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
            "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
            "single",
            "W_nrooms","W_nhh","W_nchldlt5",
            "W_parity",
            "trth2o","cleanck","impfloor","impsan"),

  perdiar6=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
             "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
             "hdlvry",
             "W_gagebrth","W_birthwt","W_birthlen",
             "single",
             "W_nrooms","W_nhh","W_nchldlt5",
             "month","brthmon","W_parity",
             "trth2o","cleanck","impfloor","impsan","safeh20"),

  perdiar24=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
              "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
              "hdlvry",
              "W_gagebrth","W_birthwt","W_birthlen",
              "single",
              "W_nrooms","W_nhh","W_nchldlt5",
              "month","brthmon","W_parity",
              "trth2o","cleanck","impfloor","impsan","safeh20"),

  predfeed3=bf_covariates,
  predfeed6=bf_covariates,
  predfeed36=bf_covariates,
  exclfeed3=bf_covariates,
  exclfeed6=bf_covariates,
  exclfeed36=bf_covariates,
  predexfd6=bf_covariates,

  earlybf=c("arm","sex", "W_mage", "W_fage", "meducyrs", "feducyrs", "hhwealth_quart", "hfoodsec",
            "W_mhtcm","W_mwtkg","W_bmi", "W_fhtcm",
            "hdlvry",
            "W_gagebrth","W_birthwt","W_birthlen",
            "single",
            "W_nrooms","W_nhh","W_nchldlt5",
            "brthmon","W_parity",
            "trth2o","cleanck","impfloor","impsan","safeh20")
)
save(adjustment_sets, file=here("results/dag_adjustment_sets_list.Rdata"))
