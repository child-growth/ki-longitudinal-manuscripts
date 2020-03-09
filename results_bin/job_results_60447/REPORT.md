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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
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
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                   0       34    346
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                   1        7    346
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                   0      236    346
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                   1       69    346
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                   0      888   4480
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                   1      279   4480
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                   0     2398   4480
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                   1      915   4480
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
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                   0       34    342
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                   1        6    342
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                   0      274    342
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                   1       28    342
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                   0     1099   4363
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                   1       31   4363
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                   0     3139   4363
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                   1       94   4363
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
6-24 months                   JiVitA-3         BANGLADESH                     0                   0       36    339
6-24 months                   JiVitA-3         BANGLADESH                     0                   1        3    339
6-24 months                   JiVitA-3         BANGLADESH                     1                   0      252    339
6-24 months                   JiVitA-3         BANGLADESH                     1                   1       48    339
6-24 months                   JiVitA-4         BANGLADESH                     0                   0      910   4492
6-24 months                   JiVitA-4         BANGLADESH                     0                   1      258   4492
6-24 months                   JiVitA-4         BANGLADESH                     1                   0     2454   4492
6-24 months                   JiVitA-4         BANGLADESH                     1                   1      870   4492
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
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/3e69083e-102b-425b-b8f3-2394aac85490/ec457cc7-6741-4554-b9ad-895980e6f9bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3e69083e-102b-425b-b8f3-2394aac85490/ec457cc7-6741-4554-b9ad-895980e6f9bb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3e69083e-102b-425b-b8f3-2394aac85490/ec457cc7-6741-4554-b9ad-895980e6f9bb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3e69083e-102b-425b-b8f3-2394aac85490/ec457cc7-6741-4554-b9ad-895980e6f9bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS          INDIA                          0                    NA                0.1914510   0.1753837   0.2075184
0-24 months (no birth wast)   COHORTS          INDIA                          1                    NA                0.2116358   0.1907631   0.2325084
0-24 months (no birth wast)   EE               PAKISTAN                       0                    NA                0.5336534   0.4715765   0.5957303
0-24 months (no birth wast)   EE               PAKISTAN                       1                    NA                0.5525912   0.4648007   0.6403817
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    NA                0.4743421   0.3886688   0.5600154
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                    NA                0.5237052   0.4781426   0.5692678
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                0.1707317   0.0749030   0.2665604
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    NA                0.2262295   0.1750012   0.2774578
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                0.2487509   0.2141440   0.2833578
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    NA                0.2708155   0.2538342   0.2877968
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                0.1266490   0.0997634   0.1535346
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    NA                0.2021490   0.1405121   0.2637858
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                0.1680837   0.1357213   0.2004460
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    NA                0.2109785   0.1510517   0.2709052
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    NA                0.2337761   0.1914423   0.2761099
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    NA                0.3901391   0.3388881   0.4413901
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    NA                0.3425087   0.2277427   0.4572747
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                    NA                0.3685479   0.3153816   0.4217141
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2007201   0.1839373   0.2175028
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1750000   0.0916918   0.2583082
0-6 months (no birth wast)    COHORTS          INDIA                          0                    NA                0.0864426   0.0743571   0.0985281
0-6 months (no birth wast)    COHORTS          INDIA                          1                    NA                0.0886023   0.0727388   0.1044657
0-6 months (no birth wast)    EE               PAKISTAN                       0                    NA                0.2154909   0.1641482   0.2668336
0-6 months (no birth wast)    EE               PAKISTAN                       1                    NA                0.2148871   0.1420205   0.2877536
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    NA                0.1435504   0.0828030   0.2042978
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                    NA                0.2075483   0.1701198   0.2449769
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                0.1500000   0.0603230   0.2396770
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    NA                0.0927152   0.0586870   0.1267434
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    NA                0.0283648   0.0154883   0.0412412
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    NA                0.0290202   0.0230962   0.0349442
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    NA                0.0222603   0.0102871   0.0342334
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                    NA                0.0424242   0.0116498   0.0731987
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                0.0550098   0.0351881   0.0748315
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    NA                0.0517241   0.0187931   0.0846552
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    NA                0.0706315   0.0446041   0.0966589
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    NA                0.1348622   0.1024239   0.1673005
6-24 months                   COHORTS          INDIA                          0                    NA                0.1259912   0.1120059   0.1399765
6-24 months                   COHORTS          INDIA                          1                    NA                0.1399408   0.1231382   0.1567434
6-24 months                   EE               PAKISTAN                       0                    NA                0.4325582   0.3708691   0.4942472
6-24 months                   EE               PAKISTAN                       1                    NA                0.4332918   0.3452396   0.5213441
6-24 months                   GMS-Nepal        NEPAL                          0                    NA                0.4649403   0.3772326   0.5526479
6-24 months                   GMS-Nepal        NEPAL                          1                    NA                0.4793863   0.4304933   0.5282793
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                0.2313220   0.1982501   0.2643939
6-24 months                   JiVitA-4         BANGLADESH                     1                    NA                0.2571875   0.2405297   0.2738453
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                0.1161263   0.0897726   0.1424801
6-24 months                   NIH-Crypto       BANGLADESH                     1                    NA                0.1821592   0.1214456   0.2428729
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                0.1523533   0.1196063   0.1851003
6-24 months                   PROVIDE          BANGLADESH                     1                    NA                0.1927287   0.1320452   0.2534122
6-24 months                   SAS-CompFeed     INDIA                          0                    NA                0.2008907   0.1715221   0.2302594
6-24 months                   SAS-CompFeed     INDIA                          1                    NA                0.3314853   0.2866730   0.3762976
6-24 months                   SAS-FoodSuppl    INDIA                          0                    NA                0.3164524   0.2022790   0.4306259
6-24 months                   SAS-FoodSuppl    INDIA                          1                    NA                0.3656735   0.3122675   0.4190795


