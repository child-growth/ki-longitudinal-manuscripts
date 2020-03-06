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

**Outcome Variable:** ever_wasted

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

agecat                        studyid          country                        hdlvry    ever_wasted   n_cell      n
----------------------------  ---------------  -----------------------------  -------  ------------  -------  -----
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                   0      196    365
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                   1      161    365
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                   0        5    365
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                   1        3    365
0-24 months (no birth wast)   COHORTS          INDIA                          0                   0     2513   4904
0-24 months (no birth wast)   COHORTS          INDIA                          0                   1      517   4904
0-24 months (no birth wast)   COHORTS          INDIA                          1                   0     1423   4904
0-24 months (no birth wast)   COHORTS          INDIA                          1                   1      451   4904
0-24 months (no birth wast)   EE               PAKISTAN                       0                   0      117    375
0-24 months (no birth wast)   EE               PAKISTAN                       0                   1      135    375
0-24 months (no birth wast)   EE               PAKISTAN                       1                   0       56    375
0-24 months (no birth wast)   EE               PAKISTAN                       1                   1       67    375
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                   0       83    613
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                   1       65    613
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                   0      221    613
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                   1      244    613
0-24 months (no birth wast)   IRC              INDIA                          0                   0      190    409
0-24 months (no birth wast)   IRC              INDIA                          0                   1      211    409
0-24 months (no birth wast)   IRC              INDIA                          1                   0        6    409
0-24 months (no birth wast)   IRC              INDIA                          1                   1        2    409
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                   0      513    754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                   1       74    754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                   0      133    754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                   1       34    754
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                   0      427    687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                   1       86    687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                   0      138    687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                   1       36    687
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                   0      120   1224
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                   1       44   1224
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                   0      646   1224
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                   1      414   1224
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                   0       52    397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                   1       25    397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                   0      202    397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                   1      118    397
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1776   2262
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      446   2262
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       33   2262
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        7   2262
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                   0      234    347
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                   1      106    347
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                   0        5    347
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                   1        2    347
0-6 months (no birth wast)    COHORTS          INDIA                          0                   0     2574   4526
0-6 months (no birth wast)    COHORTS          INDIA                          0                   1      229   4526
0-6 months (no birth wast)    COHORTS          INDIA                          1                   0     1569   4526
0-6 months (no birth wast)    COHORTS          INDIA                          1                   1      154   4526
0-6 months (no birth wast)    EE               PAKISTAN                       0                   0      196    373
0-6 months (no birth wast)    EE               PAKISTAN                       0                   1       54    373
0-6 months (no birth wast)    EE               PAKISTAN                       1                   0       97    373
0-6 months (no birth wast)    EE               PAKISTAN                       1                   1       26    373
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                   0      122    596
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                   1       19    596
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                   0      360    596
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                   1       95    596
0-6 months (no birth wast)    IRC              INDIA                          0                   0      251    390
0-6 months (no birth wast)    IRC              INDIA                          0                   1      131    390
0-6 months (no birth wast)    IRC              INDIA                          1                   0        6    390
0-6 months (no birth wast)    IRC              INDIA                          1                   1        2    390
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                   0      571    749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                   1       13    749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                   0      158    749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                   1        7    749
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                   0      481    683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                   1       28    683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                   0      165    683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                   1        9    683
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                   0      150   1202
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                   1       13   1202
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                   0      897   1202
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                   1      142   1202
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                   0       68    341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                   1        0    341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                   0      273    341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                   1        0    341
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     2023   2254
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      191   2254
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       36   2254
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4   2254
6-24 months                   CMC-V-BCS-2002   INDIA                          0                   0      268    370
6-24 months                   CMC-V-BCS-2002   INDIA                          0                   1       94    370
6-24 months                   CMC-V-BCS-2002   INDIA                          1                   0        5    370
6-24 months                   CMC-V-BCS-2002   INDIA                          1                   1        3    370
6-24 months                   COHORTS          INDIA                          0                   0     2609   4742
6-24 months                   COHORTS          INDIA                          0                   1      315   4742
6-24 months                   COHORTS          INDIA                          1                   0     1504   4742
6-24 months                   COHORTS          INDIA                          1                   1      314   4742
6-24 months                   EE               PAKISTAN                       0                   0      142    372
6-24 months                   EE               PAKISTAN                       0                   1      108    372
6-24 months                   EE               PAKISTAN                       1                   0       69    372
6-24 months                   EE               PAKISTAN                       1                   1       53    372
6-24 months                   GMS-Nepal        NEPAL                          0                   0       79    549
6-24 months                   GMS-Nepal        NEPAL                          0                   1       57    549
6-24 months                   GMS-Nepal        NEPAL                          1                   0      211    549
6-24 months                   GMS-Nepal        NEPAL                          1                   1      202    549
6-24 months                   IRC              INDIA                          0                   0      276    410
6-24 months                   IRC              INDIA                          0                   1      126    410
6-24 months                   IRC              INDIA                          1                   0        7    410
6-24 months                   IRC              INDIA                          1                   1        1    410
6-24 months                   NIH-Crypto       BANGLADESH                     0                   0      502    730
6-24 months                   NIH-Crypto       BANGLADESH                     0                   1       65    730
6-24 months                   NIH-Crypto       BANGLADESH                     1                   0      132    730
6-24 months                   NIH-Crypto       BANGLADESH                     1                   1       31    730
6-24 months                   PROVIDE          BANGLADESH                     0                   0      390    615
6-24 months                   PROVIDE          BANGLADESH                     0                   1       69    615
6-24 months                   PROVIDE          BANGLADESH                     1                   0      126    615
6-24 months                   PROVIDE          BANGLADESH                     1                   1       30    615
6-24 months                   SAS-CompFeed     INDIA                          0                   0      118   1128
6-24 months                   SAS-CompFeed     INDIA                          0                   1       35   1128
6-24 months                   SAS-CompFeed     INDIA                          1                   0      653   1128
6-24 months                   SAS-CompFeed     INDIA                          1                   1      322   1128
6-24 months                   SAS-FoodSuppl    INDIA                          0                   0       54    402
6-24 months                   SAS-FoodSuppl    INDIA                          0                   1       25    402
6-24 months                   SAS-FoodSuppl    INDIA                          1                   0      205    402
6-24 months                   SAS-FoodSuppl    INDIA                          1                   1      118    402
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1575   1912
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      306   1912
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       27   1912
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4   1912


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/3d6eaa54-6182-4ddc-b8be-8f5f8cfbbcd6/9d70aa2f-be7c-4b51-922e-c39d5ea31454/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3d6eaa54-6182-4ddc-b8be-8f5f8cfbbcd6/9d70aa2f-be7c-4b51-922e-c39d5ea31454/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3d6eaa54-6182-4ddc-b8be-8f5f8cfbbcd6/9d70aa2f-be7c-4b51-922e-c39d5ea31454/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3d6eaa54-6182-4ddc-b8be-8f5f8cfbbcd6/9d70aa2f-be7c-4b51-922e-c39d5ea31454/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS          INDIA                          0                    NA                0.1706271   0.1572312   0.1840229
0-24 months (no birth wast)   COHORTS          INDIA                          1                    NA                0.2406617   0.2213051   0.2600183
0-24 months (no birth wast)   EE               PAKISTAN                       0                    NA                0.5357143   0.4740566   0.5973719
0-24 months (no birth wast)   EE               PAKISTAN                       1                    NA                0.5447154   0.4565899   0.6328410
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    NA                0.4391892   0.3591679   0.5192105
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                    NA                0.5247312   0.4793042   0.5701582
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                0.1260647   0.0991956   0.1529339
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    NA                0.2035928   0.1424808   0.2647049
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                0.1676413   0.1352930   0.1999896
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    NA                0.2068966   0.1466640   0.2671291
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    NA                0.2682927   0.2277241   0.3088613
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    NA                0.3905660   0.3407368   0.4403953
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    NA                0.3246753   0.2199549   0.4293957
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                    NA                0.3687500   0.3158218   0.4216782
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2007201   0.1839373   0.2175028
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1750000   0.0916918   0.2583082
0-6 months (no birth wast)    COHORTS          INDIA                          0                    NA                0.0816982   0.0715571   0.0918392
0-6 months (no birth wast)    COHORTS          INDIA                          1                    NA                0.0893790   0.0759067   0.1028512
0-6 months (no birth wast)    EE               PAKISTAN                       0                    NA                0.2160000   0.1649206   0.2670794
0-6 months (no birth wast)    EE               PAKISTAN                       1                    NA                0.2113821   0.1391308   0.2836335
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    NA                0.1347518   0.0783438   0.1911598
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                    NA                0.2087912   0.1714138   0.2461686
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    NA                0.0222603   0.0102871   0.0342334
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                    NA                0.0424242   0.0116498   0.0731987
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                0.0550098   0.0351881   0.0748315
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    NA                0.0517241   0.0187931   0.0846552
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    NA                0.0797546   0.0518847   0.1076245
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    NA                0.1366699   0.1045087   0.1688310
6-24 months                   COHORTS          INDIA                          0                    NA                0.1077291   0.0964903   0.1189679
6-24 months                   COHORTS          INDIA                          1                    NA                0.1727173   0.1553396   0.1900950
6-24 months                   EE               PAKISTAN                       0                    NA                0.4320000   0.3705137   0.4934863
6-24 months                   EE               PAKISTAN                       1                    NA                0.4344262   0.3463507   0.5225018
6-24 months                   GMS-Nepal        NEPAL                          0                    NA                0.4191176   0.3361160   0.5021193
6-24 months                   GMS-Nepal        NEPAL                          1                    NA                0.4891041   0.4408498   0.5373584
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                0.1146384   0.0883975   0.1408794
6-24 months                   NIH-Crypto       BANGLADESH                     1                    NA                0.1901840   0.1298959   0.2504722
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                0.1503268   0.1176048   0.1830488
6-24 months                   PROVIDE          BANGLADESH                     1                    NA                0.1923077   0.1304120   0.2542034
6-24 months                   SAS-CompFeed     INDIA                          0                    NA                0.2287582   0.1975422   0.2599741
6-24 months                   SAS-CompFeed     INDIA                          1                    NA                0.3302564   0.2864912   0.3740217
6-24 months                   SAS-FoodSuppl    INDIA                          0                    NA                0.3164557   0.2137688   0.4191426
6-24 months                   SAS-FoodSuppl    INDIA                          1                    NA                0.3653251   0.3127472   0.4179030


