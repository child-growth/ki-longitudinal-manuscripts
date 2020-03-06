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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid          country                        hdlvry    ever_stunted   n_cell      n
---------------------------  ---------------  -----------------------------  -------  -------------  -------  -----
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                    0       27    293
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                    1      260    293
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                    0        1    293
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                    1        5    293
0-24 months (no birth st.)   COHORTS          INDIA                          0                    0     2102   4479
0-24 months (no birth st.)   COHORTS          INDIA                          0                    1      686   4479
0-24 months (no birth st.)   COHORTS          INDIA                          1                    0     1017   4479
0-24 months (no birth st.)   COHORTS          INDIA                          1                    1      674   4479
0-24 months (no birth st.)   EE               PAKISTAN                       0                    0       29    212
0-24 months (no birth st.)   EE               PAKISTAN                       0                    1      112    212
0-24 months (no birth st.)   EE               PAKISTAN                       1                    0       12    212
0-24 months (no birth st.)   EE               PAKISTAN                       1                    1       59    212
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    0       66    535
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    1       61    535
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    0      168    535
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    1      240    535
0-24 months (no birth st.)   IRC              INDIA                          0                    0      145    360
0-24 months (no birth st.)   IRC              INDIA                          0                    1      208    360
0-24 months (no birth st.)   IRC              INDIA                          1                    0        2    360
0-24 months (no birth st.)   IRC              INDIA                          1                    1        5    360
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    0      320    653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    1      194    653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                    0       76    653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                    1       63    653
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    0      299    633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    1      169    633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    0       96    633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    1       69    633
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    0       57    887
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    1       56    887
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          1                    0      296    887
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          1                    1      478    887
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    0       18    257
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    1       40    257
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          1                    0       54    257
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          1                    1      145    257
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1465   2129
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      626   2129
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       23   2129
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       15   2129
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    0      173    289
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    1      111    289
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                    0        5    289
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                    1        0    289
0-6 months (no birth st.)    COHORTS          INDIA                          0                    0     2530   4368
0-6 months (no birth st.)    COHORTS          INDIA                          0                    1      183   4368
0-6 months (no birth st.)    COHORTS          INDIA                          1                    0     1483   4368
0-6 months (no birth st.)    COHORTS          INDIA                          1                    1      172   4368
0-6 months (no birth st.)    EE               PAKISTAN                       0                    0       69    212
0-6 months (no birth st.)    EE               PAKISTAN                       0                    1       72    212
0-6 months (no birth st.)    EE               PAKISTAN                       1                    0       26    212
0-6 months (no birth st.)    EE               PAKISTAN                       1                    1       45    212
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    0      107    535
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    1       20    535
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    0      337    535
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    1       71    535
0-6 months (no birth st.)    IRC              INDIA                          0                    0      232    360
0-6 months (no birth st.)    IRC              INDIA                          0                    1      121    360
0-6 months (no birth st.)    IRC              INDIA                          1                    0        4    360
0-6 months (no birth st.)    IRC              INDIA                          1                    1        3    360
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    0      416    653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    1       98    653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                    0      113    653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                    1       26    653
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    0      396    633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    1       72    633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    0      136    633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    1       29    633
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    0       92    887
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    1       21    887
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          1                    0      615    887
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          1                    1      159    887
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          0                    0       58    257
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          0                    1        0    257
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          1                    0      196    257
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          1                    1        3    257
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1807   2129
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      284   2129
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       29   2129
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        9   2129
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    0       27    183
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    1      150    183
6-24 months                  CMC-V-BCS-2002   INDIA                          1                    0        1    183
6-24 months                  CMC-V-BCS-2002   INDIA                          1                    1        5    183
6-24 months                  COHORTS          INDIA                          0                    0     1936   3874
6-24 months                  COHORTS          INDIA                          0                    1      515   3874
6-24 months                  COHORTS          INDIA                          1                    0      907   3874
6-24 months                  COHORTS          INDIA                          1                    1      516   3874
6-24 months                  EE               PAKISTAN                       0                    0       29     93
6-24 months                  EE               PAKISTAN                       0                    1       40     93
6-24 months                  EE               PAKISTAN                       1                    0       10     93
6-24 months                  EE               PAKISTAN                       1                    1       14     93
6-24 months                  GMS-Nepal        NEPAL                          0                    0       49    373
6-24 months                  GMS-Nepal        NEPAL                          0                    1       41    373
6-24 months                  GMS-Nepal        NEPAL                          1                    0      114    373
6-24 months                  GMS-Nepal        NEPAL                          1                    1      169    373
6-24 months                  IRC              INDIA                          0                    0      145    236
6-24 months                  IRC              INDIA                          0                    1       87    236
6-24 months                  IRC              INDIA                          1                    0        2    236
6-24 months                  IRC              INDIA                          1                    1        2    236
6-24 months                  NIH-Crypto       BANGLADESH                     0                    0      301    506
6-24 months                  NIH-Crypto       BANGLADESH                     0                    1       96    506
6-24 months                  NIH-Crypto       BANGLADESH                     1                    0       72    506
6-24 months                  NIH-Crypto       BANGLADESH                     1                    1       37    506
6-24 months                  PROVIDE          BANGLADESH                     0                    0      245    456
6-24 months                  PROVIDE          BANGLADESH                     0                    1       97    456
6-24 months                  PROVIDE          BANGLADESH                     1                    0       74    456
6-24 months                  PROVIDE          BANGLADESH                     1                    1       40    456
6-24 months                  SAS-CompFeed     INDIA                          0                    0       53    653
6-24 months                  SAS-CompFeed     INDIA                          0                    1       35    653
6-24 months                  SAS-CompFeed     INDIA                          1                    0      244    653
6-24 months                  SAS-CompFeed     INDIA                          1                    1      321    653
6-24 months                  SAS-FoodSuppl    INDIA                          0                    0       16    243
6-24 months                  SAS-FoodSuppl    INDIA                          0                    1       40    243
6-24 months                  SAS-FoodSuppl    INDIA                          1                    0       43    243
6-24 months                  SAS-FoodSuppl    INDIA                          1                    1      144    243
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1162   1525
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      342   1525
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       15   1525
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        6   1525


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/1467cfb7-67f7-4b3a-b8c1-a276e8e2b8d3/83c8ff5c-b0c3-48e5-9b44-4f860c285b46/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1467cfb7-67f7-4b3a-b8c1-a276e8e2b8d3/83c8ff5c-b0c3-48e5-9b44-4f860c285b46/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1467cfb7-67f7-4b3a-b8c1-a276e8e2b8d3/83c8ff5c-b0c3-48e5-9b44-4f860c285b46/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1467cfb7-67f7-4b3a-b8c1-a276e8e2b8d3/83c8ff5c-b0c3-48e5-9b44-4f860c285b46/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS          INDIA                          0                    NA                0.2460545   0.2300650   0.2620441
0-24 months (no birth st.)   COHORTS          INDIA                          1                    NA                0.3985807   0.3752423   0.4219191
0-24 months (no birth st.)   EE               PAKISTAN                       0                    NA                0.7943262   0.7274527   0.8611998
0-24 months (no birth st.)   EE               PAKISTAN                       1                    NA                0.8309859   0.7436076   0.9183643
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                0.4803150   0.3933417   0.5672882
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    NA                0.5882353   0.5404357   0.6360349
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    NA                0.3774319   0.3354935   0.4193703
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                    NA                0.4532374   0.3704173   0.5360575
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                0.3611111   0.3175598   0.4046625
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    NA                0.4181818   0.3428592   0.4935045
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    NA                0.4955752   0.4404578   0.5506926
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          1                    NA                0.6175711   0.5620734   0.6730687
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    NA                0.6896552   0.5703611   0.8089493
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          1                    NA                0.7286432   0.6667425   0.7905440
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2993783   0.2795995   0.3191570
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3947368   0.2837549   0.5057188
0-6 months (no birth st.)    COHORTS          INDIA                          0                    NA                0.0674530   0.0580144   0.0768916
0-6 months (no birth st.)    COHORTS          INDIA                          1                    NA                0.1039275   0.0892235   0.1186315
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                0.5106383   0.4279323   0.5933443
0-6 months (no birth st.)    EE               PAKISTAN                       1                    NA                0.6338028   0.5214768   0.7461288
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                0.1574803   0.0940706   0.2208900
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    NA                0.1740196   0.1371975   0.2108417
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    NA                0.1906615   0.1566758   0.2246472
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                    NA                0.1870504   0.1221743   0.2519264
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                0.1538462   0.1211319   0.1865604
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    NA                0.1757576   0.1176365   0.2338787
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    NA                0.1858407   0.1600108   0.2116706
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          1                    NA                0.2054264   0.1750420   0.2358107
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1358202   0.1210246   0.1506157
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2368421   0.1403120   0.3333722
6-24 months                  COHORTS          INDIA                          0                    NA                0.2101183   0.1939879   0.2262487
6-24 months                  COHORTS          INDIA                          1                    NA                0.3626142   0.3376323   0.3875961
6-24 months                  EE               PAKISTAN                       0                    NA                0.5797101   0.4626117   0.6968086
6-24 months                  EE               PAKISTAN                       1                    NA                0.5833333   0.3850242   0.7816425
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                0.4555556   0.3525271   0.5585840
6-24 months                  GMS-Nepal        NEPAL                          1                    NA                0.5971731   0.5399532   0.6543931
6-24 months                  NIH-Crypto       BANGLADESH                     0                    NA                0.2418136   0.1996526   0.2839746
6-24 months                  NIH-Crypto       BANGLADESH                     1                    NA                0.3394495   0.2504670   0.4284321
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                0.2836257   0.2358008   0.3314507
6-24 months                  PROVIDE          BANGLADESH                     1                    NA                0.3508772   0.2631744   0.4385800
6-24 months                  SAS-CompFeed     INDIA                          0                    NA                0.3977273   0.3352129   0.4602416
6-24 months                  SAS-CompFeed     INDIA                          1                    NA                0.5681416   0.5394797   0.5968034
6-24 months                  SAS-FoodSuppl    INDIA                          0                    NA                0.7142857   0.5957221   0.8328493
6-24 months                  SAS-FoodSuppl    INDIA                          1                    NA                0.7700535   0.7096174   0.8304896
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2273936   0.2059594   0.2488279
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2857143   0.1792529   0.3921757


