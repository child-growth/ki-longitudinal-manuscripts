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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        vagbrth    sstunted   n_cell       n
----------  ---------------  -----------------------------  --------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0                 0       10      92
Birth       CMC-V-BCS-2002   INDIA                          0                 1        1      92
Birth       CMC-V-BCS-2002   INDIA                          1                 0       78      92
Birth       CMC-V-BCS-2002   INDIA                          1                 1        3      92
Birth       IRC              INDIA                          0                 0       67     388
Birth       IRC              INDIA                          0                 1        1     388
Birth       IRC              INDIA                          1                 0      305     388
Birth       IRC              INDIA                          1                 1       15     388
Birth       JiVitA-3         BANGLADESH                     0                 0      501   22418
Birth       JiVitA-3         BANGLADESH                     0                 1       38   22418
Birth       JiVitA-3         BANGLADESH                     1                 0    19471   22418
Birth       JiVitA-3         BANGLADESH                     1                 1     2408   22418
Birth       JiVitA-4         BANGLADESH                     0                 0       73    2822
Birth       JiVitA-4         BANGLADESH                     0                 1        3    2822
Birth       JiVitA-4         BANGLADESH                     1                 0     2516    2822
Birth       JiVitA-4         BANGLADESH                     1                 1      230    2822
Birth       NIH-Crypto       BANGLADESH                     0                 0      185     477
Birth       NIH-Crypto       BANGLADESH                     0                 1        1     477
Birth       NIH-Crypto       BANGLADESH                     1                 0      290     477
Birth       NIH-Crypto       BANGLADESH                     1                 1        1     477
Birth       PROBIT           BELARUS                        0                 0     1596   13893
Birth       PROBIT           BELARUS                        0                 1        1   13893
Birth       PROBIT           BELARUS                        1                 0    12292   13893
Birth       PROBIT           BELARUS                        1                 1        4   13893
Birth       PROVIDE          BANGLADESH                     0                 0      107     539
Birth       PROVIDE          BANGLADESH                     0                 1        1     539
Birth       PROVIDE          BANGLADESH                     1                 0      428     539
Birth       PROVIDE          BANGLADESH                     1                 1        3     539
Birth       ZVITAMBO         ZIMBABWE                       0                 0     1136   13761
Birth       ZVITAMBO         ZIMBABWE                       0                 1       30   13761
Birth       ZVITAMBO         ZIMBABWE                       1                 0    12191   13761
Birth       ZVITAMBO         ZIMBABWE                       1                 1      404   13761
6 months    CMC-V-BCS-2002   INDIA                          0                 0       23     369
6 months    CMC-V-BCS-2002   INDIA                          0                 1        2     369
6 months    CMC-V-BCS-2002   INDIA                          1                 0      304     369
6 months    CMC-V-BCS-2002   INDIA                          1                 1       40     369
6 months    IRC              INDIA                          0                 0       64     407
6 months    IRC              INDIA                          0                 1        5     407
6 months    IRC              INDIA                          1                 0      314     407
6 months    IRC              INDIA                          1                 1       24     407
6 months    JiVitA-3         BANGLADESH                     0                 0     1029   16732
6 months    JiVitA-3         BANGLADESH                     0                 1       48   16732
6 months    JiVitA-3         BANGLADESH                     1                 0    14687   16732
6 months    JiVitA-3         BANGLADESH                     1                 1      968   16732
6 months    JiVitA-4         BANGLADESH                     0                 0      326    4052
6 months    JiVitA-4         BANGLADESH                     0                 1       10    4052
6 months    JiVitA-4         BANGLADESH                     1                 0     3504    4052
6 months    JiVitA-4         BANGLADESH                     1                 1      212    4052
6 months    NIH-Crypto       BANGLADESH                     0                 0      183     457
6 months    NIH-Crypto       BANGLADESH                     0                 1        4     457
6 months    NIH-Crypto       BANGLADESH                     1                 0      258     457
6 months    NIH-Crypto       BANGLADESH                     1                 1       12     457
6 months    PROBIT           BELARUS                        0                 0     1781   15760
6 months    PROBIT           BELARUS                        0                 1       18   15760
6 months    PROBIT           BELARUS                        1                 0    13802   15760
6 months    PROBIT           BELARUS                        1                 1      159   15760
6 months    PROVIDE          BANGLADESH                     0                 0      137     604
6 months    PROVIDE          BANGLADESH                     0                 1        2     604
6 months    PROVIDE          BANGLADESH                     1                 0      453     604
6 months    PROVIDE          BANGLADESH                     1                 1       12     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0      189    2005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0    2005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1797    2005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       19    2005
6 months    ZVITAMBO         ZIMBABWE                       0                 0      714    8601
6 months    ZVITAMBO         ZIMBABWE                       0                 1       26    8601
6 months    ZVITAMBO         ZIMBABWE                       1                 0     7536    8601
6 months    ZVITAMBO         ZIMBABWE                       1                 1      325    8601
24 months   CMC-V-BCS-2002   INDIA                          0                 0       16     371
24 months   CMC-V-BCS-2002   INDIA                          0                 1        8     371
24 months   CMC-V-BCS-2002   INDIA                          1                 0      230     371
24 months   CMC-V-BCS-2002   INDIA                          1                 1      117     371
24 months   IRC              INDIA                          0                 0       66     409
24 months   IRC              INDIA                          0                 1        3     409
24 months   IRC              INDIA                          1                 0      302     409
24 months   IRC              INDIA                          1                 1       38     409
24 months   JiVitA-3         BANGLADESH                     0                 0      444    8584
24 months   JiVitA-3         BANGLADESH                     0                 1       36    8584
24 months   JiVitA-3         BANGLADESH                     1                 0     6805    8584
24 months   JiVitA-3         BANGLADESH                     1                 1     1299    8584
24 months   JiVitA-4         BANGLADESH                     0                 0      309    4020
24 months   JiVitA-4         BANGLADESH                     0                 1       14    4020
24 months   JiVitA-4         BANGLADESH                     1                 0     3335    4020
24 months   JiVitA-4         BANGLADESH                     1                 1      362    4020
24 months   NIH-Crypto       BANGLADESH                     0                 0       92     260
24 months   NIH-Crypto       BANGLADESH                     0                 1        7     260
24 months   NIH-Crypto       BANGLADESH                     1                 0      146     260
24 months   NIH-Crypto       BANGLADESH                     1                 1       15     260
24 months   PROBIT           BELARUS                        0                 0      465    4035
24 months   PROBIT           BELARUS                        0                 1        7    4035
24 months   PROBIT           BELARUS                        1                 0     3505    4035
24 months   PROBIT           BELARUS                        1                 1       58    4035
24 months   PROVIDE          BANGLADESH                     0                 0      130     578
24 months   PROVIDE          BANGLADESH                     0                 1        7     578
24 months   PROVIDE          BANGLADESH                     1                 0      396     578
24 months   PROVIDE          BANGLADESH                     1                 1       45     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1       6
24 months   ZVITAMBO         ZIMBABWE                       0                 0      123    1619
24 months   ZVITAMBO         ZIMBABWE                       0                 1       10    1619
24 months   ZVITAMBO         ZIMBABWE                       1                 0     1321    1619
24 months   ZVITAMBO         ZIMBABWE                       1                 1      165    1619


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




