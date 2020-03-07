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

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        hdlvry    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  -------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          0                   0      115    320
0-24 months   CMC-V-BCS-2002   INDIA                          0                   1      199    320
0-24 months   CMC-V-BCS-2002   INDIA                          1                   0        4    320
0-24 months   CMC-V-BCS-2002   INDIA                          1                   1        2    320
0-24 months   COHORTS          INDIA                          0                   0      784   1881
0-24 months   COHORTS          INDIA                          0                   1      294   1881
0-24 months   COHORTS          INDIA                          1                   0      643   1881
0-24 months   COHORTS          INDIA                          1                   1      160   1881
0-24 months   EE               PAKISTAN                       0                   0      106    322
0-24 months   EE               PAKISTAN                       0                   1      107    322
0-24 months   EE               PAKISTAN                       1                   0       53    322
0-24 months   EE               PAKISTAN                       1                   1       56    322
0-24 months   GMS-Nepal        NEPAL                          0                   0       65    590
0-24 months   GMS-Nepal        NEPAL                          0                   1       68    590
0-24 months   GMS-Nepal        NEPAL                          1                   0      205    590
0-24 months   GMS-Nepal        NEPAL                          1                   1      252    590
0-24 months   IRC              INDIA                          0                   0      159    395
0-24 months   IRC              INDIA                          0                   1      227    395
0-24 months   IRC              INDIA                          1                   0        3    395
0-24 months   IRC              INDIA                          1                   1        6    395
0-24 months   JiVitA-3         BANGLADESH                     0                   0        5    129
0-24 months   JiVitA-3         BANGLADESH                     0                   1        7    129
0-24 months   JiVitA-3         BANGLADESH                     1                   0       67    129
0-24 months   JiVitA-3         BANGLADESH                     1                   1       50    129
0-24 months   JiVitA-4         BANGLADESH                     0                   0      302   1779
0-24 months   JiVitA-4         BANGLADESH                     0                   1      136   1779
0-24 months   JiVitA-4         BANGLADESH                     1                   0      984   1779
0-24 months   JiVitA-4         BANGLADESH                     1                   1      357   1779
0-24 months   NIH-Crypto       BANGLADESH                     0                   0       79    310
0-24 months   NIH-Crypto       BANGLADESH                     0                   1      139    310
0-24 months   NIH-Crypto       BANGLADESH                     1                   0       38    310
0-24 months   NIH-Crypto       BANGLADESH                     1                   1       54    310
0-24 months   PROVIDE          BANGLADESH                     0                   0       94    308
0-24 months   PROVIDE          BANGLADESH                     0                   1      132    308
0-24 months   PROVIDE          BANGLADESH                     1                   0       35    308
0-24 months   PROVIDE          BANGLADESH                     1                   1       47    308
0-24 months   SAS-CompFeed     INDIA                          0                   0       34    675
0-24 months   SAS-CompFeed     INDIA                          0                   1       30    675
0-24 months   SAS-CompFeed     INDIA                          1                   0      386    675
0-24 months   SAS-CompFeed     INDIA                          1                   1      225    675
0-24 months   SAS-FoodSuppl    INDIA                          0                   0       40    234
0-24 months   SAS-FoodSuppl    INDIA                          0                   1        0    234
0-24 months   SAS-FoodSuppl    INDIA                          1                   0      181    234
0-24 months   SAS-FoodSuppl    INDIA                          1                   1       13    234
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      250    682
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      423    682
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        5    682
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4    682
0-6 months    CMC-V-BCS-2002   INDIA                          0                   0       65    199
0-6 months    CMC-V-BCS-2002   INDIA                          0                   1      131    199
0-6 months    CMC-V-BCS-2002   INDIA                          1                   0        1    199
0-6 months    CMC-V-BCS-2002   INDIA                          1                   1        2    199
0-6 months    COHORTS          INDIA                          0                   0      462   1241
0-6 months    COHORTS          INDIA                          0                   1      294   1241
0-6 months    COHORTS          INDIA                          1                   0      325   1241
0-6 months    COHORTS          INDIA                          1                   1      160   1241
0-6 months    EE               PAKISTAN                       0                   0       36    126
0-6 months    EE               PAKISTAN                       0                   1       47    126
0-6 months    EE               PAKISTAN                       1                   0       18    126
0-6 months    EE               PAKISTAN                       1                   1       25    126
0-6 months    GMS-Nepal        NEPAL                          0                   0       26    245
0-6 months    GMS-Nepal        NEPAL                          0                   1       30    245
0-6 months    GMS-Nepal        NEPAL                          1                   0       70    245
0-6 months    GMS-Nepal        NEPAL                          1                   1      119    245
0-6 months    IRC              INDIA                          0                   0       86    240
0-6 months    IRC              INDIA                          0                   1      147    240
0-6 months    IRC              INDIA                          1                   0        1    240
0-6 months    IRC              INDIA                          1                   1        6    240
0-6 months    JiVitA-3         BANGLADESH                     0                   0        2     78
0-6 months    JiVitA-3         BANGLADESH                     0                   1        7     78
0-6 months    JiVitA-3         BANGLADESH                     1                   0       19     78
0-6 months    JiVitA-3         BANGLADESH                     1                   1       50     78
0-6 months    JiVitA-4         BANGLADESH                     0                   0       53    505
0-6 months    JiVitA-4         BANGLADESH                     0                   1       94    505
0-6 months    JiVitA-4         BANGLADESH                     1                   0      146    505
0-6 months    JiVitA-4         BANGLADESH                     1                   1      212    505
0-6 months    NIH-Crypto       BANGLADESH                     0                   0       14    197
0-6 months    NIH-Crypto       BANGLADESH                     0                   1      126    197
0-6 months    NIH-Crypto       BANGLADESH                     1                   0        7    197
0-6 months    NIH-Crypto       BANGLADESH                     1                   1       50    197
0-6 months    PROVIDE          BANGLADESH                     0                   0       27    185
0-6 months    PROVIDE          BANGLADESH                     0                   1      112    185
0-6 months    PROVIDE          BANGLADESH                     1                   0       13    185
0-6 months    PROVIDE          BANGLADESH                     1                   1       33    185
0-6 months    SAS-CompFeed     INDIA                          0                   0       11    278
0-6 months    SAS-CompFeed     INDIA                          0                   1       13    278
0-6 months    SAS-CompFeed     INDIA                          1                   0      125    278
0-6 months    SAS-CompFeed     INDIA                          1                   1      129    278
0-6 months    SAS-FoodSuppl    INDIA                          0                   0       14     78
0-6 months    SAS-FoodSuppl    INDIA                          0                   1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          1                   0       64     78
0-6 months    SAS-FoodSuppl    INDIA                          1                   1        0     78
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0       97    326
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      224    326
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        2    326
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        3    326
6-24 months   CMC-V-BCS-2002   INDIA                          0                   0       50    121
6-24 months   CMC-V-BCS-2002   INDIA                          0                   1       68    121
6-24 months   CMC-V-BCS-2002   INDIA                          1                   0        3    121
6-24 months   CMC-V-BCS-2002   INDIA                          1                   1        0    121
6-24 months   COHORTS          INDIA                          0                   0      322    640
6-24 months   COHORTS          INDIA                          0                   1        0    640
6-24 months   COHORTS          INDIA                          1                   0      318    640
6-24 months   COHORTS          INDIA                          1                   1        0    640
6-24 months   EE               PAKISTAN                       0                   0       70    196
6-24 months   EE               PAKISTAN                       0                   1       60    196
6-24 months   EE               PAKISTAN                       1                   0       35    196
6-24 months   EE               PAKISTAN                       1                   1       31    196
6-24 months   GMS-Nepal        NEPAL                          0                   0       39    345
6-24 months   GMS-Nepal        NEPAL                          0                   1       38    345
6-24 months   GMS-Nepal        NEPAL                          1                   0      135    345
6-24 months   GMS-Nepal        NEPAL                          1                   1      133    345
6-24 months   IRC              INDIA                          0                   0       73    155
6-24 months   IRC              INDIA                          0                   1       80    155
6-24 months   IRC              INDIA                          1                   0        2    155
6-24 months   IRC              INDIA                          1                   1        0    155
6-24 months   JiVitA-3         BANGLADESH                     0                   0        3     51
6-24 months   JiVitA-3         BANGLADESH                     0                   1        0     51
6-24 months   JiVitA-3         BANGLADESH                     1                   0       48     51
6-24 months   JiVitA-3         BANGLADESH                     1                   1        0     51
6-24 months   JiVitA-4         BANGLADESH                     0                   0      249   1274
6-24 months   JiVitA-4         BANGLADESH                     0                   1       42   1274
6-24 months   JiVitA-4         BANGLADESH                     1                   0      838   1274
6-24 months   JiVitA-4         BANGLADESH                     1                   1      145   1274
6-24 months   NIH-Crypto       BANGLADESH                     0                   0       65    113
6-24 months   NIH-Crypto       BANGLADESH                     0                   1       13    113
6-24 months   NIH-Crypto       BANGLADESH                     1                   0       31    113
6-24 months   NIH-Crypto       BANGLADESH                     1                   1        4    113
6-24 months   PROVIDE          BANGLADESH                     0                   0       67    123
6-24 months   PROVIDE          BANGLADESH                     0                   1       20    123
6-24 months   PROVIDE          BANGLADESH                     1                   0       22    123
6-24 months   PROVIDE          BANGLADESH                     1                   1       14    123
6-24 months   SAS-CompFeed     INDIA                          0                   0       23    397
6-24 months   SAS-CompFeed     INDIA                          0                   1       17    397
6-24 months   SAS-CompFeed     INDIA                          1                   0      261    397
6-24 months   SAS-CompFeed     INDIA                          1                   1       96    397
6-24 months   SAS-FoodSuppl    INDIA                          0                   0       26    156
6-24 months   SAS-FoodSuppl    INDIA                          0                   1        0    156
6-24 months   SAS-FoodSuppl    INDIA                          1                   0      117    156
6-24 months   SAS-FoodSuppl    INDIA                          1                   1       13    156
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      153    356
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      199    356
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        3    356
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        1    356


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/c565dd7d-d7d9-4305-8a9e-07bb090811b9/8f136ff3-f2f8-4013-b39b-fbc4d79b9d3b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c565dd7d-d7d9-4305-8a9e-07bb090811b9/8f136ff3-f2f8-4013-b39b-fbc4d79b9d3b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c565dd7d-d7d9-4305-8a9e-07bb090811b9/8f136ff3-f2f8-4013-b39b-fbc4d79b9d3b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c565dd7d-d7d9-4305-8a9e-07bb090811b9/8f136ff3-f2f8-4013-b39b-fbc4d79b9d3b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        INDIA        0                    NA                0.2727273   0.2455889   0.2998656
0-24 months   COHORTS        INDIA        1                    NA                0.1992528   0.1723873   0.2261183
0-24 months   EE             PAKISTAN     0                    NA                0.5023474   0.4284041   0.5762908
0-24 months   EE             PAKISTAN     1                    NA                0.5137615   0.4155682   0.6119547
0-24 months   GMS-Nepal      NEPAL        0                    NA                0.5112782   0.4141399   0.6084165
0-24 months   GMS-Nepal      NEPAL        1                    NA                0.5514223   0.5022686   0.6005761
0-24 months   JiVitA-3       BANGLADESH   0                    NA                0.5833333   0.3560459   0.8106207
0-24 months   JiVitA-3       BANGLADESH   1                    NA                0.4273504   0.3351375   0.5195633
0-24 months   JiVitA-4       BANGLADESH   0                    NA                0.3105023   0.2642678   0.3567368
0-24 months   JiVitA-4       BANGLADESH   1                    NA                0.2662192   0.2420868   0.2903517
0-24 months   NIH-Crypto     BANGLADESH   0                    NA                0.6376147   0.5718501   0.7033793
0-24 months   NIH-Crypto     BANGLADESH   1                    NA                0.5869565   0.4912020   0.6827110
0-24 months   PROVIDE        BANGLADESH   0                    NA                0.5840708   0.5179987   0.6501429
0-24 months   PROVIDE        BANGLADESH   1                    NA                0.5731707   0.4637451   0.6825964
0-24 months   SAS-CompFeed   INDIA        0                    NA                0.4687500   0.3418739   0.5956261
0-24 months   SAS-CompFeed   INDIA        1                    NA                0.3682488   0.3281413   0.4083562
0-6 months    COHORTS        INDIA        0                    NA                0.3888889   0.3541245   0.4236533
0-6 months    COHORTS        INDIA        1                    NA                0.3298969   0.2880357   0.3717582
0-6 months    EE             PAKISTAN     0                    NA                0.5662651   0.4571111   0.6754190
0-6 months    EE             PAKISTAN     1                    NA                0.5813953   0.4372597   0.7255310
0-6 months    GMS-Nepal      NEPAL        0                    NA                0.5357143   0.4031356   0.6682930
0-6 months    GMS-Nepal      NEPAL        1                    NA                0.6296296   0.5602563   0.6990030
0-6 months    JiVitA-4       BANGLADESH   0                    NA                0.6394558   0.5617588   0.7171528
0-6 months    JiVitA-4       BANGLADESH   1                    NA                0.5921788   0.5412224   0.6431351
0-6 months    NIH-Crypto     BANGLADESH   0                    NA                0.9000000   0.8497073   0.9502927
0-6 months    NIH-Crypto     BANGLADESH   1                    NA                0.8771930   0.7908916   0.9634944
0-6 months    PROVIDE        BANGLADESH   0                    NA                0.8057554   0.7411719   0.8703389
0-6 months    PROVIDE        BANGLADESH   1                    NA                0.7173913   0.5880020   0.8467806
0-6 months    SAS-CompFeed   INDIA        0                    NA                0.5416667   0.3534523   0.7298810
0-6 months    SAS-CompFeed   INDIA        1                    NA                0.5078740   0.4454740   0.5702741
6-24 months   EE             PAKISTAN     0                    NA                0.4615385   0.3700778   0.5529992
6-24 months   EE             PAKISTAN     1                    NA                0.4696970   0.3480867   0.5913073
6-24 months   GMS-Nepal      NEPAL        0                    NA                0.4935065   0.3710770   0.6159360
6-24 months   GMS-Nepal      NEPAL        1                    NA                0.4962687   0.4323174   0.5602199
6-24 months   JiVitA-4       BANGLADESH   0                    NA                0.1443299   0.1023657   0.1862941
6-24 months   JiVitA-4       BANGLADESH   1                    NA                0.1475076   0.1259260   0.1690892
6-24 months   PROVIDE        BANGLADESH   0                    NA                0.2298851   0.1400164   0.3197537
6-24 months   PROVIDE        BANGLADESH   1                    NA                0.3888889   0.2217513   0.5560265
6-24 months   SAS-CompFeed   INDIA        0                    NA                0.4250000   0.2781131   0.5718869
6-24 months   SAS-CompFeed   INDIA        1                    NA                0.2689076   0.2212043   0.3166108


