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
0-3 months     JiVitA-3         BANGLADESH                     0             33    313
0-3 months     JiVitA-3         BANGLADESH                     1            280    313
0-3 months     JiVitA-4         BANGLADESH                     0            369   1796
0-3 months     JiVitA-4         BANGLADESH                     1           1427   1796
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
3-6 months     JiVitA-3         BANGLADESH                     0             28    275
3-6 months     JiVitA-3         BANGLADESH                     1            247    275
3-6 months     JiVitA-4         BANGLADESH                     0            412   1752
3-6 months     JiVitA-4         BANGLADESH                     1           1340   1752
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
6-9 months     JiVitA-4         BANGLADESH                     0            707   2687
6-9 months     JiVitA-4         BANGLADESH                     1           1980   2687
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
9-12 months    JiVitA-4         BANGLADESH                     0            773   2973
9-12 months    JiVitA-4         BANGLADESH                     1           2200   2973
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
12-15 months   JiVitA-4         BANGLADESH                     0            768   3001
12-15 months   JiVitA-4         BANGLADESH                     1           2233   3001
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
15-18 months   JiVitA-4         BANGLADESH                     0            760   3015
15-18 months   JiVitA-4         BANGLADESH                     1           2255   3015
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
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/8398fe9c-0ad7-49c8-a045-9df5b31bd6ec/53c1483c-b47f-4eb8-aa64-b6de4672719d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8398fe9c-0ad7-49c8-a045-9df5b31bd6ec/53c1483c-b47f-4eb8-aa64-b6de4672719d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8398fe9c-0ad7-49c8-a045-9df5b31bd6ec/53c1483c-b47f-4eb8-aa64-b6de4672719d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          INDIA                          0                    NA                3.5053340   3.4816190   3.5290489
0-3 months     COHORTS          INDIA                          1                    NA                3.4584348   3.4248938   3.4919758
0-3 months     EE               PAKISTAN                       0                    NA                3.0683917   2.9583552   3.1784283
0-3 months     EE               PAKISTAN                       1                    NA                3.0864117   2.9637709   3.2090524
0-3 months     GMS-Nepal        NEPAL                          0                    NA                3.6266405   3.5220777   3.7312033
0-3 months     GMS-Nepal        NEPAL                          1                    NA                3.6127595   3.5508392   3.6746797
0-3 months     IRC              INDIA                          0                    NA                3.1431413   3.0310208   3.2552617
0-3 months     IRC              INDIA                          1                    NA                2.8796715   2.1905479   3.5687951
0-3 months     JiVitA-3         BANGLADESH                     0                    NA                3.6798462   3.3189432   4.0407492
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                3.6788095   3.6160032   3.7416159
0-3 months     JiVitA-4         BANGLADESH                     0                    NA                3.6054966   3.5157034   3.6952897
0-3 months     JiVitA-4         BANGLADESH                     1                    NA                3.6455409   3.6122346   3.6788471
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                3.1447518   3.1033418   3.1861617
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                3.0904320   3.0115469   3.1693170
0-3 months     PROVIDE          BANGLADESH                     0                    NA                3.2703556   3.2271864   3.3135248
0-3 months     PROVIDE          BANGLADESH                     1                    NA                3.2194920   3.1462621   3.2927218
0-3 months     SAS-CompFeed     INDIA                          0                    NA                3.2673204   3.1473009   3.3873399
0-3 months     SAS-CompFeed     INDIA                          1                    NA                3.4057043   3.3708127   3.4405958
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.8068881   1.7044670   1.9093092
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.9008428   1.2479048   2.5537808
3-6 months     COHORTS          INDIA                          0                    NA                1.8637782   1.8430885   1.8844678
3-6 months     COHORTS          INDIA                          1                    NA                1.8259798   1.7959954   1.8559642
3-6 months     EE               PAKISTAN                       0                    NA                2.0849026   2.0112762   2.1585291
3-6 months     EE               PAKISTAN                       1                    NA                2.1199809   2.0207400   2.2192218
3-6 months     GMS-Nepal        NEPAL                          0                    NA                1.7098566   1.6223664   1.7973468
3-6 months     GMS-Nepal        NEPAL                          1                    NA                1.7195441   1.6715928   1.7674954
3-6 months     IRC              INDIA                          0                    NA                1.8829475   1.8178679   1.9480270
3-6 months     IRC              INDIA                          1                    NA                1.7701196   1.5123539   2.0278853
3-6 months     JiVitA-3         BANGLADESH                     0                    NA                1.8940746   1.7301104   2.0580389
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                1.8746124   1.8127362   1.9364885
3-6 months     JiVitA-4         BANGLADESH                     0                    NA                1.8878406   1.8137827   1.9618985
3-6 months     JiVitA-4         BANGLADESH                     1                    NA                1.8994262   1.8669059   1.9319465
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                2.0179936   1.9749604   2.0610268
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                1.9572839   1.8883535   2.0262142
3-6 months     PROVIDE          BANGLADESH                     0                    NA                1.9607147   1.9213715   2.0000578
3-6 months     PROVIDE          BANGLADESH                     1                    NA                1.9879651   1.9237069   2.0522233
3-6 months     SAS-CompFeed     INDIA                          0                    NA                2.0328997   1.9871362   2.0786631
3-6 months     SAS-CompFeed     INDIA                          1                    NA                1.8980650   1.8262282   1.9699017
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7925239   1.7552209   1.8298269
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.6419676   1.4187942   1.8651411
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.2152178   1.1352239   1.2952117
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.3339555   1.1597547   1.5081564
6-9 months     COHORTS          INDIA                          0                    NA                1.1831606   1.1648332   1.2014880
6-9 months     COHORTS          INDIA                          1                    NA                1.1634600   1.1363342   1.1905858
6-9 months     EE               PAKISTAN                       0                    NA                1.1981997   1.1392180   1.2571814
6-9 months     EE               PAKISTAN                       1                    NA                1.1515435   1.0743509   1.2287360
6-9 months     GMS-Nepal        NEPAL                          0                    NA                1.3351822   1.2358030   1.4345614
6-9 months     GMS-Nepal        NEPAL                          1                    NA                1.3073363   1.2580180   1.3566546
6-9 months     IRC              INDIA                          0                    NA                1.3762111   1.3267538   1.4256684
6-9 months     IRC              INDIA                          1                    NA                1.1823688   0.9608982   1.4038394
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                1.3565518   1.3121944   1.4009092
6-9 months     JiVitA-4         BANGLADESH                     1                    NA                1.3163904   1.2911406   1.3416401
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                1.3332532   1.2991558   1.3673506
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                1.3117120   1.2527999   1.3706242
6-9 months     PROVIDE          BANGLADESH                     0                    NA                1.2820541   1.2532504   1.3108577
6-9 months     PROVIDE          BANGLADESH                     1                    NA                1.2804571   1.2293336   1.3315807
6-9 months     SAS-CompFeed     INDIA                          0                    NA                1.1536618   1.0839132   1.2234104
6-9 months     SAS-CompFeed     INDIA                          1                    NA                1.2157542   1.1764624   1.2550460
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                1.1471886   1.0412385   1.2531387
6-9 months     SAS-FoodSuppl    INDIA                          1                    NA                1.1426049   1.0982492   1.1869607
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.3203000   1.2826262   1.3579738
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3940763   1.1632722   1.6248805
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.8917995   0.8225070   0.9610920
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                1.2413565   0.9347461   1.5479668
9-12 months    COHORTS          INDIA                          0                    NA                0.9950908   0.9751671   1.0150145
9-12 months    COHORTS          INDIA                          1                    NA                0.9922533   0.9638035   1.0207032
9-12 months    EE               PAKISTAN                       0                    NA                0.9240202   0.8800051   0.9680352
9-12 months    EE               PAKISTAN                       1                    NA                0.9027437   0.8460875   0.9593998
9-12 months    GMS-Nepal        NEPAL                          0                    NA                0.9570915   0.8714777   1.0427054
9-12 months    GMS-Nepal        NEPAL                          1                    NA                1.0121929   0.9756780   1.0487078
9-12 months    IRC              INDIA                          0                    NA                1.1219792   1.0821939   1.1617645
9-12 months    IRC              INDIA                          1                    NA                1.1966892   0.9310906   1.4622877
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                1.0755803   1.0349968   1.1161637
9-12 months    JiVitA-4         BANGLADESH                     1                    NA                1.0738134   1.0517917   1.0958352
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                1.1193169   1.0893977   1.1492361
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                1.1395251   1.0822342   1.1968160
9-12 months    PROVIDE          BANGLADESH                     0                    NA                1.0538816   1.0230195   1.0847437
9-12 months    PROVIDE          BANGLADESH                     1                    NA                1.0408671   0.9860056   1.0957286
9-12 months    SAS-CompFeed     INDIA                          0                    NA                0.9938300   0.9113622   1.0762977
9-12 months    SAS-CompFeed     INDIA                          1                    NA                0.9898530   0.9575326   1.0221735
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                0.6832812   0.5080358   0.8585265
9-12 months    SAS-FoodSuppl    INDIA                          1                    NA                0.8355753   0.6752368   0.9959138
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0857153   1.0499357   1.1214950
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8684270   0.7277456   1.0091084
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.8601154   0.7887380   0.9314928
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.5934616   0.3213238   0.8655994
12-15 months   EE               PAKISTAN                       0                    NA                1.0153240   0.9741779   1.0564701
12-15 months   EE               PAKISTAN                       1                    NA                1.0022928   0.9490957   1.0554898
12-15 months   GMS-Nepal        NEPAL                          0                    NA                0.9046655   0.8300365   0.9792945
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.8704554   0.8410569   0.8998538
12-15 months   IRC              INDIA                          0                    NA                0.9543792   0.9120141   0.9967444
12-15 months   IRC              INDIA                          1                    NA                1.0086837   0.8206033   1.1967641
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                0.9499287   0.9136625   0.9861950
12-15 months   JiVitA-4         BANGLADESH                     1                    NA                0.9274121   0.9085079   0.9463163
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                0.9740789   0.9458271   1.0023307
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9572165   0.9079130   1.0065199
12-15 months   PROVIDE          BANGLADESH                     0                    NA                0.9622293   0.9318455   0.9926131
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.9560564   0.9060704   1.0060424
12-15 months   SAS-CompFeed     INDIA                          0                    NA                0.7892792   0.7234345   0.8551239
12-15 months   SAS-CompFeed     INDIA                          1                    NA                0.8229923   0.7730612   0.8729235
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                0.9161930   0.6344871   1.1978990
12-15 months   SAS-FoodSuppl    INDIA                          1                    NA                1.0603853   0.9752515   1.1455191
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9277016   0.8886315   0.9667717
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8904994   0.7713509   1.0096478
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7353801   0.6709408   0.7998194
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6704147   0.3997877   0.9410416
15-18 months   EE               PAKISTAN                       0                    NA                0.8599658   0.8184486   0.9014829
15-18 months   EE               PAKISTAN                       1                    NA                0.7956952   0.7460644   0.8453260
15-18 months   GMS-Nepal        NEPAL                          0                    NA                0.7030457   0.6068731   0.7992184
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.7639261   0.7216994   0.8061527
15-18 months   IRC              INDIA                          0                    NA                0.8653842   0.8255051   0.9052633
15-18 months   IRC              INDIA                          1                    NA                0.5236251   0.3617510   0.6854993
15-18 months   JiVitA-4         BANGLADESH                     0                    NA                0.8495876   0.8095845   0.8895906
15-18 months   JiVitA-4         BANGLADESH                     1                    NA                0.8542216   0.8344031   0.8740401
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                0.9235209   0.8972218   0.9498200
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9028848   0.8539449   0.9518247
15-18 months   PROVIDE          BANGLADESH                     0                    NA                0.8540140   0.8267509   0.8812771
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.8582153   0.8048420   0.9115886
15-18 months   SAS-CompFeed     INDIA                          0                    NA                0.9926013   0.9262599   1.0589427
15-18 months   SAS-CompFeed     INDIA                          1                    NA                0.8793846   0.8594738   0.8992955
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                0.8123748   0.7246429   0.9001068
15-18 months   SAS-FoodSuppl    INDIA                          1                    NA                0.7950014   0.7557693   0.8342334
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9300827   0.8860280   0.9741374
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7683489   0.5222857   1.0144120
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7077685   0.6424635   0.7730734
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.4096750   0.2282439   0.5911061
18-21 months   EE               PAKISTAN                       0                    NA                0.7265202   0.6824381   0.7706022
18-21 months   EE               PAKISTAN                       1                    NA                0.7028348   0.6500221   0.7556476
18-21 months   GMS-Nepal        NEPAL                          0                    NA                0.9921489   0.9144187   1.0698790
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.8765137   0.8355008   0.9175266
18-21 months   IRC              INDIA                          0                    NA                0.7615555   0.7224418   0.8006691
18-21 months   IRC              INDIA                          1                    NA                0.6666258   0.5226628   0.8105888
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                0.8007889   0.7736303   0.8279475
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.7886883   0.7413957   0.8359808
18-21 months   PROVIDE          BANGLADESH                     0                    NA                0.8556845   0.8282308   0.8831381
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.7940119   0.7459941   0.8420296
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.6994182   0.6391684   0.7596680
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7555657   0.3391573   1.1719740
21-24 months   EE               PAKISTAN                       0                    NA                0.6549594   0.6091237   0.7007952
21-24 months   EE               PAKISTAN                       1                    NA                0.6125894   0.5410489   0.6841300
21-24 months   GMS-Nepal        NEPAL                          0                    NA                0.7563902   0.6801205   0.8326599
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.8205571   0.7608488   0.8802654
21-24 months   IRC              INDIA                          0                    NA                0.7094320   0.6676136   0.7512504
21-24 months   IRC              INDIA                          1                    NA                0.6527954   0.5089943   0.7965965
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.7964788   0.7678514   0.8251063
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.8039583   0.7551664   0.8527503
21-24 months   PROVIDE          BANGLADESH                     0                    NA                0.7585721   0.7293241   0.7878201
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.7765702   0.7242194   0.8289211


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          INDIA                          NA                   NA                3.4928630   3.4759520   3.5097739
0-3 months     EE               PAKISTAN                       NA                   NA                3.0782627   2.9950537   3.1614717
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.6065886   3.5542997   3.6588775
0-3 months     IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                3.6741702   3.6068245   3.7415159
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                3.6373098   3.6059106   3.6687089
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                3.4022425   3.3615716   3.4429134
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.8090444   1.7078462   1.9102427
3-6 months     COHORTS          INDIA                          NA                   NA                1.8571473   1.8427398   1.8715548
3-6 months     EE               PAKISTAN                       NA                   NA                2.0964778   2.0380696   2.1548860
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                1.7165753   1.6754325   1.7577181
3-6 months     IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                1.8747997   1.8153916   1.9342078
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                1.8985588   1.8677350   1.9293826
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                1.9057893   1.8442152   1.9673633
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7898054   1.7530632   1.8265475
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.2178990   1.1397587   1.2960393
6-9 months     COHORTS          INDIA                          NA                   NA                1.1799194   1.1665767   1.1932622
6-9 months     EE               PAKISTAN                       NA                   NA                1.1782840   1.1310763   1.2254917
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                1.3143024   1.2716844   1.3569203
6-9 months     IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                1.3272128   1.3055780   1.3488477
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
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                1.0744194   1.0555407   1.0932981
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.9865891   0.9598365   1.0133416
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.8106649   0.6745544   0.9467754
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0841292   1.0490852   1.1191732
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8535918   0.7835242   0.9236593
12-15 months   EE               PAKISTAN                       NA                   NA                1.0107552   0.9781087   1.0434018
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.8815392   0.8515745   0.9115039
12-15 months   IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.9336283   0.9165436   0.9507131
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.8161882   0.7765985   0.8557780
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                1.0267825   0.9374856   1.1160794
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9274012   0.8891908   0.9656115
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7337508   0.6705522   0.7969495
15-18 months   EE               PAKISTAN                       NA                   NA                0.8381895   0.8057813   0.8705977
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.7536062   0.7171842   0.7900282
15-18 months   IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                0.8551359   0.8372482   0.8730235
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
0-3 months     COHORTS          INDIA                          1                    0                 -0.0468992   -0.0875440   -0.0062543
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       1                    0                  0.0180199   -0.1470358    0.1830757
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                 -0.0138810   -0.1355434    0.1077814
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                 -0.2634698   -0.9616548    0.4347152
0-3 months     JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     1                    0                 -0.0010367   -0.3602231    0.3581497
0-3 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     1                    0                  0.0400443   -0.0564364    0.1365250
0-3 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0543198   -0.1435432    0.0349036
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                 -0.0508636   -0.1358246    0.0340974
0-3 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          1                    0                  0.1383839    0.0293850    0.2473828
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.0939547   -0.5669675    0.7548769
3-6 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    0                 -0.0377983   -0.0741867   -0.0014100
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                  0.0350783   -0.0889670    0.1591235
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                  0.0096875   -0.0901371    0.1095121
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                 -0.1128279   -0.3786822    0.1530264
3-6 months     JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     1                    0                 -0.0194623   -0.1879698    0.1490452
3-6 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     1                    0                  0.0115856   -0.0674013    0.0905725
3-6 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0607097   -0.1418435    0.0204241
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                  0.0272504   -0.0481270    0.1026279
3-6 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          1                    0                 -0.1348347   -0.2425578   -0.0271116
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1505563   -0.3770325    0.0759199
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.1187377   -0.0729520    0.3104275
6-9 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    0                 -0.0197006   -0.0524456    0.0130444
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                 -0.0466563   -0.1440571    0.0507446
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                 -0.0278459   -0.1390596    0.0833677
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                 -0.1938423   -0.4207680    0.0330833
6-9 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     1                    0                 -0.0401615   -0.0909304    0.0106075
6-9 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0215411   -0.0899133    0.0468310
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                 -0.0015970   -0.0598679    0.0566739
6-9 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          1                    0                  0.0620923   -0.0260874    0.1502720
6-9 months     SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          1                    0                 -0.0045837   -0.1195198    0.1103524
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0737763   -0.1600602    0.3076129
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.3495569    0.0352142    0.6638997
9-12 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    0                 -0.0028375   -0.0374324    0.0317575
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                 -0.0212765   -0.0920893    0.0495363
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                  0.0551014   -0.0386100    0.1488127
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                  0.0747099   -0.1938519    0.3432718
9-12 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     1                    0                 -0.0017669   -0.0478889    0.0443552
9-12 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    0                  0.0202083   -0.0444701    0.0848866
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                 -0.0130145   -0.0757276    0.0496986
9-12 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          1                    0                 -0.0039769   -0.0995886    0.0916347
9-12 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          1                    0                  0.1522941   -0.0882790    0.3928672
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2172883   -0.3624828   -0.0720938
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.2666538   -0.5479965    0.0146889
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                 -0.0130312   -0.0800186    0.0539562
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                 -0.0342101   -0.1144901    0.0460698
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                  0.0543045   -0.1384882    0.2470972
12-15 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0225166   -0.0625498    0.0175166
12-15 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0168624   -0.0736524    0.0399276
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.0061729   -0.0641725    0.0518267
12-15 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          1                    0                  0.0337131   -0.0608543    0.1282805
12-15 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          1                    0                  0.1441923   -0.1514889    0.4398734
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0372022   -0.1625929    0.0881885
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0649654   -0.3431585    0.2132277
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                 -0.0642706   -0.1288649    0.0003237
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                  0.0608803   -0.0433363    0.1650969
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                 -0.3417590   -0.5084731   -0.1750450
15-18 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     1                    0                  0.0046340   -0.0383646    0.0476326
15-18 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0206361   -0.0762851    0.0350129
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                  0.0042013   -0.0556022    0.0640049
15-18 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          1                    0                 -0.1132167   -0.1885720   -0.0378614
15-18 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          1                    0                 -0.0173735   -0.1132514    0.0785045
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1617339   -0.4117096    0.0882419
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.2980935   -0.4909198   -0.1052672
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                 -0.0236853   -0.0927338    0.0453632
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                 -0.1156351   -0.2036011   -0.0276691
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0949297   -0.2441115    0.0542522
18-21 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0121006   -0.0665496    0.0423483
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                 -0.0616726   -0.1170097   -0.0063354
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0561475   -0.3645970    0.4768920
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                 -0.0423700   -0.1277085    0.0429685
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                  0.0641669   -0.0343121    0.1626459
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                 -0.0566366   -0.2063949    0.0931216
21-24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0074795   -0.0491847    0.0641437
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                  0.0179981   -0.0421574    0.0781536


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          0                    NA                -0.0124710   -0.0284744    0.0035324
0-3 months     EE               PAKISTAN                       0                    NA                 0.0098710   -0.0464650    0.0662070
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0200519   -0.1154127    0.0753089
0-3 months     IRC              INDIA                          0                    NA                -0.0048920   -0.0227130    0.0129290
0-3 months     JiVitA-3         BANGLADESH                     0                    NA                -0.0056760   -0.3358680    0.3245161
0-3 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0318132   -0.0460073    0.1096337
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0155069   -0.0357855    0.0047717
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.0126746   -0.0334967    0.0081476
0-3 months     SAS-CompFeed     INDIA                          0                    NA                 0.1349221    0.0434042    0.2264400
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0021563   -0.0144422    0.0187549
3-6 months     COHORTS          INDIA                          0                    NA                -0.0066309   -0.0209096    0.0076478
3-6 months     EE               PAKISTAN                       0                    NA                 0.0115752   -0.0297442    0.0528946
3-6 months     GMS-Nepal        NEPAL                          0                    NA                 0.0067187   -0.0712602    0.0846976
3-6 months     IRC              INDIA                          0                    NA                -0.0022736   -0.0091009    0.0045537
3-6 months     JiVitA-3         BANGLADESH                     0                    NA                -0.0192749   -0.1715330    0.1329832
3-6 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0107182   -0.0511936    0.0726300
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0121963   -0.0313373    0.0069447
3-6 months     PROVIDE          BANGLADESH                     0                    NA                 0.0050311   -0.0147765    0.0248386
3-6 months     SAS-CompFeed     INDIA                          0                    NA                -0.1271104   -0.2239283   -0.0302925
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0027186   -0.0082299    0.0027928
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0026812   -0.0024990    0.0078613
6-9 months     COHORTS          INDIA                          0                    NA                -0.0032412   -0.0157819    0.0092996
6-9 months     EE               PAKISTAN                       0                    NA                -0.0199157   -0.0526972    0.0128657
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0208798   -0.1083072    0.0665475
6-9 months     IRC              INDIA                          0                    NA                -0.0038102   -0.0100580    0.0024377
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                -0.0293390   -0.0675215    0.0088435
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0049837   -0.0196981    0.0097307
6-9 months     PROVIDE          BANGLADESH                     0                    NA                 0.0003644   -0.0144007    0.0151296
6-9 months     SAS-CompFeed     INDIA                          0                    NA                 0.0676636   -0.0016068    0.1369340
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                -0.0045731   -0.0998331    0.0906868
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005993   -0.0047149    0.0059134
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0088776   -0.0011590    0.0189143
9-12 months    COHORTS          INDIA                          0                    NA                -0.0085017   -0.0220484    0.0050451
9-12 months    EE               PAKISTAN                       0                    NA                -0.0069091   -0.0300291    0.0162110
9-12 months    GMS-Nepal        NEPAL                          0                    NA                 0.0435150   -0.0300265    0.1170564
9-12 months    IRC              INDIA                          0                    NA                 0.0014942   -0.0052978    0.0082862
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0011609   -0.0367585    0.0344367
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0041576   -0.0098304    0.0181456
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0039066   -0.0195075    0.0116943
9-12 months    SAS-CompFeed     INDIA                          0                    NA                -0.0072409   -0.0875679    0.0730861
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                 0.1273837   -0.0639292    0.3186966
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0015862   -0.0050232    0.0018509
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0065236   -0.0148584    0.0018111
12-15 months   EE               PAKISTAN                       0                    NA                -0.0045688   -0.0275962    0.0184586
12-15 months   GMS-Nepal        NEPAL                          0                    NA                -0.0231263   -0.0830056    0.0367530
12-15 months   IRC              INDIA                          0                    NA                 0.0009747   -0.0038981    0.0058475
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0163004   -0.0469967    0.0143960
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0029394   -0.0155668    0.0096880
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0024792   -0.0169581    0.0119996
12-15 months   SAS-CompFeed     INDIA                          0                    NA                 0.0269090   -0.0536619    0.1074800
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                 0.1105895   -0.1289294    0.3501084
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003004   -0.0034443    0.0028435
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0016292   -0.0086946    0.0054362
15-18 months   EE               PAKISTAN                       0                    NA                -0.0217762   -0.0447584    0.0012059
15-18 months   GMS-Nepal        NEPAL                          0                    NA                 0.0505605   -0.0293855    0.1305065
15-18 months   IRC              INDIA                          0                    NA                -0.0062626   -0.0124719   -0.0000533
15-18 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0055483   -0.0280684    0.0391650
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0058041   -0.0184549    0.0068466
15-18 months   PROVIDE          BANGLADESH                     0                    NA                 0.0020858   -0.0125693    0.0167410
15-18 months   SAS-CompFeed     INDIA                          0                    NA                -0.1039961   -0.1753553   -0.0326368
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0175887   -0.0968875    0.0617101
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0018143   -0.0082053    0.0045766
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0078705   -0.0152849   -0.0004560
18-21 months   EE               PAKISTAN                       0                    NA                -0.0076158   -0.0294348    0.0142033
18-21 months   GMS-Nepal        NEPAL                          0                    NA                -0.0867159   -0.1535450   -0.0198867
18-21 months   IRC              INDIA                          0                    NA                -0.0017533   -0.0056992    0.0021925
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0030134   -0.0157220    0.0096953
18-21 months   PROVIDE          BANGLADESH                     0                    NA                -0.0163468   -0.0306444   -0.0020491
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0012844   -0.0092763    0.0118451
21-24 months   EE               PAKISTAN                       0                    NA                -0.0056185   -0.0304957    0.0192587
21-24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0454579   -0.0279145    0.1188304
21-24 months   IRC              INDIA                          0                    NA                -0.0010192   -0.0048373    0.0027990
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0028565   -0.0107121    0.0164251
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0045669   -0.0106898    0.0198236
