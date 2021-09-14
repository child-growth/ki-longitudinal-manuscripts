

rm(list=ls())
source(paste0(here::here(), "/0-config.R"))

source(here("4-longbow-tmle-analysis/1_name_results_outputs.R"))

source(here("4-longbow-tmle-analysis/combine_results_Ns.R"))
source(here("4-longbow-tmle-analysis/combine_results_Ns_cont_sub.R"))
source(here("4-longbow-tmle-analysis/combine_results_Ns_sub.R"))
#source(here("4-longbow-tmle-analysis/create_shiny_df.R"))

source(here("4-longbow-tmle-analysis/combine_results_outputs.R"))

#Results meta-analysis pooling
source(here("4-longbow-tmle-analysis/pool_Zscore_PAR.R"))
source(here("4-longbow-tmle-analysis/pool_RR.R"))
source(here("4-longbow-tmle-analysis/pool_ATE.R"))

source(here("4-longbow-tmle-analysis/pool_PAF.R"))


source(here("4-longbow-tmle-analysis/pool_Zscore_VIM.R"))

source(here("4-longbow-tmle-analysis/pool_Zscore_PAR_FE.R"))
source(here("4-longbow-tmle-analysis/pool_RR_FE.R"))




#Secondary outcome pooling
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_ATE_FE.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_ATE_FE_unadj.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_ATE_unadj.R"))

source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_Zscore_PAR_FE.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_Zscore_PAR_unadj.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_Zscore_PAR_FE_unadj.R"))

source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_PAF_FE.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_PAF_FE_unadj.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_PAF_unadj.R"))

source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_RR_FE.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_RR_FE_unadj.R"))
source(here("4-longbow-tmle-analysis/secondary outcome pooling/pool_RR_unadj.R"))

