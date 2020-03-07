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

**Outcome Variable:** ever_swasted

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

agecat                        studyid          country                        hdlvry    ever_swasted   n_cell      n
----------------------------  ---------------  -----------------------------  -------  -------------  -------  -----
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    0      303    365
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    1       54    365
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    0        7    365
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    1        1    365
0-24 months (no birth wast)   COHORTS          INDIA                          0                    0     2916   4904
0-24 months (no birth wast)   COHORTS          INDIA                          0                    1      114   4904
0-24 months (no birth wast)   COHORTS          INDIA                          1                    0     1743   4904
0-24 months (no birth wast)   COHORTS          INDIA                          1                    1      131   4904
0-24 months (no birth wast)   EE               PAKISTAN                       0                    0      210    375
0-24 months (no birth wast)   EE               PAKISTAN                       0                    1       42    375
0-24 months (no birth wast)   EE               PAKISTAN                       1                    0      100    375
0-24 months (no birth wast)   EE               PAKISTAN                       1                    1       23    375
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    0      132    613
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    1       16    613
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                    0      361    613
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                    1      104    613
0-24 months (no birth wast)   IRC              INDIA                          0                    0      326    409
0-24 months (no birth wast)   IRC              INDIA                          0                    1       75    409
0-24 months (no birth wast)   IRC              INDIA                          1                    0        6    409
0-24 months (no birth wast)   IRC              INDIA                          1                    1        2    409
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    0       39    346
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    1        2    346
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    0      289    346
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    1       16    346
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    0     1129   4480
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    1       38   4480
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    0     3144   4480
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    1      169   4480
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    0      573    754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    1       14    754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    0      161    754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    1        6    754
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    0      500    687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    1       13    687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    0      168    687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    1        6    687
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    0      151   1224
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    1       13   1224
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    0      916   1224
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    1      144   1224
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    0       72    397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    1        5    397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                    0      285    397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                    1       35    397
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2110   2262
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      112   2262
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       36   2262
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        4   2262
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    0      310    347
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    1       30    347
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    0        7    347
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    1        0    347
0-6 months (no birth wast)    COHORTS          INDIA                          0                    0     2760   4526
0-6 months (no birth wast)    COHORTS          INDIA                          0                    1       43   4526
0-6 months (no birth wast)    COHORTS          INDIA                          1                    0     1686   4526
0-6 months (no birth wast)    COHORTS          INDIA                          1                    1       37   4526
0-6 months (no birth wast)    EE               PAKISTAN                       0                    0      235    373
0-6 months (no birth wast)    EE               PAKISTAN                       0                    1       15    373
0-6 months (no birth wast)    EE               PAKISTAN                       1                    0      118    373
0-6 months (no birth wast)    EE               PAKISTAN                       1                    1        5    373
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    0      136    596
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    1        5    596
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                    0      432    596
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                    1       23    596
0-6 months (no birth wast)    IRC              INDIA                          0                    0      326    390
0-6 months (no birth wast)    IRC              INDIA                          0                    1       56    390
0-6 months (no birth wast)    IRC              INDIA                          1                    0        7    390
0-6 months (no birth wast)    IRC              INDIA                          1                    1        1    390
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    0       39    342
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    1        1    342
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    0      293    342
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    1        9    342
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    0     1123   4363
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    1        7   4363
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    0     3219   4363
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    1       14   4363
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    0      583    749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    1        1    749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                    0      165    749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                    1        0    749
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    0      504    683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    1        5    683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    0      173    683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    1        1    683
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    0      161   1202
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    1        2   1202
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    0     1001   1202
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    1       38   1202
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                    0       68    341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                    1        0    341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                    0      273    341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                    1        0    341
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2175   2254
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       39   2254
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       39   2254
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        1   2254
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    0      333    370
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    1       29    370
6-24 months                   CMC-V-BCS-2002   INDIA                          1                    0        7    370
6-24 months                   CMC-V-BCS-2002   INDIA                          1                    1        1    370
6-24 months                   COHORTS          INDIA                          0                    0     2841   4742
6-24 months                   COHORTS          INDIA                          0                    1       83   4742
6-24 months                   COHORTS          INDIA                          1                    0     1716   4742
6-24 months                   COHORTS          INDIA                          1                    1      102   4742
6-24 months                   EE               PAKISTAN                       0                    0      220    372
6-24 months                   EE               PAKISTAN                       0                    1       30    372
6-24 months                   EE               PAKISTAN                       1                    0      102    372
6-24 months                   EE               PAKISTAN                       1                    1       20    372
6-24 months                   GMS-Nepal        NEPAL                          0                    0      122    549
6-24 months                   GMS-Nepal        NEPAL                          0                    1       14    549
6-24 months                   GMS-Nepal        NEPAL                          1                    0      324    549
6-24 months                   GMS-Nepal        NEPAL                          1                    1       89    549
6-24 months                   IRC              INDIA                          0                    0      377    410
6-24 months                   IRC              INDIA                          0                    1       25    410
6-24 months                   IRC              INDIA                          1                    0        7    410
6-24 months                   IRC              INDIA                          1                    1        1    410
6-24 months                   JiVitA-3         BANGLADESH                     0                    0       38    339
6-24 months                   JiVitA-3         BANGLADESH                     0                    1        1    339
6-24 months                   JiVitA-3         BANGLADESH                     1                    0      293    339
6-24 months                   JiVitA-3         BANGLADESH                     1                    1        7    339
6-24 months                   JiVitA-4         BANGLADESH                     0                    0     1135   4492
6-24 months                   JiVitA-4         BANGLADESH                     0                    1       33   4492
6-24 months                   JiVitA-4         BANGLADESH                     1                    0     3159   4492
6-24 months                   JiVitA-4         BANGLADESH                     1                    1      165   4492
6-24 months                   NIH-Crypto       BANGLADESH                     0                    0      553    730
6-24 months                   NIH-Crypto       BANGLADESH                     0                    1       14    730
6-24 months                   NIH-Crypto       BANGLADESH                     1                    0      157    730
6-24 months                   NIH-Crypto       BANGLADESH                     1                    1        6    730
6-24 months                   PROVIDE          BANGLADESH                     0                    0      451    615
6-24 months                   PROVIDE          BANGLADESH                     0                    1        8    615
6-24 months                   PROVIDE          BANGLADESH                     1                    0      151    615
6-24 months                   PROVIDE          BANGLADESH                     1                    1        5    615
6-24 months                   SAS-CompFeed     INDIA                          0                    0      142   1128
6-24 months                   SAS-CompFeed     INDIA                          0                    1       11   1128
6-24 months                   SAS-CompFeed     INDIA                          1                    0      862   1128
6-24 months                   SAS-CompFeed     INDIA                          1                    1      113   1128
6-24 months                   SAS-FoodSuppl    INDIA                          0                    0       73    402
6-24 months                   SAS-FoodSuppl    INDIA                          0                    1        6    402
6-24 months                   SAS-FoodSuppl    INDIA                          1                    0      278    402
6-24 months                   SAS-FoodSuppl    INDIA                          1                    1       45    402
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1805   1912
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       76   1912
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       28   1912
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        3   1912


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
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/ea5d4371-ea2b-4569-b5e8-366a95bccd00/f07aa367-5bfa-49c9-bf56-2e8a664b3c0c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ea5d4371-ea2b-4569-b5e8-366a95bccd00/f07aa367-5bfa-49c9-bf56-2e8a664b3c0c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ea5d4371-ea2b-4569-b5e8-366a95bccd00/f07aa367-5bfa-49c9-bf56-2e8a664b3c0c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ea5d4371-ea2b-4569-b5e8-366a95bccd00/f07aa367-5bfa-49c9-bf56-2e8a664b3c0c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid         country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   COHORTS         INDIA        0                    NA                0.0463719    0.0371112   0.0556326
0-24 months (no birth wast)   COHORTS         INDIA        1                    NA                0.0588852    0.0472084   0.0705621
0-24 months (no birth wast)   EE              PAKISTAN     0                    NA                0.1666219    0.1202050   0.2130387
0-24 months (no birth wast)   EE              PAKISTAN     1                    NA                0.1934088    0.1229445   0.2638731
0-24 months (no birth wast)   GMS-Nepal       NEPAL        0                    NA                0.1105587    0.0570129   0.1641044
0-24 months (no birth wast)   GMS-Nepal       NEPAL        1                    NA                0.2205537    0.1826158   0.2584916
0-24 months (no birth wast)   JiVitA-4        BANGLADESH   0                    NA                0.0361368    0.0221277   0.0501459
0-24 months (no birth wast)   JiVitA-4        BANGLADESH   1                    NA                0.0496268    0.0417228   0.0575307
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH   0                    NA                0.0238501    0.0114986   0.0362016
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH   1                    NA                0.0359281    0.0076826   0.0641737
0-24 months (no birth wast)   PROVIDE         BANGLADESH   0                    NA                0.0253411    0.0117315   0.0389507
0-24 months (no birth wast)   PROVIDE         BANGLADESH   1                    NA                0.0344828    0.0073514   0.0616141
0-24 months (no birth wast)   SAS-CompFeed    INDIA        0                    NA                0.0908026    0.0455569   0.1360483
0-24 months (no birth wast)   SAS-CompFeed    INDIA        1                    NA                0.1340464    0.1076190   0.1604739
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA        0                    NA                0.0649351    0.0098275   0.1200426
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA        1                    NA                0.1093750    0.0751355   0.1436145
0-6 months (no birth wast)    COHORTS         INDIA        0                    NA                0.0171132    0.0116766   0.0225499
0-6 months (no birth wast)    COHORTS         INDIA        1                    NA                0.0206069    0.0134286   0.0277851
0-6 months (no birth wast)    EE              PAKISTAN     0                    NA                0.0600000    0.0305218   0.0894782
0-6 months (no birth wast)    EE              PAKISTAN     1                    NA                0.0406504    0.0057043   0.0755966
0-6 months (no birth wast)    GMS-Nepal       NEPAL        0                    NA                0.0354610    0.0049091   0.0660129
0-6 months (no birth wast)    GMS-Nepal       NEPAL        1                    NA                0.0505495    0.0304029   0.0706960
0-6 months (no birth wast)    JiVitA-4        BANGLADESH   0                    NA                0.0061947   -0.0008760   0.0132654
0-6 months (no birth wast)    JiVitA-4        BANGLADESH   1                    NA                0.0043303    0.0013560   0.0073047
6-24 months                   COHORTS         INDIA        0                    NA                0.0358285    0.0275905   0.0440665
6-24 months                   COHORTS         INDIA        1                    NA                0.0479998    0.0364959   0.0595036
6-24 months                   EE              PAKISTAN     0                    NA                0.1198973    0.0793587   0.1604359
6-24 months                   EE              PAKISTAN     1                    NA                0.1626161    0.0956599   0.2295723
6-24 months                   GMS-Nepal       NEPAL        0                    NA                0.1043918    0.0516887   0.1570950
6-24 months                   GMS-Nepal       NEPAL        1                    NA                0.2121147    0.1725026   0.2517268
6-24 months                   JiVitA-4        BANGLADESH   0                    NA                0.0307078    0.0201495   0.0412661
6-24 months                   JiVitA-4        BANGLADESH   1                    NA                0.0482219    0.0400033   0.0564405
6-24 months                   NIH-Crypto      BANGLADESH   0                    NA                0.0246914    0.0119094   0.0374733
6-24 months                   NIH-Crypto      BANGLADESH   1                    NA                0.0368098    0.0078837   0.0657359
6-24 months                   PROVIDE         BANGLADESH   0                    NA                0.0174292    0.0054476   0.0294108
6-24 months                   PROVIDE         BANGLADESH   1                    NA                0.0320513    0.0043890   0.0597136
6-24 months                   SAS-CompFeed    INDIA        0                    NA                0.0752933    0.0371039   0.1134827
6-24 months                   SAS-CompFeed    INDIA        1                    NA                0.1139707    0.0857988   0.1421426
6-24 months                   SAS-FoodSuppl   INDIA        0                    NA                0.0759494    0.0174589   0.1344399
6-24 months                   SAS-FoodSuppl   INDIA        1                    NA                0.1393189    0.1015083   0.1771295