### Parameter: E(Y)


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS          INDIA                          NA                   NA                0.1973899   0.1862487   0.2085311
0-24 months (no birth wast)   EE               PAKISTAN                       NA                   NA                0.5386667   0.4881448   0.5891886
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          NA                   NA                0.5040783   0.4644662   0.5436904
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          NA                   NA                0.3741830   0.3195305   0.4288355
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          NA                   NA                0.3602015   0.3129196   0.4074834
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2002653   0.1837694   0.2167611
0-6 months (no birth wast)    COHORTS          INDIA                          NA                   NA                0.0846222   0.0765129   0.0927314
0-6 months (no birth wast)    EE               PAKISTAN                       NA                   NA                0.2144772   0.1727666   0.2561878
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          NA                   NA                0.1912752   0.1596728   0.2228775
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          NA                   NA                0.1289517   0.0982960   0.1596075
6-24 months                   COHORTS          INDIA                          NA                   NA                0.1326445   0.1229894   0.1422995
6-24 months                   EE               PAKISTAN                       NA                   NA                0.4327957   0.3823792   0.4832122
6-24 months                   GMS-Nepal        NEPAL                          NA                   NA                0.4717668   0.4299709   0.5135628
6-24 months                   NIH-Crypto       BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   PROVIDE          BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   SAS-CompFeed     INDIA                          NA                   NA                0.3164894   0.2686679   0.3643108
6-24 months                   SAS-FoodSuppl    INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777


