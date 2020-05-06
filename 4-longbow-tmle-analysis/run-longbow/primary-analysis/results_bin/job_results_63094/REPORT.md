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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        gagebrth             stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ------------------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term          0       48      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Full or late term          1       10      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Preterm                    0        8      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Preterm                    1        3      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Early term                 0       19      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Early term                 1        4      92  stunted          
Birth       COHORTS          GUATEMALA                      Full or late term          0      330     617  stunted          
Birth       COHORTS          GUATEMALA                      Full or late term          1       11     617  stunted          
Birth       COHORTS          GUATEMALA                      Preterm                    0       82     617  stunted          
Birth       COHORTS          GUATEMALA                      Preterm                    1       13     617  stunted          
Birth       COHORTS          GUATEMALA                      Early term                 0      170     617  stunted          
Birth       COHORTS          GUATEMALA                      Early term                 1       11     617  stunted          
Birth       COHORTS          INDIA                          Full or late term          0      536    1293  stunted          
Birth       COHORTS          INDIA                          Full or late term          1       34    1293  stunted          
Birth       COHORTS          INDIA                          Preterm                    0      242    1293  stunted          
Birth       COHORTS          INDIA                          Preterm                    1       43    1293  stunted          
Birth       COHORTS          INDIA                          Early term                 0      391    1293  stunted          
Birth       COHORTS          INDIA                          Early term                 1       47    1293  stunted          
Birth       COHORTS          PHILIPPINES                    Full or late term          0     1128    3024  stunted          
Birth       COHORTS          PHILIPPINES                    Full or late term          1       36    3024  stunted          
Birth       COHORTS          PHILIPPINES                    Preterm                    0      561    3024  stunted          
Birth       COHORTS          PHILIPPINES                    Preterm                    1       88    3024  stunted          
Birth       COHORTS          PHILIPPINES                    Early term                 0     1150    3024  stunted          
Birth       COHORTS          PHILIPPINES                    Early term                 1       61    3024  stunted          
Birth       IRC              INDIA                          Full or late term          0      211     369  stunted          
Birth       IRC              INDIA                          Full or late term          1       27     369  stunted          
Birth       IRC              INDIA                          Preterm                    0       27     369  stunted          
Birth       IRC              INDIA                          Preterm                    1        9     369  stunted          
Birth       IRC              INDIA                          Early term                 0       87     369  stunted          
Birth       IRC              INDIA                          Early term                 1        8     369  stunted          
Birth       JiVitA-3         BANGLADESH                     Full or late term          0     8478   21442  stunted          
Birth       JiVitA-3         BANGLADESH                     Full or late term          1     2466   21442  stunted          
Birth       JiVitA-3         BANGLADESH                     Preterm                    0     2065   21442  stunted          
Birth       JiVitA-3         BANGLADESH                     Preterm                    1     2449   21442  stunted          
Birth       JiVitA-3         BANGLADESH                     Early term                 0     3790   21442  stunted          
Birth       JiVitA-3         BANGLADESH                     Early term                 1     2194   21442  stunted          
Birth       Keneba           GAMBIA                         Full or late term          0      712    1515  stunted          
Birth       Keneba           GAMBIA                         Full or late term          1       22    1515  stunted          
Birth       Keneba           GAMBIA                         Preterm                    0      200    1515  stunted          
Birth       Keneba           GAMBIA                         Preterm                    1       35    1515  stunted          
Birth       Keneba           GAMBIA                         Early term                 0      521    1515  stunted          
Birth       Keneba           GAMBIA                         Early term                 1       25    1515  stunted          
Birth       NIH-Crypto       BANGLADESH                     Full or late term          0      150     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Full or late term          1       12     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Preterm                    0      193     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Preterm                    1       64     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Early term                 0      288     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     Early term                 1       25     732  stunted          
Birth       PROBIT           BELARUS                        Full or late term          0     7095   13893  stunted          
Birth       PROBIT           BELARUS                        Full or late term          1        5   13893  stunted          
Birth       PROBIT           BELARUS                        Preterm                    0      460   13893  stunted          
Birth       PROBIT           BELARUS                        Preterm                    1       12   13893  stunted          
Birth       PROBIT           BELARUS                        Early term                 0     6304   13893  stunted          
Birth       PROBIT           BELARUS                        Early term                 1       17   13893  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Full or late term          0      157     347  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Full or late term          1       55     347  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Preterm                    0       29     347  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Preterm                    1       23     347  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Early term                 0       60     347  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Early term                 1       23     347  stunted          
6 months    COHORTS          GUATEMALA                      Full or late term          0      258     713  stunted          
6 months    COHORTS          GUATEMALA                      Full or late term          1      131     713  stunted          
6 months    COHORTS          GUATEMALA                      Preterm                    0       50     713  stunted          
6 months    COHORTS          GUATEMALA                      Preterm                    1       63     713  stunted          
6 months    COHORTS          GUATEMALA                      Early term                 0      106     713  stunted          
6 months    COHORTS          GUATEMALA                      Early term                 1      105     713  stunted          
6 months    COHORTS          INDIA                          Full or late term          0      478    1312  stunted          
6 months    COHORTS          INDIA                          Full or late term          1       90    1312  stunted          
6 months    COHORTS          INDIA                          Preterm                    0      231    1312  stunted          
6 months    COHORTS          INDIA                          Preterm                    1       68    1312  stunted          
6 months    COHORTS          INDIA                          Early term                 0      381    1312  stunted          
6 months    COHORTS          INDIA                          Early term                 1       64    1312  stunted          
6 months    COHORTS          PHILIPPINES                    Full or late term          0      855    2687  stunted          
6 months    COHORTS          PHILIPPINES                    Full or late term          1      173    2687  stunted          
6 months    COHORTS          PHILIPPINES                    Preterm                    0      401    2687  stunted          
6 months    COHORTS          PHILIPPINES                    Preterm                    1      172    2687  stunted          
6 months    COHORTS          PHILIPPINES                    Early term                 0      863    2687  stunted          
6 months    COHORTS          PHILIPPINES                    Early term                 1      223    2687  stunted          
6 months    IRC              INDIA                          Full or late term          0      198     388  stunted          
6 months    IRC              INDIA                          Full or late term          1       51     388  stunted          
6 months    IRC              INDIA                          Preterm                    0       23     388  stunted          
6 months    IRC              INDIA                          Preterm                    1       19     388  stunted          
6 months    IRC              INDIA                          Early term                 0       75     388  stunted          
6 months    IRC              INDIA                          Early term                 1       22     388  stunted          
6 months    JiVitA-3         BANGLADESH                     Full or late term          0     6770   16010  stunted          
6 months    JiVitA-3         BANGLADESH                     Full or late term          1     1757   16010  stunted          
6 months    JiVitA-3         BANGLADESH                     Preterm                    0     1946   16010  stunted          
6 months    JiVitA-3         BANGLADESH                     Preterm                    1     1099   16010  stunted          
6 months    JiVitA-3         BANGLADESH                     Early term                 0     3246   16010  stunted          
6 months    JiVitA-3         BANGLADESH                     Early term                 1     1192   16010  stunted          
6 months    Keneba           GAMBIA                         Full or late term          0      583    1374  stunted          
6 months    Keneba           GAMBIA                         Full or late term          1       75    1374  stunted          
6 months    Keneba           GAMBIA                         Preterm                    0      160    1374  stunted          
6 months    Keneba           GAMBIA                         Preterm                    1       47    1374  stunted          
6 months    Keneba           GAMBIA                         Early term                 0      450    1374  stunted          
6 months    Keneba           GAMBIA                         Early term                 1       59    1374  stunted          
6 months    NIH-Crypto       BANGLADESH                     Full or late term          0      134     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Full or late term          1       21     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Preterm                    0      180     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Preterm                    1       71     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Early term                 0      251     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     Early term                 1       58     715  stunted          
6 months    PROBIT           BELARUS                        Full or late term          0     7751   15760  stunted          
6 months    PROBIT           BELARUS                        Full or late term          1      256   15760  stunted          
6 months    PROBIT           BELARUS                        Preterm                    0      503   15760  stunted          
6 months    PROBIT           BELARUS                        Preterm                    1       48   15760  stunted          
6 months    PROBIT           BELARUS                        Early term                 0     6886   15760  stunted          
6 months    PROBIT           BELARUS                        Early term                 1      316   15760  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1070    1903  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1       97    1903  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      252    1903  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1       39    1903  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      399    1903  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1       46    1903  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Full or late term          0       69     349  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Full or late term          1      144     349  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Preterm                    0       13     349  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Preterm                    1       39     349  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Early term                 0       18     349  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Early term                 1       66     349  stunted          
24 months   COHORTS          GUATEMALA                      Full or late term          0       76     661  stunted          
24 months   COHORTS          GUATEMALA                      Full or late term          1      299     661  stunted          
24 months   COHORTS          GUATEMALA                      Preterm                    0       19     661  stunted          
24 months   COHORTS          GUATEMALA                      Preterm                    1       88     661  stunted          
24 months   COHORTS          GUATEMALA                      Early term                 0       24     661  stunted          
24 months   COHORTS          GUATEMALA                      Early term                 1      155     661  stunted          
24 months   COHORTS          INDIA                          Full or late term          0      278    1308  stunted          
24 months   COHORTS          INDIA                          Full or late term          1      287    1308  stunted          
24 months   COHORTS          INDIA                          Preterm                    0      138    1308  stunted          
24 months   COHORTS          INDIA                          Preterm                    1      167    1308  stunted          
24 months   COHORTS          INDIA                          Early term                 0      196    1308  stunted          
24 months   COHORTS          INDIA                          Early term                 1      242    1308  stunted          
24 months   COHORTS          PHILIPPINES                    Full or late term          0      384    2424  stunted          
24 months   COHORTS          PHILIPPINES                    Full or late term          1      554    2424  stunted          
24 months   COHORTS          PHILIPPINES                    Preterm                    0      173    2424  stunted          
24 months   COHORTS          PHILIPPINES                    Preterm                    1      340    2424  stunted          
24 months   COHORTS          PHILIPPINES                    Early term                 0      355    2424  stunted          
24 months   COHORTS          PHILIPPINES                    Early term                 1      618    2424  stunted          
24 months   IRC              INDIA                          Full or late term          0      152     390  stunted          
24 months   IRC              INDIA                          Full or late term          1       98     390  stunted          
24 months   IRC              INDIA                          Preterm                    0       19     390  stunted          
24 months   IRC              INDIA                          Preterm                    1       23     390  stunted          
24 months   IRC              INDIA                          Early term                 0       55     390  stunted          
24 months   IRC              INDIA                          Early term                 1       43     390  stunted          
24 months   JiVitA-3         BANGLADESH                     Full or late term          0     2338    8202  stunted          
24 months   JiVitA-3         BANGLADESH                     Full or late term          1     1989    8202  stunted          
24 months   JiVitA-3         BANGLADESH                     Preterm                    0      686    8202  stunted          
24 months   JiVitA-3         BANGLADESH                     Preterm                    1      918    8202  stunted          
24 months   JiVitA-3         BANGLADESH                     Early term                 0     1150    8202  stunted          
24 months   JiVitA-3         BANGLADESH                     Early term                 1     1121    8202  stunted          
24 months   Keneba           GAMBIA                         Full or late term          0      373    1156  stunted          
24 months   Keneba           GAMBIA                         Full or late term          1      184    1156  stunted          
24 months   Keneba           GAMBIA                         Preterm                    0       95    1156  stunted          
24 months   Keneba           GAMBIA                         Preterm                    1       72    1156  stunted          
24 months   Keneba           GAMBIA                         Early term                 0      300    1156  stunted          
24 months   Keneba           GAMBIA                         Early term                 1      132    1156  stunted          
24 months   NIH-Crypto       BANGLADESH                     Full or late term          0       66     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Full or late term          1       13     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Preterm                    0      143     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Preterm                    1       65     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Early term                 0      173     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     Early term                 1       54     514  stunted          
24 months   PROBIT           BELARUS                        Full or late term          0     1888    4035  stunted          
24 months   PROBIT           BELARUS                        Full or late term          1      137    4035  stunted          
24 months   PROBIT           BELARUS                        Preterm                    0      124    4035  stunted          
24 months   PROBIT           BELARUS                        Preterm                    1       13    4035  stunted          
24 months   PROBIT           BELARUS                        Early term                 0     1748    4035  stunted          
24 months   PROBIT           BELARUS                        Early term                 1      125    4035  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0        4       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        0       6  stunted          


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
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
