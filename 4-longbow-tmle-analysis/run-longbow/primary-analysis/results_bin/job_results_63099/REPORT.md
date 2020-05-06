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

**Outcome Variable:** stunted

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

agecat      studyid          country                        vagbrth    stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0                0        9      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0                1        2      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1                0       66      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1                1       15      92  stunted          
Birth       IRC              INDIA                          0                0       58     388  stunted          
Birth       IRC              INDIA                          0                1       10     388  stunted          
Birth       IRC              INDIA                          1                0      285     388  stunted          
Birth       IRC              INDIA                          1                1       35     388  stunted          
Birth       JiVitA-3         BANGLADESH                     0                0      418   22418  stunted          
Birth       JiVitA-3         BANGLADESH                     0                1      121   22418  stunted          
Birth       JiVitA-3         BANGLADESH                     1                0    14626   22418  stunted          
Birth       JiVitA-3         BANGLADESH                     1                1     7253   22418  stunted          
Birth       JiVitA-4         BANGLADESH                     0                0       57    2822  stunted          
Birth       JiVitA-4         BANGLADESH                     0                1       19    2822  stunted          
Birth       JiVitA-4         BANGLADESH                     1                0     1908    2822  stunted          
Birth       JiVitA-4         BANGLADESH                     1                1      838    2822  stunted          
Birth       NIH-Crypto       BANGLADESH                     0                0      160     477  stunted          
Birth       NIH-Crypto       BANGLADESH                     0                1       26     477  stunted          
Birth       NIH-Crypto       BANGLADESH                     1                0      253     477  stunted          
Birth       NIH-Crypto       BANGLADESH                     1                1       38     477  stunted          
Birth       PROBIT           BELARUS                        0                0     1595   13893  stunted          
Birth       PROBIT           BELARUS                        0                1        2   13893  stunted          
Birth       PROBIT           BELARUS                        1                0    12264   13893  stunted          
Birth       PROBIT           BELARUS                        1                1       32   13893  stunted          
Birth       PROVIDE          BANGLADESH                     0                0       98     539  stunted          
Birth       PROVIDE          BANGLADESH                     0                1       10     539  stunted          
Birth       PROVIDE          BANGLADESH                     1                0      393     539  stunted          
Birth       PROVIDE          BANGLADESH                     1                1       38     539  stunted          
Birth       ZVITAMBO         ZIMBABWE                       0                0     1076   13761  stunted          
Birth       ZVITAMBO         ZIMBABWE                       0                1       90   13761  stunted          
Birth       ZVITAMBO         ZIMBABWE                       1                0    11273   13761  stunted          
Birth       ZVITAMBO         ZIMBABWE                       1                1     1322   13761  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                0       17     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                1        8     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                0      241     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                1      103     369  stunted          
6 months    IRC              INDIA                          0                0       50     407  stunted          
6 months    IRC              INDIA                          0                1       19     407  stunted          
6 months    IRC              INDIA                          1                0      257     407  stunted          
6 months    IRC              INDIA                          1                1       81     407  stunted          
6 months    JiVitA-3         BANGLADESH                     0                0      909   16732  stunted          
6 months    JiVitA-3         BANGLADESH                     0                1      168   16732  stunted          
6 months    JiVitA-3         BANGLADESH                     1                0    11614   16732  stunted          
6 months    JiVitA-3         BANGLADESH                     1                1     4041   16732  stunted          
6 months    JiVitA-4         BANGLADESH                     0                0      281    4052  stunted          
6 months    JiVitA-4         BANGLADESH                     0                1       55    4052  stunted          
6 months    JiVitA-4         BANGLADESH                     1                0     2758    4052  stunted          
6 months    JiVitA-4         BANGLADESH                     1                1      958    4052  stunted          
6 months    NIH-Crypto       BANGLADESH                     0                0      151     457  stunted          
6 months    NIH-Crypto       BANGLADESH                     0                1       36     457  stunted          
6 months    NIH-Crypto       BANGLADESH                     1                0      198     457  stunted          
6 months    NIH-Crypto       BANGLADESH                     1                1       72     457  stunted          
6 months    PROBIT           BELARUS                        0                0     1725   15760  stunted          
6 months    PROBIT           BELARUS                        0                1       74   15760  stunted          
6 months    PROBIT           BELARUS                        1                0    13415   15760  stunted          
6 months    PROBIT           BELARUS                        1                1      546   15760  stunted          
6 months    PROVIDE          BANGLADESH                     0                0      117     604  stunted          
6 months    PROVIDE          BANGLADESH                     0                1       22     604  stunted          
6 months    PROVIDE          BANGLADESH                     1                0      391     604  stunted          
6 months    PROVIDE          BANGLADESH                     1                1       74     604  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      172    2005  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       17    2005  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1636    2005  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1      180    2005  stunted          
6 months    ZVITAMBO         ZIMBABWE                       0                0      628    8601  stunted          
6 months    ZVITAMBO         ZIMBABWE                       0                1      112    8601  stunted          
6 months    ZVITAMBO         ZIMBABWE                       1                0     6568    8601  stunted          
6 months    ZVITAMBO         ZIMBABWE                       1                1     1293    8601  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                0        8     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                1       16     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                0       97     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                1      250     371  stunted          
24 months   IRC              INDIA                          0                0       42     409  stunted          
24 months   IRC              INDIA                          0                1       27     409  stunted          
24 months   IRC              INDIA                          1                0      195     409  stunted          
24 months   IRC              INDIA                          1                1      145     409  stunted          
24 months   JiVitA-3         BANGLADESH                     0                0      324    8584  stunted          
24 months   JiVitA-3         BANGLADESH                     0                1      156    8584  stunted          
24 months   JiVitA-3         BANGLADESH                     1                0     4043    8584  stunted          
24 months   JiVitA-3         BANGLADESH                     1                1     4061    8584  stunted          
24 months   JiVitA-4         BANGLADESH                     0                0      237    4020  stunted          
24 months   JiVitA-4         BANGLADESH                     0                1       86    4020  stunted          
24 months   JiVitA-4         BANGLADESH                     1                0     2177    4020  stunted          
24 months   JiVitA-4         BANGLADESH                     1                1     1520    4020  stunted          
24 months   NIH-Crypto       BANGLADESH                     0                0       75     260  stunted          
24 months   NIH-Crypto       BANGLADESH                     0                1       24     260  stunted          
24 months   NIH-Crypto       BANGLADESH                     1                0      104     260  stunted          
24 months   NIH-Crypto       BANGLADESH                     1                1       57     260  stunted          
24 months   PROBIT           BELARUS                        0                0      439    4035  stunted          
24 months   PROBIT           BELARUS                        0                1       33    4035  stunted          
24 months   PROBIT           BELARUS                        1                0     3321    4035  stunted          
24 months   PROBIT           BELARUS                        1                1      242    4035  stunted          
24 months   PROVIDE          BANGLADESH                     0                0       99     578  stunted          
24 months   PROVIDE          BANGLADESH                     0                1       38     578  stunted          
24 months   PROVIDE          BANGLADESH                     1                0      289     578  stunted          
24 months   PROVIDE          BANGLADESH                     1                1      152     578  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        2       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        3       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        1       6  stunted          
24 months   ZVITAMBO         ZIMBABWE                       0                0       96    1619  stunted          
24 months   ZVITAMBO         ZIMBABWE                       0                1       37    1619  stunted          
24 months   ZVITAMBO         ZIMBABWE                       1                0      962    1619  stunted          
24 months   ZVITAMBO         ZIMBABWE                       1                1      524    1619  stunted          


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
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
