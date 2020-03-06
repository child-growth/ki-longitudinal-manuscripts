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

**Outcome Variable:** wast_rec90d

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

agecat        studyid          country                        vagbrth    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  --------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          0                    0       11    324
0-24 months   CMC-V-BCS-2002   INDIA                          0                    1        9    324
0-24 months   CMC-V-BCS-2002   INDIA                          1                    0      109    324
0-24 months   CMC-V-BCS-2002   INDIA                          1                    1      195    324
0-24 months   IRC              INDIA                          0                    0       24    395
0-24 months   IRC              INDIA                          0                    1       39    395
0-24 months   IRC              INDIA                          1                    0      138    395
0-24 months   IRC              INDIA                          1                    1      194    395
0-24 months   NIH-Crypto       BANGLADESH                     0                    0       18    189
0-24 months   NIH-Crypto       BANGLADESH                     0                    1       42    189
0-24 months   NIH-Crypto       BANGLADESH                     1                    0       58    189
0-24 months   NIH-Crypto       BANGLADESH                     1                    1       71    189
0-24 months   PROBIT           BELARUS                        0                    0       62   4408
0-24 months   PROBIT           BELARUS                        0                    1      418   4408
0-24 months   PROBIT           BELARUS                        1                    0      464   4408
0-24 months   PROBIT           BELARUS                        1                    1     3464   4408
0-24 months   PROVIDE          BANGLADESH                     0                    0       25    308
0-24 months   PROVIDE          BANGLADESH                     0                    1       44    308
0-24 months   PROVIDE          BANGLADESH                     1                    0      104    308
0-24 months   PROVIDE          BANGLADESH                     1                    1      135    308
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       24    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       32    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      240    705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      409    705
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0      121   3582
0-24 months   ZVITAMBO         ZIMBABWE                       0                    1      184   3582
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0     1512   3582
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1     1765   3582
0-6 months    CMC-V-BCS-2002   INDIA                          0                    0        8    201
0-6 months    CMC-V-BCS-2002   INDIA                          0                    1        8    201
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0       58    201
0-6 months    CMC-V-BCS-2002   INDIA                          1                    1      127    201
0-6 months    IRC              INDIA                          0                    0       16    240
0-6 months    IRC              INDIA                          0                    1       31    240
0-6 months    IRC              INDIA                          1                    0       71    240
0-6 months    IRC              INDIA                          1                    1      122    240
0-6 months    NIH-Crypto       BANGLADESH                     0                    0        4    111
0-6 months    NIH-Crypto       BANGLADESH                     0                    1       36    111
0-6 months    NIH-Crypto       BANGLADESH                     1                    0       10    111
0-6 months    NIH-Crypto       BANGLADESH                     1                    1       61    111
0-6 months    PROBIT           BELARUS                        0                    0       47   4267
0-6 months    PROBIT           BELARUS                        0                    1      414   4267
0-6 months    PROBIT           BELARUS                        1                    0      376   4267
0-6 months    PROBIT           BELARUS                        1                    1     3430   4267
0-6 months    PROVIDE          BANGLADESH                     0                    0        6    185
0-6 months    PROVIDE          BANGLADESH                     0                    1       40    185
0-6 months    PROVIDE          BANGLADESH                     1                    0       34    185
0-6 months    PROVIDE          BANGLADESH                     1                    1      105    185
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0        8    335
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       17    335
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       91    335
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      219    335
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0       41   2501
0-6 months    ZVITAMBO         ZIMBABWE                       0                    1      179   2501
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0      591   2501
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1     1690   2501
6-24 months   CMC-V-BCS-2002   INDIA                          0                    0        3    123
6-24 months   CMC-V-BCS-2002   INDIA                          0                    1        1    123
6-24 months   CMC-V-BCS-2002   INDIA                          1                    0       51    123
6-24 months   CMC-V-BCS-2002   INDIA                          1                    1       68    123
6-24 months   IRC              INDIA                          0                    0        8    155
6-24 months   IRC              INDIA                          0                    1        8    155
6-24 months   IRC              INDIA                          1                    0       67    155
6-24 months   IRC              INDIA                          1                    1       72    155
6-24 months   NIH-Crypto       BANGLADESH                     0                    0       14     78
6-24 months   NIH-Crypto       BANGLADESH                     0                    1        6     78
6-24 months   NIH-Crypto       BANGLADESH                     1                    0       48     78
6-24 months   NIH-Crypto       BANGLADESH                     1                    1       10     78
6-24 months   PROBIT           BELARUS                        0                    0       15    141
6-24 months   PROBIT           BELARUS                        0                    1        4    141
6-24 months   PROBIT           BELARUS                        1                    0       88    141
6-24 months   PROBIT           BELARUS                        1                    1       34    141
6-24 months   PROVIDE          BANGLADESH                     0                    0       19    123
6-24 months   PROVIDE          BANGLADESH                     0                    1        4    123
6-24 months   PROVIDE          BANGLADESH                     1                    0       70    123
6-24 months   PROVIDE          BANGLADESH                     1                    1       30    123
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       16    370
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       15    370
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      149    370
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      190    370
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0       80   1081
6-24 months   ZVITAMBO         ZIMBABWE                       0                    1        5   1081
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0      921   1081
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1       75   1081


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/b27708d2-ba0a-4c1b-8dd1-a127431946b0/0bff328e-dba4-49c8-9b24-e2a919ec5604/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b27708d2-ba0a-4c1b-8dd1-a127431946b0/0bff328e-dba4-49c8-9b24-e2a919ec5604/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b27708d2-ba0a-4c1b-8dd1-a127431946b0/0bff328e-dba4-49c8-9b24-e2a919ec5604/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b27708d2-ba0a-4c1b-8dd1-a127431946b0/0bff328e-dba4-49c8-9b24-e2a919ec5604/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.4500000   0.2010987   0.6989013
0-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6414474   0.5845014   0.6983933
0-24 months   IRC              INDIA                          0                    NA                0.6190476   0.4772971   0.7607982
0-24 months   IRC              INDIA                          1                    NA                0.5843373   0.5284088   0.6402659
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.7000000   0.5714463   0.8285537
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.5503876   0.4653879   0.6353873
0-24 months   PROBIT           BELARUS                        0                    NA                0.8708333   0.8415466   0.9001201
0-24 months   PROBIT           BELARUS                        1                    NA                0.8818737   0.8718410   0.8919064
0-24 months   PROVIDE          BANGLADESH                     0                    NA                0.6376812   0.5149751   0.7603872
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.5648536   0.5011691   0.6285380
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5714286   0.4271663   0.7156908
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6302003   0.5909976   0.6694030
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.6032787   0.5479093   0.6586480
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.5386024   0.5213719   0.5558329
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.5000000   0.2484317   0.7515683
0-6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.6864865   0.6188619   0.7541111
0-6 months    IRC              INDIA                          0                    NA                0.6595745   0.5187984   0.8003505
0-6 months    IRC              INDIA                          1                    NA                0.6321244   0.5625866   0.7016621
0-6 months    PROBIT           BELARUS                        0                    NA                0.8980477   0.8703707   0.9257247
0-6 months    PROBIT           BELARUS                        1                    NA                0.9012086   0.8916645   0.9107527
0-6 months    PROVIDE          BANGLADESH                     0                    NA                0.8695652   0.7698152   0.9693153
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.7553957   0.6854609   0.8253304
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6800000   0.4929570   0.8670430
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7064516   0.6550297   0.7578735
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.8136364   0.7619638   0.8653089
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.7409031   0.7229421   0.7588642
6-24 months   IRC              INDIA                          0                    NA                0.5000000   0.2294903   0.7705097
6-24 months   IRC              INDIA                          1                    NA                0.5179856   0.4297875   0.6061838
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.3000000   0.0725547   0.5274453
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1724138   0.0793318   0.2654957
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4838710   0.2943667   0.6733752
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5604720   0.5059373   0.6150067
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0588235   0.0060316   0.1116154
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0753012   0.0590916   0.0915108


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.5978836   0.5264156   0.6693516
0-24 months   PROBIT           BELARUS                        NA                   NA                0.8806715   0.8711794   0.8901636
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6255319   0.5876598   0.6634040
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.5441094   0.5276459   0.5605730
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.6716418   0.6057305   0.7375531
0-6 months    IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    PROBIT           BELARUS                        NA                   NA                0.9008671   0.8918443   0.9098900
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7044776   0.6548846   0.7540707
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.7473011   0.7302821   0.7643201
6-24 months   IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2051282   0.1132549   0.2970015
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5540541   0.5015831   0.6065250
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0740056   0.0585029   0.0895082


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 1.4254386   0.8141162   2.4958048
0-24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          1                    0                 0.9439296   0.7364714   1.2098271
0-24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     1                    0                 0.7862680   0.6183979   0.9997081
0-24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        1                    0                 1.0126780   0.9773554   1.0492771
0-24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     1                    0                 0.8857931   0.7086201   1.1072638
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1028505   0.8503520   1.4303246
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 0.8927920   0.8100947   0.9839313
0-6 months    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0                 1.3729730   0.8222475   2.2925636
0-6 months    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          1                    0                 0.9583821   0.7537882   1.2185071
0-6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        1                    0                 1.0035197   0.9713443   1.0367610
0-6 months    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     1                    0                 0.8687050   0.7496395   1.0066819
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0388994   0.7816335   1.3808416
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0                 0.9106072   0.8507633   0.9746606
6-24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          1                    0                 1.0359712   0.5874383   1.8269773
6-24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     1                    0                 0.5747126   0.2266054   1.4575764
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1583088   0.7736858   1.7341395
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.2801205   0.5086675   3.2215712


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.1796296   -0.0595047    0.4187640
0-24 months   IRC              INDIA                          0                    NA                -0.0291742   -0.1572589    0.0989105
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.1021164   -0.2073521    0.0031193
0-24 months   PROBIT           BELARUS                        0                    NA                 0.0098382   -0.0177502    0.0374265
0-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0565123   -0.1637092    0.0506845
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0541033   -0.0835572    0.1917639
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0591693   -0.1122107   -0.0061278
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.1716418   -0.0677857    0.4110693
0-6 months    IRC              INDIA                          0                    NA                -0.0220745   -0.1483923    0.1042433
0-6 months    PROBIT           BELARUS                        0                    NA                 0.0028194   -0.0232940    0.0289328
0-6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0857814   -0.1775631    0.0060003
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0244776   -0.1550298    0.2039850
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0663353   -0.1162347   -0.0164358
6-24 months   IRC              INDIA                          0                    NA                 0.0161290   -0.2390237    0.2712818
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0948718   -0.2780930    0.0883494
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0701831   -0.1104929    0.2508590
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0151820   -0.0357019    0.0660660


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.2852941   -0.2199966    0.5813066
0-24 months   IRC              INDIA                          0                    NA                -0.0494584   -0.2903597    0.1464683
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.1707965   -0.3615619   -0.0067587
0-24 months   PROBIT           BELARUS                        0                    NA                 0.0111712   -0.0206586    0.0420084
0-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0972391   -0.2980557    0.0725100
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0864917   -0.1627010    0.2822769
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.1087451   -0.2107411   -0.0153415
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.2555556   -0.2051932    0.5401588
0-6 months    IRC              INDIA                          0                    NA                -0.0346266   -0.2530595    0.1457291
0-6 months    PROBIT           BELARUS                        0                    NA                 0.0031296   -0.0262831    0.0316994
0-6 months    PROVIDE          BANGLADESH                     0                    NA                -0.1094453   -0.2348561    0.0032289
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0347458   -0.2569309    0.2587375
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0887665   -0.1578004   -0.0238487
6-24 months   IRC              INDIA                          0                    NA                 0.0312500   -0.6139924    0.4185372
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.4625000   -1.6271554    0.1858471
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1266719   -0.2694429    0.3991837
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.2051471   -0.8882704    0.6654127
