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

agecat      studyid          country                        parity    stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  --------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      1               0      103     852  stunted          
Birth       COHORTS          GUATEMALA                      1               1        9     852  stunted          
Birth       COHORTS          GUATEMALA                      2               0      124     852  stunted          
Birth       COHORTS          GUATEMALA                      2               1       13     852  stunted          
Birth       COHORTS          GUATEMALA                      3+              0      575     852  stunted          
Birth       COHORTS          GUATEMALA                      3+              1       28     852  stunted          
Birth       COHORTS          INDIA                          1               0      582    4122  stunted          
Birth       COHORTS          INDIA                          1               1      114    4122  stunted          
Birth       COHORTS          INDIA                          2               0      939    4122  stunted          
Birth       COHORTS          INDIA                          2               1       98    4122  stunted          
Birth       COHORTS          INDIA                          3+              0     2126    4122  stunted          
Birth       COHORTS          INDIA                          3+              1      263    4122  stunted          
Birth       COHORTS          PHILIPPINES                    1               0      629    3050  stunted          
Birth       COHORTS          PHILIPPINES                    1               1       46    3050  stunted          
Birth       COHORTS          PHILIPPINES                    2               0      645    3050  stunted          
Birth       COHORTS          PHILIPPINES                    2               1       42    3050  stunted          
Birth       COHORTS          PHILIPPINES                    3+              0     1589    3050  stunted          
Birth       COHORTS          PHILIPPINES                    3+              1       99    3050  stunted          
Birth       GMS-Nepal        NEPAL                          1               0      158     696  stunted          
Birth       GMS-Nepal        NEPAL                          1               1       53     696  stunted          
Birth       GMS-Nepal        NEPAL                          2               0      152     696  stunted          
Birth       GMS-Nepal        NEPAL                          2               1       28     696  stunted          
Birth       GMS-Nepal        NEPAL                          3+              0      264     696  stunted          
Birth       GMS-Nepal        NEPAL                          3+              1       41     696  stunted          
Birth       JiVitA-3         BANGLADESH                     1               0     4469   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     1               1     2987   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     2               0     5323   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     2               1     2292   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     3+              0     5276   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     3+              1     2108   22455  stunted          
Birth       Keneba           GAMBIA                         1               0      140    1407  stunted          
Birth       Keneba           GAMBIA                         1               1       16    1407  stunted          
Birth       Keneba           GAMBIA                         2               0      138    1407  stunted          
Birth       Keneba           GAMBIA                         2               1        8    1407  stunted          
Birth       Keneba           GAMBIA                         3+              0     1054    1407  stunted          
Birth       Keneba           GAMBIA                         3+              1       51    1407  stunted          
Birth       PROVIDE          BANGLADESH                     1               0      186     539  stunted          
Birth       PROVIDE          BANGLADESH                     1               1       20     539  stunted          
Birth       PROVIDE          BANGLADESH                     2               0      167     539  stunted          
Birth       PROVIDE          BANGLADESH                     2               1       16     539  stunted          
Birth       PROVIDE          BANGLADESH                     3+              0      138     539  stunted          
Birth       PROVIDE          BANGLADESH                     3+              1       12     539  stunted          
Birth       SAS-CompFeed     INDIA                          1               0      238    1252  stunted          
Birth       SAS-CompFeed     INDIA                          1               1      123    1252  stunted          
Birth       SAS-CompFeed     INDIA                          2               0      215    1252  stunted          
Birth       SAS-CompFeed     INDIA                          2               1       74    1252  stunted          
Birth       SAS-CompFeed     INDIA                          3+              0      450    1252  stunted          
Birth       SAS-CompFeed     INDIA                          3+              1      152    1252  stunted          
Birth       ZVITAMBO         ZIMBABWE                       1               0     5349   13874  stunted          
Birth       ZVITAMBO         ZIMBABWE                       1               1      640   13874  stunted          
Birth       ZVITAMBO         ZIMBABWE                       2               0     3735   13874  stunted          
Birth       ZVITAMBO         ZIMBABWE                       2               1      409   13874  stunted          
Birth       ZVITAMBO         ZIMBABWE                       3+              0     3356   13874  stunted          
Birth       ZVITAMBO         ZIMBABWE                       3+              1      385   13874  stunted          
6 months    COHORTS          GUATEMALA                      1               0       78     961  stunted          
6 months    COHORTS          GUATEMALA                      1               1       54     961  stunted          
6 months    COHORTS          GUATEMALA                      2               0       88     961  stunted          
6 months    COHORTS          GUATEMALA                      2               1       51     961  stunted          
6 months    COHORTS          GUATEMALA                      3+              0      401     961  stunted          
6 months    COHORTS          GUATEMALA                      3+              1      289     961  stunted          
6 months    COHORTS          INDIA                          1               0      616    4291  stunted          
6 months    COHORTS          INDIA                          1               1      124    4291  stunted          
6 months    COHORTS          INDIA                          2               0      925    4291  stunted          
6 months    COHORTS          INDIA                          2               1      171    4291  stunted          
6 months    COHORTS          INDIA                          3+              0     1910    4291  stunted          
6 months    COHORTS          INDIA                          3+              1      545    4291  stunted          
6 months    COHORTS          PHILIPPINES                    1               0      474    2708  stunted          
6 months    COHORTS          PHILIPPINES                    1               1      100    2708  stunted          
6 months    COHORTS          PHILIPPINES                    2               0      497    2708  stunted          
6 months    COHORTS          PHILIPPINES                    2               1      109    2708  stunted          
6 months    COHORTS          PHILIPPINES                    3+              0     1165    2708  stunted          
6 months    COHORTS          PHILIPPINES                    3+              1      363    2708  stunted          
6 months    GMS-Nepal        NEPAL                          1               0      117     564  stunted          
6 months    GMS-Nepal        NEPAL                          1               1       36     564  stunted          
6 months    GMS-Nepal        NEPAL                          2               0      120     564  stunted          
6 months    GMS-Nepal        NEPAL                          2               1       29     564  stunted          
6 months    GMS-Nepal        NEPAL                          3+              0      205     564  stunted          
6 months    GMS-Nepal        NEPAL                          3+              1       57     564  stunted          
6 months    JiVitA-3         BANGLADESH                     1               0     4618   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     1               1     1778   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     2               0     4463   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     2               1     1237   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     3+              0     3504   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     3+              1     1211   16811  stunted          
6 months    Keneba           GAMBIA                         1               0      175    1623  stunted          
6 months    Keneba           GAMBIA                         1               1       19    1623  stunted          
6 months    Keneba           GAMBIA                         2               0      150    1623  stunted          
6 months    Keneba           GAMBIA                         2               1       14    1623  stunted          
6 months    Keneba           GAMBIA                         3+              0     1071    1623  stunted          
6 months    Keneba           GAMBIA                         3+              1      194    1623  stunted          
6 months    PROVIDE          BANGLADESH                     1               0      176     604  stunted          
6 months    PROVIDE          BANGLADESH                     1               1       42     604  stunted          
6 months    PROVIDE          BANGLADESH                     2               0      188     604  stunted          
6 months    PROVIDE          BANGLADESH                     2               1       34     604  stunted          
6 months    PROVIDE          BANGLADESH                     3+              0      144     604  stunted          
6 months    PROVIDE          BANGLADESH                     3+              1       20     604  stunted          
6 months    SAS-CompFeed     INDIA                          1               0      288    1336  stunted          
6 months    SAS-CompFeed     INDIA                          1               1      104    1336  stunted          
6 months    SAS-CompFeed     INDIA                          2               0      222    1336  stunted          
6 months    SAS-CompFeed     INDIA                          2               1       82    1336  stunted          
6 months    SAS-CompFeed     INDIA                          3+              0      446    1336  stunted          
6 months    SAS-CompFeed     INDIA                          3+              1      194    1336  stunted          
6 months    SAS-FoodSuppl    INDIA                          1               0        2     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          1               1        5     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          2               0       44     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          2               1       28     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          3+              0      171     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          3+              1      130     380  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      625    1995  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       55    1995  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      584    1995  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1       73    1995  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      593    1995  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1       65    1995  stunted          
6 months    ZVITAMBO         ZIMBABWE                       1               0     2911    8668  stunted          
6 months    ZVITAMBO         ZIMBABWE                       1               1      555    8668  stunted          
6 months    ZVITAMBO         ZIMBABWE                       2               0     2237    8668  stunted          
6 months    ZVITAMBO         ZIMBABWE                       2               1      401    8668  stunted          
6 months    ZVITAMBO         ZIMBABWE                       3+              0     2108    8668  stunted          
6 months    ZVITAMBO         ZIMBABWE                       3+              1      456    8668  stunted          
24 months   COHORTS          GUATEMALA                      1               0       30    1064  stunted          
24 months   COHORTS          GUATEMALA                      1               1      136    1064  stunted          
24 months   COHORTS          GUATEMALA                      2               0       29    1064  stunted          
24 months   COHORTS          GUATEMALA                      2               1      122    1064  stunted          
24 months   COHORTS          GUATEMALA                      3+              0      141    1064  stunted          
24 months   COHORTS          GUATEMALA                      3+              1      606    1064  stunted          
24 months   COHORTS          INDIA                          1               0      303    3380  stunted          
24 months   COHORTS          INDIA                          1               1      261    3380  stunted          
24 months   COHORTS          INDIA                          2               0      425    3380  stunted          
24 months   COHORTS          INDIA                          2               1      423    3380  stunted          
24 months   COHORTS          INDIA                          3+              0      711    3380  stunted          
24 months   COHORTS          INDIA                          3+              1     1257    3380  stunted          
24 months   COHORTS          PHILIPPINES                    1               0      254    2445  stunted          
24 months   COHORTS          PHILIPPINES                    1               1      270    2445  stunted          
24 months   COHORTS          PHILIPPINES                    2               0      223    2445  stunted          
24 months   COHORTS          PHILIPPINES                    2               1      321    2445  stunted          
24 months   COHORTS          PHILIPPINES                    3+              0      445    2445  stunted          
24 months   COHORTS          PHILIPPINES                    3+              1      932    2445  stunted          
24 months   GMS-Nepal        NEPAL                          1               0       79     488  stunted          
24 months   GMS-Nepal        NEPAL                          1               1       51     488  stunted          
24 months   GMS-Nepal        NEPAL                          2               0       68     488  stunted          
24 months   GMS-Nepal        NEPAL                          2               1       62     488  stunted          
24 months   GMS-Nepal        NEPAL                          3+              0      122     488  stunted          
24 months   GMS-Nepal        NEPAL                          3+              1      106     488  stunted          
24 months   JiVitA-3         BANGLADESH                     1               0     1623    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     1               1     1550    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     2               0     1553    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     2               1     1370    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     3+              0     1217    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     3+              1     1319    8632  stunted          
24 months   Keneba           GAMBIA                         1               0       95    1376  stunted          
24 months   Keneba           GAMBIA                         1               1       42    1376  stunted          
24 months   Keneba           GAMBIA                         2               0      103    1376  stunted          
24 months   Keneba           GAMBIA                         2               1       36    1376  stunted          
24 months   Keneba           GAMBIA                         3+              0      708    1376  stunted          
24 months   Keneba           GAMBIA                         3+              1      392    1376  stunted          
24 months   PROVIDE          BANGLADESH                     1               0      149     578  stunted          
24 months   PROVIDE          BANGLADESH                     1               1       62     578  stunted          
24 months   PROVIDE          BANGLADESH                     2               0      138     578  stunted          
24 months   PROVIDE          BANGLADESH                     2               1       75     578  stunted          
24 months   PROVIDE          BANGLADESH                     3+              0      101     578  stunted          
24 months   PROVIDE          BANGLADESH                     3+              1       53     578  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0        3       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        1       6  stunted          
24 months   ZVITAMBO         ZIMBABWE                       1               0      411    1639  stunted          
24 months   ZVITAMBO         ZIMBABWE                       1               1      229    1639  stunted          
24 months   ZVITAMBO         ZIMBABWE                       2               0      338    1639  stunted          
24 months   ZVITAMBO         ZIMBABWE                       2               1      169    1639  stunted          
24 months   ZVITAMBO         ZIMBABWE                       3+              0      321    1639  stunted          
24 months   ZVITAMBO         ZIMBABWE                       3+              1      171    1639  stunted          


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
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