### Parameter: E(Y)


agecat                        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS         INDIA        NA                   NA                0.0499592   0.0438611   0.0560573
0-24 months (no birth wast)   EE              PAKISTAN     NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months (no birth wast)   GMS-Nepal       NEPAL        NA                   NA                0.1957586   0.1643227   0.2271945
0-24 months (no birth wast)   JiVitA-4        BANGLADESH   NA                   NA                0.0462054   0.0395696   0.0528411
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH   NA                   NA                0.0265252   0.0150478   0.0380026
0-24 months (no birth wast)   PROVIDE         BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   SAS-CompFeed    INDIA        NA                   NA                0.1282680   0.1041743   0.1523617
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA        NA                   NA                0.1007557   0.0711091   0.1304022
0-6 months (no birth wast)    COHORTS         INDIA        NA                   NA                0.0176757   0.0138363   0.0215150
0-6 months (no birth wast)    EE              PAKISTAN     NA                   NA                0.0536193   0.0307280   0.0765106
0-6 months (no birth wast)    GMS-Nepal       NEPAL        NA                   NA                0.0469799   0.0299780   0.0639817
0-6 months (no birth wast)    JiVitA-4        BANGLADESH   NA                   NA                0.0048132   0.0019592   0.0076672
6-24 months                   COHORTS         INDIA        NA                   NA                0.0390131   0.0335015   0.0445247
6-24 months                   EE              PAKISTAN     NA                   NA                0.1344086   0.0997005   0.1691167
6-24 months                   GMS-Nepal       NEPAL        NA                   NA                0.1876138   0.1549271   0.2203006
6-24 months                   JiVitA-4        BANGLADESH   NA                   NA                0.0440784   0.0374167   0.0507400
6-24 months                   NIH-Crypto      BANGLADESH   NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months                   PROVIDE         BANGLADESH   NA                   NA                0.0211382   0.0097604   0.0325160
6-24 months                   SAS-CompFeed    INDIA        NA                   NA                0.1099291   0.0842813   0.1355769
6-24 months                   SAS-FoodSuppl   INDIA        NA                   NA                0.1268657   0.0942904   0.1594410