### Parameter: RR


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS          INDIA                          1                    0                 1.4104544   1.2605095   1.578236
0-24 months (no birth wast)   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   EE               PAKISTAN                       1                    0                 1.0168022   0.8336989   1.240120
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                    0                 1.1947725   0.9765124   1.461816
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    0                 1.6149862   1.1176011   2.333731
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    0                 1.2341620   0.8703371   1.750076
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    0                 1.4557461   1.2646017   1.675782
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                    0                 1.1357500   0.7979245   1.616604
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8718610   0.5376976   1.413697
0-6 months (no birth wast)    COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    COHORTS          INDIA                          1                    0                 1.0940145   0.8999557   1.329918
0-6 months (no birth wast)    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    EE               PAKISTAN                       1                    0                 0.9786209   0.6458126   1.482936
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                    0                 1.5494505   0.9827714   2.442884
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                    0                 1.9058275   0.7724891   4.701916
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    0                 0.9402709   0.4524178   1.954188
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    0                 1.7136300   1.2126862   2.421507
6-24 months                   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   COHORTS          INDIA                          1                    0                 1.6032549   1.3869388   1.853309
6-24 months                   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   EE               PAKISTAN                       1                    0                 1.0056163   0.7849688   1.288286
6-24 months                   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal        NEPAL                          1                    0                 1.1669853   0.9353548   1.455977
6-24 months                   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   NIH-Crypto       BANGLADESH                     1                    0                 1.6589901   1.1221029   2.452759
6-24 months                   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   PROVIDE          BANGLADESH                     1                    0                 1.2792642   0.8673888   1.886717
6-24 months                   SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   SAS-CompFeed     INDIA                          1                    0                 1.4436923   1.3201971   1.578740
6-24 months                   SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   SAS-FoodSuppl    INDIA                          1                    0                 1.1544272   0.8094738   1.646381