### Parameter: E(Y)


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        INDIA        NA                   NA                0.2413610   0.2219406   0.2607813
0-24 months   EE             PAKISTAN     NA                   NA                0.5062112   0.4470670   0.5653554
0-24 months   GMS-Nepal      NEPAL        NA                   NA                0.5423729   0.4984575   0.5862883
0-24 months   JiVitA-3       BANGLADESH   NA                   NA                0.4418605   0.3551361   0.5285849
0-24 months   JiVitA-4       BANGLADESH   NA                   NA                0.2771220   0.2556194   0.2986246
0-24 months   NIH-Crypto     BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROVIDE        BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   SAS-CompFeed   INDIA        NA                   NA                0.3777778   0.3394240   0.4161316
0-6 months    COHORTS        INDIA        NA                   NA                0.3658340   0.3390250   0.3926430
0-6 months    EE             PAKISTAN     NA                   NA                0.5714286   0.4842880   0.6585691
0-6 months    GMS-Nepal      NEPAL        NA                   NA                0.6081633   0.5464350   0.6698915
0-6 months    JiVitA-4       BANGLADESH   NA                   NA                0.6059406   0.5632798   0.6486014
0-6 months    NIH-Crypto     BANGLADESH   NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    PROVIDE        BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    SAS-CompFeed   INDIA        NA                   NA                0.5107914   0.4514901   0.5700927
6-24 months   EE             PAKISTAN     NA                   NA                0.4642857   0.3910729   0.5374985
6-24 months   GMS-Nepal      NEPAL        NA                   NA                0.4956522   0.4389718   0.5523326
6-24 months   JiVitA-4       BANGLADESH   NA                   NA                0.1467818   0.1275683   0.1659953
6-24 months   PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   SAS-CompFeed   INDIA        NA                   NA                0.2846348   0.2390527   0.3302168


