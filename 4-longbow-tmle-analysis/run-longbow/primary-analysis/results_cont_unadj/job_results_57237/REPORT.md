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

**Outcome Variable:** y_rate_len

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
![](/tmp/9daf99e3-9f0e-439d-b9a1-ba274a6eb694/1ec279c0-49a0-4bf0-ae2a-4fef82c42630/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9daf99e3-9f0e-439d-b9a1-ba274a6eb694/1ec279c0-49a0-4bf0-ae2a-4fef82c42630/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9daf99e3-9f0e-439d-b9a1-ba274a6eb694/1ec279c0-49a0-4bf0-ae2a-4fef82c42630/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                3.8482215    3.3275760   4.3688669
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                3.4104396    3.1782783   3.6426009
0-3 months     IRC              INDIA                          0                    NA                3.0919741    2.7744167   3.4095314
0-3 months     IRC              INDIA                          1                    NA                3.1480697    3.0320208   3.2641187
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                3.1952605    3.1197235   3.2707974
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                3.2011040    3.1354492   3.2667588
0-3 months     PROBIT           BELARUS                        0                    NA                2.7928367    2.6862939   2.8993796
0-3 months     PROBIT           BELARUS                        1                    NA                2.8160025    2.6998317   2.9321733
0-3 months     PROVIDE          BANGLADESH                     0                    NA                3.2907574    3.2098074   3.3717073
0-3 months     PROVIDE          BANGLADESH                     1                    NA                3.2476436    3.2061765   3.2891107
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                3.1488955    3.0828586   3.2149323
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                3.3532593    3.3316131   3.3749054
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.6578641    1.2908296   2.0248986
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.8145027    1.7098177   1.9191877
3-6 months     IRC              INDIA                          0                    NA                1.8759992    1.7211905   2.0308079
3-6 months     IRC              INDIA                          1                    NA                1.8816229    1.8116032   1.9516427
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                1.9313578    1.8651680   1.9975475
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                1.9292976    1.8773436   1.9812517
3-6 months     PROBIT           BELARUS                        0                    NA                2.1408533    2.0878210   2.1938856
3-6 months     PROBIT           BELARUS                        1                    NA                2.0854229    2.0409783   2.1298674
3-6 months     PROVIDE          BANGLADESH                     0                    NA                1.9525429    1.8790497   2.0260361
3-6 months     PROVIDE          BANGLADESH                     1                    NA                1.9697066    1.9315862   2.0078269
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8306837    1.7088686   1.9524987
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7914342    1.7535627   1.8293056
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                1.9871498    1.9236303   2.0506693
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                1.9721897    1.9514296   1.9929498
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.1261462    0.8569579   1.3953344
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.2238965    1.1431373   1.3046557
6-9 months     IRC              INDIA                          0                    NA                1.4408153    1.3221296   1.5595010
6-9 months     IRC              INDIA                          1                    NA                1.3584347    1.3052768   1.4115926
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                1.3648853    1.3043128   1.4254579
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                1.3558891    1.3056360   1.4061422
6-9 months     PROBIT           BELARUS                        0                    NA                1.5542203    1.5154495   1.5929912
6-9 months     PROBIT           BELARUS                        1                    NA                1.5794120    1.5471363   1.6116877
6-9 months     PROVIDE          BANGLADESH                     0                    NA                1.3544135    1.3031393   1.4056877
6-9 months     PROVIDE          BANGLADESH                     1                    NA                1.2619654    1.2333060   1.2906248
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.4354621    1.3194768   1.5514474
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3088206    1.2700474   1.3475938
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                1.3855870    1.3233849   1.4477891
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                1.3456992    1.3256274   1.3657709
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.9299393    0.6800582   1.1798204
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.8972540    0.8267657   0.9677424
9-12 months    IRC              INDIA                          0                    NA                1.1050711    1.0135466   1.1965956
9-12 months    IRC              INDIA                          1                    NA                1.1272425    1.0836836   1.1708015
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                1.1252919    1.0753769   1.1752070
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                1.1110768    1.0641367   1.1580170
9-12 months    PROBIT           BELARUS                        0                    NA                1.3591506    1.3035607   1.4147405
9-12 months    PROBIT           BELARUS                        1                    NA                1.3735479    1.3216840   1.4254118
9-12 months    PROVIDE          BANGLADESH                     0                    NA                1.0684859    1.0092064   1.1277654
9-12 months    PROVIDE          BANGLADESH                     1                    NA                1.0446199    1.0144010   1.0748388
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0571125    0.9478822   1.1663428
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0913197    1.0552804   1.1273590
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                1.0833889    1.0282573   1.1385205
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                1.0807068    1.0619025   1.0995111
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                1.1780988    0.8555378   1.5006598
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.8312320    0.7608331   0.9016309
12-15 months   IRC              INDIA                          0                    NA                0.9868426    0.8905156   1.0831695
12-15 months   IRC              INDIA                          1                    NA                0.9485853    0.9025410   0.9946297
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                0.9906136    0.9404126   1.0408145
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9276186    0.8865376   0.9686996
12-15 months   PROBIT           BELARUS                        0                    NA                1.2314594    0.4033246   2.0595942
12-15 months   PROBIT           BELARUS                        1                    NA                1.1801767    0.8767706   1.4835828
12-15 months   PROVIDE          BANGLADESH                     0                    NA                0.9324313    0.8766052   0.9882574
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.9677070    0.9381426   0.9972713
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0053482    0.8967014   1.1139951
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9185118    0.8795625   0.9574611
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.8940978    0.7858288   1.0023668
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.9236403    0.8957385   0.9515422
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.6125716    0.4354445   0.7896987
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7428417    0.6767253   0.8089581
15-18 months   IRC              INDIA                          0                    NA                0.8380571    0.7704092   0.9057050
15-18 months   IRC              INDIA                          1                    NA                0.8636020    0.8181031   0.9091008
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                0.9363507    0.8895456   0.9831558
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.8940023    0.8553486   0.9326559
15-18 months   PROBIT           BELARUS                        0                    NA                0.9582337    0.4646393   1.4518281
15-18 months   PROBIT           BELARUS                        1                    NA                1.0457767    0.5427224   1.5488310
15-18 months   PROVIDE          BANGLADESH                     0                    NA                0.8935543    0.8443342   0.9427745
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.8447247    0.8172068   0.8722427
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9909352    0.8744773   1.1073932
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9412836    0.8971475   0.9854197
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.7922242    0.6822668   0.9021816
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.8019434    0.7705662   0.8333206
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.5676156    0.2988971   0.8363341
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7102827    0.6449581   0.7756073
18-21 months   IRC              INDIA                          0                    NA                0.7891105    0.7004486   0.8777724
18-21 months   IRC              INDIA                          1                    NA                0.7538474    0.7114277   0.7962672
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                0.7606487    0.7096119   0.8116855
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.7741114    0.7340062   0.8142166
18-21 months   PROBIT           BELARUS                        0                    NA                0.7968109    0.5608545   1.0327673
18-21 months   PROBIT           BELARUS                        1                    NA                0.9104980    0.1971200   1.6238760
18-21 months   PROVIDE          BANGLADESH                     0                    NA                0.8508980    0.8005708   0.9012253
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.8359360    0.8086558   0.8632162
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.7213983    0.5891142   0.8536823
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.6764750    0.6410574   0.7118927
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.8232314    0.5680509   1.0784119
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6978945    0.6349102   0.7608789
21-24 months   IRC              INDIA                          0                    NA                0.7165621    0.6146703   0.8184539
21-24 months   IRC              INDIA                          1                    NA                0.7067780    0.6620816   0.7514744
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.7772265    0.7175014   0.8369515
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.7789486    0.7310469   0.8268503
21-24 months   PROBIT           BELARUS                        0                    NA                1.1540585   -0.9424255   3.2505426
21-24 months   PROBIT           BELARUS                        1                    NA                0.8826465    0.4969362   1.2683567
21-24 months   PROVIDE          BANGLADESH                     0                    NA                0.7823696    0.7293908   0.8353483
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.7576221    0.7287176   0.7865266
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.6312190    0.4951787   0.7672593
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.6962851    0.6562170   0.7363532


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1986993   3.1491097   3.2482889
0-3 months     PROBIT           BELARUS                        NA                   NA                2.8134007   2.6999348   2.9268665
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                3.3354548   3.3148350   3.3560747
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.9301440   1.8892000   1.9710881
3-6 months     PROBIT           BELARUS                        NA                   NA                2.0915582   2.0504573   2.1326590
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7952348   1.7590494   1.8314202
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.9734929   1.9537497   1.9932361
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.3595873   1.3209084   1.3982663
6-9 months     PROBIT           BELARUS                        NA                   NA                1.5766123   1.5455111   1.6077135
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3212094   1.2843848   1.3580340
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.3491441   1.3300330   1.3682552
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1169800   1.0825785   1.1513815
9-12 months    PROBIT           BELARUS                        NA                   NA                1.3719414   1.3218894   1.4219934
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0881107   1.0538772   1.1223442
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                1.0809360   1.0631049   1.0987671
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9539054   0.9219515   0.9858592
12-15 months   PROBIT           BELARUS                        NA                   NA                1.1869393   0.8605053   1.5133732
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9264365   0.8896371   0.9632358
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.9212146   0.8941029   0.9483263
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9105786   0.8806836   0.9404737
15-18 months   PROBIT           BELARUS                        NA                   NA                1.0339982   0.5968654   1.4711310
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9458319   0.9043293   0.9873344
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.8011612   0.7709824   0.8313400
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7686622   0.7370838   0.8002406
18-21 months   PROBIT           BELARUS                        NA                   NA                0.8948530   0.2840229   1.5056831
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6801213   0.6458475   0.7143951
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7782829   0.7409131   0.8156527
21-24 months   PROBIT           BELARUS                        NA                   NA                0.9164106   0.4532958   1.3795255
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6906984   0.6522388   0.7291579


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.4377818   -1.0078437    0.1322800
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                  0.0560957   -0.2820020    0.3941933
0-3 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    0                  0.0058435   -0.0942383    0.1059254
0-3 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        1                    0                  0.0231658   -0.0362849    0.0826165
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                 -0.0431138   -0.1340666    0.0478390
0-3 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.2043638    0.1348698    0.2738578
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.1566386   -0.2250331    0.5383103
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                  0.0056238   -0.1642835    0.1755311
3-6 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0020601   -0.0862047    0.0820845
3-6 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        1                    0                 -0.0554305   -0.1178667    0.0070057
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                  0.0171637   -0.0656277    0.0999550
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0392495   -0.1668158    0.0883167
3-6 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       1                    0                 -0.0149601   -0.0817860    0.0518659
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.0977503   -0.1832912    0.3787919
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                 -0.0823806   -0.2124270    0.0476658
6-9 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0089962   -0.0877008    0.0697084
6-9 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        1                    0                  0.0251917   -0.0117553    0.0621387
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                 -0.0924481   -0.1511883   -0.0337079
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1266415   -0.2489360   -0.0043470
6-9 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       1                    0                 -0.0398878   -0.1052482    0.0254725
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.0326852   -0.2923180    0.2269475
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                  0.0221714   -0.0791899    0.1235327
9-12 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.0142151   -0.0827344    0.0543042
9-12 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        1                    0                  0.0143973   -0.0346489    0.0634436
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                 -0.0238660   -0.0904035    0.0426715
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0342072   -0.0808150    0.1492293
9-12 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.0026821   -0.0609324    0.0555682
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.3468668   -0.6770207   -0.0167129
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                 -0.0382572   -0.1450231    0.0685087
12-15 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0629950   -0.1278624    0.0018724
12-15 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        1                    0                 -0.0512827   -0.8007015    0.6981360
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                  0.0352756   -0.0278956    0.0984468
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0868364   -0.2022538    0.0285810
12-15 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0295426   -0.0822639    0.1413490
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.1302701   -0.0587944    0.3193346
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                  0.0255449   -0.0559805    0.1070702
15-18 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0423484   -0.1030512    0.0183543
15-18 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        1                    0                  0.0875430   -0.6338511    0.8089371
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                 -0.0488296   -0.1052198    0.0075606
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0496516   -0.1741925    0.0748893
15-18 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0097192   -0.1046275    0.1240659
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.1426671   -0.1338776    0.4192117
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0352631   -0.1335502    0.0630241
18-21 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0134627   -0.0514463    0.0783718
18-21 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        1                    0                  0.1136871   -0.6806823    0.9080565
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                 -0.0149621   -0.0722075    0.0422834
18-21 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0449232   -0.1818666    0.0920201
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.1253368   -0.3881754    0.1375017
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                 -0.0097841   -0.1210483    0.1014800
21-24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0017221   -0.0748393    0.0782835
21-24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        1                    0                 -0.2714121   -2.3280074    1.7851832
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0247475   -0.0850983    0.0356033
21-24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0650661   -0.0767521    0.2068844


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.3880339   -0.8941588    0.1180910
0-3 months     IRC              INDIA                          0                    NA                 0.0462752   -0.2326412    0.3251916
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0034388   -0.0554585    0.0623362
0-3 months     PROBIT           BELARUS                        0                    NA                 0.0205639   -0.0320537    0.0731816
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.0330763   -0.1028685    0.0367158
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.1865594    0.1231071    0.2500117
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.1459239   -0.2096675    0.5015153
3-6 months     IRC              INDIA                          0                    NA                 0.0046747   -0.1365583    0.1459076
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0012138   -0.0507889    0.0483614
3-6 months     PROBIT           BELARUS                        0                    NA                -0.0492951   -0.1045413    0.0059510
3-6 months     PROVIDE          BANGLADESH                     0                    NA                 0.0132028   -0.0504855    0.0768911
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0354489   -0.1506639    0.0797661
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0136569   -0.0746615    0.0473478
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0911920   -0.1710078    0.3533918
6-9 months     IRC              INDIA                          0                    NA                -0.0684143   -0.1764554    0.0396267
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0052980   -0.0516502    0.0410541
6-9 months     PROBIT           BELARUS                        0                    NA                 0.0223919   -0.0104844    0.0552683
6-9 months     PROVIDE          BANGLADESH                     0                    NA                -0.0719950   -0.1178490   -0.0261409
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1142527   -0.2246004   -0.0039050
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0364429   -0.0961591    0.0232733
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0304169   -0.2720327    0.2111990
9-12 months    IRC              INDIA                          0                    NA                 0.0184023   -0.0657316    0.1025361
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0083119   -0.0483826    0.0317587
9-12 months    PROBIT           BELARUS                        0                    NA                 0.0127908   -0.0307467    0.0563283
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0185109   -0.0701251    0.0331033
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0309982   -0.0732355    0.1352320
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0024529   -0.0557253    0.0508195
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.3247263   -0.6339428   -0.0155099
12-15 months   IRC              INDIA                          0                    NA                -0.0314886   -0.1193771    0.0563999
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0367082   -0.0746287    0.0012123
12-15 months   PROBIT           BELARUS                        0                    NA                -0.0445202   -0.6936032    0.6045628
12-15 months   PROVIDE          BANGLADESH                     0                    NA                 0.0273187   -0.0216195    0.0762569
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0789117   -0.1838109    0.0259875
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0271168   -0.0755097    0.1297433
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.1213419   -0.0548018    0.2974857
15-18 months   IRC              INDIA                          0                    NA                 0.0210645   -0.0461690    0.0882980
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0257720   -0.0627776    0.0112335
15-18 months   PROBIT           BELARUS                        0                    NA                 0.0757645   -0.5556444    0.7071733
15-18 months   PROVIDE          BANGLADESH                     0                    NA                -0.0374545   -0.0807443    0.0058352
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0451034   -0.1582413    0.0680345
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0089370   -0.0962074    0.1140815
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.1323763   -0.1242544    0.3890070
18-21 months   IRC              INDIA                          0                    NA                -0.0293083   -0.1110090    0.0523924
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0080135   -0.0306302    0.0466573
18-21 months   PROBIT           BELARUS                        0                    NA                 0.0980421   -0.5875601    0.7836442
18-21 months   PROVIDE          BANGLADESH                     0                    NA                -0.0115603   -0.0557938    0.0326731
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0412770   -0.1671065    0.0845526
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.1163842   -0.3604753    0.1277069
21-24 months   IRC              INDIA                          0                    NA                -0.0081492   -0.1008224    0.0845239
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0010564   -0.0459100    0.0480228
21-24 months   PROBIT           BELARUS                        0                    NA                -0.2376479   -2.0399226    1.5646269
21-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0192305   -0.0661366    0.0276755
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0594794   -0.0701662    0.1891249