### Parameter: E(Y)


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS          INDIA                          NA                   NA                0.1973899   0.1862487   0.2085311
0-24 months (no birth wast)   EE               PAKISTAN                       NA                   NA                0.5386667   0.4881448   0.5891886
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          NA                   NA                0.5040783   0.4644662   0.5436904
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     NA                   NA                0.2196532   0.1732957   0.2660107
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     NA                   NA                0.2665179   0.2514258   0.2816100
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          NA                   NA                0.3741830   0.3195305   0.4288355
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          NA                   NA                0.3602015   0.3129196   0.4074834
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2002653   0.1837694   0.2167611
0-6 months (no birth wast)    COHORTS          INDIA                          NA                   NA                0.0846222   0.0765129   0.0927314
0-6 months (no birth wast)    EE               PAKISTAN                       NA                   NA                0.2144772   0.1727666   0.2561878
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          NA                   NA                0.1912752   0.1596728   0.2228775
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     NA                   NA                0.0994152   0.0685873   0.1302431
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     NA                   NA                0.0286500   0.0232922   0.0340079
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          NA                   NA                0.1289517   0.0982960   0.1596075
6-24 months                   COHORTS          INDIA                          NA                   NA                0.1326445   0.1229894   0.1422995
6-24 months                   EE               PAKISTAN                       NA                   NA                0.4327957   0.3823792   0.4832122
6-24 months                   GMS-Nepal        NEPAL                          NA                   NA                0.4717668   0.4299709   0.5135628
6-24 months                   JiVitA-4         BANGLADESH                     NA                   NA                0.2511131   0.2362659   0.2659603
6-24 months                   NIH-Crypto       BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   PROVIDE          BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   SAS-CompFeed     INDIA                          NA                   NA                0.3164894   0.2686679   0.3643108
6-24 months                   SAS-FoodSuppl    INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777


### Parameter: RR


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS          INDIA                          1                    0                 1.1054302   0.9716841   1.257586
0-24 months (no birth wast)   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   EE               PAKISTAN                       1                    0                 1.0354872   0.8507261   1.260375
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                    0                 1.1040665   0.9034230   1.349271
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    0                 1.3250585   0.7169637   2.448911
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    0                 1.0887014   0.9344227   1.268452
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    0                 1.5961356   1.1006167   2.314747
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    0                 1.2551988   0.8908066   1.768649
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    0                 1.6688580   1.3878128   2.006817
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                    0                 1.0760249   0.7468317   1.550322
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8718610   0.5376976   1.413697
0-6 months (no birth wast)    COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    COHORTS          INDIA                          1                    0                 1.0249837   0.8166740   1.286427
0-6 months (no birth wast)    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    EE               PAKISTAN                       1                    0                 0.9971977   0.6577914   1.511730
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                    0                 1.4458220   0.9125595   2.290701
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    0                 0.6181015   0.2989442   1.277996
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    0                 1.0231073   0.6168746   1.696858
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                    0                 1.9058275   0.7724891   4.701916
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    0                 0.9402709   0.4524178   1.954188
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    0                 1.9093779   1.3249110   2.751675
6-24 months                   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   COHORTS          INDIA                          1                    0                 1.1107188   0.9440522   1.306809
6-24 months                   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   EE               PAKISTAN                       1                    0                 1.0016961   0.7816744   1.283648
6-24 months                   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal        NEPAL                          1                    0                 1.0310707   0.8322305   1.277419
6-24 months                   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4         BANGLADESH                     1                    0                 1.1118158   0.9515107   1.299128
6-24 months                   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   NIH-Crypto       BANGLADESH                     1                    0                 1.5686300   1.0480823   2.347716
6-24 months                   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   PROVIDE          BANGLADESH                     1                    0                 1.2650116   0.8654502   1.849043
6-24 months                   SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   SAS-CompFeed     INDIA                          1                    0                 1.6500774   1.4640688   1.859718
6-24 months                   SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   SAS-FoodSuppl    INDIA                          1                    0                 1.1555401   0.7828175   1.705727


