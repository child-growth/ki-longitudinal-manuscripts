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

**Outcome Variable:** pers_wasted624

## Predictor Variables

**Intervention Variable:** ever_sunderweight06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* single
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_parity
* delta_brthmon
* delta_vagbrth
* delta_single
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_sunderweight06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  --------------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                                   0      285     373  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                                   1       12     373  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                                   0       60     373  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                                   1       16     373  pers_wasted624   
CMIN             BANGLADESH                     0                                   0      194     252  pers_wasted624   
CMIN             BANGLADESH                     0                                   1       11     252  pers_wasted624   
CMIN             BANGLADESH                     1                                   0       33     252  pers_wasted624   
CMIN             BANGLADESH                     1                                   1       14     252  pers_wasted624   
COHORTS          GUATEMALA                      0                                   0      904    1023  pers_wasted624   
COHORTS          GUATEMALA                      0                                   1       20    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                                   0       78    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                                   1       21    1023  pers_wasted624   
COHORTS          INDIA                          0                                   0     5698    6897  pers_wasted624   
COHORTS          INDIA                          0                                   1      423    6897  pers_wasted624   
COHORTS          INDIA                          1                                   0      428    6897  pers_wasted624   
COHORTS          INDIA                          1                                   1      348    6897  pers_wasted624   
COHORTS          PHILIPPINES                    0                                   0     2460    2809  pers_wasted624   
COHORTS          PHILIPPINES                    0                                   1      154    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                                   0      123    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                                   1       72    2809  pers_wasted624   
CONTENT          PERU                           0                                   0      213     215  pers_wasted624   
CONTENT          PERU                           0                                   1        0     215  pers_wasted624   
CONTENT          PERU                           1                                   0        2     215  pers_wasted624   
CONTENT          PERU                           1                                   1        0     215  pers_wasted624   
EE               PAKISTAN                       0                                   0      207     374  pers_wasted624   
EE               PAKISTAN                       0                                   1        9     374  pers_wasted624   
EE               PAKISTAN                       1                                   0      118     374  pers_wasted624   
EE               PAKISTAN                       1                                   1       40     374  pers_wasted624   
GMS-Nepal        NEPAL                          0                                   0      437     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                                   1       70     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                                   0       44     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                                   1       39     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                                   0      260     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                                   1        2     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                                   0       10     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                                   1        2     274  pers_wasted624   
IRC              INDIA                          0                                   0      307     410  pers_wasted624   
IRC              INDIA                          0                                   1       37     410  pers_wasted624   
IRC              INDIA                          1                                   0       55     410  pers_wasted624   
IRC              INDIA                          1                                   1       11     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                                   0    12391   17274  pers_wasted624   
JiVitA-3         BANGLADESH                     0                                   1     2246   17274  pers_wasted624   
JiVitA-3         BANGLADESH                     1                                   0     1637   17274  pers_wasted624   
JiVitA-3         BANGLADESH                     1                                   1     1000   17274  pers_wasted624   
JiVitA-4         BANGLADESH                     0                                   0     4334    5263  pers_wasted624   
JiVitA-4         BANGLADESH                     0                                   1      403    5263  pers_wasted624   
JiVitA-4         BANGLADESH                     1                                   0      364    5263  pers_wasted624   
JiVitA-4         BANGLADESH                     1                                   1      162    5263  pers_wasted624   
Keneba           GAMBIA                         0                                   0     2125    2441  pers_wasted624   
Keneba           GAMBIA                         0                                   1      156    2441  pers_wasted624   
Keneba           GAMBIA                         1                                   0       99    2441  pers_wasted624   
Keneba           GAMBIA                         1                                   1       61    2441  pers_wasted624   
LCNI-5           MALAWI                         0                                   0      770     796  pers_wasted624   
LCNI-5           MALAWI                         0                                   1        8     796  pers_wasted624   
LCNI-5           MALAWI                         1                                   0       13     796  pers_wasted624   
LCNI-5           MALAWI                         1                                   1        5     796  pers_wasted624   
MAL-ED           BANGLADESH                     0                                   0      210     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                                   1       14     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                                   0       13     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                                   1        3     240  pers_wasted624   
MAL-ED           BRAZIL                         0                                   0      201     207  pers_wasted624   
MAL-ED           BRAZIL                         0                                   1        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                                   0        4     207  pers_wasted624   
MAL-ED           BRAZIL                         1                                   1        0     207  pers_wasted624   
MAL-ED           INDIA                          0                                   0      187     235  pers_wasted624   
MAL-ED           INDIA                          0                                   1       17     235  pers_wasted624   
MAL-ED           INDIA                          1                                   0       20     235  pers_wasted624   
MAL-ED           INDIA                          1                                   1       11     235  pers_wasted624   
MAL-ED           NEPAL                          0                                   0      221     235  pers_wasted624   
MAL-ED           NEPAL                          0                                   1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                                   0       12     235  pers_wasted624   
MAL-ED           NEPAL                          1                                   1        1     235  pers_wasted624   
MAL-ED           PERU                           0                                   0      259     270  pers_wasted624   
MAL-ED           PERU                           0                                   1        2     270  pers_wasted624   
MAL-ED           PERU                           1                                   0        8     270  pers_wasted624   
MAL-ED           PERU                           1                                   1        1     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                                   0      246     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                                   1        1     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                                   0       11     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                                   1        1     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   0      237     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   0        8     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                                   0      428     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                                   1       34     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                                   0       53     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                                   1       27     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                                   0      645     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                                   1       29     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                                   0       41     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                                   1       15     730  pers_wasted624   
PROBIT           BELARUS                        0                                   0    16508   16596  pers_wasted624   
PROBIT           BELARUS                        0                                   1       15   16596  pers_wasted624   
PROBIT           BELARUS                        1                                   0       70   16596  pers_wasted624   
PROBIT           BELARUS                        1                                   1        3   16596  pers_wasted624   
PROVIDE          BANGLADESH                     0                                   0      546     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                                   1       26     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                                   0       29     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                                   1       14     615  pers_wasted624   
ResPak           PAKISTAN                       0                                   0      157     234  pers_wasted624   
ResPak           PAKISTAN                       0                                   1       33     234  pers_wasted624   
ResPak           PAKISTAN                       1                                   0       30     234  pers_wasted624   
ResPak           PAKISTAN                       1                                   1       14     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                                   0     1039    1389  pers_wasted624   
SAS-CompFeed     INDIA                          0                                   1      130    1389  pers_wasted624   
SAS-CompFeed     INDIA                          1                                   0      119    1389  pers_wasted624   
SAS-CompFeed     INDIA                          1                                   1      101    1389  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                                   0      261     400  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                                   1       31     400  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                                   0       63     400  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                                   1       45     400  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   0     1880    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   1       76    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   0       36    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   1       26    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                                   0     9894   10814  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                                   1      345   10814  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                                   0      452   10814  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                                   1      123   10814  pers_wasted624   


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: COHORTS, country: INDIA
* studyid: COHORTS, country: PHILIPPINES
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: IRC, country: INDIA
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: NIH-Birth, country: BANGLADESH
* studyid: NIH-Crypto, country: BANGLADESH
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH
* studyid: ResPak, country: PAKISTAN
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS

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