### Parameter: E(Y)


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS          INDIA                          NA                   NA                0.3036392   0.2901712   0.3171072
0-24 months (no birth st.)   EE               PAKISTAN                       NA                   NA                0.8066038   0.7533119   0.8598956
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          NA                   NA                0.5626168   0.5205427   0.6046909
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          NA                   NA                0.6020293   0.5512634   0.6527952
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          NA                   NA                0.7198444   0.6648337   0.7748550
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3010803   0.2815901   0.3205706
0-6 months (no birth st.)    COHORTS          INDIA                          NA                   NA                0.0812729   0.0731685   0.0893773
0-6 months (no birth st.)    EE               PAKISTAN                       NA                   NA                0.5518868   0.4847863   0.6189873
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          NA                   NA                0.1700935   0.1382268   0.2019601
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          NA                   NA                0.2029312   0.1748514   0.2310111
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1376233   0.1229861   0.1522605
6-24 months                  COHORTS          INDIA                          NA                   NA                0.2661332   0.2522150   0.2800514
6-24 months                  EE               PAKISTAN                       NA                   NA                0.5806452   0.4798127   0.6814776
6-24 months                  GMS-Nepal        NEPAL                          NA                   NA                0.5630027   0.5125980   0.6134074
6-24 months                  NIH-Crypto       BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  SAS-CompFeed     INDIA                          NA                   NA                0.5451761   0.5131549   0.5771973
6-24 months                  SAS-FoodSuppl    INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2281967   0.2071268   0.2492667


