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

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country        cleanck    sstunted   n_cell     n  outcome_variable 
----------  ---------------  -------------  --------  ---------  -------  ----  -----------------
Birth       CMC-V-BCS-2002   INDIA          1                 0       38    92  sstunted         
Birth       CMC-V-BCS-2002   INDIA          1                 1        1    92  sstunted         
Birth       CMC-V-BCS-2002   INDIA          0                 0       50    92  sstunted         
Birth       CMC-V-BCS-2002   INDIA          0                 1        3    92  sstunted         
Birth       GMS-Nepal        NEPAL          1                 0        9   621  sstunted         
Birth       GMS-Nepal        NEPAL          1                 1        0   621  sstunted         
Birth       GMS-Nepal        NEPAL          0                 0      584   621  sstunted         
Birth       GMS-Nepal        NEPAL          0                 1       28   621  sstunted         
Birth       IRC              INDIA          1                 0      209   378  sstunted         
Birth       IRC              INDIA          1                 1        9   378  sstunted         
Birth       IRC              INDIA          0                 0      154   378  sstunted         
Birth       IRC              INDIA          0                 1        6   378  sstunted         
Birth       MAL-ED           PERU           1                 0        1     2  sstunted         
Birth       MAL-ED           PERU           1                 1        0     2  sstunted         
Birth       MAL-ED           PERU           0                 0        1     2  sstunted         
Birth       MAL-ED           PERU           0                 1        0     2  sstunted         
Birth       NIH-Crypto       BANGLADESH     1                 0      342   561  sstunted         
Birth       NIH-Crypto       BANGLADESH     1                 1        3   561  sstunted         
Birth       NIH-Crypto       BANGLADESH     0                 0      210   561  sstunted         
Birth       NIH-Crypto       BANGLADESH     0                 1        6   561  sstunted         
Birth       PROVIDE          BANGLADESH     1                 0      436   539  sstunted         
Birth       PROVIDE          BANGLADESH     1                 1        2   539  sstunted         
Birth       PROVIDE          BANGLADESH     0                 0       99   539  sstunted         
Birth       PROVIDE          BANGLADESH     0                 1        2   539  sstunted         
6 months    CMC-V-BCS-2002   INDIA          1                 0      149   369  sstunted         
6 months    CMC-V-BCS-2002   INDIA          1                 1       14   369  sstunted         
6 months    CMC-V-BCS-2002   INDIA          0                 0      178   369  sstunted         
6 months    CMC-V-BCS-2002   INDIA          0                 1       28   369  sstunted         
6 months    GMS-Nepal        NEPAL          1                 0        8   505  sstunted         
6 months    GMS-Nepal        NEPAL          1                 1        0   505  sstunted         
6 months    GMS-Nepal        NEPAL          0                 0      478   505  sstunted         
6 months    GMS-Nepal        NEPAL          0                 1       19   505  sstunted         
6 months    IRC              INDIA          1                 0      216   398  sstunted         
6 months    IRC              INDIA          1                 1       14   398  sstunted         
6 months    IRC              INDIA          0                 0      154   398  sstunted         
6 months    IRC              INDIA          0                 1       14   398  sstunted         
6 months    MAL-ED           SOUTH AFRICA   1                 0        1     1  sstunted         
6 months    MAL-ED           SOUTH AFRICA   1                 1        0     1  sstunted         
6 months    MAL-ED           SOUTH AFRICA   0                 0        0     1  sstunted         
6 months    MAL-ED           SOUTH AFRICA   0                 1        0     1  sstunted         
6 months    NIH-Crypto       BANGLADESH     1                 0      318   545  sstunted         
6 months    NIH-Crypto       BANGLADESH     1                 1       11   545  sstunted         
6 months    NIH-Crypto       BANGLADESH     0                 0      211   545  sstunted         
6 months    NIH-Crypto       BANGLADESH     0                 1        5   545  sstunted         
6 months    PROVIDE          BANGLADESH     1                 0      491   604  sstunted         
6 months    PROVIDE          BANGLADESH     1                 1        7   604  sstunted         
6 months    PROVIDE          BANGLADESH     0                 0       99   604  sstunted         
6 months    PROVIDE          BANGLADESH     0                 1        7   604  sstunted         
24 months   CMC-V-BCS-2002   INDIA          1                 0      127   371  sstunted         
24 months   CMC-V-BCS-2002   INDIA          1                 1       36   371  sstunted         
24 months   CMC-V-BCS-2002   INDIA          0                 0      119   371  sstunted         
24 months   CMC-V-BCS-2002   INDIA          0                 1       89   371  sstunted         
24 months   GMS-Nepal        NEPAL          1                 0        5   435  sstunted         
24 months   GMS-Nepal        NEPAL          1                 1        0   435  sstunted         
24 months   GMS-Nepal        NEPAL          0                 0      384   435  sstunted         
24 months   GMS-Nepal        NEPAL          0                 1       46   435  sstunted         
24 months   IRC              INDIA          1                 0      210   400  sstunted         
24 months   IRC              INDIA          1                 1       21   400  sstunted         
24 months   IRC              INDIA          0                 0      150   400  sstunted         
24 months   IRC              INDIA          0                 1       19   400  sstunted         
24 months   MAL-ED           SOUTH AFRICA   1                 0        1     1  sstunted         
24 months   MAL-ED           SOUTH AFRICA   1                 1        0     1  sstunted         
24 months   MAL-ED           SOUTH AFRICA   0                 0        0     1  sstunted         
24 months   MAL-ED           SOUTH AFRICA   0                 1        0     1  sstunted         
24 months   NIH-Crypto       BANGLADESH     1                 0      190   410  sstunted         
24 months   NIH-Crypto       BANGLADESH     1                 1        9   410  sstunted         
24 months   NIH-Crypto       BANGLADESH     0                 0      200   410  sstunted         
24 months   NIH-Crypto       BANGLADESH     0                 1       11   410  sstunted         
24 months   PROVIDE          BANGLADESH     1                 0      452   578  sstunted         
24 months   PROVIDE          BANGLADESH     1                 1       27   578  sstunted         
24 months   PROVIDE          BANGLADESH     0                 0       74   578  sstunted         
24 months   PROVIDE          BANGLADESH     0                 1       25   578  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

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
