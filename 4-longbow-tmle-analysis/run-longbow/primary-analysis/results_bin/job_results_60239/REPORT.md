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

* arm
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
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    0       25    259
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    1        9    259
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                    0      137    259
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                    1       88    259
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    0      541   3194
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    1      339   3194
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                    0     1288   3194
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                    1     1026   3194
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
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                    0       32    258
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                    1        1    258
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                    0      192    258
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                    1       33    258
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    0      793   3186
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    1       85   3186
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                    0     2081   3186
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                    1      227   3186
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
6-24 months                  JiVitA-3         BANGLADESH                     0                    0       23    218
6-24 months                  JiVitA-3         BANGLADESH                     0                    1        8    218
6-24 months                  JiVitA-3         BANGLADESH                     1                    0      132    218
6-24 months                  JiVitA-3         BANGLADESH                     1                    1       55    218
6-24 months                  JiVitA-4         BANGLADESH                     0                    0      539   2881
6-24 months                  JiVitA-4         BANGLADESH                     0                    1      255   2881
6-24 months                  JiVitA-4         BANGLADESH                     1                    0     1283   2881
6-24 months                  JiVitA-4         BANGLADESH                     1                    1      804   2881
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
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
![](/tmp/f90e1e7d-66e7-4939-923e-8c5b7091d6b7/429480f1-3043-4ac4-ad27-28866ad0c0e6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f90e1e7d-66e7-4939-923e-8c5b7091d6b7/429480f1-3043-4ac4-ad27-28866ad0c0e6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f90e1e7d-66e7-4939-923e-8c5b7091d6b7/429480f1-3043-4ac4-ad27-28866ad0c0e6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f90e1e7d-66e7-4939-923e-8c5b7091d6b7/429480f1-3043-4ac4-ad27-28866ad0c0e6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS          INDIA                          0                    NA                0.2882799   0.2693409   0.3072190
0-24 months (no birth st.)   COHORTS          INDIA                          1                    NA                0.3433687   0.3169775   0.3697599
0-24 months (no birth st.)   EE               PAKISTAN                       0                    NA                0.7947297   0.7278363   0.8616231
0-24 months (no birth st.)   EE               PAKISTAN                       1                    NA                0.8232156   0.7343084   0.9121227
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                0.4980080   0.4042984   0.5917175
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    NA                0.5801537   0.5321858   0.6281216
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    NA                0.2647059   0.1432986   0.3861132
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                    NA                0.3911111   0.3201765   0.4620457
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    NA                0.4040780   0.3631353   0.4450206
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                    NA                0.4335032   0.4086310   0.4583753
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    NA                0.3798505   0.3379676   0.4217334
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                    NA                0.4456327   0.3624083   0.5288571
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                0.3596943   0.3162704   0.4031181
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    NA                0.4193629   0.3433721   0.4953537
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    NA                0.4877764   0.4242394   0.5513133
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          1                    NA                0.6144750   0.5582987   0.6706514
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    NA                0.6863880   0.5592973   0.8134788
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          1                    NA                0.7276479   0.6650820   0.7902137
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2993610   0.2795822   0.3191398
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3868282   0.2715399   0.5021166
0-6 months (no birth st.)    COHORTS          INDIA                          0                    NA                0.0803192   0.0678901   0.0927483
0-6 months (no birth st.)    COHORTS          INDIA                          1                    NA                0.0887477   0.0741344   0.1033610
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                0.5125682   0.4299942   0.5951421
0-6 months (no birth st.)    EE               PAKISTAN                       1                    NA                0.6305943   0.5164354   0.7447532
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                0.1800320   0.0961910   0.2638731
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    NA                0.1684601   0.1320466   0.2048736
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    NA                0.1038462   0.0788638   0.1288286
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                    NA                0.0955833   0.0812734   0.1098932
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    NA                0.1925934   0.1584471   0.2267398
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                    NA                0.1815470   0.1170922   0.2460018
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                0.1540323   0.1213119   0.1867527
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    NA                0.1743689   0.1160065   0.2327313
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    NA                0.1860444   0.1491863   0.2229025
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          1                    NA                0.2030385   0.1718456   0.2342315
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1358202   0.1210246   0.1506157
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2368421   0.1403120   0.3333722
6-24 months                  COHORTS          INDIA                          0                    NA                0.2441103   0.2246292   0.2635915
6-24 months                  COHORTS          INDIA                          1                    NA                0.3127756   0.2844856   0.3410657
6-24 months                  EE               PAKISTAN                       0                    NA                0.5909615   0.4745091   0.7074139
6-24 months                  EE               PAKISTAN                       1                    NA                0.5375062   0.3196643   0.7553481
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                0.4661304   0.3588042   0.5734566
6-24 months                  GMS-Nepal        NEPAL                          1                    NA                0.5909995   0.5334932   0.6485057
6-24 months                  JiVitA-3         BANGLADESH                     0                    NA                0.2580645   0.1217194   0.3944096
6-24 months                  JiVitA-3         BANGLADESH                     1                    NA                0.2941176   0.2209212   0.3673141
6-24 months                  JiVitA-4         BANGLADESH                     0                    NA                0.3429183   0.3007034   0.3851331
6-24 months                  JiVitA-4         BANGLADESH                     1                    NA                0.3766746   0.3512773   0.4020718
6-24 months                  NIH-Crypto       BANGLADESH                     0                    NA                0.2484433   0.2060734   0.2908132
6-24 months                  NIH-Crypto       BANGLADESH                     1                    NA                0.3123342   0.2246618   0.4000067
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                0.2851944   0.2372624   0.3331265
6-24 months                  PROVIDE          BANGLADESH                     1                    NA                0.3457888   0.2592050   0.4323726
6-24 months                  SAS-CompFeed     INDIA                          0                    NA                0.3661263   0.3055360   0.4267167
6-24 months                  SAS-CompFeed     INDIA                          1                    NA                0.5676153   0.5381617   0.5970690
6-24 months                  SAS-FoodSuppl    INDIA                          0                    NA                0.7154019   0.5928623   0.8379414
6-24 months                  SAS-FoodSuppl    INDIA                          1                    NA                0.7700345   0.7093051   0.8307640
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2273936   0.2059594   0.2488279
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2857143   0.1792529   0.3921757


### Parameter: E(Y)


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS          INDIA                          NA                   NA                0.3036392   0.2901712   0.3171072
0-24 months (no birth st.)   EE               PAKISTAN                       NA                   NA                0.8066038   0.7533119   0.8598956
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          NA                   NA                0.5626168   0.5205427   0.6046909
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     NA                   NA                0.3745174   0.3090067   0.4400281
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     NA                   NA                0.4273638   0.4069167   0.4478110
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          NA                   NA                0.6020293   0.5512634   0.6527952
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          NA                   NA                0.7198444   0.6648337   0.7748550
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3010803   0.2815901   0.3205706
0-6 months (no birth st.)    COHORTS          INDIA                          NA                   NA                0.0812729   0.0731685   0.0893773
0-6 months (no birth st.)    EE               PAKISTAN                       NA                   NA                0.5518868   0.4847863   0.6189873
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          NA                   NA                0.1700935   0.1382268   0.2019601
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     NA                   NA                0.0979284   0.0852731   0.1105838
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          NA                   NA                0.2029312   0.1748514   0.2310111
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1376233   0.1229861   0.1522605
6-24 months                  COHORTS          INDIA                          NA                   NA                0.2661332   0.2522150   0.2800514
6-24 months                  EE               PAKISTAN                       NA                   NA                0.5806452   0.4798127   0.6814776
6-24 months                  GMS-Nepal        NEPAL                          NA                   NA                0.5630027   0.5125980   0.6134074
6-24 months                  JiVitA-3         BANGLADESH                     NA                   NA                0.2889908   0.2220207   0.3559610
6-24 months                  JiVitA-4         BANGLADESH                     NA                   NA                0.3675807   0.3466082   0.3885532
6-24 months                  NIH-Crypto       BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  SAS-CompFeed     INDIA                          NA                   NA                0.5451761   0.5131549   0.5771973
6-24 months                  SAS-FoodSuppl    INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2281967   0.2071268   0.2492667


### Parameter: RR


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS          INDIA                          1                    0                 1.1910947   1.0777423   1.316369
0-24 months (no birth st.)   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   EE               PAKISTAN                       1                    0                 1.0358435   0.9029625   1.188279
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    0                 1.1649486   0.9480996   1.431395
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                    0                 1.4775309   0.9188173   2.375986
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                    0                 1.0728206   0.9538012   1.206692
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                    0                 1.1731792   0.9455054   1.455676
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    0                 1.1658871   0.9394813   1.446854
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          1                    0                 1.2597474   1.0435404   1.520749
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          1                    0                 1.0601115   0.8640985   1.300588
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2921798   0.9522844   1.753393
0-6 months (no birth st.)    COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS          INDIA                          1                    0                 1.1049382   0.8820314   1.384178
0-6 months (no birth st.)    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    EE               PAKISTAN                       1                    0                 1.2302643   0.9632177   1.571348
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    0                 0.9357230   0.5598324   1.563999
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                    0                 0.9204310   0.6982095   1.213380
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                    0                 0.9426438   0.6342465   1.400997
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    0                 1.1320279   0.7637628   1.677860
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          1                    0                 1.0913447   0.8933411   1.333235
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.7437917   1.1436025   2.658974
6-24 months                  COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  COHORTS          INDIA                          1                    0                 1.2812878   1.1368055   1.444133
6-24 months                  EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  EE               PAKISTAN                       1                    0                 0.9095451   0.5804158   1.425310
6-24 months                  GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  GMS-Nepal        NEPAL                          1                    0                 1.2678844   0.9871875   1.628395
6-24 months                  JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-3         BANGLADESH                     1                    0                 1.1397059   0.6462995   2.009795
6-24 months                  JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-4         BANGLADESH                     1                    0                 1.0984384   0.9529343   1.266160
6-24 months                  NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  NIH-Crypto       BANGLADESH                     1                    0                 1.2571648   0.9075171   1.741525
6-24 months                  PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  PROVIDE          BANGLADESH                     1                    0                 1.2124668   0.8987012   1.635778
6-24 months                  SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  SAS-CompFeed     INDIA                          1                    0                 1.5503265   1.2832237   1.873027
6-24 months                  SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  SAS-FoodSuppl    INDIA                          1                    0                 1.0763664   0.8912946   1.299867
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2564745   0.8555225   1.845338


### Parameter: PAR


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          INDIA                          0                    NA                 0.0153593    0.0016803   0.0290382
0-24 months (no birth st.)   EE               PAKISTAN                       0                    NA                 0.0118741   -0.0249803   0.0487285
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                 0.0646089   -0.0180391   0.1472568
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    NA                 0.1098115   -0.0067521   0.2263750
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    NA                 0.0232858   -0.0128496   0.0594213
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0137176   -0.0061700   0.0336053
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                 0.0162931   -0.0061150   0.0387011
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    NA                 0.1142529    0.0252582   0.2032477
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    NA                 0.0334563   -0.0789153   0.1458279
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0017193   -0.0011445   0.0045831
0-6 months (no birth st.)    COHORTS          INDIA                          0                    NA                 0.0009537   -0.0084316   0.0103391
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                 0.0393186   -0.0091121   0.0877493
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                -0.0099386   -0.0869769   0.0670998
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    NA                -0.0059178   -0.0267817   0.0149462
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    NA                -0.0027006   -0.0183515   0.0129502
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                 0.0055254   -0.0116376   0.0226883
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    NA                 0.0168869   -0.0163893   0.0501630
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018031   -0.0007036   0.0043098
6-24 months                  COHORTS          INDIA                          0                    NA                 0.0220228    0.0077615   0.0362842
6-24 months                  EE               PAKISTAN                       0                    NA                -0.0103164   -0.0699570   0.0493242
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                 0.0968723    0.0029818   0.1907627
6-24 months                  JiVitA-3         BANGLADESH                     0                    NA                 0.0309263   -0.0977535   0.1596061
6-24 months                  JiVitA-4         BANGLADESH                     0                    NA                 0.0246624   -0.0125046   0.0618295
6-24 months                  NIH-Crypto       BANGLADESH                     0                    NA                 0.0144025   -0.0066671   0.0354721
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                 0.0152441   -0.0094741   0.0399624
6-24 months                  SAS-CompFeed     INDIA                          0                    NA                 0.1790498    0.1105772   0.2475224
6-24 months                  SAS-FoodSuppl    INDIA                          0                    NA                 0.0417998   -0.0644643   0.1480638
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0008031   -0.0019332   0.0035394


### Parameter: PAF


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          INDIA                          0                    NA                 0.0505839    0.0044520   0.0945782
0-24 months (no birth st.)   EE               PAKISTAN                       0                    NA                 0.0147211   -0.0321282   0.0594439
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                 0.1148364   -0.0455143   0.2505940
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    NA                 0.2932080   -0.0879598   0.5408333
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    NA                 0.0544872   -0.0339153   0.1353310
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0348546   -0.0170268   0.0840893
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                 0.0433341   -0.0182119   0.1011600
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    NA                 0.1897797    0.0407038   0.3156890
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    NA                 0.0464772   -0.1233496   0.1906297
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0057104   -0.0038646   0.0151941
0-6 months (no birth st.)    COHORTS          INDIA                          0                    NA                 0.0117350   -0.1107753   0.1207333
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                 0.0712440   -0.0212160   0.1553328
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                -0.0584299   -0.6236231   0.3100160
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    NA                -0.0604298   -0.2960504   0.1323552
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    NA                -0.0142220   -0.1000780   0.0649334
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                 0.0346292   -0.0790821   0.1363578
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    NA                 0.0832147   -0.0928412   0.2309081
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0131018   -0.0053045   0.0311711
6-24 months                  COHORTS          INDIA                          0                    NA                 0.0827512    0.0275858   0.1347871
6-24 months                  EE               PAKISTAN                       0                    NA                -0.0177671   -0.1259408   0.0800139
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                 0.1720636   -0.0138778   0.3239041
6-24 months                  JiVitA-3         BANGLADESH                     0                    NA                 0.1070148   -0.4655911   0.4559039
6-24 months                  JiVitA-4         BANGLADESH                     0                    NA                 0.0670940   -0.0396753   0.1628986
6-24 months                  NIH-Crypto       BANGLADESH                     0                    NA                 0.0547946   -0.0286366   0.1314588
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                 0.0507396   -0.0352127   0.1295555
6-24 months                  SAS-CompFeed     INDIA                          0                    NA                 0.3284256    0.1995978   0.4365181
6-24 months                  SAS-FoodSuppl    INDIA                          0                    NA                 0.0552030   -0.0964777   0.1859010
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0035194   -0.0085713   0.0154651