### Parameter: RR


agecat                       studyid          country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months (no birth st.)   COHORTS          INDIA                          0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS          INDIA                          1                    0                 1.619888   1.4842127   1.767965
0-24 months (no birth st.)   EE               PAKISTAN                       0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   EE               PAKISTAN                       1                    0                 1.046152   0.9143129   1.197001
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    0                 1.224687   1.0042212   1.493553
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                    0                 1.200846   0.9696347   1.487189
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    0                 1.158042   0.9323592   1.438352
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          1                    0                 1.246170   1.0607143   1.464051
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          1                    0                 1.056533   0.8713430   1.281081
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.318522   0.9877747   1.760017
0-6 months (no birth st.)    COHORTS          INDIA                          0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS          INDIA                          1                    0                 1.540739   1.2627234   1.879966
0-6 months (no birth st.)    EE               PAKISTAN                       0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth st.)    EE               PAKISTAN                       1                    0                 1.241197   0.9762753   1.578008
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    0                 1.105025   0.7011756   1.741474
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                    0                 0.981060   0.6642592   1.448951
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    0                 1.142424   0.7710485   1.692673
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          1                    0                 1.105389   0.9098615   1.342936
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.743792   1.1436025   2.658974
6-24 months                  COHORTS          INDIA                          0                    0                 1.000000   1.0000000   1.000000
6-24 months                  COHORTS          INDIA                          1                    0                 1.725762   1.5566244   1.913277
6-24 months                  EE               PAKISTAN                       0                    0                 1.000000   1.0000000   1.000000
6-24 months                  EE               PAKISTAN                       1                    0                 1.006250   0.6775915   1.494321
6-24 months                  GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000   1.000000
6-24 months                  GMS-Nepal        NEPAL                          1                    0                 1.310868   1.0253857   1.675832
6-24 months                  NIH-Crypto       BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
6-24 months                  NIH-Crypto       BANGLADESH                     1                    0                 1.403765   1.0246307   1.923188
6-24 months                  PROVIDE          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
6-24 months                  PROVIDE          BANGLADESH                     1                    0                 1.237113   0.9150920   1.672454
6-24 months                  SAS-CompFeed     INDIA                          0                    0                 1.000000   1.0000000   1.000000
6-24 months                  SAS-CompFeed     INDIA                          1                    0                 1.428470   1.1997465   1.700799
6-24 months                  SAS-FoodSuppl    INDIA                          0                    0                 1.000000   1.0000000   1.000000
6-24 months                  SAS-FoodSuppl    INDIA                          1                    0                 1.078075   0.8972406   1.295355
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.256474   0.8555225   1.845338


