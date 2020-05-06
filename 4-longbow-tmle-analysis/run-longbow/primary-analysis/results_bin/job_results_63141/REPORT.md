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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* W_nrooms
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        vagbrth    sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0                 0       10      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                 1        1      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                 0       78      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                 1        3      92  sstunted         
Birth       IRC              INDIA                          0                 0       67     388  sstunted         
Birth       IRC              INDIA                          0                 1        1     388  sstunted         
Birth       IRC              INDIA                          1                 0      305     388  sstunted         
Birth       IRC              INDIA                          1                 1       15     388  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                 0      501   22418  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                 1       38   22418  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                 0    19471   22418  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                 1     2408   22418  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                 0       73    2822  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                 1        3    2822  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                 0     2516    2822  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                 1      230    2822  sstunted         
Birth       NIH-Crypto       BANGLADESH                     0                 0      185     477  sstunted         
Birth       NIH-Crypto       BANGLADESH                     0                 1        1     477  sstunted         
Birth       NIH-Crypto       BANGLADESH                     1                 0      290     477  sstunted         
Birth       NIH-Crypto       BANGLADESH                     1                 1        1     477  sstunted         
Birth       PROBIT           BELARUS                        0                 0     1596   13893  sstunted         
Birth       PROBIT           BELARUS                        0                 1        1   13893  sstunted         
Birth       PROBIT           BELARUS                        1                 0    12292   13893  sstunted         
Birth       PROBIT           BELARUS                        1                 1        4   13893  sstunted         
Birth       PROVIDE          BANGLADESH                     0                 0      107     539  sstunted         
Birth       PROVIDE          BANGLADESH                     0                 1        1     539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                 0      428     539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                 1        3     539  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       0                 0     1136   13761  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       0                 1       30   13761  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       1                 0    12191   13761  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       1                 1      404   13761  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                 0       23     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                 1        2     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                 0      304     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                 1       40     369  sstunted         
6 months    IRC              INDIA                          0                 0       64     407  sstunted         
6 months    IRC              INDIA                          0                 1        5     407  sstunted         
6 months    IRC              INDIA                          1                 0      314     407  sstunted         
6 months    IRC              INDIA                          1                 1       24     407  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                 0     1029   16732  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                 1       48   16732  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                 0    14687   16732  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                 1      968   16732  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                 0      326    4052  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                 1       10    4052  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                 0     3504    4052  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                 1      212    4052  sstunted         
6 months    NIH-Crypto       BANGLADESH                     0                 0      183     457  sstunted         
6 months    NIH-Crypto       BANGLADESH                     0                 1        4     457  sstunted         
6 months    NIH-Crypto       BANGLADESH                     1                 0      258     457  sstunted         
6 months    NIH-Crypto       BANGLADESH                     1                 1       12     457  sstunted         
6 months    PROBIT           BELARUS                        0                 0     1781   15760  sstunted         
6 months    PROBIT           BELARUS                        0                 1       18   15760  sstunted         
6 months    PROBIT           BELARUS                        1                 0    13802   15760  sstunted         
6 months    PROBIT           BELARUS                        1                 1      159   15760  sstunted         
6 months    PROVIDE          BANGLADESH                     0                 0      137     604  sstunted         
6 months    PROVIDE          BANGLADESH                     0                 1        2     604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                 0      453     604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                 1       12     604  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0      189    2005  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0    2005  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1797    2005  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       19    2005  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       0                 0      714    8601  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       0                 1       26    8601  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       1                 0     7536    8601  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       1                 1      325    8601  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                 0       16     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                 1        8     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                 0      230     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                 1      117     371  sstunted         
24 months   IRC              INDIA                          0                 0       66     409  sstunted         
24 months   IRC              INDIA                          0                 1        3     409  sstunted         
24 months   IRC              INDIA                          1                 0      302     409  sstunted         
24 months   IRC              INDIA                          1                 1       38     409  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                 0      444    8584  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                 1       36    8584  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                 0     6805    8584  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                 1     1299    8584  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                 0      309    4020  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                 1       14    4020  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                 0     3335    4020  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                 1      362    4020  sstunted         
24 months   NIH-Crypto       BANGLADESH                     0                 0       92     260  sstunted         
24 months   NIH-Crypto       BANGLADESH                     0                 1        7     260  sstunted         
24 months   NIH-Crypto       BANGLADESH                     1                 0      146     260  sstunted         
24 months   NIH-Crypto       BANGLADESH                     1                 1       15     260  sstunted         
24 months   PROBIT           BELARUS                        0                 0      465    4035  sstunted         
24 months   PROBIT           BELARUS                        0                 1        7    4035  sstunted         
24 months   PROBIT           BELARUS                        1                 0     3505    4035  sstunted         
24 months   PROBIT           BELARUS                        1                 1       58    4035  sstunted         
24 months   PROVIDE          BANGLADESH                     0                 0      130     578  sstunted         
24 months   PROVIDE          BANGLADESH                     0                 1        7     578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                 0      396     578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                 1       45     578  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        2       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        3       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1       6  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       0                 0      123    1619  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       0                 1       10    1619  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       1                 0     1321    1619  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       1                 1      165    1619  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