### Parameter: PAR


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS          INDIA                          0                    NA                 0.0059388   -0.0058232   0.0177009
0-24 months (no birth wast)   EE               PAKISTAN                       0                    NA                 0.0050133   -0.0306292   0.0406558
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    NA                 0.0297362   -0.0461824   0.1056548
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                 0.0489215   -0.0484409   0.1462839
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                 0.0177669   -0.0123598   0.0478937
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0165871    0.0016077   0.0315665
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                 0.0095000   -0.0078166   0.0268166
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    NA                 0.1404069    0.0895219   0.1912919
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    NA                 0.0176928   -0.0870772   0.1224628
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004548   -0.0025840   0.0016743
0-6 months (no birth wast)    COHORTS          INDIA                          0                    NA                -0.0018204   -0.0105666   0.0069258
0-6 months (no birth wast)    EE               PAKISTAN                       0                    NA                -0.0010137   -0.0307474   0.0287200
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    NA                 0.0477248   -0.0081506   0.1036002
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                -0.0505848   -0.1374669   0.0362973
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    NA                 0.0002852   -0.0105477   0.0111182
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    NA                 0.0044420   -0.0028570   0.0117410
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                -0.0008371   -0.0106296   0.0089555
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    NA                 0.0583203    0.0263022   0.0903383
6-24 months                   COHORTS          INDIA                          0                    NA                 0.0066532   -0.0037645   0.0170710
6-24 months                   EE               PAKISTAN                       0                    NA                 0.0002375   -0.0350237   0.0354988
6-24 months                   GMS-Nepal        NEPAL                          0                    NA                 0.0068266   -0.0704416   0.0840948
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                 0.0197911   -0.0086168   0.0481990
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                 0.0153805    0.0004755   0.0302855
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                 0.0086223   -0.0090246   0.0262692
6-24 months                   SAS-CompFeed     INDIA                          0                    NA                 0.1155986    0.0825131   0.1486841
6-24 months                   SAS-FoodSuppl    INDIA                          0                    NA                 0.0392690   -0.0659445   0.1444824


### Parameter: PAF


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS          INDIA                          0                    NA                 0.0300869   -0.0313654   0.0878776
0-24 months (no birth wast)   EE               PAKISTAN                       0                    NA                 0.0093069   -0.0591350   0.0733260
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    NA                 0.0589912   -0.1044298   0.1982311
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                 0.2227214   -0.3565950   0.5546483
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                 0.0666631   -0.0538676   0.1734088
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                 0.1158024    0.0064727   0.2131012
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                 0.0534959   -0.0489596   0.1459443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    NA                 0.3752360    0.2590454   0.4732065
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    NA                 0.0491193   -0.2911979   0.2997401
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022711   -0.0129474   0.0082927
0-6 months (no birth wast)    COHORTS          INDIA                          0                    NA                -0.0215122   -0.1302396   0.0767557
0-6 months (no birth wast)    EE               PAKISTAN                       0                    NA                -0.0047264   -0.1533780   0.1247664
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    NA                 0.2495084   -0.1044875   0.4900462
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                -0.5088235   -1.7418198   0.1696944
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    NA                 0.0099558   -0.4509718   0.3244614
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    NA                 0.1663527   -0.1444437   0.3927462
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                -0.0154516   -0.2132370   0.1500903
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    NA                 0.4522642    0.2174265   0.6166309
6-24 months                   COHORTS          INDIA                          0                    NA                 0.0501584   -0.0316894   0.1255129
6-24 months                   EE               PAKISTAN                       0                    NA                 0.0005488   -0.0843376   0.0787900
6-24 months                   GMS-Nepal        NEPAL                          0                    NA                 0.0144703   -0.1637106   0.1653691
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                 0.0788134   -0.0420760   0.1856786
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                 0.1169561   -0.0019609   0.2217596
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                 0.0535627   -0.0622520   0.1567504
6-24 months                   SAS-CompFeed     INDIA                          0                    NA                 0.3652528    0.2921393   0.4308145
6-24 months                   SAS-FoodSuppl    INDIA                          0                    NA                 0.1103925   -0.2405115   0.3620361