# Results Detail

## Results Plots
![](/tmp/ebf49102-0878-4fc6-9b35-d648105f2fbd/a70badc2-172e-4fb4-9796-a5dbac481ebc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ebf49102-0878-4fc6-9b35-d648105f2fbd/a70badc2-172e-4fb4-9796-a5dbac481ebc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ebf49102-0878-4fc6-9b35-d648105f2fbd/a70badc2-172e-4fb4-9796-a5dbac481ebc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ebf49102-0878-4fc6-9b35-d648105f2fbd/a70badc2-172e-4fb4-9796-a5dbac481ebc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       JiVitA-3         BANGLADESH   0                    NA                0.0705009    0.0500393   0.0909626
Birth       JiVitA-3         BANGLADESH   1                    NA                0.1100599    0.1054254   0.1146944
Birth       ZVITAMBO         ZIMBABWE     0                    NA                0.0257290    0.0166410   0.0348169
Birth       ZVITAMBO         ZIMBABWE     1                    NA                0.0320762    0.0289989   0.0351536
6 months    IRC              INDIA        0                    NA                0.0724638    0.0112169   0.1337106
6 months    IRC              INDIA        1                    NA                0.0710059    0.0435916   0.0984202
6 months    JiVitA-3         BANGLADESH   0                    NA                0.0445682    0.0315590   0.0575775
6 months    JiVitA-3         BANGLADESH   1                    NA                0.0618333    0.0578120   0.0658546
6 months    JiVitA-4         BANGLADESH   0                    NA                0.0297619    0.0129382   0.0465857
6 months    JiVitA-4         BANGLADESH   1                    NA                0.0570506    0.0479948   0.0661064
6 months    PROBIT           BELARUS      0                    NA                0.0100056    0.0022546   0.0177565
6 months    PROBIT           BELARUS      1                    NA                0.0113889    0.0054839   0.0172938
6 months    ZVITAMBO         ZIMBABWE     0                    NA                0.0351351    0.0218685   0.0484018
6 months    ZVITAMBO         ZIMBABWE     1                    NA                0.0413433    0.0369422   0.0457445
24 months   CMC-V-BCS-2002   INDIA        0                    NA                0.3333333    0.1444810   0.5221856
24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.3371758    0.2873681   0.3869835
24 months   JiVitA-3         BANGLADESH   0                    NA                0.0750000    0.0506412   0.0993588
24 months   JiVitA-3         BANGLADESH   1                    NA                0.1602912    0.1512982   0.1692842
24 months   JiVitA-4         BANGLADESH   0                    NA                0.0433437    0.0193595   0.0673278
24 months   JiVitA-4         BANGLADESH   1                    NA                0.0979172    0.0869460   0.1088885
24 months   NIH-Crypto       BANGLADESH   0                    NA                0.0707071    0.0201159   0.1212983
24 months   NIH-Crypto       BANGLADESH   1                    NA                0.0931677    0.0481827   0.1381527
24 months   PROBIT           BELARUS      0                    NA                0.0148305   -0.0151878   0.0448488
24 months   PROBIT           BELARUS      1                    NA                0.0162784    0.0035356   0.0290213
24 months   PROVIDE          BANGLADESH   0                    NA                0.0510949    0.0141917   0.0879981
24 months   PROVIDE          BANGLADESH   1                    NA                0.1020408    0.0737647   0.1303170
24 months   ZVITAMBO         ZIMBABWE     0                    NA                0.0751880    0.0303591   0.1200168
24 months   ZVITAMBO         ZIMBABWE     1                    NA                0.1110363    0.0950574   0.1270153


### Parameter: E(Y)


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3         BANGLADESH   NA                   NA                0.1091088   0.1045539   0.1136636
Birth       ZVITAMBO         ZIMBABWE     NA                   NA                0.0315384   0.0286183   0.0344585
6 months    IRC              INDIA        NA                   NA                0.0712531   0.0462303   0.0962759
6 months    JiVitA-3         BANGLADESH   NA                   NA                0.0607220   0.0568736   0.0645704
6 months    JiVitA-4         BANGLADESH   NA                   NA                0.0547878   0.0463432   0.0632323
6 months    PROBIT           BELARUS      NA                   NA                0.0112310   0.0054733   0.0169886
6 months    ZVITAMBO         ZIMBABWE     NA                   NA                0.0408092   0.0366277   0.0449907
24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.3369272   0.2887662   0.3850883
24 months   JiVitA-3         BANGLADESH   NA                   NA                0.1555219   0.1467695   0.1642743
24 months   JiVitA-4         BANGLADESH   NA                   NA                0.0935323   0.0832327   0.1038320
24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.0846154   0.0507212   0.1185095
24 months   PROBIT           BELARUS      NA                   NA                0.0161090   0.0017796   0.0304385
24 months   PROVIDE          BANGLADESH   NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ZVITAMBO         ZIMBABWE     NA                   NA                0.1080914   0.0929623   0.1232206


### Parameter: RR


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH   1                    0                 1.5611124   1.1638521   2.093971
Birth       ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE     1                    0                 1.2466958   0.8645736   1.797707
6 months    IRC              INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    IRC              INDIA        1                    0                 0.9798817   0.3869206   2.481564
6 months    JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH   1                    0                 1.3873842   1.0276404   1.873063
6 months    JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4         BANGLADESH   1                    0                 1.9168999   1.0674976   3.442167
6 months    PROBIT           BELARUS      0                    0                 1.0000000   1.0000000   1.000000
6 months    PROBIT           BELARUS      1                    0                 1.1382542   0.5855673   2.212594
6 months    ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE     1                    0                 1.1766951   0.7948521   1.741974
24 months   CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   CMC-V-BCS-2002   INDIA        1                    0                 1.0115274   0.5632472   1.816587
24 months   JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH   1                    0                 2.1372162   1.5401014   2.965839
24 months   JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4         BANGLADESH   1                    0                 2.2590904   1.2824044   3.979626
24 months   NIH-Crypto       BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH   1                    0                 1.3176575   0.5558122   3.123755
24 months   PROBIT           BELARUS      0                    0                 1.0000000   1.0000000   1.000000
24 months   PROBIT           BELARUS      1                    0                 1.0976304   0.2628358   4.583821
24 months   PROVIDE          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH   1                    0                 1.9970845   0.9213693   4.328717
24 months   ZVITAMBO         ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
24 months   ZVITAMBO         ZIMBABWE     1                    0                 1.4767833   0.7997323   2.727024


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3         BANGLADESH   0                    NA                 0.0386078    0.0181190   0.0590966
Birth       ZVITAMBO         ZIMBABWE     0                    NA                 0.0058094   -0.0029725   0.0145913
6 months    IRC              INDIA        0                    NA                -0.0012107   -0.0569370   0.0545156
6 months    JiVitA-3         BANGLADESH   0                    NA                 0.0161537    0.0033515   0.0289560
6 months    JiVitA-4         BANGLADESH   0                    NA                 0.0250259    0.0076220   0.0424297
6 months    PROBIT           BELARUS      0                    NA                 0.0012254   -0.0047972   0.0072480
6 months    ZVITAMBO         ZIMBABWE     0                    NA                 0.0056741   -0.0071010   0.0184492
24 months   CMC-V-BCS-2002   INDIA        0                    NA                 0.0035939   -0.1790816   0.1862693
24 months   JiVitA-3         BANGLADESH   0                    NA                 0.0805219    0.0563595   0.1046843
24 months   JiVitA-4         BANGLADESH   0                    NA                 0.0501887    0.0258348   0.0745426
24 months   NIH-Crypto       BANGLADESH   0                    NA                 0.0139083   -0.0280339   0.0558505
24 months   PROBIT           BELARUS      0                    NA                 0.0012785   -0.0168090   0.0193660
24 months   PROVIDE          BANGLADESH   0                    NA                 0.0388705    0.0033552   0.0743858
24 months   ZVITAMBO         ZIMBABWE     0                    NA                 0.0329034   -0.0107811   0.0765879


### Parameter: PAF


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3         BANGLADESH   0                    NA                 0.3538472    0.1374702   0.5159431
Birth       ZVITAMBO         ZIMBABWE     0                    NA                 0.1842014   -0.1469755   0.4197545
6 months    IRC              INDIA        0                    NA                -0.0169915   -1.1942765   0.5286502
6 months    JiVitA-3         BANGLADESH   0                    NA                 0.2660277    0.0230551   0.4485714
6 months    JiVitA-4         BANGLADESH   0                    NA                 0.4567782    0.0505774   0.6891901
6 months    PROBIT           BELARUS      0                    NA                 0.1091096   -0.6179860   0.5094607
6 months    ZVITAMBO         ZIMBABWE     0                    NA                 0.1390390   -0.2380581   0.4012770
24 months   CMC-V-BCS-2002   INDIA        0                    NA                 0.0106667   -0.7113840   0.4280766
24 months   JiVitA-3         BANGLADESH   0                    NA                 0.5177528    0.3370617   0.6491946
24 months   JiVitA-4         BANGLADESH   0                    NA                 0.5365918    0.2011411   0.7311826
24 months   NIH-Crypto       BANGLADESH   0                    NA                 0.1643710   -0.5055688   0.5362046
24 months   PROBIT           BELARUS      0                    NA                 0.0793677   -2.2956083   0.7428202
24 months   PROVIDE          BANGLADESH   0                    NA                 0.4320606   -0.1095941   0.7093035
24 months   ZVITAMBO         ZIMBABWE     0                    NA                 0.3044039   -0.2402677   0.6098794
