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

**Outcome Variable:** y_rate_haz

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

agecat         studyid          country                        vagbrth    n_cell       n
-------------  ---------------  -----------------------------  --------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          0              10      88
0-3 months     CMC-V-BCS-2002   INDIA                          1              78      88
0-3 months     IRC              INDIA                          0              66     377
0-3 months     IRC              INDIA                          1             311     377
0-3 months     NIH-Crypto       BANGLADESH                     0             193     469
0-3 months     NIH-Crypto       BANGLADESH                     1             276     469
0-3 months     PROBIT           BELARUS                        0            1721   15323
0-3 months     PROBIT           BELARUS                        1           13602   15323
0-3 months     PROVIDE          BANGLADESH                     0             149     640
0-3 months     PROVIDE          BANGLADESH                     1             491     640
0-3 months     ZVITAMBO         ZIMBABWE                       0             690    7920
0-3 months     ZVITAMBO         ZIMBABWE                       1            7230    7920
3-6 months     CMC-V-BCS-2002   INDIA                          0              21     307
3-6 months     CMC-V-BCS-2002   INDIA                          1             286     307
3-6 months     IRC              INDIA                          0              67     397
3-6 months     IRC              INDIA                          1             330     397
3-6 months     NIH-Crypto       BANGLADESH                     0             182     443
3-6 months     NIH-Crypto       BANGLADESH                     1             261     443
3-6 months     PROBIT           BELARUS                        0            1473   13308
3-6 months     PROBIT           BELARUS                        1           11835   13308
3-6 months     PROVIDE          BANGLADESH                     0             138     598
3-6 months     PROVIDE          BANGLADESH                     1             460     598
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             159    1642
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1483    1642
3-6 months     ZVITAMBO         ZIMBABWE                       0             534    6130
3-6 months     ZVITAMBO         ZIMBABWE                       1            5596    6130
6-9 months     CMC-V-BCS-2002   INDIA                          0              21     313
6-9 months     CMC-V-BCS-2002   INDIA                          1             292     313
6-9 months     IRC              INDIA                          0              69     407
6-9 months     IRC              INDIA                          1             338     407
6-9 months     NIH-Crypto       BANGLADESH                     0             178     433
6-9 months     NIH-Crypto       BANGLADESH                     1             255     433
6-9 months     PROBIT           BELARUS                        0            1381   12426
6-9 months     PROBIT           BELARUS                        1           11045   12426
6-9 months     PROVIDE          BANGLADESH                     0             125     565
6-9 months     PROVIDE          BANGLADESH                     1             440     565
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             144    1472
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1328    1472
6-9 months     ZVITAMBO         ZIMBABWE                       0             508    5882
6-9 months     ZVITAMBO         ZIMBABWE                       1            5374    5882
9-12 months    CMC-V-BCS-2002   INDIA                          0              22     317
9-12 months    CMC-V-BCS-2002   INDIA                          1             295     317
9-12 months    IRC              INDIA                          0              68     400
9-12 months    IRC              INDIA                          1             332     400
9-12 months    NIH-Crypto       BANGLADESH                     0             174     419
9-12 months    NIH-Crypto       BANGLADESH                     1             245     419
9-12 months    PROBIT           BELARUS                        0            1415   12681
9-12 months    PROBIT           BELARUS                        1           11266   12681
9-12 months    PROVIDE          BANGLADESH                     0             127     566
9-12 months    PROVIDE          BANGLADESH                     1             439     566
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             100    1066
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             966    1066
9-12 months    ZVITAMBO         ZIMBABWE                       0             503    5886
9-12 months    ZVITAMBO         ZIMBABWE                       1            5383    5886
12-15 months   CMC-V-BCS-2002   INDIA                          0              21     329
12-15 months   CMC-V-BCS-2002   INDIA                          1             308     329
12-15 months   IRC              INDIA                          0              69     390
12-15 months   IRC              INDIA                          1             321     390
12-15 months   NIH-Crypto       BANGLADESH                     0             169     405
12-15 months   NIH-Crypto       BANGLADESH                     1             236     405
12-15 months   PROBIT           BELARUS                        0             132    1001
12-15 months   PROBIT           BELARUS                        1             869    1001
12-15 months   PROVIDE          BANGLADESH                     0             120     532
12-15 months   PROVIDE          BANGLADESH                     1             412     532
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              71     778
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             707     778
12-15 months   ZVITAMBO         ZIMBABWE                       0             207    2521
12-15 months   ZVITAMBO         ZIMBABWE                       1            2314    2521
15-18 months   CMC-V-BCS-2002   INDIA                          0              22     321
15-18 months   CMC-V-BCS-2002   INDIA                          1             299     321
15-18 months   IRC              INDIA                          0              67     382
15-18 months   IRC              INDIA                          1             315     382
15-18 months   NIH-Crypto       BANGLADESH                     0             137     350
15-18 months   NIH-Crypto       BANGLADESH                     1             213     350
15-18 months   PROBIT           BELARUS                        0              37     275
15-18 months   PROBIT           BELARUS                        1             238     275
15-18 months   PROVIDE          BANGLADESH                     0             123     528
15-18 months   PROVIDE          BANGLADESH                     1             405     528
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              60     655
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             595     655
15-18 months   ZVITAMBO         ZIMBABWE                       0             162    2013
15-18 months   ZVITAMBO         ZIMBABWE                       1            1851    2013
18-21 months   CMC-V-BCS-2002   INDIA                          0              22     305
18-21 months   CMC-V-BCS-2002   INDIA                          1             283     305
18-21 months   IRC              INDIA                          0              64     379
18-21 months   IRC              INDIA                          1             315     379
18-21 months   NIH-Crypto       BANGLADESH                     0             119     294
18-21 months   NIH-Crypto       BANGLADESH                     1             175     294
18-21 months   PROBIT           BELARUS                        0              30     218
18-21 months   PROBIT           BELARUS                        1             188     218
18-21 months   PROVIDE          BANGLADESH                     0             123     541
18-21 months   PROVIDE          BANGLADESH                     1             418     541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               8       9
18-21 months   ZVITAMBO         ZIMBABWE                       0             128    1577
18-21 months   ZVITAMBO         ZIMBABWE                       1            1449    1577
21-24 months   CMC-V-BCS-2002   INDIA                          0              22     308
21-24 months   CMC-V-BCS-2002   INDIA                          1             286     308
21-24 months   IRC              INDIA                          0              65     389
21-24 months   IRC              INDIA                          1             324     389
21-24 months   NIH-Crypto       BANGLADESH                     0              92     238
21-24 months   NIH-Crypto       BANGLADESH                     1             146     238
21-24 months   PROBIT           BELARUS                        0              26     209
21-24 months   PROBIT           BELARUS                        1             183     209
21-24 months   PROVIDE          BANGLADESH                     0             105     471
21-24 months   PROVIDE          BANGLADESH                     1             366     471
21-24 months   ZVITAMBO         ZIMBABWE                       0              99    1153
21-24 months   ZVITAMBO         ZIMBABWE                       1            1054    1153


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/7e4e45e4-8d1d-4d41-ab1a-e927f154d60c/504ec203-ee5c-4ec8-9aea-255c8d5be9c6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7e4e45e4-8d1d-4d41-ab1a-e927f154d60c/504ec203-ee5c-4ec8-9aea-255c8d5be9c6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7e4e45e4-8d1d-4d41-ab1a-e927f154d60c/504ec203-ee5c-4ec8-9aea-255c8d5be9c6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.1158390   -0.1145272    0.3462052
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.1139511   -0.2284793    0.0005771
0-3 months     IRC              INDIA                          0                    NA                -0.2919819   -0.4459867   -0.1379771
0-3 months     IRC              INDIA                          1                    NA                -0.2481544   -0.3066744   -0.1896343
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.2049059   -0.2403198   -0.1694920
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.1955304   -0.2263700   -0.1646907
0-3 months     PROBIT           BELARUS                        0                    NA                -0.4420487   -0.4987445   -0.3853529
0-3 months     PROBIT           BELARUS                        1                    NA                -0.4265339   -0.4864484   -0.3666194
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.1895102   -0.2279795   -0.1510410
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.1875941   -0.2069954   -0.1681928
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.2409416   -0.2740365   -0.2078466
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.1317024   -0.1424695   -0.1209353
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.1496482   -0.3216775    0.0223812
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.0941663   -0.1436836   -0.0446491
3-6 months     IRC              INDIA                          0                    NA                -0.0569315   -0.1313094    0.0174464
3-6 months     IRC              INDIA                          1                    NA                -0.0508686   -0.0837706   -0.0179666
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0123906   -0.0427971    0.0180158
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0108551   -0.0346816    0.0129713
3-6 months     PROBIT           BELARUS                        0                    NA                 0.0720234    0.0475401    0.0965067
3-6 months     PROBIT           BELARUS                        1                    NA                 0.0471231    0.0264082    0.0678381
3-6 months     PROVIDE          BANGLADESH                     0                    NA                -0.0412622   -0.0755747   -0.0069498
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0226726   -0.0405789   -0.0047662
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0712699   -0.1281048   -0.0144350
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0860997   -0.1036695   -0.0685299
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0067783   -0.0227691    0.0363256
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0030868   -0.0128055    0.0066320
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.1159503   -0.2338631    0.0019625
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.0795215   -0.1151726   -0.0438704
6-9 months     IRC              INDIA                          0                    NA                 0.0130323   -0.0407393    0.0668039
6-9 months     IRC              INDIA                          1                    NA                -0.0222490   -0.0457678    0.0012697
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0162450   -0.0426056    0.0101157
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0167697   -0.0384487    0.0049093
6-9 months     PROBIT           BELARUS                        0                    NA                 0.0420448    0.0241540    0.0599357
6-9 months     PROBIT           BELARUS                        1                    NA                 0.0540969    0.0391067    0.0690871
6-9 months     PROVIDE          BANGLADESH                     0                    NA                -0.0334467   -0.0557130   -0.0111805
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0693752   -0.0816770   -0.0570733
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0037782   -0.0548545    0.0472981
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0586489   -0.0756790   -0.0416188
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0144553   -0.0419693    0.0130588
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0321345   -0.0409609   -0.0233081
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.1029657   -0.2009886   -0.0049427
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.1199977   -0.1497550   -0.0902403
9-12 months    IRC              INDIA                          0                    NA                -0.0457109   -0.0860526   -0.0053691
9-12 months    IRC              INDIA                          1                    NA                -0.0341692   -0.0528190   -0.0155194
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0346296   -0.0558732   -0.0133861
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0374535   -0.0565882   -0.0183187
9-12 months    PROBIT           BELARUS                        0                    NA                 0.0304750    0.0070090    0.0539409
9-12 months    PROBIT           BELARUS                        1                    NA                 0.0375327    0.0163384    0.0587269
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0595251   -0.0840679   -0.0349823
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0640659   -0.0762985   -0.0518333
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0818230   -0.1275311   -0.0361148
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0631325   -0.0782371   -0.0480278
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0591049   -0.0819275   -0.0362824
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0592777   -0.0671319   -0.0514234
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0514761   -0.0710614    0.1740136
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0796002   -0.1080147   -0.0511856
12-15 months   IRC              INDIA                          0                    NA                -0.0336532   -0.0732718    0.0059655
12-15 months   IRC              INDIA                          1                    NA                -0.0479881   -0.0664621   -0.0295140
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0320633   -0.0514160   -0.0127105
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0529232   -0.0688312   -0.0370151
12-15 months   PROBIT           BELARUS                        0                    NA                 0.0216841   -0.2803900    0.3237582
12-15 months   PROBIT           BELARUS                        1                    NA                 0.0052889   -0.1126350    0.1232128
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0547496   -0.0767720   -0.0327272
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0368800   -0.0481976   -0.0255624
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0356215   -0.0785603    0.0073173
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0694307   -0.0847380   -0.0541234
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0750842   -0.1175612   -0.0326073
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0608142   -0.0717533   -0.0498751
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.1144982   -0.1836371   -0.0453593
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0646722   -0.0892491   -0.0400953
15-18 months   IRC              INDIA                          0                    NA                -0.0487427   -0.0753112   -0.0221742
15-18 months   IRC              INDIA                          1                    NA                -0.0363416   -0.0532154   -0.0194678
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0119835   -0.0286340    0.0046670
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0228489   -0.0367799   -0.0089179
15-18 months   PROBIT           BELARUS                        0                    NA                -0.0407130   -0.2265704    0.1451443
15-18 months   PROBIT           BELARUS                        1                    NA                -0.0071773   -0.1844616    0.1701069
15-18 months   PROVIDE          BANGLADESH                     0                    NA                -0.0265704   -0.0442665   -0.0088744
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0410067   -0.0510377   -0.0309758
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0010850   -0.0419428    0.0441129
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0180871   -0.0341216   -0.0020527
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0647501   -0.1049632   -0.0245371
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0613950   -0.0728853   -0.0499048
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0928591   -0.1869299    0.0012118
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0399493   -0.0628315   -0.0170672
18-21 months   IRC              INDIA                          0                    NA                -0.0327397   -0.0636394   -0.0018401
18-21 months   IRC              INDIA                          1                    NA                -0.0415733   -0.0562379   -0.0269087
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0420152   -0.0593537   -0.0246768
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0330090   -0.0469482   -0.0190698
18-21 months   PROBIT           BELARUS                        0                    NA                -0.0661951   -0.1428020    0.0104118
18-21 months   PROBIT           BELARUS                        1                    NA                -0.0248159   -0.2853350    0.2357032
18-21 months   PROVIDE          BANGLADESH                     0                    NA                -0.0093717   -0.0263857    0.0076423
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0114013   -0.0206977   -0.0021050
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0560188   -0.1018583   -0.0101794
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0704081   -0.0826621   -0.0581540
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0530327   -0.0294041    0.1354695
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                 0.0149833   -0.0066768    0.0366434
21-24 months   IRC              INDIA                          0                    NA                -0.0088467   -0.0421556    0.0244623
21-24 months   IRC              INDIA                          1                    NA                -0.0149236   -0.0297804   -0.0000667
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0424058    0.0228773    0.0619344
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0416292    0.0256943    0.0575640
21-24 months   PROBIT           BELARUS                        0                    NA                 0.1579437   -0.5121501    0.8280375
21-24 months   PROBIT           BELARUS                        1                    NA                 0.0367664   -0.0907483    0.1642811
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0536248    0.0354408    0.0718088
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0441140    0.0342957    0.0539323
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0002536   -0.0453238    0.0448166
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0188972    0.0057720    0.0320225


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.1993885   -0.2226680   -0.1761091
0-3 months     PROBIT           BELARUS                        NA                   NA                -0.4282764   -0.4869030   -0.3696499
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1412195   -0.1514852   -0.1309538
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0114860   -0.0302773    0.0073054
3-6 months     PROBIT           BELARUS                        NA                   NA                 0.0498792    0.0307240    0.0690345
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0846637   -0.1014607   -0.0678666
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0022274   -0.0114656    0.0070108
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0165540   -0.0333000    0.0001920
6-9 months     PROBIT           BELARUS                        NA                   NA                 0.0527574    0.0382697    0.0672452
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0532811   -0.0694588   -0.0371035
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0306076   -0.0390155   -0.0221997
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0362808   -0.0505296   -0.0220320
9-12 months    PROBIT           BELARUS                        NA                   NA                 0.0367452    0.0162651    0.0572253
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0648858   -0.0792331   -0.0505385
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0592629   -0.0667061   -0.0518198
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0442187   -0.0565537   -0.0318837
12-15 months   PROBIT           BELARUS                        NA                   NA                 0.0074509   -0.1179050    0.1328067
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0663453   -0.0808132   -0.0518773
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0619859   -0.0726164   -0.0513554
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0185959   -0.0293040   -0.0078878
15-18 months   PROBIT           BELARUS                        NA                   NA                -0.0116894   -0.1658506    0.1424718
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0163309   -0.0314264   -0.0012354
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0616650   -0.0727152   -0.0506149
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0366544   -0.0475333   -0.0257755
18-21 months   PROBIT           BELARUS                        NA                   NA                -0.0305103   -0.2535719    0.1925513
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0692401   -0.0810999   -0.0573803
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                 0.0419294    0.0295786    0.0542801
21-24 months   PROBIT           BELARUS                        NA                   NA                 0.0518411   -0.0993926    0.2030747
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0172529    0.0046422    0.0298636


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.2297901   -0.4870551    0.0274750
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                  0.0438275   -0.1209210    0.2085761
0-3 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    0                  0.0093755   -0.0375844    0.0563354
0-3 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        1                    0                  0.0155148   -0.0162875    0.0473172
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                  0.0019161   -0.0411686    0.0450008
0-3 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.1092391    0.0744367    0.1440416
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.0554819   -0.1235323    0.2344960
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                  0.0060629   -0.0752673    0.0873931
3-6 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    0                  0.0015355   -0.0370942    0.0401652
3-6 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        1                    0                 -0.0249003   -0.0537563    0.0039558
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                  0.0185897   -0.0201141    0.0572934
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0148298   -0.0743185    0.0446589
3-6 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       1                    0                 -0.0098650   -0.0409697    0.0212396
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.0364288   -0.0867558    0.1596134
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                 -0.0352813   -0.0939713    0.0234087
6-9 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0005247   -0.0346548    0.0336053
6-9 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        1                    0                  0.0120520   -0.0046411    0.0287452
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                 -0.0359284   -0.0613670   -0.0104899
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0548707   -0.1087113   -0.0010300
6-9 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       1                    0                 -0.0176792   -0.0465743    0.0112159
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.0170320   -0.1194722    0.0854083
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                  0.0115416   -0.0329024    0.0559857
9-12 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.0028238   -0.0314145    0.0257668
9-12 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        1                    0                  0.0070577   -0.0137592    0.0278747
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                 -0.0045408   -0.0319631    0.0228816
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0186905   -0.0294487    0.0668297
9-12 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.0001728   -0.0243090    0.0239635
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.1310763   -0.2568651   -0.0052874
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                 -0.0143349   -0.0580491    0.0293792
12-15 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0208599   -0.0459118    0.0041920
12-15 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        1                    0                 -0.0163952   -0.2880920    0.2553016
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                  0.0178696   -0.0068907    0.0426300
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0338092   -0.0793949    0.0117765
12-15 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0142700   -0.0295929    0.0581330
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0498260   -0.0235512    0.1232032
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                  0.0124011   -0.0190728    0.0438750
15-18 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0108654   -0.0325751    0.0108443
15-18 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        1                    0                  0.0335357   -0.2293371    0.2964084
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                 -0.0144363   -0.0347776    0.0059051
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0191722   -0.0650905    0.0267462
15-18 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0033551   -0.0384673    0.0451775
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0529097   -0.0439041    0.1497235
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0088336   -0.0430365    0.0253693
18-21 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0090062   -0.0132407    0.0312531
18-21 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        1                    0                  0.0413792   -0.2456935    0.3284519
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                 -0.0020296   -0.0214177    0.0173585
18-21 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0143892   -0.0618383    0.0330599
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0380494   -0.1232843    0.0471855
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                 -0.0060769   -0.0425490    0.0303952
21-24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0007767   -0.0259815    0.0244282
21-24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        1                    0                 -0.1211773   -0.7779478    0.5355932
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0095108   -0.0301762    0.0111545
21-24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0191508   -0.0277916    0.0660933


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.2036776   -0.4322223    0.0248672
0-3 months     IRC              INDIA                          0                    NA                 0.0361548   -0.0997622    0.1720719
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0055173   -0.0221211    0.0331557
0-3 months     PROBIT           BELARUS                        0                    NA                 0.0137723   -0.0143597    0.0419043
0-3 months     PROVIDE          BANGLADESH                     0                    NA                 0.0014700   -0.0315841    0.0345241
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0997221    0.0679445    0.1314997
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0516867   -0.1150895    0.2184629
3-6 months     IRC              INDIA                          0                    NA                 0.0050397   -0.0625651    0.0726445
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0009047   -0.0218547    0.0236640
3-6 months     PROBIT           BELARUS                        0                    NA                -0.0221442   -0.0476799    0.0033915
3-6 months     PROVIDE          BANGLADESH                     0                    NA                 0.0142997   -0.0154790    0.0440785
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0133938   -0.0671224    0.0403349
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0090057   -0.0374008    0.0193894
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0339847   -0.0809396    0.1489089
6-9 months     IRC              INDIA                          0                    NA                -0.0293000   -0.0780571    0.0194572
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0003090   -0.0204087    0.0197907
6-9 months     PROBIT           BELARUS                        0                    NA                 0.0107126   -0.0041380    0.0255632
6-9 months     PROVIDE          BANGLADESH                     0                    NA                -0.0279797   -0.0478284   -0.0081309
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0495029   -0.0980836   -0.0009221
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0161523   -0.0425522    0.0102475
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0158499   -0.1111820    0.0794821
9-12 months    IRC              INDIA                          0                    NA                 0.0095796   -0.0273114    0.0464705
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0016512   -0.0183694    0.0150671
9-12 months    PROBIT           BELARUS                        0                    NA                 0.0062702   -0.0122041    0.0247445
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0035219   -0.0247918    0.0177479
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0169371   -0.0266874    0.0605617
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0001580   -0.0222316    0.0219156
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.1227097   -0.2405205   -0.0048989
12-15 months   IRC              INDIA                          0                    NA                -0.0117987   -0.0477830    0.0241855
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0121554   -0.0267879    0.0024771
12-15 months   PROBIT           BELARUS                        0                    NA                -0.0142332   -0.2496210    0.2211546
12-15 months   PROVIDE          BANGLADESH                     0                    NA                 0.0138389   -0.0053469    0.0330247
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0307238   -0.0721550    0.0107074
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0130983   -0.0271633    0.0533599
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0464111   -0.0219510    0.1147733
15-18 months   IRC              INDIA                          0                    NA                 0.0102260   -0.0157319    0.0361840
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0066124   -0.0198360    0.0066112
15-18 months   PROBIT           BELARUS                        0                    NA                 0.0290236   -0.2012808    0.2593280
15-18 months   PROVIDE          BANGLADESH                     0                    NA                -0.0110733   -0.0266847    0.0045382
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0174159   -0.0591302    0.0242983
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0030851   -0.0353716    0.0415418
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0490933   -0.0407504    0.1389370
18-21 months   IRC              INDIA                          0                    NA                -0.0073419   -0.0357711    0.0210872
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0053608   -0.0078910    0.0186127
18-21 months   PROBIT           BELARUS                        0                    NA                 0.0356848   -0.2121556    0.2835252
18-21 months   PROVIDE          BANGLADESH                     0                    NA                -0.0015682   -0.0165484    0.0134121
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0132213   -0.0568195    0.0303770
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0353316   -0.1144858    0.0438227
21-24 months   IRC              INDIA                          0                    NA                -0.0050615   -0.0354401    0.0253171
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0004764   -0.0159383    0.0149854
21-24 months   PROBIT           BELARUS                        0                    NA                -0.1061026   -0.6813962    0.4691909
21-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0073906   -0.0234530    0.0086718
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0175065   -0.0254065    0.0604194
