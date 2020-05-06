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

agecat      studyid         country     fhtcm           stunted   n_cell       n  outcome_variable 
----------  --------------  ----------  -------------  --------  -------  ------  -----------------
Birth       COHORTS         GUATEMALA   >=167 cm              0       26     206  stunted          
Birth       COHORTS         GUATEMALA   >=167 cm              1        3     206  stunted          
Birth       COHORTS         GUATEMALA   <162 cm               0      111     206  stunted          
Birth       COHORTS         GUATEMALA   <162 cm               1       10     206  stunted          
Birth       COHORTS         GUATEMALA   [162-167) cm          0       54     206  stunted          
Birth       COHORTS         GUATEMALA   [162-167) cm          1        2     206  stunted          
Birth       Keneba          GAMBIA      >=167 cm              0      735    1167  stunted          
Birth       Keneba          GAMBIA      >=167 cm              1       37    1167  stunted          
Birth       Keneba          GAMBIA      <162 cm               0       82    1167  stunted          
Birth       Keneba          GAMBIA      <162 cm               1        5    1167  stunted          
Birth       Keneba          GAMBIA      [162-167) cm          0      291    1167  stunted          
Birth       Keneba          GAMBIA      [162-167) cm          1       17    1167  stunted          
Birth       PROBIT          BELARUS     >=167 cm              0    11713   12535  stunted          
Birth       PROBIT          BELARUS     >=167 cm              1       29   12535  stunted          
Birth       PROBIT          BELARUS     <162 cm               0      168   12535  stunted          
Birth       PROBIT          BELARUS     <162 cm               1        0   12535  stunted          
Birth       PROBIT          BELARUS     [162-167) cm          0      621   12535  stunted          
Birth       PROBIT          BELARUS     [162-167) cm          1        4   12535  stunted          
Birth       SAS-CompFeed    INDIA       >=167 cm              0      253     746  stunted          
Birth       SAS-CompFeed    INDIA       >=167 cm              1       90     746  stunted          
Birth       SAS-CompFeed    INDIA       <162 cm               0      126     746  stunted          
Birth       SAS-CompFeed    INDIA       <162 cm               1       64     746  stunted          
Birth       SAS-CompFeed    INDIA       [162-167) cm          0      148     746  stunted          
Birth       SAS-CompFeed    INDIA       [162-167) cm          1       65     746  stunted          
6 months    COHORTS         GUATEMALA   >=167 cm              0       31     336  stunted          
6 months    COHORTS         GUATEMALA   >=167 cm              1       14     336  stunted          
6 months    COHORTS         GUATEMALA   <162 cm               0       88     336  stunted          
6 months    COHORTS         GUATEMALA   <162 cm               1      109     336  stunted          
6 months    COHORTS         GUATEMALA   [162-167) cm          0       61     336  stunted          
6 months    COHORTS         GUATEMALA   [162-167) cm          1       33     336  stunted          
6 months    Keneba          GAMBIA      >=167 cm              0      849    1511  stunted          
6 months    Keneba          GAMBIA      >=167 cm              1      130    1511  stunted          
6 months    Keneba          GAMBIA      <162 cm               0       98    1511  stunted          
6 months    Keneba          GAMBIA      <162 cm               1       15    1511  stunted          
6 months    Keneba          GAMBIA      [162-167) cm          0      355    1511  stunted          
6 months    Keneba          GAMBIA      [162-167) cm          1       64    1511  stunted          
6 months    PROBIT          BELARUS     >=167 cm              0    10763   11894  stunted          
6 months    PROBIT          BELARUS     >=167 cm              1      383   11894  stunted          
6 months    PROBIT          BELARUS     <162 cm               0      141   11894  stunted          
6 months    PROBIT          BELARUS     <162 cm               1       15   11894  stunted          
6 months    PROBIT          BELARUS     [162-167) cm          0      554   11894  stunted          
6 months    PROBIT          BELARUS     [162-167) cm          1       38   11894  stunted          
6 months    SAS-CompFeed    INDIA       >=167 cm              0      281     807  stunted          
6 months    SAS-CompFeed    INDIA       >=167 cm              1       88     807  stunted          
6 months    SAS-CompFeed    INDIA       <162 cm               0      129     807  stunted          
6 months    SAS-CompFeed    INDIA       <162 cm               1       65     807  stunted          
6 months    SAS-CompFeed    INDIA       [162-167) cm          0      168     807  stunted          
6 months    SAS-CompFeed    INDIA       [162-167) cm          1       76     807  stunted          
6 months    SAS-FoodSuppl   INDIA       >=167 cm              0       64     372  stunted          
6 months    SAS-FoodSuppl   INDIA       >=167 cm              1       38     372  stunted          
6 months    SAS-FoodSuppl   INDIA       <162 cm               0       72     372  stunted          
6 months    SAS-FoodSuppl   INDIA       <162 cm               1       76     372  stunted          
6 months    SAS-FoodSuppl   INDIA       [162-167) cm          0       77     372  stunted          
6 months    SAS-FoodSuppl   INDIA       [162-167) cm          1       45     372  stunted          
24 months   COHORTS         GUATEMALA   >=167 cm              0       24     526  stunted          
24 months   COHORTS         GUATEMALA   >=167 cm              1       46     526  stunted          
24 months   COHORTS         GUATEMALA   <162 cm               0       40     526  stunted          
24 months   COHORTS         GUATEMALA   <162 cm               1      267     526  stunted          
24 months   COHORTS         GUATEMALA   [162-167) cm          0       36     526  stunted          
24 months   COHORTS         GUATEMALA   [162-167) cm          1      113     526  stunted          
24 months   Keneba          GAMBIA      >=167 cm              0      565    1297  stunted          
24 months   Keneba          GAMBIA      >=167 cm              1      256    1297  stunted          
24 months   Keneba          GAMBIA      <162 cm               0       63    1297  stunted          
24 months   Keneba          GAMBIA      <162 cm               1       34    1297  stunted          
24 months   Keneba          GAMBIA      [162-167) cm          0      216    1297  stunted          
24 months   Keneba          GAMBIA      [162-167) cm          1      163    1297  stunted          
24 months   PROBIT          BELARUS     >=167 cm              0     3228    3670  stunted          
24 months   PROBIT          BELARUS     >=167 cm              1      217    3670  stunted          
24 months   PROBIT          BELARUS     <162 cm               0       42    3670  stunted          
24 months   PROBIT          BELARUS     <162 cm               1       11    3670  stunted          
24 months   PROBIT          BELARUS     [162-167) cm          0      150    3670  stunted          
24 months   PROBIT          BELARUS     [162-167) cm          1       22    3670  stunted          


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
* agecat: Birth, studyid: PROBIT, country: BELARUS

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
