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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        parity    ever_sstunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  -------  --------------  -------  ------  -----------------
0-24 months   COHORTS          GUATEMALA                      1                     0      121    1360  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      1                     1       92    1360  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      2                     0      105    1360  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      2                     1       87    1360  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      3+                    0      503    1360  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      3+                    1      452    1360  ever_sstunted    
0-24 months   COHORTS          INDIA                          1                     0      723    4630  ever_sstunted    
0-24 months   COHORTS          INDIA                          1                     1       89    4630  ever_sstunted    
0-24 months   COHORTS          INDIA                          2                     0     1061    4630  ever_sstunted    
0-24 months   COHORTS          INDIA                          2                     1      124    4630  ever_sstunted    
0-24 months   COHORTS          INDIA                          3+                    0     2205    4630  ever_sstunted    
0-24 months   COHORTS          INDIA                          3+                    1      428    4630  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    1                     0      505    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    1                     1      173    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    2                     0      470    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    2                     1      220    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    3+                    0      994    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    3+                    1      696    3058  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          1                     0      159     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          1                     1       52     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          2                     0      143     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          2                     1       38     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          3+                    0      227     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          3+                    1       79     698  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     1                     0     7949   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     1                     1     2303   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     2                     0     7618   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     2                     1     1381   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     3+                    0     6638   27227  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     3+                    1     1338   27227  ever_sstunted    
0-24 months   Keneba           GAMBIA                         1                     0      182    1990  ever_sstunted    
0-24 months   Keneba           GAMBIA                         1                     1       59    1990  ever_sstunted    
0-24 months   Keneba           GAMBIA                         2                     0      173    1990  ever_sstunted    
0-24 months   Keneba           GAMBIA                         2                     1       41    1990  ever_sstunted    
0-24 months   Keneba           GAMBIA                         3+                    0     1158    1990  ever_sstunted    
0-24 months   Keneba           GAMBIA                         3+                    1      377    1990  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     1                     0      227     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     1                     1       44     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     2                     0      214     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     2                     1       30     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     3+                    0      164     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     3+                    1       21     700  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          1                     0      310    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          1                     1      142    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          2                     0      261    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          2                     1       99    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          3+                    0      455    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          3+                    1      266    1533  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          1                     0       17     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          1                     1        4     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          2                     0       46     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          2                     1       31     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          3+                    0      154     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          3+                    1      166     418  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      750    2357  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       71    2357  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      688    2357  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       83    2357  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    0      685    2357  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    1       80    2357  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       1                     0     5089   14073  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       1                     1      980   14073  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       2                     0     3551   14073  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       2                     1      661   14073  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       3+                    0     3067   14073  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       3+                    1      725   14073  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      1                     0      142    1091  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      1                     1       17    1091  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      2                     0      145    1091  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      2                     1       13    1091  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      3+                    0      694    1091  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      3+                    1       80    1091  ever_sstunted    
0-6 months    COHORTS          INDIA                          1                     0      725    4473  ever_sstunted    
0-6 months    COHORTS          INDIA                          1                     1       40    4473  ever_sstunted    
0-6 months    COHORTS          INDIA                          2                     0     1102    4473  ever_sstunted    
0-6 months    COHORTS          INDIA                          2                     1       42    4473  ever_sstunted    
0-6 months    COHORTS          INDIA                          3+                    0     2431    4473  ever_sstunted    
0-6 months    COHORTS          INDIA                          3+                    1      133    4473  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    1                     0      638    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    1                     1       40    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    2                     0      654    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    2                     1       36    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    3+                    0     1575    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    3+                    1      115    3058  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          1                     0      184     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          1                     1       27     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          2                     0      170     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          2                     1       11     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          3+                    0      284     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          3+                    1       22     698  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     1                     0     8230   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     1                     1     1980   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     2                     0     7948   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     2                     1     1032   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     3+                    0     6980   27161  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     3+                    1      991   27161  ever_sstunted    
0-6 months    Keneba           GAMBIA                         1                     0      197    1853  ever_sstunted    
0-6 months    Keneba           GAMBIA                         1                     1       38    1853  ever_sstunted    
0-6 months    Keneba           GAMBIA                         2                     0      181    1853  ever_sstunted    
0-6 months    Keneba           GAMBIA                         2                     1       24    1853  ever_sstunted    
0-6 months    Keneba           GAMBIA                         3+                    0     1261    1853  ever_sstunted    
0-6 months    Keneba           GAMBIA                         3+                    1      152    1853  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     1                     0      257     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     1                     1       14     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     2                     0      234     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     2                     1       10     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     3+                    0      178     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     3+                    1        7     700  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          1                     0      380    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          1                     1       71    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          2                     0      314    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          2                     1       45    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          3+                    0      607    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          3+                    1      113    1530  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          1                     0       18     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          1                     1        2     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          2                     0       67     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          2                     1       10     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          3+                    0      281     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          3+                    1       38     416  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      781    2357  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       40    2357  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      738    2357  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       33    2357  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    0      736    2357  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    1       29    2357  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       1                     0     5503   14056  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       1                     1      559   14056  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       2                     0     3875   14056  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       2                     1      332   14056  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       3+                    0     3396   14056  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       3+                    1      391   14056  ever_sstunted    


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA

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
