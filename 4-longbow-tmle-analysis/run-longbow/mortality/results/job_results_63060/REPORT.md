---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** dead0plus

## Predictor Variables

**Intervention Variable:** ever_underweight06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* impfloor
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_impfloor
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_underweight06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  -------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                             0      262     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                             1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                             0       74     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                             1        0     338  dead0plus        
EE                PAKISTAN                       0                             0      103     380  dead0plus        
EE                PAKISTAN                       0                             1        0     380  dead0plus        
EE                PAKISTAN                       1                             0      273     380  dead0plus        
EE                PAKISTAN                       1                             1        4     380  dead0plus        
GMS-Nepal         NEPAL                          0                             0      388     697  dead0plus        
GMS-Nepal         NEPAL                          0                             1        2     697  dead0plus        
GMS-Nepal         NEPAL                          1                             0      302     697  dead0plus        
GMS-Nepal         NEPAL                          1                             1        5     697  dead0plus        
iLiNS-DOSE        MALAWI                         0                             0     1464    1816  dead0plus        
iLiNS-DOSE        MALAWI                         0                             1       89    1816  dead0plus        
iLiNS-DOSE        MALAWI                         1                             0      238    1816  dead0plus        
iLiNS-DOSE        MALAWI                         1                             1       25    1816  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                             0      928    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                             1       22    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                             0      230    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                             1       22    1202  dead0plus        
JiVitA-3          BANGLADESH                     0                             0    14413   27237  dead0plus        
JiVitA-3          BANGLADESH                     0                             1      251   27237  dead0plus        
JiVitA-3          BANGLADESH                     1                             0    11958   27237  dead0plus        
JiVitA-3          BANGLADESH                     1                             1      615   27237  dead0plus        
JiVitA-4          BANGLADESH                     0                             0     3471    5276  dead0plus        
JiVitA-4          BANGLADESH                     0                             1       17    5276  dead0plus        
JiVitA-4          BANGLADESH                     1                             0     1757    5276  dead0plus        
JiVitA-4          BANGLADESH                     1                             1       31    5276  dead0plus        
Keneba            GAMBIA                         0                             0     2024    2632  dead0plus        
Keneba            GAMBIA                         0                             1       55    2632  dead0plus        
Keneba            GAMBIA                         1                             0      513    2632  dead0plus        
Keneba            GAMBIA                         1                             1       40    2632  dead0plus        
MAL-ED            BANGLADESH                     0                             0      174     265  dead0plus        
MAL-ED            BANGLADESH                     0                             1        1     265  dead0plus        
MAL-ED            BANGLADESH                     1                             0       88     265  dead0plus        
MAL-ED            BANGLADESH                     1                             1        2     265  dead0plus        
MAL-ED            INDIA                          0                             0      144     251  dead0plus        
MAL-ED            INDIA                          0                             1        1     251  dead0plus        
MAL-ED            INDIA                          1                             0      105     251  dead0plus        
MAL-ED            INDIA                          1                             1        1     251  dead0plus        
MAL-ED            PERU                           0                             0      251     303  dead0plus        
MAL-ED            PERU                           0                             1        2     303  dead0plus        
MAL-ED            PERU                           1                             0       50     303  dead0plus        
MAL-ED            PERU                           1                             1        0     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                             0      258     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                             1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                             0       55     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                             1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             0      214     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             1        2     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             0       45     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             1        1     262  dead0plus        
PROVIDE           BANGLADESH                     0                             0      470     700  dead0plus        
PROVIDE           BANGLADESH                     0                             1        3     700  dead0plus        
PROVIDE           BANGLADESH                     1                             0      225     700  dead0plus        
PROVIDE           BANGLADESH                     1                             1        2     700  dead0plus        
SAS-CompFeed      INDIA                          0                             0      867    1533  dead0plus        
SAS-CompFeed      INDIA                          0                             1       16    1533  dead0plus        
SAS-CompFeed      INDIA                          1                             0      616    1533  dead0plus        
SAS-CompFeed      INDIA                          1                             1       34    1533  dead0plus        
SAS-FoodSuppl     INDIA                          0                             0      194     416  dead0plus        
SAS-FoodSuppl     INDIA                          0                             1        2     416  dead0plus        
SAS-FoodSuppl     INDIA                          1                             0      216     416  dead0plus        
SAS-FoodSuppl     INDIA                          1                             1        4     416  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     2110    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      285    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                             0     1692    3906  dead0plus        
VITAMIN-A         INDIA                          0                             1       10    3906  dead0plus        
VITAMIN-A         INDIA                          1                             0     2136    3906  dead0plus        
VITAMIN-A         INDIA                          1                             1       68    3906  dead0plus        
ZVITAMBO          ZIMBABWE                       0                             0    10950   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       0                             1      571   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       1                             0     2017   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       1                             1      547   14085  dead0plus        


The following strata were considered:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
