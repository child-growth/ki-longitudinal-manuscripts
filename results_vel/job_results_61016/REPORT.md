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
![](/tmp/37c99ff8-4ceb-4069-b22e-cb9a8641c5d4/aca32f6a-a14c-487d-85e1-c37cd0c86b0c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/37c99ff8-4ceb-4069-b22e-cb9a8641c5d4/aca32f6a-a14c-487d-85e1-c37cd0c86b0c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/37c99ff8-4ceb-4069-b22e-cb9a8641c5d4/aca32f6a-a14c-487d-85e1-c37cd0c86b0c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          0                    NA                -0.0621070   -0.0737058   -0.0505082
0-3 months     COHORTS          INDIA                          1                    NA                -0.0885473   -0.1040711   -0.0730236
0-3 months     EE               PAKISTAN                       0                    NA                -0.2312054   -0.2888191   -0.1735918
0-3 months     EE               PAKISTAN                       1                    NA                -0.1862728   -0.2479729   -0.1245726
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0080600   -0.0610773    0.0449572
0-3 months     GMS-Nepal        NEPAL                          1                    NA                -0.0264638   -0.0566419    0.0037143
0-3 months     IRC              INDIA                          0                    NA                -0.2534572   -0.3094574   -0.1974571
0-3 months     IRC              INDIA                          1                    NA                -0.3810913   -0.7298392   -0.0323434
0-3 months     JiVitA-3         BANGLADESH                     0                    NA                 0.0372083   -0.0861992    0.1606158
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                 0.0366348    0.0078970    0.0653726
0-3 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0680335    0.0242298    0.1118373
0-3 months     JiVitA-4         BANGLADESH                     1                    NA                 0.0678519    0.0517754    0.0839284
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.2249086   -0.2447381   -0.2050791
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.2522924   -0.2912285   -0.2133562
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.1819972   -0.2023634   -0.1616311
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.2027528   -0.2361421   -0.1693635
0-3 months     SAS-CompFeed     INDIA                          0                    NA                -0.1865913   -0.2529638   -0.1202189
0-3 months     SAS-CompFeed     INDIA                          1                    NA                -0.0942626   -0.1094558   -0.0790694
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0970669   -0.1455086   -0.0486252
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.0276755   -0.3235909    0.2682399
3-6 months     COHORTS          INDIA                          0                    NA                -0.0609839   -0.0704584   -0.0515094
3-6 months     COHORTS          INDIA                          1                    NA                -0.0759110   -0.0911208   -0.0607012
3-6 months     EE               PAKISTAN                       0                    NA                 0.0582980    0.0236535    0.0929425
3-6 months     EE               PAKISTAN                       1                    NA                 0.0842191    0.0385086    0.1299297
3-6 months     GMS-Nepal        NEPAL                          0                    NA                -0.1633197   -0.2032821   -0.1233572
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.1590142   -0.1819210   -0.1361073
3-6 months     IRC              INDIA                          0                    NA                -0.0508820   -0.0815441   -0.0202200
3-6 months     IRC              INDIA                          1                    NA                -0.1009918   -0.2358742    0.0338905
3-6 months     JiVitA-3         BANGLADESH                     0                    NA                -0.0335414   -0.1166657    0.0495828
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0289679   -0.0573196   -0.0006162
3-6 months     JiVitA-4         BANGLADESH                     0                    NA                -0.0143872   -0.0484179    0.0196436
3-6 months     JiVitA-4         BANGLADESH                     1                    NA                -0.0087610   -0.0237329    0.0062110
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0302373    0.0104658    0.0500089
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                 0.0135514   -0.0187524    0.0458551
3-6 months     PROVIDE          BANGLADESH                     0                    NA                -0.0305073   -0.0490648   -0.0119499
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0122330   -0.0420346    0.0175686
3-6 months     SAS-CompFeed     INDIA                          0                    NA                 0.0249598    0.0036830    0.0462366
3-6 months     SAS-CompFeed     INDIA                          1                    NA                -0.0344976   -0.0673779   -0.0016172
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0860812   -0.1033876   -0.0687748
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1587798   -0.2632532   -0.0543063
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0827477   -0.1180104   -0.0474851
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.0385031   -0.1270723    0.0500662
6-9 months     COHORTS          INDIA                          0                    NA                -0.1007512   -0.1087277   -0.0927747
6-9 months     COHORTS          INDIA                          1                    NA                -0.1056744   -0.1178334   -0.0935155
6-9 months     EE               PAKISTAN                       0                    NA                -0.0788155   -0.1048167   -0.0528143
6-9 months     EE               PAKISTAN                       1                    NA                -0.0971776   -0.1317696   -0.0625855
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0349282   -0.0823946    0.0125383
6-9 months     GMS-Nepal        NEPAL                          1                    NA                -0.0477337   -0.0692891   -0.0261783
6-9 months     IRC              INDIA                          0                    NA                -0.0147169   -0.0366947    0.0072608
6-9 months     IRC              INDIA                          1                    NA                -0.0936122   -0.1910686    0.0038443
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                -0.0141506   -0.0326756    0.0043743
6-9 months     JiVitA-4         BANGLADESH                     1                    NA                -0.0318781   -0.0427947   -0.0209615
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0299725   -0.0448227   -0.0151222
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0383176   -0.0641969   -0.0124384
6-9 months     PROVIDE          BANGLADESH                     0                    NA                -0.0616074   -0.0741415   -0.0490734
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0617131   -0.0831386   -0.0402875
6-9 months     SAS-CompFeed     INDIA                          0                    NA                -0.1107752   -0.1411372   -0.0804132
6-9 months     SAS-CompFeed     INDIA                          1                    NA                -0.0810830   -0.0988862   -0.0632798
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                -0.1100917   -0.1630760   -0.0571074
6-9 months     SAS-FoodSuppl    INDIA                          1                    NA                -0.1020181   -0.1223879   -0.0816484
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0539245   -0.0704776   -0.0373714
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0173729   -0.1147209    0.0799750
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.1217715   -0.1509046   -0.0926385
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                 0.0120216   -0.1194109    0.1434541
9-12 months    COHORTS          INDIA                          0                    NA                -0.0879705   -0.0960677   -0.0798734
9-12 months    COHORTS          INDIA                          1                    NA                -0.0851787   -0.0968458   -0.0735117
9-12 months    EE               PAKISTAN                       0                    NA                -0.1003786   -0.1188211   -0.0819360
9-12 months    EE               PAKISTAN                       1                    NA                -0.0999462   -0.1235783   -0.0763141
9-12 months    GMS-Nepal        NEPAL                          0                    NA                -0.0954188   -0.1321143   -0.0587234
9-12 months    GMS-Nepal        NEPAL                          1                    NA                -0.0735912   -0.0891432   -0.0580392
9-12 months    IRC              INDIA                          0                    NA                -0.0369856   -0.0541299   -0.0198412
9-12 months    IRC              INDIA                          1                    NA                 0.0057282   -0.1005838    0.1120403
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0542647   -0.0709344   -0.0375949
9-12 months    JiVitA-4         BANGLADESH                     1                    NA                -0.0502193   -0.0594198   -0.0410188
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0370495   -0.0495428   -0.0245562
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0248764   -0.0479197   -0.0018331
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0624311   -0.0749884   -0.0498737
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0640783   -0.0862993   -0.0418573
9-12 months    SAS-CompFeed     INDIA                          0                    NA                -0.0793850   -0.1162874   -0.0424826
9-12 months    SAS-CompFeed     INDIA                          1                    NA                -0.0830933   -0.0973104   -0.0688763
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.1955517   -0.2678584   -0.1232450
9-12 months    SAS-FoodSuppl    INDIA                          1                    NA                -0.1378426   -0.1999964   -0.0756888
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0660459   -0.0810749   -0.0510169
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1340533   -0.1946428   -0.0734637
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0683815   -0.0970285   -0.0397345
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.1863257   -0.2857458   -0.0869056
12-15 months   EE               PAKISTAN                       0                    NA                -0.0003551   -0.0170426    0.0163325
12-15 months   EE               PAKISTAN                       1                    NA                -0.0002601   -0.0205079    0.0199876
12-15 months   GMS-Nepal        NEPAL                          0                    NA                -0.0514151   -0.0801241   -0.0227060
12-15 months   GMS-Nepal        NEPAL                          1                    NA                -0.0698149   -0.0809843   -0.0586454
12-15 months   IRC              INDIA                          0                    NA                -0.0459200   -0.0630104   -0.0288295
12-15 months   IRC              INDIA                          1                    NA                -0.0198425   -0.0874469    0.0477619
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0446213   -0.0584004   -0.0308421
12-15 months   JiVitA-4         BANGLADESH                     1                    NA                -0.0497423   -0.0569966   -0.0424881
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0385914   -0.0495248   -0.0276581
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0395843   -0.0596965   -0.0194722
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0411860   -0.0529417   -0.0294302
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0399824   -0.0590197   -0.0209451
12-15 months   SAS-CompFeed     INDIA                          0                    NA                -0.1078916   -0.1328466   -0.0829367
12-15 months   SAS-CompFeed     INDIA                          1                    NA                -0.0869326   -0.1061118   -0.0677534
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0349647   -0.1478760    0.0779466
12-15 months   SAS-FoodSuppl    INDIA                          1                    NA                 0.0176740   -0.0161043    0.0514524
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0659861   -0.0813383   -0.0506339
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0644068   -0.1089228   -0.0198909
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0672728   -0.0912585   -0.0432870
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.1070166   -0.2087606   -0.0052725
15-18 months   EE               PAKISTAN                       0                    NA                -0.0208861   -0.0357795   -0.0059927
15-18 months   EE               PAKISTAN                       1                    NA                -0.0316348   -0.0487227   -0.0145468
15-18 months   GMS-Nepal        NEPAL                          0                    NA                -0.0811683   -0.1166810   -0.0456557
15-18 months   GMS-Nepal        NEPAL                          1                    NA                -0.0657949   -0.0808224   -0.0507674
15-18 months   IRC              INDIA                          0                    NA                -0.0364071   -0.0512762   -0.0215379
15-18 months   IRC              INDIA                          1                    NA                -0.1515311   -0.2204234   -0.0826388
15-18 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0379645   -0.0519843   -0.0239447
15-18 months   JiVitA-4         BANGLADESH                     1                    NA                -0.0346955   -0.0419999   -0.0273911
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0156539   -0.0252746   -0.0060332
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0208199   -0.0379994   -0.0036405
15-18 months   PROVIDE          BANGLADESH                     0                    NA                -0.0385957   -0.0485367   -0.0286547
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0357340   -0.0555523   -0.0159157
15-18 months   SAS-CompFeed     INDIA                          0                    NA                 0.0164043   -0.0085399    0.0413485
15-18 months   SAS-CompFeed     INDIA                          1                    NA                -0.0195265   -0.0277291   -0.0113238
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0314870   -0.0645692    0.0015953
15-18 months   SAS-FoodSuppl    INDIA                          1                    NA                -0.0377974   -0.0522041   -0.0233906
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0219218   -0.0379477   -0.0058960
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0772563   -0.1686136    0.0141011
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0409342   -0.0637950   -0.0180734
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.1541233   -0.2177343   -0.0905124
18-21 months   EE               PAKISTAN                       0                    NA                -0.0328668   -0.0475856   -0.0181480
18-21 months   EE               PAKISTAN                       1                    NA                -0.0375760   -0.0538076   -0.0213445
18-21 months   GMS-Nepal        NEPAL                          0                    NA                 0.0464945    0.0191709    0.0738181
18-21 months   GMS-Nepal        NEPAL                          1                    NA                 0.0071586   -0.0064695    0.0207867
18-21 months   IRC              INDIA                          0                    NA                -0.0397231   -0.0532667   -0.0261795
18-21 months   IRC              INDIA                          1                    NA                -0.0591350   -0.1072796   -0.0109903
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0278693   -0.0372160   -0.0185226
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0258935   -0.0416719   -0.0101150
18-21 months   PROVIDE          BANGLADESH                     0                    NA                -0.0063254   -0.0156226    0.0029718
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0252964   -0.0424243   -0.0081684
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0154380   -0.0051620    0.0360380
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                 0.0098131   -0.1329319    0.1525581
21-24 months   EE               PAKISTAN                       0                    NA                -0.0021177   -0.0170445    0.0128091
21-24 months   EE               PAKISTAN                       1                    NA                -0.0188306   -0.0425741    0.0049129
21-24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0351519    0.0098321    0.0604716
21-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0547363    0.0344136    0.0750590
21-24 months   IRC              INDIA                          0                    NA                -0.0137029   -0.0275816    0.0001759
21-24 months   IRC              INDIA                          1                    NA                -0.0251108   -0.0655190    0.0152975
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0561133    0.0464174    0.0658092
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0673092    0.0515863    0.0830320
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0446284    0.0347968    0.0544601
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0499018    0.0315570    0.0682466


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          NA                   NA                -0.0691699   -0.0774369   -0.0609029
0-3 months     EE               PAKISTAN                       NA                   NA                -0.2158396   -0.2587114   -0.1729679
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0284852   -0.0542370   -0.0027335
0-3 months     IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                 0.0366742    0.0060842    0.0672642
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                 0.0670726    0.0519630    0.0821823
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0983435   -0.1172596   -0.0794273
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0954743   -0.1432951   -0.0476535
3-6 months     COHORTS          INDIA                          NA                   NA                -0.0628577   -0.0694923   -0.0562230
3-6 months     EE               PAKISTAN                       NA                   NA                 0.0669258    0.0393905    0.0944610
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                -0.1587255   -0.1782389   -0.1392120
3-6 months     IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                -0.0289883   -0.0560864   -0.0018901
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                -0.0090395   -0.0231928    0.0051138
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0318535   -0.0595705   -0.0041366
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0872974   -0.1043376   -0.0702572
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0817487   -0.1162088   -0.0472886
6-9 months     COHORTS          INDIA                          NA                   NA                -0.1018809   -0.1077606   -0.0960013
6-9 months     EE               PAKISTAN                       NA                   NA                -0.0848045   -0.1055735   -0.0640356
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0451660   -0.0634826   -0.0268494
6-9 months     IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                -0.0276394   -0.0370517   -0.0182271
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
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.0510681   -0.0588908   -0.0432454
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                -0.0853492   -0.0971856   -0.0735129
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                -0.1462637   -0.2015231   -0.0910043
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0666889   -0.0814091   -0.0519687
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712670   -0.0993779   -0.0431561
12-15 months   EE               PAKISTAN                       NA                   NA                -0.0003408   -0.0132889    0.0126073
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0661150   -0.0774073   -0.0548227
12-15 months   IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                -0.0481612   -0.0547086   -0.0416139
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0902668   -0.1049849   -0.0755488
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                 0.0088746   -0.0268397    0.0445889
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0659733   -0.0809830   -0.0509636
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0682695   -0.0918024   -0.0447365
15-18 months   EE               PAKISTAN                       NA                   NA                -0.0255627   -0.0369442   -0.0141812
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0695158   -0.0827085   -0.0563231
15-18 months   IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                -0.0344039   -0.0409473   -0.0278605
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
0-3 months     COHORTS          INDIA                          1                    0                 -0.0264403   -0.0457727   -0.0071080
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       1                    0                  0.0449327   -0.0396144    0.1294797
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                 -0.0184038   -0.0796317    0.0428241
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                 -0.1276341   -0.4808495    0.2255813
0-3 months     JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     1                    0                 -0.0005735   -0.1186650    0.1175181
0-3 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     1                    0                 -0.0001816   -0.0473121    0.0469489
0-3 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0273838   -0.0711492    0.0163816
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                 -0.0207556   -0.0598963    0.0183852
0-3 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          1                    0                  0.0923287    0.0310617    0.1535957
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.0693914   -0.2304628    0.3692455
3-6 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    0                 -0.0149271   -0.0328615    0.0030072
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                  0.0259211   -0.0316882    0.0835305
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                  0.0043055   -0.0417563    0.0503674
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                 -0.0501098   -0.1884333    0.0882138
3-6 months     JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     1                    0                  0.0045736   -0.0804220    0.0895691
3-6 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     1                    0                  0.0056262   -0.0307332    0.0419856
3-6 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0166860   -0.0546042    0.0212323
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                  0.0182743   -0.0167881    0.0533367
3-6 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          1                    0                 -0.0594574   -0.1090556   -0.0098592
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0726985   -0.1787255    0.0333284
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.0442447   -0.0510861    0.1395755
6-9 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    0                 -0.0049233   -0.0194877    0.0096411
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                 -0.0183621   -0.0616830    0.0249588
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                 -0.0128056   -0.0650666    0.0394555
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                 -0.0788952   -0.1787991    0.0210086
6-9 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     1                    0                 -0.0177274   -0.0390786    0.0036237
6-9 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0083451   -0.0383753    0.0216850
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                 -0.0001056   -0.0248663    0.0246551
6-9 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          1                    0                  0.0296922   -0.0106869    0.0700713
6-9 months     SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          1                    0                  0.0080736   -0.0487631    0.0649102
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0365516   -0.0621252    0.1352283
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.1337931   -0.0008295    0.2684157
9-12 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    0                  0.0027918   -0.0113780    0.0169616
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                  0.0004324   -0.0290091    0.0298739
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                  0.0218277   -0.0185505    0.0622058
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                  0.0427138   -0.0649717    0.1503994
9-12 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     1                    0                  0.0040454   -0.0149886    0.0230793
9-12 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    0                  0.0121731   -0.0140682    0.0384144
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                 -0.0016473   -0.0271195    0.0238249
9-12 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          1                    0                 -0.0037083   -0.0462015    0.0387848
9-12 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          1                    0                  0.0577091   -0.0383965    0.1538147
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0680074   -0.1304055   -0.0056092
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.1179442   -0.2214092   -0.0144792
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                  0.0000949   -0.0261844    0.0263742
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                 -0.0183998   -0.0491952    0.0123956
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                  0.0260774   -0.0436537    0.0958086
12-15 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0051211   -0.0203785    0.0101363
12-15 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0009929   -0.0240395    0.0220537
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                  0.0012035   -0.0209750    0.0233820
12-15 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          1                    0                  0.0209591   -0.0163432    0.0582613
12-15 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          1                    0                  0.0526388   -0.0653044    0.1705819
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0015793   -0.0455096    0.0486681
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0397438   -0.1442769    0.0647893
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                 -0.0107487   -0.0335240    0.0120266
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                  0.0153735   -0.0230535    0.0538004
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                 -0.1151241   -0.1856027   -0.0446454
15-18 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     1                    0                  0.0032690   -0.0120258    0.0185638
15-18 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0051660   -0.0248665    0.0145344
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                  0.0028617   -0.0193884    0.0251118
15-18 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          1                    0                 -0.0359308   -0.0646853   -0.0071762
15-18 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          1                    0                 -0.0063104   -0.0423167    0.0296959
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0553344   -0.1480868    0.0374179
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.1131891   -0.1807833   -0.0455949
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                 -0.0047093   -0.0266353    0.0172168
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                 -0.0393359   -0.0699835   -0.0086883
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0194119   -0.0694252    0.0306015
18-21 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0019758   -0.0163350    0.0202867
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                 -0.0189710   -0.0385054    0.0005635
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0056249   -0.1498486    0.1385989
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                 -0.0167129   -0.0448755    0.0114498
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                  0.0195844   -0.0132301    0.0523990
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                 -0.0114079   -0.0541331    0.0313173
21-24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0111959   -0.0072026    0.0295944
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                  0.0052733   -0.0155464    0.0260930


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          0                    NA                -0.0070629   -0.0148579    0.0007321
0-3 months     EE               PAKISTAN                       0                    NA                 0.0153658   -0.0139219    0.0446535
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0204252   -0.0691791    0.0283287
0-3 months     IRC              INDIA                          0                    NA                -0.0023699   -0.0113703    0.0066306
0-3 months     JiVitA-3         BANGLADESH                     0                    NA                -0.0005341   -0.1084400    0.1073717
0-3 months     JiVitA-4         BANGLADESH                     0                    NA                -0.0009609   -0.0390394    0.0371175
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0063521   -0.0158717    0.0031675
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.0060430   -0.0159790    0.0038931
0-3 months     SAS-CompFeed     INDIA                          0                    NA                 0.0882478    0.0354854    0.1410103
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0015926   -0.0059942    0.0091794
3-6 months     COHORTS          INDIA                          0                    NA                -0.0018738   -0.0083739    0.0046263
3-6 months     EE               PAKISTAN                       0                    NA                 0.0086277   -0.0107231    0.0279786
3-6 months     GMS-Nepal        NEPAL                          0                    NA                 0.0045942   -0.0312007    0.0403892
3-6 months     IRC              INDIA                          0                    NA                -0.0010098   -0.0045367    0.0025172
3-6 months     JiVitA-3         BANGLADESH                     0                    NA                 0.0045532   -0.0726401    0.0817464
3-6 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0053477   -0.0230858    0.0337812
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0034633   -0.0121802    0.0052536
3-6 months     PROVIDE          BANGLADESH                     0                    NA                 0.0035449   -0.0056441    0.0127338
3-6 months     SAS-CompFeed     INDIA                          0                    NA                -0.0568134   -0.1008649   -0.0127619
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0012162   -0.0037824    0.0013501
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0009991   -0.0014943    0.0034925
6-9 months     COHORTS          INDIA                          0                    NA                -0.0011298   -0.0065794    0.0043198
6-9 months     EE               PAKISTAN                       0                    NA                -0.0059890   -0.0203338    0.0083558
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0102378   -0.0522182    0.0317426
6-9 months     IRC              INDIA                          0                    NA                -0.0015508   -0.0042661    0.0011645
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                -0.0134887   -0.0293333    0.0023558
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0013913   -0.0078378    0.0050552
6-9 months     PROVIDE          BANGLADESH                     0                    NA                 0.0001810   -0.0062372    0.0065992
6-9 months     SAS-CompFeed     INDIA                          0                    NA                 0.0320622   -0.0002068    0.0643312
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                 0.0048613   -0.0431760    0.0528985
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004870   -0.0017899    0.0027638
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0033979   -0.0007385    0.0075343
9-12 months    COHORTS          INDIA                          0                    NA                -0.0020479   -0.0075365    0.0034407
9-12 months    EE               PAKISTAN                       0                    NA                 0.0000559   -0.0095901    0.0097018
9-12 months    GMS-Nepal        NEPAL                          0                    NA                 0.0162886   -0.0154222    0.0479995
9-12 months    IRC              INDIA                          0                    NA                 0.0008543   -0.0019011    0.0036096
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0031966   -0.0114780    0.0178711
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0027500   -0.0030228    0.0085228
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0006160   -0.0070258    0.0057938
9-12 months    SAS-CompFeed     INDIA                          0                    NA                -0.0059642   -0.0416874    0.0297589
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                 0.0492880   -0.0285391    0.1271151
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0006430   -0.0020461    0.0007601
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0028855   -0.0061417    0.0003707
12-15 months   EE               PAKISTAN                       0                    NA                 0.0000143   -0.0089772    0.0090057
12-15 months   GMS-Nepal        NEPAL                          0                    NA                -0.0146999   -0.0377403    0.0083405
12-15 months   IRC              INDIA                          0                    NA                 0.0004681   -0.0013088    0.0022450
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0035400   -0.0151758    0.0080958
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0002601   -0.0048096    0.0053298
12-15 months   PROVIDE          BANGLADESH                     0                    NA                 0.0002752   -0.0052026    0.0057531
12-15 months   SAS-CompFeed     INDIA                          0                    NA                 0.0176248   -0.0141521    0.0494017
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                 0.0438393   -0.0506164    0.1382951
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0000128   -0.0011645    0.0011900
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0009967   -0.0037057    0.0017123
15-18 months   EE               PAKISTAN                       0                    NA                -0.0046767   -0.0128738    0.0035205
15-18 months   GMS-Nepal        NEPAL                          0                    NA                 0.0116525   -0.0179256    0.0412306
15-18 months   IRC              INDIA                          0                    NA                -0.0021096   -0.0044566    0.0002374
15-18 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0035606   -0.0082557    0.0153768
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0012534   -0.0057826    0.0032758
15-18 months   PROVIDE          BANGLADESH                     0                    NA                 0.0009520   -0.0045402    0.0064442
15-18 months   SAS-CompFeed     INDIA                          0                    NA                -0.0322963   -0.0590053   -0.0055873
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0054255   -0.0349729    0.0241218
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0006207   -0.0029843    0.0017428
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0029885   -0.0057040   -0.0002729
18-21 months   EE               PAKISTAN                       0                    NA                -0.0028117   -0.0097426    0.0041192
18-21 months   GMS-Nepal        NEPAL                          0                    NA                -0.0303797   -0.0537950   -0.0069644
18-21 months   IRC              INDIA                          0                    NA                -0.0003585   -0.0016363    0.0009193
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0000995   -0.0044908    0.0042919
18-21 months   PROVIDE          BANGLADESH                     0                    NA                -0.0046145   -0.0095639    0.0003349
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0001287   -0.0037355    0.0034782
21-24 months   EE               PAKISTAN                       0                    NA                -0.0044019   -0.0126381    0.0038344
21-24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0146338   -0.0095990    0.0388666
21-24 months   IRC              INDIA                          0                    NA                -0.0002053   -0.0012840    0.0008735
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0026488   -0.0018009    0.0070985
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0016058   -0.0035970    0.0068085