### Parameter: PAR


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS          INDIA                          0                    NA                 0.0267628    0.0177171   0.0358086
0-24 months (no birth wast)   EE               PAKISTAN                       0                    NA                 0.0029524   -0.0323278   0.0382326
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    NA                 0.0648891   -0.0049715   0.1347498
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0171713    0.0022077   0.0321350
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                 0.0099424   -0.0074210   0.0273057
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    NA                 0.1058903    0.0593858   0.1523948
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    NA                 0.0355262   -0.0590676   0.1301200
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004548   -0.0025840   0.0016743
0-6 months (no birth wast)    COHORTS          INDIA                          0                    NA                 0.0029240   -0.0034963   0.0093443
0-6 months (no birth wast)    EE               PAKISTAN                       0                    NA                -0.0015228   -0.0307019   0.0276563
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    NA                 0.0565234    0.0048024   0.1082444
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    NA                 0.0044420   -0.0028570   0.0117410
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                -0.0008371   -0.0106296   0.0089555
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    NA                 0.0491971    0.0155107   0.0828836
6-24 months                   COHORTS          INDIA                          0                    NA                 0.0249153    0.0169303   0.0329003
6-24 months                   EE               PAKISTAN                       0                    NA                 0.0007957   -0.0344318   0.0360232
6-24 months                   GMS-Nepal        NEPAL                          0                    NA                 0.0526492   -0.0196205   0.1249189
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                 0.0168684    0.0020103   0.0317265
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                 0.0106488   -0.0071692   0.0284669
6-24 months                   SAS-CompFeed     INDIA                          0                    NA                 0.0877312    0.0584409   0.1170215
6-24 months                   SAS-FoodSuppl    INDIA                          0                    NA                 0.0392657   -0.0534474   0.1319788


### Parameter: PAF


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS          INDIA                          0                    NA                 0.1355836    0.0889090   0.1798670
0-24 months (no birth wast)   EE               PAKISTAN                       0                    NA                 0.0054809   -0.0622221   0.0688687
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    NA                 0.1287282   -0.0218272   0.2571009
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                 0.1198814    0.0106385   0.2170619
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                 0.0559870   -0.0467580   0.1486470
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    NA                 0.2829907    0.1752629   0.3766471
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    NA                 0.0986286   -0.2062498   0.3264494
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022711   -0.0129474   0.0082927
0-6 months (no birth wast)    COHORTS          INDIA                          0                    NA                 0.0345536   -0.0443129   0.1074641
0-6 months (no birth wast)    EE               PAKISTAN                       0                    NA                -0.0071000   -0.1527613   0.1201558
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    NA                 0.2955083   -0.0297857   0.5180467
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    NA                 0.1663527   -0.1444437   0.3927462
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                -0.0154516   -0.2132370   0.1500903
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    NA                 0.3815159    0.1228762   0.5638899
6-24 months                   COHORTS          INDIA                          0                    NA                 0.1878353    0.1266177   0.2447621
6-24 months                   EE               PAKISTAN                       0                    NA                 0.0018385   -0.0829677   0.0800036
6-24 months                   GMS-Nepal        NEPAL                          0                    NA                 0.1116000   -0.0558122   0.2524670
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                 0.1282701    0.0097770   0.2325840
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                 0.0661517   -0.0508966   0.1701632
6-24 months                   SAS-CompFeed     INDIA                          0                    NA                 0.2772011    0.2084514   0.3399795
6-24 months                   SAS-FoodSuppl    INDIA                          0                    NA                 0.1103833   -0.1924390   0.3363032
