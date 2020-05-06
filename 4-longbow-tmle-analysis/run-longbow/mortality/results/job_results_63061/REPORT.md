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

**Intervention Variable:** ever_sunderweight06

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

studyid           country                        ever_sunderweight06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                              0      315     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                              1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                              0       21     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                              1        0     338  dead0plus        
EE                PAKISTAN                       0                              0      218     380  dead0plus        
EE                PAKISTAN                       0                              1        1     380  dead0plus        
EE                PAKISTAN                       1                              0      158     380  dead0plus        
EE                PAKISTAN                       1                              1        3     380  dead0plus        
GMS-Nepal         NEPAL                          0                              0      600     697  dead0plus        
GMS-Nepal         NEPAL                          0                              1        3     697  dead0plus        
GMS-Nepal         NEPAL                          1                              0       90     697  dead0plus        
GMS-Nepal         NEPAL                          1                              1        4     697  dead0plus        
iLiNS-DOSE        MALAWI                         0                              0     1646    1816  dead0plus        
iLiNS-DOSE        MALAWI                         0                              1      106    1816  dead0plus        
iLiNS-DOSE        MALAWI                         1                              0       56    1816  dead0plus        
iLiNS-DOSE        MALAWI                         1                              1        8    1816  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                              0     1080    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                              1       30    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                              0       78    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                              1       14    1202  dead0plus        
JiVitA-3          BANGLADESH                     0                              0    22216   27237  dead0plus        
JiVitA-3          BANGLADESH                     0                              1      436   27237  dead0plus        
JiVitA-3          BANGLADESH                     1                              0     4155   27237  dead0plus        
JiVitA-3          BANGLADESH                     1                              1      430   27237  dead0plus        
JiVitA-4          BANGLADESH                     0                              0     4716    5276  dead0plus        
JiVitA-4          BANGLADESH                     0                              1       32    5276  dead0plus        
JiVitA-4          BANGLADESH                     1                              0      512    5276  dead0plus        
JiVitA-4          BANGLADESH                     1                              1       16    5276  dead0plus        
Keneba            GAMBIA                         0                              0     2379    2632  dead0plus        
Keneba            GAMBIA                         0                              1       71    2632  dead0plus        
Keneba            GAMBIA                         1                              0      158    2632  dead0plus        
Keneba            GAMBIA                         1                              1       24    2632  dead0plus        
MAL-ED            BANGLADESH                     0                              0      243     265  dead0plus        
MAL-ED            BANGLADESH                     0                              1        2     265  dead0plus        
MAL-ED            BANGLADESH                     1                              0       19     265  dead0plus        
MAL-ED            BANGLADESH                     1                              1        1     265  dead0plus        
MAL-ED            INDIA                          0                              0      217     251  dead0plus        
MAL-ED            INDIA                          0                              1        1     251  dead0plus        
MAL-ED            INDIA                          1                              0       32     251  dead0plus        
MAL-ED            INDIA                          1                              1        1     251  dead0plus        
MAL-ED            PERU                           0                              0      290     303  dead0plus        
MAL-ED            PERU                           0                              1        2     303  dead0plus        
MAL-ED            PERU                           1                              0       11     303  dead0plus        
MAL-ED            PERU                           1                              1        0     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                              0      300     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                              1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                              0       13     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                              1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              0      251     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              1        2     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              0        8     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              1        1     262  dead0plus        
PROVIDE           BANGLADESH                     0                              0      647     700  dead0plus        
PROVIDE           BANGLADESH                     0                              1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                              0       48     700  dead0plus        
PROVIDE           BANGLADESH                     1                              1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                              0     1247    1533  dead0plus        
SAS-CompFeed      INDIA                          0                              1       26    1533  dead0plus        
SAS-CompFeed      INDIA                          1                              0      236    1533  dead0plus        
SAS-CompFeed      INDIA                          1                              1       24    1533  dead0plus        
SAS-FoodSuppl     INDIA                          0                              0      304     416  dead0plus        
SAS-FoodSuppl     INDIA                          0                              1        2     416  dead0plus        
SAS-FoodSuppl     INDIA                          1                              0      106     416  dead0plus        
SAS-FoodSuppl     INDIA                          1                              1        4     416  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     2325    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0       70    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                              0     2858    3906  dead0plus        
VITAMIN-A         INDIA                          0                              1       30    3906  dead0plus        
VITAMIN-A         INDIA                          1                              0      970    3906  dead0plus        
VITAMIN-A         INDIA                          1                              1       48    3906  dead0plus        
ZVITAMBO          ZIMBABWE                       0                              0    12411   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       0                              1      816   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       1                              0      556   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       1                              1      302   14085  dead0plus        


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
