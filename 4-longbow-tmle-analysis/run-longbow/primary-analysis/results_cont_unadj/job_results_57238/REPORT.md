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

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        hdlvry    n_cell      n
-------------  ---------------  -----------------------------  -------  -------  -----
0-3 months     CMC-V-BCS-2002   INDIA                          0             88     88
0-3 months     CMC-V-BCS-2002   INDIA                          1              0     88
0-3 months     COHORTS          INDIA                          0           2863   4580
0-3 months     COHORTS          INDIA                          1           1717   4580
0-3 months     EE               PAKISTAN                       0            198    301
0-3 months     EE               PAKISTAN                       1            103    301
0-3 months     GMS-Nepal        NEPAL                          0            113    473
0-3 months     GMS-Nepal        NEPAL                          1            360    473
0-3 months     IRC              INDIA                          0            370    377
0-3 months     IRC              INDIA                          1              7    377
0-3 months     NIH-Crypto       BANGLADESH                     0            558    721
0-3 months     NIH-Crypto       BANGLADESH                     1            163    721
0-3 months     PROVIDE          BANGLADESH                     0            478    640
0-3 months     PROVIDE          BANGLADESH                     1            162    640
0-3 months     SAS-CompFeed     INDIA                          0            140   1025
0-3 months     SAS-CompFeed     INDIA                          1            885   1025
3-6 months     CMC-V-BCS-2002   INDIA                          0            298    305
3-6 months     CMC-V-BCS-2002   INDIA                          1              7    305
3-6 months     COHORTS          INDIA                          0           2754   4481
3-6 months     COHORTS          INDIA                          1           1727   4481
3-6 months     EE               PAKISTAN                       0            186    278
3-6 months     EE               PAKISTAN                       1             92    278
3-6 months     GMS-Nepal        NEPAL                          0            101    437
3-6 months     GMS-Nepal        NEPAL                          1            336    437
3-6 months     IRC              INDIA                          0            389    397
3-6 months     IRC              INDIA                          1              8    397
3-6 months     NIH-Crypto       BANGLADESH                     0            536    695
3-6 months     NIH-Crypto       BANGLADESH                     1            159    695
3-6 months     PROVIDE          BANGLADESH                     0            446    598
3-6 months     PROVIDE          BANGLADESH                     1            152    598
3-6 months     SAS-CompFeed     INDIA                          0            124    919
3-6 months     SAS-CompFeed     INDIA                          1            795    919
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1550   1578
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             28   1578
6-9 months     CMC-V-BCS-2002   INDIA                          0            303    310
6-9 months     CMC-V-BCS-2002   INDIA                          1              7    310
6-9 months     COHORTS          INDIA                          0           2514   4079
6-9 months     COHORTS          INDIA                          1           1565   4079
6-9 months     EE               PAKISTAN                       0            202    302
6-9 months     EE               PAKISTAN                       1            100    302
6-9 months     GMS-Nepal        NEPAL                          0            107    452
6-9 months     GMS-Nepal        NEPAL                          1            345    452
6-9 months     IRC              INDIA                          0            399    407
6-9 months     IRC              INDIA                          1              8    407
6-9 months     NIH-Crypto       BANGLADESH                     0            537    688
6-9 months     NIH-Crypto       BANGLADESH                     1            151    688
6-9 months     PROVIDE          BANGLADESH                     0            420    565
6-9 months     PROVIDE          BANGLADESH                     1            145    565
6-9 months     SAS-CompFeed     INDIA                          0            125    938
6-9 months     SAS-CompFeed     INDIA                          1            813    938
6-9 months     SAS-FoodSuppl    INDIA                          0             65    314
6-9 months     SAS-FoodSuppl    INDIA                          1            249    314
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1383   1406
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             23   1406
9-12 months    CMC-V-BCS-2002   INDIA                          0            307    315
9-12 months    CMC-V-BCS-2002   INDIA                          1              8    315
9-12 months    COHORTS          INDIA                          0           2174   3504
9-12 months    COHORTS          INDIA                          1           1330   3504
9-12 months    EE               PAKISTAN                       0            218    324
9-12 months    EE               PAKISTAN                       1            106    324
9-12 months    GMS-Nepal        NEPAL                          0            102    441
9-12 months    GMS-Nepal        NEPAL                          1            339    441
9-12 months    IRC              INDIA                          0            392    400
9-12 months    IRC              INDIA                          1              8    400
9-12 months    NIH-Crypto       BANGLADESH                     0            526    674
9-12 months    NIH-Crypto       BANGLADESH                     1            148    674
9-12 months    PROVIDE          BANGLADESH                     0            422    566
9-12 months    PROVIDE          BANGLADESH                     1            144    566
9-12 months    SAS-CompFeed     INDIA                          0            130    944
9-12 months    SAS-CompFeed     INDIA                          1            814    944
9-12 months    SAS-FoodSuppl    INDIA                          0             62    311
9-12 months    SAS-FoodSuppl    INDIA                          1            249    311
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1010   1021
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             11   1021
12-15 months   CMC-V-BCS-2002   INDIA                          0            319    327
12-15 months   CMC-V-BCS-2002   INDIA                          1              8    327
12-15 months   EE               PAKISTAN                       0            194    295
12-15 months   EE               PAKISTAN                       1            101    295
12-15 months   GMS-Nepal        NEPAL                          0            105    438
12-15 months   GMS-Nepal        NEPAL                          1            333    438
12-15 months   IRC              INDIA                          0            383    390
12-15 months   IRC              INDIA                          1              7    390
12-15 months   NIH-Crypto       BANGLADESH                     0            512    660
12-15 months   NIH-Crypto       BANGLADESH                     1            148    660
12-15 months   PROVIDE          BANGLADESH                     0            399    532
12-15 months   PROVIDE          BANGLADESH                     1            133    532
12-15 months   SAS-CompFeed     INDIA                          0            132    964
12-15 months   SAS-CompFeed     INDIA                          1            832    964
12-15 months   SAS-FoodSuppl    INDIA                          0             64    303
12-15 months   SAS-FoodSuppl    INDIA                          1            239    303
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            737    743
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              6    743
15-18 months   CMC-V-BCS-2002   INDIA                          0            311    319
15-18 months   CMC-V-BCS-2002   INDIA                          1              8    319
15-18 months   EE               PAKISTAN                       0            178    276
15-18 months   EE               PAKISTAN                       1             98    276
15-18 months   GMS-Nepal        NEPAL                          0            111    448
15-18 months   GMS-Nepal        NEPAL                          1            337    448
15-18 months   IRC              INDIA                          0            375    382
15-18 months   IRC              INDIA                          1              7    382
15-18 months   NIH-Crypto       BANGLADESH                     0            463    604
15-18 months   NIH-Crypto       BANGLADESH                     1            141    604
15-18 months   PROVIDE          BANGLADESH                     0            395    528
15-18 months   PROVIDE          BANGLADESH                     1            133    528
15-18 months   SAS-CompFeed     INDIA                          0            125    966
15-18 months   SAS-CompFeed     INDIA                          1            841    966
15-18 months   SAS-FoodSuppl    INDIA                          0             61    291
15-18 months   SAS-FoodSuppl    INDIA                          1            230    291
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            617    624
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              7    624
18-21 months   CMC-V-BCS-2002   INDIA                          0            295    303
18-21 months   CMC-V-BCS-2002   INDIA                          1              8    303
18-21 months   EE               PAKISTAN                       0            173    253
18-21 months   EE               PAKISTAN                       1             80    253
18-21 months   GMS-Nepal        NEPAL                          0            103    417
18-21 months   GMS-Nepal        NEPAL                          1            314    417
18-21 months   IRC              INDIA                          0            372    379
18-21 months   IRC              INDIA                          1              7    379
18-21 months   NIH-Crypto       BANGLADESH                     0            417    546
18-21 months   NIH-Crypto       BANGLADESH                     1            129    546
18-21 months   PROVIDE          BANGLADESH                     0            404    541
18-21 months   PROVIDE          BANGLADESH                     1            137    541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              8      8
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      8
21-24 months   CMC-V-BCS-2002   INDIA                          0            299    306
21-24 months   CMC-V-BCS-2002   INDIA                          1              7    306
21-24 months   EE               PAKISTAN                       0             75    106
21-24 months   EE               PAKISTAN                       1             31    106
21-24 months   GMS-Nepal        NEPAL                          0             85    322
21-24 months   GMS-Nepal        NEPAL                          1            237    322
21-24 months   IRC              INDIA                          0            382    389
21-24 months   IRC              INDIA                          1              7    389
21-24 months   NIH-Crypto       BANGLADESH                     0            371    490
21-24 months   NIH-Crypto       BANGLADESH                     1            119    490
21-24 months   PROVIDE          BANGLADESH                     0            352    471
21-24 months   PROVIDE          BANGLADESH                     1            119    471


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/6196b5e0-940c-4c5e-91a3-82c82334220c/8d98e7db-ed7e-44a7-907f-101b2a4f1865/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6196b5e0-940c-4c5e-91a3-82c82334220c/8d98e7db-ed7e-44a7-907f-101b2a4f1865/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6196b5e0-940c-4c5e-91a3-82c82334220c/8d98e7db-ed7e-44a7-907f-101b2a4f1865/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          INDIA                          0                    NA                3.5375453   3.5163001   3.5587906
0-3 months     COHORTS          INDIA                          1                    NA                3.4183576   3.3907895   3.4459258
0-3 months     EE               PAKISTAN                       0                    NA                3.0691449   2.9595304   3.1787595
0-3 months     EE               PAKISTAN                       1                    NA                3.0957900   2.9745039   3.2170762
0-3 months     GMS-Nepal        NEPAL                          0                    NA                3.6344300   3.5379753   3.7308847
0-3 months     GMS-Nepal        NEPAL                          1                    NA                3.5978495   3.5362063   3.6594926
0-3 months     IRC              INDIA                          0                    NA                3.1431413   3.0310208   3.2552617
0-3 months     IRC              INDIA                          1                    NA                2.8796715   2.1905479   3.5687951
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                3.1445291   3.1033243   3.1857339
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                3.0769222   2.9998810   3.1539635
0-3 months     PROVIDE          BANGLADESH                     0                    NA                3.2708738   3.2273829   3.3143646
0-3 months     PROVIDE          BANGLADESH                     1                    NA                3.2187543   3.1490776   3.2884309
0-3 months     SAS-CompFeed     INDIA                          0                    NA                3.3768574   3.2453938   3.5083210
0-3 months     SAS-CompFeed     INDIA                          1                    NA                3.4062582   3.3711212   3.4413952
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.8068881   1.7044670   1.9093092
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.9008428   1.2479048   2.5537808
3-6 months     COHORTS          INDIA                          0                    NA                1.8886546   1.8701215   1.9071878
3-6 months     COHORTS          INDIA                          1                    NA                1.8069033   1.7842125   1.8295941
3-6 months     EE               PAKISTAN                       0                    NA                2.0861544   2.0134940   2.1588147
3-6 months     EE               PAKISTAN                       1                    NA                2.1173492   2.0196594   2.2150389
3-6 months     GMS-Nepal        NEPAL                          0                    NA                1.7176189   1.6336575   1.8015804
3-6 months     GMS-Nepal        NEPAL                          1                    NA                1.7162616   1.6690774   1.7634458
3-6 months     IRC              INDIA                          0                    NA                1.8829475   1.8178679   1.9480270
3-6 months     IRC              INDIA                          1                    NA                1.7701196   1.5123539   2.0278853
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                2.0175559   1.9750729   2.0600390
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                1.9661580   1.8969975   2.0353184
3-6 months     PROVIDE          BANGLADESH                     0                    NA                1.9612591   1.9217935   2.0007248
3-6 months     PROVIDE          BANGLADESH                     1                    NA                1.9789103   1.9129515   2.0448691
3-6 months     SAS-CompFeed     INDIA                          0                    NA                1.9786777   1.9165197   2.0408357
3-6 months     SAS-CompFeed     INDIA                          1                    NA                1.8944205   1.8252930   1.9635480
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7923391   1.7550398   1.8296383
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.6495462   1.4433253   1.8557671
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.2152178   1.1352239   1.2952117
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.3339555   1.1597547   1.5081564
6-9 months     COHORTS          INDIA                          0                    NA                1.1987377   1.1819125   1.2155628
6-9 months     COHORTS          INDIA                          1                    NA                1.1496900   1.1278895   1.1714904
6-9 months     EE               PAKISTAN                       0                    NA                1.1960683   1.1371547   1.2549820
6-9 months     EE               PAKISTAN                       1                    NA                1.1423596   1.0643293   1.2203898
6-9 months     GMS-Nepal        NEPAL                          0                    NA                1.3688332   1.2798685   1.4577978
6-9 months     GMS-Nepal        NEPAL                          1                    NA                1.2973899   1.2489872   1.3457927
6-9 months     IRC              INDIA                          0                    NA                1.3762111   1.3267538   1.4256684
6-9 months     IRC              INDIA                          1                    NA                1.1823688   0.9608982   1.4038394
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                1.3329474   1.2987404   1.3671544
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                1.3116336   1.2551944   1.3680728
6-9 months     PROVIDE          BANGLADESH                     0                    NA                1.2844938   1.2554298   1.3135578
6-9 months     PROVIDE          BANGLADESH                     1                    NA                1.2764073   1.2256058   1.3272088
6-9 months     SAS-CompFeed     INDIA                          0                    NA                1.2622096   1.1595372   1.3648819
6-9 months     SAS-CompFeed     INDIA                          1                    NA                1.2150394   1.1775831   1.2524957
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                1.1559540   1.0626359   1.2492722
6-9 months     SAS-FoodSuppl    INDIA                          1                    NA                1.1391335   1.0942885   1.1839786
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.3198948   1.2822220   1.3575676
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3812957   1.1733546   1.5892368
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.8917995   0.8225070   0.9610920
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                1.2413565   0.9347461   1.5479668
9-12 months    COHORTS          INDIA                          0                    NA                1.0122961   0.9940717   1.0305206
9-12 months    COHORTS          INDIA                          1                    NA                0.9445688   0.9211149   0.9680228
9-12 months    EE               PAKISTAN                       0                    NA                0.9264387   0.8819524   0.9709250
9-12 months    EE               PAKISTAN                       1                    NA                0.8979280   0.8408369   0.9550190
9-12 months    GMS-Nepal        NEPAL                          0                    NA                0.9608136   0.8803440   1.0412831
9-12 months    GMS-Nepal        NEPAL                          1                    NA                1.0125796   0.9761125   1.0490468
9-12 months    IRC              INDIA                          0                    NA                1.1219792   1.0821939   1.1617645
9-12 months    IRC              INDIA                          1                    NA                1.1966892   0.9310906   1.4622877
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                1.1209562   1.0911625   1.1507498
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                1.1324247   1.0769942   1.1878552
9-12 months    PROVIDE          BANGLADESH                     0                    NA                1.0539824   1.0228008   1.0851639
9-12 months    PROVIDE          BANGLADESH                     1                    NA                1.0382311   0.9846051   1.0918571
9-12 months    SAS-CompFeed     INDIA                          0                    NA                0.9837543   0.8963762   1.0711324
9-12 months    SAS-CompFeed     INDIA                          1                    NA                0.9870418   0.9572814   1.0168021
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                0.7155630   0.5180101   0.9131158
9-12 months    SAS-FoodSuppl    INDIA                          1                    NA                0.8343449   0.6717493   0.9969404
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0857752   1.0499960   1.1215543
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9329971   0.8052092   1.0607849
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.8601154   0.7887380   0.9314928
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.5934616   0.3213238   0.8655994
12-15 months   EE               PAKISTAN                       0                    NA                1.0144178   0.9731343   1.0557013
12-15 months   EE               PAKISTAN                       1                    NA                1.0037203   0.9507915   1.0566490
12-15 months   GMS-Nepal        NEPAL                          0                    NA                0.9180145   0.8362747   0.9997543
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.8700379   0.8403274   0.8997485
12-15 months   IRC              INDIA                          0                    NA                0.9543792   0.9120141   0.9967444
12-15 months   IRC              INDIA                          1                    NA                1.0086837   0.8206033   1.1967641
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                0.9764484   0.9480481   1.0048487
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9527735   0.9045003   1.0010467
12-15 months   PROVIDE          BANGLADESH                     0                    NA                0.9645631   0.9340143   0.9951120
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.9453108   0.8948875   0.9957341
12-15 months   SAS-CompFeed     INDIA                          0                    NA                0.7654820   0.6986700   0.8322941
12-15 months   SAS-CompFeed     INDIA                          1                    NA                0.8242330   0.7754587   0.8730073
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                0.9692738   0.7023287   1.2362189
12-15 months   SAS-FoodSuppl    INDIA                          1                    NA                1.0421824   0.9544992   1.1298655
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9277016   0.8886315   0.9667717
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8904994   0.7713509   1.0096478
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7353801   0.6709408   0.7998194
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6704147   0.3997877   0.9410416
15-18 months   EE               PAKISTAN                       0                    NA                0.8607201   0.8186619   0.9027783
15-18 months   EE               PAKISTAN                       1                    NA                0.7972668   0.7483506   0.8461829
15-18 months   GMS-Nepal        NEPAL                          0                    NA                0.7068099   0.6141916   0.7994281
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.7690198   0.7315662   0.8064734
15-18 months   IRC              INDIA                          0                    NA                0.8653842   0.8255051   0.9052633
15-18 months   IRC              INDIA                          1                    NA                0.5236251   0.3617510   0.6854993
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                0.9224960   0.8961585   0.9488335
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9020233   0.8553585   0.9486881
15-18 months   PROVIDE          BANGLADESH                     0                    NA                0.8551997   0.8279734   0.8824261
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.8587730   0.8077441   0.9098018
15-18 months   SAS-CompFeed     INDIA                          0                    NA                0.9658328   0.8980314   1.0336343
15-18 months   SAS-CompFeed     INDIA                          1                    NA                0.8771267   0.8582402   0.8960132
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                0.8043776   0.7239150   0.8848401
15-18 months   SAS-FoodSuppl    INDIA                          1                    NA                0.7922423   0.7524023   0.8320824
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9300827   0.8860280   0.9741374
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7683489   0.5222857   1.0144120
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7077685   0.6424635   0.7730734
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.4096750   0.2282439   0.5911061
18-21 months   EE               PAKISTAN                       0                    NA                0.7264532   0.6824146   0.7704919
18-21 months   EE               PAKISTAN                       1                    NA                0.7025800   0.6502350   0.7549251
18-21 months   GMS-Nepal        NEPAL                          0                    NA                0.9939039   0.9191889   1.0686188
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.8764123   0.8362876   0.9165369
18-21 months   IRC              INDIA                          0                    NA                0.7615555   0.7224418   0.8006691
18-21 months   IRC              INDIA                          1                    NA                0.6666258   0.5226628   0.8105888
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                0.8018657   0.7748195   0.8289120
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.7845537   0.7386335   0.8304738
18-21 months   PROVIDE          BANGLADESH                     0                    NA                0.8560319   0.8284758   0.8835881
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.7901080   0.7423636   0.8378523
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.6994182   0.6391684   0.7596680
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7555657   0.3391573   1.1719740
21-24 months   EE               PAKISTAN                       0                    NA                0.6585926   0.6132739   0.7039112
21-24 months   EE               PAKISTAN                       1                    NA                0.6269581   0.5575483   0.6963679
21-24 months   GMS-Nepal        NEPAL                          0                    NA                0.7513241   0.6818359   0.8208123
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.8199686   0.7603508   0.8795863
21-24 months   IRC              INDIA                          0                    NA                0.7094320   0.6676136   0.7512504
21-24 months   IRC              INDIA                          1                    NA                0.6527954   0.5089943   0.7965965
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.7970969   0.7684610   0.8257328
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.8063141   0.7590696   0.8535587
21-24 months   PROVIDE          BANGLADESH                     0                    NA                0.7583515   0.7292339   0.7874691
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.7773006   0.7255806   0.8290205


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          INDIA                          NA                   NA                3.4928630   3.4759520   3.5097739
0-3 months     EE               PAKISTAN                       NA                   NA                3.0782627   2.9950537   3.1614717
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.6065886   3.5542997   3.6588775
0-3 months     IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                3.4022425   3.3615716   3.4429134
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.8090444   1.7078462   1.9102427
3-6 months     COHORTS          INDIA                          NA                   NA                1.8571473   1.8427398   1.8715548
3-6 months     EE               PAKISTAN                       NA                   NA                2.0964778   2.0380696   2.1548860
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                1.7165753   1.6754325   1.7577181
3-6 months     IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                1.9057893   1.8442152   1.9673633
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7898054   1.7530632   1.8265475
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.2178990   1.1397587   1.2960393
6-9 months     COHORTS          INDIA                          NA                   NA                1.1799194   1.1665767   1.1932622
6-9 months     EE               PAKISTAN                       NA                   NA                1.1782840   1.1310763   1.2254917
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                1.3143024   1.2716844   1.3569203
6-9 months     IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                1.2213254   1.1902976   1.2523532
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                1.1426155   1.1021386   1.1830923
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3208993   1.2838000   1.3579985
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.9006772   0.8324254   0.9689289
9-12 months    COHORTS          INDIA                          NA                   NA                0.9865891   0.9721570   1.0010213
9-12 months    EE               PAKISTAN                       NA                   NA                0.9171111   0.8817992   0.9524229
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                1.0006065   0.9668961   1.0343169
9-12 months    IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.9865891   0.9598365   1.0133416
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.8106649   0.6745544   0.9467754
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0841292   1.0490852   1.1191732
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8535918   0.7835242   0.9236593
12-15 months   EE               PAKISTAN                       NA                   NA                1.0107552   0.9781087   1.0434018
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.8815392   0.8515745   0.9115039
12-15 months   IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.8161882   0.7765985   0.8557780
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                1.0267825   0.9374856   1.1160794
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9274012   0.8891908   0.9656115
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7337508   0.6705522   0.7969495
15-18 months   EE               PAKISTAN                       NA                   NA                0.8381895   0.8057813   0.8705977
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.7536062   0.7171842   0.7900282
15-18 months   IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.8886052   0.8682282   0.9089822
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.7947861   0.7590601   0.8305122
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9282684   0.8848562   0.9716806
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6998980   0.6359097   0.7638864
18-21 months   EE               PAKISTAN                       NA                   NA                0.7189044   0.6845146   0.7532942
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.9054330   0.8696956   0.9411703
18-21 months   IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7007026   0.6410363   0.7603689
21-24 months   EE               PAKISTAN                       NA                   NA                0.6493410   0.6112910   0.6873909
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.8018481   0.7541733   0.8495230
21-24 months   IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    0                 -0.1191877   -0.1539924   -0.0843830
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       1                    0                  0.0266451   -0.1368348    0.1901250
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                 -0.0365805   -0.1510506    0.0778895
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                 -0.2634698   -0.9616548    0.4347152
0-3 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0676068   -0.1549749    0.0197613
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                 -0.0521195   -0.1342553    0.0300163
0-3 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          1                    0                  0.0294009   -0.0910020    0.1498037
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.0939547   -0.5669675    0.7548769
3-6 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    0                 -0.0817513   -0.1110490   -0.0524537
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                  0.0311948   -0.0905542    0.1529438
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                 -0.0013573   -0.0976687    0.0949540
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                 -0.1128279   -0.3786822    0.1530264
3-6 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0513980   -0.1325643    0.0297684
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                  0.0176511   -0.0592131    0.0945154
3-6 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          1                    0                 -0.0842572   -0.1898260    0.0213116
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1427929   -0.3523598    0.0667740
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.1187377   -0.0729520    0.3104275
6-9 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    0                 -0.0490477   -0.0765858   -0.0215096
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                 -0.0537088   -0.1514817    0.0440642
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                 -0.0714432   -0.1727227    0.0298362
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                 -0.1938423   -0.4207680    0.0330833
6-9 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0213137   -0.0873099    0.0446825
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                 -0.0080865   -0.0666143    0.0504413
6-9 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          1                    0                 -0.0471702   -0.1672937    0.0729534
6-9 months     SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          1                    0                 -0.0168205   -0.1203548    0.0867138
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0614009   -0.1499252    0.2727271
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.3495569    0.0352142    0.6638997
9-12 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    0                 -0.0677273   -0.0974295   -0.0380251
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                 -0.0285107   -0.1008876    0.0438662
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                  0.0517661   -0.0365810    0.1401132
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                  0.0747099   -0.1938519    0.3432718
9-12 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    0                  0.0114685   -0.0514616    0.0743986
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                 -0.0157512   -0.0777838    0.0462813
9-12 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          1                    0                  0.0032875   -0.0931298    0.0997049
9-12 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          1                    0                  0.1187819   -0.1370783    0.3746421
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1527781   -0.2854803   -0.0200759
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.2666538   -0.5479965    0.0146889
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                 -0.0106975   -0.0778227    0.0564276
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                 -0.0479766   -0.1349485    0.0389953
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                  0.0543045   -0.1384882    0.2470972
12-15 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0236748   -0.0796827    0.0323330
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.0192523   -0.0782077    0.0397032
12-15 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          1                    0                  0.0587510   -0.0334390    0.1509410
12-15 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          1                    0                  0.0729086   -0.2080683    0.3538855
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0372022   -0.1625929    0.0881885
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0649654   -0.3431585    0.2132277
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                 -0.0634533   -0.1279644    0.0010578
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                  0.0622100   -0.0376945    0.1621145
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                 -0.3417590   -0.5084731   -0.1750450
15-18 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0204727   -0.0740569    0.0331115
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                  0.0035732   -0.0542646    0.0614111
15-18 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          1                    0                 -0.0887061   -0.1641600   -0.0132523
15-18 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          1                    0                 -0.0121352   -0.1019208    0.0776504
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1617339   -0.4117096    0.0882419
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.2980935   -0.4909198   -0.1052672
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                 -0.0238732   -0.0922794    0.0445330
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                 -0.1174916   -0.2022991   -0.0326841
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0949297   -0.2441115    0.0542522
18-21 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0173121   -0.0706052    0.0359811
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                 -0.0659240   -0.1210499   -0.0107981
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0561475   -0.3645970    0.4768920
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                 -0.0316344   -0.1145290    0.0512601
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                  0.0686445   -0.0229136    0.1602026
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                 -0.0566366   -0.2063949    0.0931216
21-24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0092172   -0.0460282    0.0644627
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                  0.0189491   -0.0404040    0.0783022


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          0                    NA                -0.0446824   -0.0578369   -0.0315278
0-3 months     EE               PAKISTAN                       0                    NA                 0.0091178   -0.0468422    0.0650777
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0278414   -0.1149759    0.0592930
0-3 months     IRC              INDIA                          0                    NA                -0.0048920   -0.0227130    0.0129290
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0152842   -0.0351437    0.0045752
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.0131928   -0.0340575    0.0076720
0-3 months     SAS-CompFeed     INDIA                          0                    NA                 0.0253851   -0.0808382    0.1316085
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0021563   -0.0144422    0.0187549
3-6 months     COHORTS          INDIA                          0                    NA                -0.0315074   -0.0428588   -0.0201560
3-6 months     EE               PAKISTAN                       0                    NA                 0.0103235   -0.0300046    0.0506516
3-6 months     GMS-Nepal        NEPAL                          0                    NA                -0.0010436   -0.0750954    0.0730081
3-6 months     IRC              INDIA                          0                    NA                -0.0022736   -0.0091009    0.0045537
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0117587   -0.0303970    0.0068797
3-6 months     PROVIDE          BANGLADESH                     0                    NA                 0.0044866   -0.0150605    0.0240337
3-6 months     SAS-CompFeed     INDIA                          0                    NA                -0.0728884   -0.1714969    0.0257200
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0025337   -0.0078549    0.0027874
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0026812   -0.0024990    0.0078613
6-9 months     COHORTS          INDIA                          0                    NA                -0.0188183   -0.0294092   -0.0082273
6-9 months     EE               PAKISTAN                       0                    NA                -0.0177844   -0.0502852    0.0147165
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0545308   -0.1318856    0.0228240
6-9 months     IRC              INDIA                          0                    NA                -0.0038102   -0.0100580    0.0024377
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0046779   -0.0191775    0.0098218
6-9 months     PROVIDE          BANGLADESH                     0                    NA                -0.0020753   -0.0170985    0.0129480
6-9 months     SAS-CompFeed     INDIA                          0                    NA                -0.0408842   -0.1419771    0.0602088
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                -0.0133386   -0.0954441    0.0687669
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0010044   -0.0042944    0.0063033
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0088776   -0.0011590    0.0189143
9-12 months    COHORTS          INDIA                          0                    NA                -0.0257070   -0.0370334   -0.0143806
9-12 months    EE               PAKISTAN                       0                    NA                -0.0093276   -0.0330513    0.0143962
9-12 months    GMS-Nepal        NEPAL                          0                    NA                 0.0397930   -0.0281507    0.1077367
9-12 months    IRC              INDIA                          0                    NA                 0.0014942   -0.0052978    0.0082862
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0025183   -0.0113048    0.0163414
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0040074   -0.0197996    0.0117849
9-12 months    SAS-CompFeed     INDIA                          0                    NA                 0.0028348   -0.0802406    0.0859102
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                 0.0951019   -0.1098189    0.3000227
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0016460   -0.0051019    0.0018099
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0065236   -0.0148584    0.0018111
12-15 months   EE               PAKISTAN                       0                    NA                -0.0036625   -0.0266517    0.0193266
12-15 months   GMS-Nepal        NEPAL                          0                    NA                -0.0364753   -0.1026257    0.0296750
12-15 months   IRC              INDIA                          0                    NA                 0.0009747   -0.0038981    0.0058475
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0053089   -0.0178908    0.0072730
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0048131   -0.0195690    0.0099428
12-15 months   SAS-CompFeed     INDIA                          0                    NA                 0.0507062   -0.0278785    0.1292910
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                 0.0575087   -0.1641453    0.2791628
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003004   -0.0034443    0.0028435
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0016292   -0.0086946    0.0054362
15-18 months   EE               PAKISTAN                       0                    NA                -0.0225305   -0.0457161    0.0006550
15-18 months   GMS-Nepal        NEPAL                          0                    NA                 0.0467963   -0.0283963    0.1219890
15-18 months   IRC              INDIA                          0                    NA                -0.0062626   -0.0124719   -0.0000533
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0047792   -0.0173072    0.0077488
15-18 months   PROVIDE          BANGLADESH                     0                    NA                 0.0009001   -0.0136695    0.0154697
15-18 months   SAS-CompFeed     INDIA                          0                    NA                -0.0772276   -0.1489811   -0.0054741
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0095914   -0.0805583    0.0613755
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0018143   -0.0082053    0.0045766
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0078705   -0.0152849   -0.0004560
18-21 months   EE               PAKISTAN                       0                    NA                -0.0075488   -0.0292226    0.0141250
18-21 months   GMS-Nepal        NEPAL                          0                    NA                -0.0884709   -0.1525161   -0.0244257
18-21 months   IRC              INDIA                          0                    NA                -0.0017533   -0.0056992    0.0021925
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0040902   -0.0166966    0.0085162
18-21 months   PROVIDE          BANGLADESH                     0                    NA                -0.0166942   -0.0308619   -0.0025266
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0012844   -0.0092763    0.0118451
21-24 months   EE               PAKISTAN                       0                    NA                -0.0092516   -0.0336501    0.0151469
21-24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0505241   -0.0169462    0.1179943
21-24 months   IRC              INDIA                          0                    NA                -0.0010192   -0.0048373    0.0027990
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0022385   -0.0111829    0.0156598
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0047876   -0.0102267    0.0198018