### Parameter: RR


agecat                        studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS         INDIA        1                    0                 1.2698468   0.9588210   1.681764
0-24 months (no birth wast)   EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   EE              PAKISTAN     1                    0                 1.1607649   0.7331608   1.837762
0-24 months (no birth wast)   GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal       NEPAL        1                    0                 1.9949019   1.1928852   3.336142
0-24 months (no birth wast)   JiVitA-4        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4        BANGLADESH   1                    0                 1.3733023   0.8999944   2.095523
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH   1                    0                 1.5064157   0.5876161   3.861855
0-24 months (no birth wast)   PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROVIDE         BANGLADESH   1                    0                 1.3607427   0.5248752   3.527735
0-24 months (no birth wast)   SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   SAS-CompFeed    INDIA        1                    0                 1.4762406   0.8608439   2.531570
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA        1                    0                 1.6843750   0.6817053   4.161797
0-6 months (no birth wast)    COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    COHORTS         INDIA        1                    0                 1.2041482   0.7514384   1.929596
0-6 months (no birth wast)    EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    EE              PAKISTAN     1                    0                 0.6775068   0.2517050   1.823624
0-6 months (no birth wast)    GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal       NEPAL        1                    0                 1.4254945   0.5516931   3.683270
0-6 months (no birth wast)    JiVitA-4        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-4        BANGLADESH   1                    0                 0.6990411   0.1835273   2.662593
6-24 months                   COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   COHORTS         INDIA        1                    0                 1.3397088   0.9614778   1.866730
6-24 months                   EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   EE              PAKISTAN     1                    0                 1.3562948   0.7954655   2.312527
6-24 months                   GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal       NEPAL        1                    0                 2.0319091   1.1850481   3.483955
6-24 months                   JiVitA-4        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4        BANGLADESH   1                    0                 1.5703460   1.0721901   2.299953
6-24 months                   NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   NIH-Crypto      BANGLADESH   1                    0                 1.4907975   0.5817579   3.820279
6-24 months                   PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   PROVIDE         BANGLADESH   1                    0                 1.8389423   0.6100618   5.543223
6-24 months                   SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   SAS-CompFeed    INDIA        1                    0                 1.5136898   0.8800982   2.603410
6-24 months                   SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   SAS-FoodSuppl   INDIA        1                    0                 1.8343653   0.8107074   4.150568


