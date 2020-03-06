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
![](/tmp/1f883480-6fff-4a77-89c3-d27d589da3eb/a5171d08-b256-4c23-a595-069c7ab6c42b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1f883480-6fff-4a77-89c3-d27d589da3eb/a5171d08-b256-4c23-a595-069c7ab6c42b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1f883480-6fff-4a77-89c3-d27d589da3eb/a5171d08-b256-4c23-a595-069c7ab6c42b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          0                    NA                -0.0505776   -0.0610287   -0.0401264
0-3 months     COHORTS          INDIA                          1                    NA                -0.1001717   -0.1135562   -0.0867871
0-3 months     EE               PAKISTAN                       0                    NA                -0.2301269   -0.2869109   -0.1733429
0-3 months     EE               PAKISTAN                       1                    NA                -0.1883748   -0.2495151   -0.1272344
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0111806   -0.0592712    0.0369099
0-3 months     GMS-Nepal        NEPAL                          1                    NA                -0.0339170   -0.0641762   -0.0036578
0-3 months     IRC              INDIA                          0                    NA                -0.2534572   -0.3094574   -0.1974571
0-3 months     IRC              INDIA                          1                    NA                -0.3810913   -0.7298392   -0.0323434
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.2262392   -0.2460769   -0.2064016
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.2484509   -0.2846632   -0.2122386
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.1822404   -0.2026090   -0.1618718
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.2051531   -0.2381440   -0.1721623
0-3 months     SAS-CompFeed     INDIA                          0                    NA                -0.1296658   -0.2092743   -0.0500574
0-3 months     SAS-CompFeed     INDIA                          1                    NA                -0.0933885   -0.1083899   -0.0783871
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0970669   -0.1455086   -0.0486252
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.0276755   -0.3235909    0.2682399
3-6 months     COHORTS          INDIA                          0                    NA                -0.0512191   -0.0597589   -0.0426793
3-6 months     COHORTS          INDIA                          1                    NA                -0.0814174   -0.0918884   -0.0709463
3-6 months     EE               PAKISTAN                       0                    NA                 0.0592989    0.0249114    0.0936864
3-6 months     EE               PAKISTAN                       1                    NA                 0.0823452    0.0367966    0.1278938
3-6 months     GMS-Nepal        NEPAL                          0                    NA                -0.1583678   -0.1977519   -0.1189837
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.1588330   -0.1812817   -0.1363842
3-6 months     IRC              INDIA                          0                    NA                -0.0508820   -0.0815441   -0.0202200
3-6 months     IRC              INDIA                          1                    NA                -0.1009918   -0.2358742    0.0338905
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0307744    0.0111518    0.0503971
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                 0.0132884   -0.0186490    0.0452258
3-6 months     PROVIDE          BANGLADESH                     0                    NA                -0.0304308   -0.0490237   -0.0118379
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0167857   -0.0473361    0.0137646
3-6 months     SAS-CompFeed     INDIA                          0                    NA                -0.0062338   -0.0321697    0.0197022
3-6 months     SAS-CompFeed     INDIA                          1                    NA                -0.0358496   -0.0673995   -0.0042996
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0861535   -0.1034559   -0.0688510
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1506207   -0.2452664   -0.0559750
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0827477   -0.1180104   -0.0474851
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.0385031   -0.1270723    0.0500662
6-9 months     COHORTS          INDIA                          0                    NA                -0.0968326   -0.1042489   -0.0894163
6-9 months     COHORTS          INDIA                          1                    NA                -0.1099905   -0.1196160   -0.1003649
6-9 months     EE               PAKISTAN                       0                    NA                -0.0787378   -0.1046735   -0.0528020
6-9 months     EE               PAKISTAN                       1                    NA                -0.0970594   -0.1314206   -0.0626982
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0244306   -0.0625564    0.0136953
6-9 months     GMS-Nepal        NEPAL                          1                    NA                -0.0515970   -0.0724322   -0.0307618
6-9 months     IRC              INDIA                          0                    NA                -0.0147169   -0.0366947    0.0072608
6-9 months     IRC              INDIA                          1                    NA                -0.0936122   -0.1910686    0.0038443
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0303525   -0.0451605   -0.0155444
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0349603   -0.0594961   -0.0104245
6-9 months     PROVIDE          BANGLADESH                     0                    NA                -0.0613086   -0.0738271   -0.0487901
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0617675   -0.0834498   -0.0400852
6-9 months     SAS-CompFeed     INDIA                          0                    NA                -0.0667721   -0.1099272   -0.0236169
6-9 months     SAS-CompFeed     INDIA                          1                    NA                -0.0805489   -0.0974417   -0.0636562
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                -0.1047090   -0.1456318   -0.0637862
6-9 months     SAS-FoodSuppl    INDIA                          1                    NA                -0.1053666   -0.1255212   -0.0852119
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0538862   -0.0704441   -0.0373284
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0264568   -0.1165033    0.0635897
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.1217715   -0.1509046   -0.0926385
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                 0.0120216   -0.1194109    0.1434541
9-12 months    COHORTS          INDIA                          0                    NA                -0.0832364   -0.0906965   -0.0757763
9-12 months    COHORTS          INDIA                          1                    NA                -0.1011042   -0.1107020   -0.0915063
9-12 months    EE               PAKISTAN                       0                    NA                -0.0990794   -0.1176832   -0.0804757
9-12 months    EE               PAKISTAN                       1                    NA                -0.1028797   -0.1267282   -0.0790312
9-12 months    GMS-Nepal        NEPAL                          0                    NA                -0.0988644   -0.1323543   -0.0653744
9-12 months    GMS-Nepal        NEPAL                          1                    NA                -0.0731925   -0.0885214   -0.0578636
9-12 months    IRC              INDIA                          0                    NA                -0.0369856   -0.0541299   -0.0198412
9-12 months    IRC              INDIA                          1                    NA                 0.0057282   -0.1005838    0.1120403
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0365222   -0.0489761   -0.0240683
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0263998   -0.0492267   -0.0035728
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0624438   -0.0751101   -0.0497775
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0648148   -0.0867618   -0.0428678
9-12 months    SAS-CompFeed     INDIA                          0                    NA                -0.0914258   -0.1299180   -0.0529336
9-12 months    SAS-CompFeed     INDIA                          1                    NA                -0.0843788   -0.0976117   -0.0711458
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.1875033   -0.2705053   -0.1045013
9-12 months    SAS-FoodSuppl    INDIA                          1                    NA                -0.1359952   -0.2017848   -0.0702055
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0660400   -0.0810720   -0.0510080
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1262701   -0.1789502   -0.0735899
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0683815   -0.0970285   -0.0397345
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.1863257   -0.2857458   -0.0869056
12-15 months   EE               PAKISTAN                       0                    NA                -0.0004895   -0.0171559    0.0161769
12-15 months   EE               PAKISTAN                       1                    NA                -0.0000552   -0.0201906    0.0200803
12-15 months   GMS-Nepal        NEPAL                          0                    NA                -0.0539597   -0.0849029   -0.0230165
12-15 months   GMS-Nepal        NEPAL                          1                    NA                -0.0699477   -0.0811149   -0.0587806
12-15 months   IRC              INDIA                          0                    NA                -0.0459200   -0.0630104   -0.0288295
12-15 months   IRC              INDIA                          1                    NA                -0.0198425   -0.0874469    0.0477619
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0371617   -0.0480757   -0.0262476
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0423777   -0.0614212   -0.0233343
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0400940   -0.0519316   -0.0282565
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0433608   -0.0625708   -0.0241508
12-15 months   SAS-CompFeed     INDIA                          0                    NA                -0.1147348   -0.1401277   -0.0893419
12-15 months   SAS-CompFeed     INDIA                          1                    NA                -0.0863849   -0.1051118   -0.0676580
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0222263   -0.1326739    0.0882214
12-15 months   SAS-FoodSuppl    INDIA                          1                    NA                 0.0172029   -0.0170033    0.0514090
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0659861   -0.0813383   -0.0506339
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0644068   -0.1089228   -0.0198909
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0672728   -0.0912585   -0.0432870
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.1070166   -0.2087606   -0.0052725
15-18 months   EE               PAKISTAN                       0                    NA                -0.0196962   -0.0344869   -0.0049056
15-18 months   EE               PAKISTAN                       1                    NA                -0.0362182   -0.0535046   -0.0189317
15-18 months   GMS-Nepal        NEPAL                          0                    NA                -0.0876436   -0.1211340   -0.0541532
15-18 months   GMS-Nepal        NEPAL                          1                    NA                -0.0635449   -0.0771190   -0.0499708
15-18 months   IRC              INDIA                          0                    NA                -0.0364071   -0.0512762   -0.0215379
15-18 months   IRC              INDIA                          1                    NA                -0.1515311   -0.2204234   -0.0826388
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0161013   -0.0257384   -0.0064641
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0195543   -0.0362040   -0.0029046
15-18 months   PROVIDE          BANGLADESH                     0                    NA                -0.0389834   -0.0488261   -0.0291408
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0336650   -0.0523736   -0.0149564
15-18 months   SAS-CompFeed     INDIA                          0                    NA                 0.0091127   -0.0171576    0.0353829
15-18 months   SAS-CompFeed     INDIA                          1                    NA                -0.0196085   -0.0276354   -0.0115817
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0361934   -0.0657192   -0.0066676
15-18 months   SAS-FoodSuppl    INDIA                          1                    NA                -0.0371032   -0.0517223   -0.0224842
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0219218   -0.0379477   -0.0058960
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0772563   -0.1686136    0.0141011
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0409342   -0.0637950   -0.0180734
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.1541233   -0.2177343   -0.0905124
18-21 months   EE               PAKISTAN                       0                    NA                -0.0341920   -0.0489612   -0.0194229
18-21 months   EE               PAKISTAN                       1                    NA                -0.0388930   -0.0552128   -0.0225733
18-21 months   GMS-Nepal        NEPAL                          0                    NA                 0.0438784    0.0172321    0.0705248
18-21 months   GMS-Nepal        NEPAL                          1                    NA                 0.0070076   -0.0067523    0.0207675
18-21 months   IRC              INDIA                          0                    NA                -0.0397231   -0.0532667   -0.0261795
18-21 months   IRC              INDIA                          1                    NA                -0.0591350   -0.1072796   -0.0109903
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0273363   -0.0366649   -0.0180076
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0300131   -0.0457152   -0.0143111
18-21 months   PROVIDE          BANGLADESH                     0                    NA                -0.0063353   -0.0156135    0.0029429
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0245185   -0.0413235   -0.0077135
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0154380   -0.0051620    0.0360380
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                 0.0098131   -0.1329319    0.1525581
21-24 months   EE               PAKISTAN                       0                    NA                -0.0019216   -0.0167405    0.0128973
21-24 months   EE               PAKISTAN                       1                    NA                -0.0176437   -0.0407458    0.0054585
21-24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0346959    0.0106452    0.0587466
21-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0551976    0.0348896    0.0755056
21-24 months   IRC              INDIA                          0                    NA                -0.0137029   -0.0275816    0.0001759
21-24 months   IRC              INDIA                          1                    NA                -0.0251108   -0.0655190    0.0152975
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0563238    0.0466607    0.0659870
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0663637    0.0509194    0.0818079
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0443295    0.0344739    0.0541852
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0518682    0.0339781    0.0697583


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          NA                   NA                -0.0691699   -0.0774369   -0.0609029
0-3 months     EE               PAKISTAN                       NA                   NA                -0.2158396   -0.2587114   -0.1729679
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0284852   -0.0542370   -0.0027335
0-3 months     IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0983435   -0.1172596   -0.0794273
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0954743   -0.1432951   -0.0476535
3-6 months     COHORTS          INDIA                          NA                   NA                -0.0628577   -0.0694923   -0.0562230
3-6 months     EE               PAKISTAN                       NA                   NA                 0.0669258    0.0393905    0.0944610
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                -0.1587255   -0.1782389   -0.1392120
3-6 months     IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0318535   -0.0595705   -0.0041366
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0872974   -0.1043376   -0.0702572
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0817487   -0.1162088   -0.0472886
6-9 months     COHORTS          INDIA                          NA                   NA                -0.1018809   -0.1077606   -0.0960013
6-9 months     EE               PAKISTAN                       NA                   NA                -0.0848045   -0.1055735   -0.0640356
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0451660   -0.0634826   -0.0268494
6-9 months     IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0787130   -0.0923048   -0.0651212
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                -0.1052304   -0.1233192   -0.0871417
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0534375   -0.0697386   -0.0371364
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1183736   -0.1470569   -0.0896903
9-12 months    COHORTS          INDIA                          NA                   NA                -0.0900184   -0.0959156   -0.0841212
9-12 months    EE               PAKISTAN                       NA                   NA                -0.1003227   -0.1150739   -0.0855716
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                -0.0791302   -0.0932678   -0.0649926
9-12 months    IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                -0.0853492   -0.0971856   -0.0735129
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                -0.1462637   -0.2015231   -0.0910043
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0666889   -0.0814091   -0.0519687
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712670   -0.0993779   -0.0431561
12-15 months   EE               PAKISTAN                       NA                   NA                -0.0003408   -0.0132889    0.0126073
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0661150   -0.0774073   -0.0548227
12-15 months   IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0902668   -0.1049849   -0.0755488
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                 0.0088746   -0.0268397    0.0445889
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0659733   -0.0809830   -0.0509636
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0682695   -0.0918024   -0.0447365
15-18 months   EE               PAKISTAN                       NA                   NA                -0.0255627   -0.0369442   -0.0141812
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0695158   -0.0827085   -0.0563231
15-18 months   IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0158920   -0.0237373   -0.0080467
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                -0.0369125   -0.0500204   -0.0238046
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0225426   -0.0383404   -0.0067447
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0439227   -0.0663369   -0.0215085
18-21 months   EE               PAKISTAN                       NA                   NA                -0.0356785   -0.0470228   -0.0243342
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0161148    0.0037451    0.0284844
18-21 months   IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0153093   -0.0050905    0.0357091
21-24 months   EE               PAKISTAN                       NA                   NA                -0.0065196   -0.0190677    0.0060285
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0497856    0.0335159    0.0660553
21-24 months   IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    0                 -0.0495941   -0.0665757   -0.0326126
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       1                    0                  0.0417521   -0.0416899    0.1251941
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                 -0.0227363   -0.0795547    0.0340820
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                 -0.1276341   -0.4808495    0.2255813
0-3 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0222117   -0.0635017    0.0190784
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                 -0.0229127   -0.0616849    0.0158594
0-3 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          1                    0                  0.0362773   -0.0385472    0.1111018
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.0693914   -0.2304628    0.3692455
3-6 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    0                 -0.0301983   -0.0437102   -0.0166864
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                  0.0230463   -0.0340254    0.0801179
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                 -0.0004651   -0.0457978    0.0448676
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                 -0.0501098   -0.1884333    0.0882138
3-6 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0174860   -0.0549700    0.0199980
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                  0.0136451   -0.0221183    0.0494085
3-6 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          1                    0                 -0.0296158   -0.0760253    0.0167937
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0644673   -0.1606815    0.0317470
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.0442447   -0.0510861    0.1395755
6-9 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    0                 -0.0131579   -0.0253091   -0.0010066
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                 -0.0183216   -0.0613723    0.0247290
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                 -0.0271664   -0.0706139    0.0162811
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                 -0.0788952   -0.1787991    0.0210086
6-9 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0046078   -0.0332659    0.0240502
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                 -0.0004589   -0.0254956    0.0245778
6-9 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          1                    0                 -0.0137769   -0.0654353    0.0378816
6-9 months     SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          1                    0                 -0.0006576   -0.0462743    0.0449591
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0274294   -0.0641267    0.1189856
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.1337931   -0.0008295    0.2684157
9-12 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    0                 -0.0178678   -0.0300239   -0.0057116
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                 -0.0038002   -0.0340468    0.0264463
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                  0.0256719   -0.0111595    0.0625033
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                  0.0427138   -0.0649717    0.1503994
9-12 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    0                  0.0101225   -0.0158808    0.0361258
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                 -0.0023710   -0.0277108    0.0229688
9-12 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          1                    0                  0.0070471   -0.0359658    0.0500599
9-12 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          1                    0                  0.0515081   -0.0544051    0.1574213
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0602301   -0.1150129   -0.0054472
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.1179442   -0.2214092   -0.0144792
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                  0.0004343   -0.0257039    0.0265726
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                 -0.0159880   -0.0488846    0.0169086
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                  0.0260774   -0.0436537    0.0958086
12-15 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0052161   -0.0271653    0.0167331
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.0032668   -0.0258312    0.0192976
12-15 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          1                    0                  0.0283500   -0.0080605    0.0647604
12-15 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          1                    0                  0.0394291   -0.0761942    0.1550524
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0015793   -0.0455096    0.0486681
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0397438   -0.1442769    0.0647893
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                 -0.0165219   -0.0392725    0.0062286
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                  0.0240987   -0.0120380    0.0602354
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                 -0.1151241   -0.1856027   -0.0446454
15-18 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0034530   -0.0226907    0.0157846
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                  0.0053185   -0.0158213    0.0264582
15-18 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          1                    0                 -0.0287212   -0.0580353    0.0005929
15-18 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          1                    0                 -0.0009099   -0.0338566    0.0320369
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0553344   -0.1480868    0.0374179
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.1131891   -0.1807833   -0.0455949
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                 -0.0047010   -0.0267115    0.0173095
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                 -0.0368709   -0.0668602   -0.0068815
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0194119   -0.0694252    0.0306015
18-21 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0026768   -0.0209410    0.0155873
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                 -0.0181832   -0.0373794    0.0010130
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0056249   -0.1498486    0.1385989
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                 -0.0157220   -0.0431685    0.0117244
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                  0.0205017   -0.0109761    0.0519795
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                 -0.0114079   -0.0541331    0.0313173
21-24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0100398   -0.0081784    0.0282580
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                  0.0075387   -0.0128866    0.0279639


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          0                    NA                -0.0185924   -0.0249965   -0.0121883
0-3 months     EE               PAKISTAN                       0                    NA                 0.0142873   -0.0143538    0.0429284
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0173046   -0.0605578    0.0259486
0-3 months     IRC              INDIA                          0                    NA                -0.0023699   -0.0113703    0.0066306
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0050215   -0.0143808    0.0043378
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.0057998   -0.0156443    0.0040448
0-3 months     SAS-CompFeed     INDIA                          0                    NA                 0.0313224   -0.0360585    0.0987032
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0015926   -0.0059942    0.0091794
3-6 months     COHORTS          INDIA                          0                    NA                -0.0116386   -0.0168639   -0.0064133
3-6 months     EE               PAKISTAN                       0                    NA                 0.0076268   -0.0113033    0.0265570
3-6 months     GMS-Nepal        NEPAL                          0                    NA                -0.0003576   -0.0352130    0.0344977
3-6 months     IRC              INDIA                          0                    NA                -0.0010098   -0.0045367    0.0025172
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0040004   -0.0125933    0.0045925
3-6 months     PROVIDE          BANGLADESH                     0                    NA                 0.0034683   -0.0056345    0.0125712
3-6 months     SAS-CompFeed     INDIA                          0                    NA                -0.0256198   -0.0683731    0.0171336
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0011439   -0.0035857    0.0012979
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0009991   -0.0014943    0.0034925
6-9 months     COHORTS          INDIA                          0                    NA                -0.0050483   -0.0097145   -0.0003821
6-9 months     EE               PAKISTAN                       0                    NA                -0.0060668   -0.0203552    0.0082217
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0207354   -0.0539149    0.0124441
6-9 months     IRC              INDIA                          0                    NA                -0.0015508   -0.0042661    0.0011645
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0010113   -0.0073027    0.0052801
6-9 months     PROVIDE          BANGLADESH                     0                    NA                -0.0001178   -0.0065431    0.0063076
6-9 months     SAS-CompFeed     INDIA                          0                    NA                -0.0119409   -0.0558327    0.0319509
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                -0.0005215   -0.0366952    0.0356523
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004487   -0.0018474    0.0027448
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0033979   -0.0007385    0.0075343
9-12 months    COHORTS          INDIA                          0                    NA                -0.0067820   -0.0114050   -0.0021590
9-12 months    EE               PAKISTAN                       0                    NA                -0.0012433   -0.0111407    0.0086541
9-12 months    GMS-Nepal        NEPAL                          0                    NA                 0.0197342   -0.0085964    0.0480648
9-12 months    IRC              INDIA                          0                    NA                 0.0008543   -0.0019011    0.0036096
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0022227   -0.0034959    0.0079414
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0006032   -0.0070507    0.0058442
9-12 months    SAS-CompFeed     INDIA                          0                    NA                 0.0060766   -0.0308753    0.0430285
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                 0.0412396   -0.0435900    0.1260692
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0006489   -0.0020706    0.0007728
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0028855   -0.0061417    0.0003707
12-15 months   EE               PAKISTAN                       0                    NA                 0.0001487   -0.0088003    0.0090978
12-15 months   GMS-Nepal        NEPAL                          0                    NA                -0.0121553   -0.0371739    0.0128634
12-15 months   IRC              INDIA                          0                    NA                 0.0004681   -0.0013088    0.0022450
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0011697   -0.0060944    0.0037551
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0008167   -0.0064591    0.0048257
12-15 months   SAS-CompFeed     INDIA                          0                    NA                 0.0244680   -0.0067182    0.0556543
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                 0.0311009   -0.0601184    0.1223201
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0000128   -0.0011645    0.0011900
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0009967   -0.0037057    0.0017123
15-18 months   EE               PAKISTAN                       0                    NA                -0.0058665   -0.0139984    0.0022655
15-18 months   GMS-Nepal        NEPAL                          0                    NA                 0.0181278   -0.0090725    0.0453281
15-18 months   IRC              INDIA                          0                    NA                -0.0021096   -0.0044566    0.0002374
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0008061   -0.0052985    0.0036863
15-18 months   PROVIDE          BANGLADESH                     0                    NA                 0.0013397   -0.0039889    0.0066683
15-18 months   SAS-CompFeed     INDIA                          0                    NA                -0.0250047   -0.0524429    0.0024335
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0007191   -0.0267595    0.0253213
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0006207   -0.0029843    0.0017428
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0029885   -0.0057040   -0.0002729
18-21 months   EE               PAKISTAN                       0                    NA                -0.0014865   -0.0084515    0.0054786
18-21 months   GMS-Nepal        NEPAL                          0                    NA                -0.0277637   -0.0503972   -0.0051301
18-21 months   IRC              INDIA                          0                    NA                -0.0003585   -0.0016363    0.0009193
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0006324   -0.0049486    0.0036838
18-21 months   PROVIDE          BANGLADESH                     0                    NA                -0.0046046   -0.0095113    0.0003021
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0001287   -0.0037355    0.0034782
21-24 months   EE               PAKISTAN                       0                    NA                -0.0045980   -0.0127405    0.0035446
21-24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0150898   -0.0080997    0.0382793
21-24 months   IRC              INDIA                          0                    NA                -0.0002053   -0.0012840    0.0008735
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0024382   -0.0020026    0.0068791
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0019047   -0.0032643    0.0070737