### Parameter: RR


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS        INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS        INDIA        1                    0                 0.7305936   0.6178743   0.8638764
0-24 months   EE             PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   EE             PAKISTAN     1                    0                 1.0227214   0.8035045   1.3017464
0-24 months   GMS-Nepal      NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal      NEPAL        1                    0                 1.0785172   0.8743494   1.3303598
0-24 months   JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3       BANGLADESH   1                    0                 0.7326007   0.4692527   1.1437415
0-24 months   JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4       BANGLADESH   1                    0                 0.8573826   0.7202330   1.0206487
0-24 months   NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto     BANGLADESH   1                    0                 0.9205505   0.7586400   1.1170163
0-24 months   PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE        BANGLADESH   1                    0                 0.9813378   0.7861226   1.2250301
0-24 months   SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed   INDIA        1                    0                 0.7855974   0.5868019   1.0517404
0-6 months    COHORTS        INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS        INDIA        1                    0                 0.8483063   0.7263434   0.9907484
0-6 months    EE             PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    EE             PAKISTAN     1                    0                 1.0267194   0.7500166   1.4055060
0-6 months    GMS-Nepal      NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal      NEPAL        1                    0                 1.1753086   0.8963966   1.5410035
0-6 months    JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4       BANGLADESH   1                    0                 0.9260668   0.7979593   1.0747412
0-6 months    NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto     BANGLADESH   1                    0                 0.9746589   0.8703902   1.0914184
0-6 months    PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE        BANGLADESH   1                    0                 0.8903339   0.7308597   1.0846054
0-6 months    SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed   INDIA        1                    0                 0.9376136   0.6485807   1.3554507
6-24 months   EE             PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   EE             PAKISTAN     1                    0                 1.0176768   0.7345535   1.4099258
6-24 months   GMS-Nepal      NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal      NEPAL        1                    0                 1.0055970   0.7603005   1.3300337
6-24 months   JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4       BANGLADESH   1                    0                 1.0220171   0.7380855   1.4151735
6-24 months   PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE        BANGLADESH   1                    0                 1.6916667   0.9461403   3.0246424
6-24 months   SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed   INDIA        1                    0                 0.6327237   0.4290456   0.9330925