### Parameter: PAR


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          INDIA                          0                    NA                 0.0575847    0.0466866   0.0684828
0-24 months (no birth st.)   EE               PAKISTAN                       0                    NA                 0.0122775   -0.0246467   0.0492018
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                 0.0823019    0.0065174   0.1580863
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0161362   -0.0037676   0.0360401
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                 0.0148763   -0.0078873   0.0376398
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    NA                 0.1064541    0.0264330   0.1864752
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    NA                 0.0301892   -0.0738968   0.1342752
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0017020   -0.0011668   0.0045709
0-6 months (no birth st.)    COHORTS          INDIA                          0                    NA                 0.0138199    0.0071789   0.0204609
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                 0.0412485   -0.0061213   0.0886183
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                 0.0126131   -0.0433094   0.0685357
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    NA                -0.0007687   -0.0163590   0.0148216
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                 0.0057115   -0.0116897   0.0231127
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    NA                 0.0170905   -0.0166890   0.0508700
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018031   -0.0007036   0.0043098
6-24 months                  COHORTS          INDIA                          0                    NA                 0.0560149    0.0448492   0.0671805
6-24 months                  EE               PAKISTAN                       0                    NA                 0.0009350   -0.0584984   0.0603684
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                 0.1074471    0.0178199   0.1970744
6-24 months                  NIH-Crypto       BANGLADESH                     0                    NA                 0.0210322   -0.0004657   0.0425302
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                 0.0168129   -0.0083038   0.0419295
6-24 months                  SAS-CompFeed     INDIA                          0                    NA                 0.1474488    0.0770841   0.2178136
6-24 months                  SAS-FoodSuppl    INDIA                          0                    NA                 0.0429159   -0.0595369   0.1453688
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0008031   -0.0019332   0.0035394


### Parameter: PAF


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          INDIA                          0                    NA                 0.1896484    0.1532535   0.2244790
0-24 months (no birth st.)   EE               PAKISTAN                       0                    NA                 0.0152213   -0.0317202   0.0600270
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                 0.1462840   -0.0002452   0.2713478
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0409999   -0.0109691   0.0902973
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                 0.0395658   -0.0229483   0.0982596
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    NA                 0.1768254    0.0448157   0.2905909
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    NA                 0.0419385   -0.1143004   0.1762707
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0056531   -0.0039386   0.0151531
0-6 months (no birth st.)    COHORTS          INDIA                          0                    NA                 0.1700430    0.0858427   0.2464879
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                 0.0747409   -0.0158716   0.1572710
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                 0.0741542   -0.3203067   0.3507641
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    NA                -0.0040479   -0.0895971   0.0747844
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                 0.0357959   -0.0795368   0.1388070
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    NA                 0.0842183   -0.0893499   0.2301315
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0131018   -0.0053045   0.0311711
6-24 months                  COHORTS          INDIA                          0                    NA                 0.2104768    0.1680423   0.2507470
6-24 months                  EE               PAKISTAN                       0                    NA                 0.0016103   -0.1061790   0.0988963
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                 0.1908466    0.0137036   0.3361739
6-24 months                  NIH-Crypto       BANGLADESH                     0                    NA                 0.0800174   -0.0052030   0.1580129
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                 0.0559611   -0.0313762   0.1359026
6-24 months                  SAS-CompFeed     INDIA                          0                    NA                 0.2704609    0.1369677   0.3833055
6-24 months                  SAS-FoodSuppl    INDIA                          0                    NA                 0.0566770   -0.0891526   0.1829811
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0035194   -0.0085713   0.0154651
