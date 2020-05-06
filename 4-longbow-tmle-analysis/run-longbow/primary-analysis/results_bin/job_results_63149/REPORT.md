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

**Intervention Variable:** fhtcm

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country     fhtcm           sstunted   n_cell       n  outcome_variable 
----------  --------------  ----------  -------------  ---------  -------  ------  -----------------
Birth       COHORTS         GUATEMALA   >=167 cm               0       27     206  sstunted         
Birth       COHORTS         GUATEMALA   >=167 cm               1        2     206  sstunted         
Birth       COHORTS         GUATEMALA   <162 cm                0      119     206  sstunted         
Birth       COHORTS         GUATEMALA   <162 cm                1        2     206  sstunted         
Birth       COHORTS         GUATEMALA   [162-167) cm           0       56     206  sstunted         
Birth       COHORTS         GUATEMALA   [162-167) cm           1        0     206  sstunted         
Birth       Keneba          GAMBIA      >=167 cm               0      755    1167  sstunted         
Birth       Keneba          GAMBIA      >=167 cm               1       17    1167  sstunted         
Birth       Keneba          GAMBIA      <162 cm                0       87    1167  sstunted         
Birth       Keneba          GAMBIA      <162 cm                1        0    1167  sstunted         
Birth       Keneba          GAMBIA      [162-167) cm           0      304    1167  sstunted         
Birth       Keneba          GAMBIA      [162-167) cm           1        4    1167  sstunted         
Birth       PROBIT          BELARUS     >=167 cm               0    11737   12535  sstunted         
Birth       PROBIT          BELARUS     >=167 cm               1        5   12535  sstunted         
Birth       PROBIT          BELARUS     <162 cm                0      168   12535  sstunted         
Birth       PROBIT          BELARUS     <162 cm                1        0   12535  sstunted         
Birth       PROBIT          BELARUS     [162-167) cm           0      625   12535  sstunted         
Birth       PROBIT          BELARUS     [162-167) cm           1        0   12535  sstunted         
Birth       SAS-CompFeed    INDIA       >=167 cm               0      329     746  sstunted         
Birth       SAS-CompFeed    INDIA       >=167 cm               1       14     746  sstunted         
Birth       SAS-CompFeed    INDIA       <162 cm                0      166     746  sstunted         
Birth       SAS-CompFeed    INDIA       <162 cm                1       24     746  sstunted         
Birth       SAS-CompFeed    INDIA       [162-167) cm           0      197     746  sstunted         
Birth       SAS-CompFeed    INDIA       [162-167) cm           1       16     746  sstunted         
6 months    COHORTS         GUATEMALA   >=167 cm               0       42     336  sstunted         
6 months    COHORTS         GUATEMALA   >=167 cm               1        3     336  sstunted         
6 months    COHORTS         GUATEMALA   <162 cm                0      157     336  sstunted         
6 months    COHORTS         GUATEMALA   <162 cm                1       40     336  sstunted         
6 months    COHORTS         GUATEMALA   [162-167) cm           0       85     336  sstunted         
6 months    COHORTS         GUATEMALA   [162-167) cm           1        9     336  sstunted         
6 months    Keneba          GAMBIA      >=167 cm               0      948    1511  sstunted         
6 months    Keneba          GAMBIA      >=167 cm               1       31    1511  sstunted         
6 months    Keneba          GAMBIA      <162 cm                0      111    1511  sstunted         
6 months    Keneba          GAMBIA      <162 cm                1        2    1511  sstunted         
6 months    Keneba          GAMBIA      [162-167) cm           0      403    1511  sstunted         
6 months    Keneba          GAMBIA      [162-167) cm           1       16    1511  sstunted         
6 months    PROBIT          BELARUS     >=167 cm               0    11044   11894  sstunted         
6 months    PROBIT          BELARUS     >=167 cm               1      102   11894  sstunted         
6 months    PROBIT          BELARUS     <162 cm                0      149   11894  sstunted         
6 months    PROBIT          BELARUS     <162 cm                1        7   11894  sstunted         
6 months    PROBIT          BELARUS     [162-167) cm           0      580   11894  sstunted         
6 months    PROBIT          BELARUS     [162-167) cm           1       12   11894  sstunted         
6 months    SAS-CompFeed    INDIA       >=167 cm               0      345     807  sstunted         
6 months    SAS-CompFeed    INDIA       >=167 cm               1       24     807  sstunted         
6 months    SAS-CompFeed    INDIA       <162 cm                0      163     807  sstunted         
6 months    SAS-CompFeed    INDIA       <162 cm                1       31     807  sstunted         
6 months    SAS-CompFeed    INDIA       [162-167) cm           0      220     807  sstunted         
6 months    SAS-CompFeed    INDIA       [162-167) cm           1       24     807  sstunted         
6 months    SAS-FoodSuppl   INDIA       >=167 cm               0       91     372  sstunted         
6 months    SAS-FoodSuppl   INDIA       >=167 cm               1       11     372  sstunted         
6 months    SAS-FoodSuppl   INDIA       <162 cm                0      125     372  sstunted         
6 months    SAS-FoodSuppl   INDIA       <162 cm                1       23     372  sstunted         
6 months    SAS-FoodSuppl   INDIA       [162-167) cm           0      105     372  sstunted         
6 months    SAS-FoodSuppl   INDIA       [162-167) cm           1       17     372  sstunted         
24 months   COHORTS         GUATEMALA   >=167 cm               0       44     526  sstunted         
24 months   COHORTS         GUATEMALA   >=167 cm               1       26     526  sstunted         
24 months   COHORTS         GUATEMALA   <162 cm                0      134     526  sstunted         
24 months   COHORTS         GUATEMALA   <162 cm                1      173     526  sstunted         
24 months   COHORTS         GUATEMALA   [162-167) cm           0       87     526  sstunted         
24 months   COHORTS         GUATEMALA   [162-167) cm           1       62     526  sstunted         
24 months   Keneba          GAMBIA      >=167 cm               0      765    1297  sstunted         
24 months   Keneba          GAMBIA      >=167 cm               1       56    1297  sstunted         
24 months   Keneba          GAMBIA      <162 cm                0       88    1297  sstunted         
24 months   Keneba          GAMBIA      <162 cm                1        9    1297  sstunted         
24 months   Keneba          GAMBIA      [162-167) cm           0      338    1297  sstunted         
24 months   Keneba          GAMBIA      [162-167) cm           1       41    1297  sstunted         
24 months   PROBIT          BELARUS     >=167 cm               0     3394    3670  sstunted         
24 months   PROBIT          BELARUS     >=167 cm               1       51    3670  sstunted         
24 months   PROBIT          BELARUS     <162 cm                0       49    3670  sstunted         
24 months   PROBIT          BELARUS     <162 cm                1        4    3670  sstunted         
24 months   PROBIT          BELARUS     [162-167) cm           0      167    3670  sstunted         
24 months   PROBIT          BELARUS     [162-167) cm           1        5    3670  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