### Parameter: PAR


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS        INDIA        0                    NA                -0.0313663   -0.0477776   -0.0149549
0-24 months   EE             PAKISTAN     0                    NA                 0.0038638   -0.0377485    0.0454760
0-24 months   GMS-Nepal      NEPAL        0                    NA                 0.0310947   -0.0532282    0.1154175
0-24 months   JiVitA-3       BANGLADESH   0                    NA                -0.1414729   -0.3635901    0.0806444
0-24 months   JiVitA-4       BANGLADESH   0                    NA                -0.0333803   -0.0726883    0.0059277
0-24 months   NIH-Crypto     BANGLADESH   0                    NA                -0.0150340   -0.0493318    0.0192638
0-24 months   PROVIDE        BANGLADESH   0                    NA                -0.0029020   -0.0369181    0.0311142
0-24 months   SAS-CompFeed   INDIA        0                    NA                -0.0909722   -0.2114429    0.0294984
0-6 months    COHORTS        INDIA        0                    NA                -0.0230549   -0.0443811   -0.0017287
0-6 months    EE             PAKISTAN     0                    NA                 0.0051635   -0.0565529    0.0668799
0-6 months    GMS-Nepal      NEPAL        0                    NA                 0.0724490   -0.0430200    0.1879180
0-6 months    JiVitA-4       BANGLADESH   0                    NA                -0.0335152   -0.0994110    0.0323806
0-6 months    NIH-Crypto     BANGLADESH   0                    NA                -0.0065990   -0.0355389    0.0223409
0-6 months    PROVIDE        BANGLADESH   0                    NA                -0.0219716   -0.0582922    0.0143490
0-6 months    SAS-CompFeed   INDIA        0                    NA                -0.0308753   -0.2120406    0.1502900
6-24 months   EE             PAKISTAN     0                    NA                 0.0027473   -0.0484878    0.0539823
6-24 months   GMS-Nepal      NEPAL        0                    NA                 0.0021457   -0.1051745    0.1094658
6-24 months   JiVitA-4       BANGLADESH   0                    NA                 0.0024519   -0.0339565    0.0388603
6-24 months   PROVIDE        BANGLADESH   0                    NA                 0.0465377   -0.0104079    0.1034834
6-24 months   SAS-CompFeed   INDIA        0                    NA                -0.1403652   -0.2794203   -0.0013102