### Parameter: PAR


agecat                        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS         INDIA        0                    NA                 0.0035873   -0.0036943   0.0108689
0-24 months (no birth wast)   EE              PAKISTAN     0                    NA                 0.0067115   -0.0209578   0.0343807
0-24 months (no birth wast)   GMS-Nepal       NEPAL        0                    NA                 0.0851999    0.0338733   0.1365266
0-24 months (no birth wast)   JiVitA-4        BANGLADESH   0                    NA                 0.0100686   -0.0027006   0.0228377
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH   0                    NA                 0.0026751   -0.0041623   0.0095125
0-24 months (no birth wast)   PROVIDE         BANGLADESH   0                    NA                 0.0023153   -0.0053782   0.0100089
0-24 months (no birth wast)   SAS-CompFeed    INDIA        0                    NA                 0.0374654   -0.0102540   0.0851848
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA        0                    NA                 0.0358206   -0.0165028   0.0881440
0-6 months (no birth wast)    COHORTS         INDIA        0                    NA                 0.0005624   -0.0033340   0.0044589
0-6 months (no birth wast)    EE              PAKISTAN     0                    NA                -0.0063807   -0.0214851   0.0087237
0-6 months (no birth wast)    GMS-Nepal       NEPAL        0                    NA                 0.0115189   -0.0164245   0.0394622
0-6 months (no birth wast)    JiVitA-4        BANGLADESH   0                    NA                -0.0013815   -0.0070817   0.0043188
6-24 months                   COHORTS         INDIA        0                    NA                 0.0031846   -0.0032885   0.0096577
6-24 months                   EE              PAKISTAN     0                    NA                 0.0145113   -0.0111046   0.0401273
6-24 months                   GMS-Nepal       NEPAL        0                    NA                 0.0832220    0.0325028   0.1339413
6-24 months                   JiVitA-4        BANGLADESH   0                    NA                 0.0133706    0.0033282   0.0234129
6-24 months                   NIH-Crypto      BANGLADESH   0                    NA                 0.0027059   -0.0043649   0.0097767
6-24 months                   PROVIDE         BANGLADESH   0                    NA                 0.0037090   -0.0039542   0.0113723
6-24 months                   SAS-CompFeed    INDIA        0                    NA                 0.0346358   -0.0060374   0.0753090
6-24 months                   SAS-FoodSuppl   INDIA        0                    NA                 0.0509163   -0.0050985   0.1069311


