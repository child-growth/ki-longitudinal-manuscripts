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

**Intervention Variable:** pers_wasted06

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

studyid           country                        pers_wasted06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                        0      296     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                        1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                        0       40     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                        1        0     338  dead0plus        
EE                PAKISTAN                       0                        0      349     380  dead0plus        
EE                PAKISTAN                       0                        1        4     380  dead0plus        
EE                PAKISTAN                       1                        0       27     380  dead0plus        
EE                PAKISTAN                       1                        1        0     380  dead0plus        
GMS-Nepal         NEPAL                          0                        0      592     686  dead0plus        
GMS-Nepal         NEPAL                          0                        1        5     686  dead0plus        
GMS-Nepal         NEPAL                          1                        0       87     686  dead0plus        
GMS-Nepal         NEPAL                          1                        1        2     686  dead0plus        
iLiNS-DOSE        MALAWI                         0                        0     1675    1814  dead0plus        
iLiNS-DOSE        MALAWI                         0                        1      110    1814  dead0plus        
iLiNS-DOSE        MALAWI                         1                        0       25    1814  dead0plus        
iLiNS-DOSE        MALAWI                         1                        1        4    1814  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                        0     1088    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                        1       36    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                        0       52    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                        1        6    1182  dead0plus        
JiVitA-3          BANGLADESH                     0                        0    24532   26918  dead0plus        
JiVitA-3          BANGLADESH                     0                        1      478   26918  dead0plus        
JiVitA-3          BANGLADESH                     1                        0     1785   26918  dead0plus        
JiVitA-3          BANGLADESH                     1                        1      123   26918  dead0plus        
JiVitA-4          BANGLADESH                     0                        0     4865    5252  dead0plus        
JiVitA-4          BANGLADESH                     0                        1       43    5252  dead0plus        
JiVitA-4          BANGLADESH                     1                        0      339    5252  dead0plus        
JiVitA-4          BANGLADESH                     1                        1        5    5252  dead0plus        
Keneba            GAMBIA                         0                        0     2305    2480  dead0plus        
Keneba            GAMBIA                         0                        1       77    2480  dead0plus        
Keneba            GAMBIA                         1                        0       89    2480  dead0plus        
Keneba            GAMBIA                         1                        1        9    2480  dead0plus        
MAL-ED            BANGLADESH                     0                        0      251     263  dead0plus        
MAL-ED            BANGLADESH                     0                        1        2     263  dead0plus        
MAL-ED            BANGLADESH                     1                        0       10     263  dead0plus        
MAL-ED            BANGLADESH                     1                        1        0     263  dead0plus        
MAL-ED            INDIA                          0                        0      231     251  dead0plus        
MAL-ED            INDIA                          0                        1        2     251  dead0plus        
MAL-ED            INDIA                          1                        0       18     251  dead0plus        
MAL-ED            INDIA                          1                        1        0     251  dead0plus        
MAL-ED            PERU                           0                        0      300     302  dead0plus        
MAL-ED            PERU                           0                        1        2     302  dead0plus        
MAL-ED            PERU                           1                        0        0     302  dead0plus        
MAL-ED            PERU                           1                        1        0     302  dead0plus        
MAL-ED            SOUTH AFRICA                   0                        0      305     312  dead0plus        
MAL-ED            SOUTH AFRICA                   0                        1        0     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                        0        7     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                        1        0     312  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      258     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        3     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0        0     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        0     261  dead0plus        
PROVIDE           BANGLADESH                     0                        0      668     700  dead0plus        
PROVIDE           BANGLADESH                     0                        1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                        0       27     700  dead0plus        
PROVIDE           BANGLADESH                     1                        1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                        0     1340    1508  dead0plus        
SAS-CompFeed      INDIA                          0                        1       24    1508  dead0plus        
SAS-CompFeed      INDIA                          1                        0      132    1508  dead0plus        
SAS-CompFeed      INDIA                          1                        1       12    1508  dead0plus        
SAS-FoodSuppl     INDIA                          0                        0      316     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                        1        2     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                        0       96     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                        1        4     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2327    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0       68    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                        0     2967    3895  dead0plus        
VITAMIN-A         INDIA                          0                        1       36    3895  dead0plus        
VITAMIN-A         INDIA                          1                        0      853    3895  dead0plus        
VITAMIN-A         INDIA                          1                        1       39    3895  dead0plus        
ZVITAMBO          ZIMBABWE                       0                        0    12010   13862  dead0plus        
ZVITAMBO          ZIMBABWE                       0                        1      855   13862  dead0plus        
ZVITAMBO          ZIMBABWE                       1                        0      796   13862  dead0plus        
ZVITAMBO          ZIMBABWE                       1                        1      201   13862  dead0plus        


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
* studyid: iLiNS-DOSE, country: MALAWI
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