### Parameter: PAF


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS        INDIA        0                    NA                -0.1299559   -0.1993209   -0.0646028
0-24 months   EE             PAKISTAN     0                    NA                 0.0076327   -0.0781233    0.0865675
0-24 months   GMS-Nepal      NEPAL        0                    NA                 0.0573308   -0.1120696    0.2009267
0-24 months   JiVitA-3       BANGLADESH   0                    NA                -0.3201754   -0.9499839    0.1062166
0-24 months   JiVitA-4       BANGLADESH   0                    NA                -0.1204535   -0.2711988    0.0124157
0-24 months   NIH-Crypto     BANGLADESH   0                    NA                -0.0241479   -0.0806576    0.0294067
0-24 months   PROVIDE        BANGLADESH   0                    NA                -0.0049933   -0.0652637    0.0518671
0-24 months   SAS-CompFeed   INDIA        0                    NA                -0.2408088   -0.6052517    0.0408940
0-6 months    COHORTS        INDIA        0                    NA                -0.0630201   -0.1229865   -0.0062558
0-6 months    EE             PAKISTAN     0                    NA                 0.0090361   -0.1051559    0.1114291
0-6 months    GMS-Nepal      NEPAL        0                    NA                 0.1191275   -0.0936849    0.2905303
0-6 months    JiVitA-4       BANGLADESH   0                    NA                -0.0553110   -0.1700349    0.0481640
0-6 months    NIH-Crypto     BANGLADESH   0                    NA                -0.0073864   -0.0403389    0.0245224
0-6 months    PROVIDE        BANGLADESH   0                    NA                -0.0280327   -0.0757750    0.0175907
0-6 months    SAS-CompFeed   INDIA        0                    NA                -0.0604460   -0.4821519    0.2412750
6-24 months   EE             PAKISTAN     0                    NA                 0.0059172   -0.1108505    0.1104107
6-24 months   GMS-Nepal      NEPAL        0                    NA                 0.0043290   -0.2375545    0.1989357
6-24 months   JiVitA-4       BANGLADESH   0                    NA                 0.0167043   -0.2655766    0.2360239
6-24 months   PROVIDE        BANGLADESH   0                    NA                 0.1683570   -0.0607949    0.3480077
6-24 months   SAS-CompFeed   INDIA        0                    NA                -0.4931416   -1.0785098   -0.0726299