### Parameter: PAF


agecat                        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS         INDIA        0                    NA                 0.0718045   -0.0858080   0.2065384
0-24 months (no birth wast)   EE              PAKISTAN     0                    NA                 0.0387201   -0.1348062   0.1857120
0-24 months (no birth wast)   GMS-Nepal       NEPAL        0                    NA                 0.4352295    0.1128476   0.6404612
0-24 months (no birth wast)   JiVitA-4        BANGLADESH   0                    NA                 0.2179087   -0.1132455   0.4505554
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH   0                    NA                 0.1008518   -0.1929625   0.3223027
0-24 months (no birth wast)   PROVIDE         BANGLADESH   0                    NA                 0.0837181   -0.2381152   0.3218946
0-24 months (no birth wast)   SAS-CompFeed    INDIA        0                    NA                 0.2920870   -0.1712013   0.5721138
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA        0                    NA                 0.3555195   -0.4224191   0.7079938
0-6 months (no birth wast)    COHORTS         INDIA        0                    NA                 0.0318191   -0.2157660   0.2289847
0-6 months (no birth wast)    EE              PAKISTAN     0                    NA                -0.1190000   -0.4341545   0.1268995
0-6 months (no birth wast)    GMS-Nepal       NEPAL        0                    NA                 0.2451874   -0.6463468   0.6539356
0-6 months (no birth wast)    JiVitA-4        BANGLADESH   0                    NA                -0.2870206   -2.1378343   0.4721129
6-24 months                   COHORTS         INDIA        0                    NA                 0.0816285   -0.0998519   0.2331638
6-24 months                   EE              PAKISTAN     0                    NA                 0.1079641   -0.1028068   0.2784520
6-24 months                   GMS-Nepal       NEPAL        0                    NA                 0.4435814    0.1103892   0.6519808
6-24 months                   JiVitA-4        BANGLADESH   0                    NA                 0.3033362    0.0435792   0.4925450
6-24 months                   NIH-Crypto      BANGLADESH   0                    NA                 0.0987654   -0.1955788   0.3206439
6-24 months                   PROVIDE         BANGLADESH   0                    NA                 0.1754651   -0.2612591   0.4609689
6-24 months                   SAS-CompFeed    INDIA        0                    NA                 0.3150737   -0.1358794   0.5869948
6-24 months                   SAS-FoodSuppl   INDIA        0                    NA                 0.4013403   -0.2308220   0.7088178
