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

**Outcome Variable:** y_rate_wtkg

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
0-3 months     CMC-V-BCS-2002   INDIA                          0            324    329
0-3 months     CMC-V-BCS-2002   INDIA                          1              5    329
0-3 months     COHORTS          INDIA                          0           2961   4711
0-3 months     COHORTS          INDIA                          1           1750   4711
0-3 months     EE               PAKISTAN                       0            213    318
0-3 months     EE               PAKISTAN                       1            105    318
0-3 months     GMS-Nepal        NEPAL                          0            113    473
0-3 months     GMS-Nepal        NEPAL                          1            360    473
0-3 months     IRC              INDIA                          0            388    394
0-3 months     IRC              INDIA                          1              6    394
0-3 months     NIH-Crypto       BANGLADESH                     0            562    725
0-3 months     NIH-Crypto       BANGLADESH                     1            163    725
0-3 months     PROVIDE          BANGLADESH                     0            478    640
0-3 months     PROVIDE          BANGLADESH                     1            162    640
0-3 months     SAS-CompFeed     INDIA                          0            140   1029
0-3 months     SAS-CompFeed     INDIA                          1            889   1029
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1899   1925
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             26   1925
3-6 months     CMC-V-BCS-2002   INDIA                          0            312    320
3-6 months     CMC-V-BCS-2002   INDIA                          1              8    320
3-6 months     COHORTS          INDIA                          0           2849   4609
3-6 months     COHORTS          INDIA                          1           1760   4609
3-6 months     EE               PAKISTAN                       0            181    273
3-6 months     EE               PAKISTAN                       1             92    273
3-6 months     GMS-Nepal        NEPAL                          0            101    437
3-6 months     GMS-Nepal        NEPAL                          1            336    437
3-6 months     IRC              INDIA                          0            391    399
3-6 months     IRC              INDIA                          1              8    399
3-6 months     NIH-Crypto       BANGLADESH                     0            542    702
3-6 months     NIH-Crypto       BANGLADESH                     1            160    702
3-6 months     PROVIDE          BANGLADESH                     0            449    601
3-6 months     PROVIDE          BANGLADESH                     1            152    601
3-6 months     SAS-CompFeed     INDIA                          0            124    914
3-6 months     SAS-CompFeed     INDIA                          1            790    914
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1551   1580
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             29   1580
6-9 months     CMC-V-BCS-2002   INDIA                          0            314    322
6-9 months     CMC-V-BCS-2002   INDIA                          1              8    322
6-9 months     COHORTS          INDIA                          0           2535   4093
6-9 months     COHORTS          INDIA                          1           1558   4093
6-9 months     EE               PAKISTAN                       0            201    299
6-9 months     EE               PAKISTAN                       1             98    299
6-9 months     GMS-Nepal        NEPAL                          0            106    448
6-9 months     GMS-Nepal        NEPAL                          1            342    448
6-9 months     IRC              INDIA                          0            402    410
6-9 months     IRC              INDIA                          1              8    410
6-9 months     NIH-Crypto       BANGLADESH                     0            541    693
6-9 months     NIH-Crypto       BANGLADESH                     1            152    693
6-9 months     PROVIDE          BANGLADESH                     0            430    576
6-9 months     PROVIDE          BANGLADESH                     1            146    576
6-9 months     SAS-CompFeed     INDIA                          0            125    932
6-9 months     SAS-CompFeed     INDIA                          1            807    932
6-9 months     SAS-FoodSuppl    INDIA                          0             64    309
6-9 months     SAS-FoodSuppl    INDIA                          1            245    309
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1390   1412
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             22   1412
9-12 months    CMC-V-BCS-2002   INDIA                          0            317    325
9-12 months    CMC-V-BCS-2002   INDIA                          1              8    325
9-12 months    COHORTS          INDIA                          0           2194   3522
9-12 months    COHORTS          INDIA                          1           1328   3522
9-12 months    EE               PAKISTAN                       0            218    323
9-12 months    EE               PAKISTAN                       1            105    323
9-12 months    GMS-Nepal        NEPAL                          0             98    426
9-12 months    GMS-Nepal        NEPAL                          1            328    426
9-12 months    IRC              INDIA                          0            395    403
9-12 months    IRC              INDIA                          1              8    403
9-12 months    NIH-Crypto       BANGLADESH                     0            534    683
9-12 months    NIH-Crypto       BANGLADESH                     1            149    683
9-12 months    PROVIDE          BANGLADESH                     0            425    569
9-12 months    PROVIDE          BANGLADESH                     1            144    569
9-12 months    SAS-CompFeed     INDIA                          0            130    939
9-12 months    SAS-CompFeed     INDIA                          1            809    939
9-12 months    SAS-FoodSuppl    INDIA                          0             60    298
9-12 months    SAS-FoodSuppl    INDIA                          1            238    298
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1011   1022
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             11   1022
12-15 months   CMC-V-BCS-2002   INDIA                          0            324    332
12-15 months   CMC-V-BCS-2002   INDIA                          1              8    332
12-15 months   EE               PAKISTAN                       0            195    296
12-15 months   EE               PAKISTAN                       1            101    296
12-15 months   GMS-Nepal        NEPAL                          0            103    422
12-15 months   GMS-Nepal        NEPAL                          1            319    422
12-15 months   IRC              INDIA                          0            385    392
12-15 months   IRC              INDIA                          1              7    392
12-15 months   NIH-Crypto       BANGLADESH                     0            517    666
12-15 months   NIH-Crypto       BANGLADESH                     1            149    666
12-15 months   PROVIDE          BANGLADESH                     0            402    537
12-15 months   PROVIDE          BANGLADESH                     1            135    537
12-15 months   SAS-CompFeed     INDIA                          0            132    961
12-15 months   SAS-CompFeed     INDIA                          1            829    961
12-15 months   SAS-FoodSuppl    INDIA                          0             62    300
12-15 months   SAS-FoodSuppl    INDIA                          1            238    300
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            737    743
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              6    743
15-18 months   CMC-V-BCS-2002   INDIA                          0            314    322
15-18 months   CMC-V-BCS-2002   INDIA                          1              8    322
15-18 months   EE               PAKISTAN                       0            178    275
15-18 months   EE               PAKISTAN                       1             97    275
15-18 months   GMS-Nepal        NEPAL                          0            112    446
15-18 months   GMS-Nepal        NEPAL                          1            334    446
15-18 months   IRC              INDIA                          0            376    383
15-18 months   IRC              INDIA                          1              7    383
15-18 months   NIH-Crypto       BANGLADESH                     0            464    605
15-18 months   NIH-Crypto       BANGLADESH                     1            141    605
15-18 months   PROVIDE          BANGLADESH                     0            398    533
15-18 months   PROVIDE          BANGLADESH                     1            135    533
15-18 months   SAS-CompFeed     INDIA                          0            125    966
15-18 months   SAS-CompFeed     INDIA                          1            841    966
15-18 months   SAS-FoodSuppl    INDIA                          0             61    290
15-18 months   SAS-FoodSuppl    INDIA                          1            229    290
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            618    625
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              7    625
18-21 months   CMC-V-BCS-2002   INDIA                          0            299    307
18-21 months   CMC-V-BCS-2002   INDIA                          1              8    307
18-21 months   EE               PAKISTAN                       0            174    254
18-21 months   EE               PAKISTAN                       1             80    254
18-21 months   GMS-Nepal        NEPAL                          0            105    419
18-21 months   GMS-Nepal        NEPAL                          1            314    419
18-21 months   IRC              INDIA                          0            373    380
18-21 months   IRC              INDIA                          1              7    380
18-21 months   NIH-Crypto       BANGLADESH                     0            418    547
18-21 months   NIH-Crypto       BANGLADESH                     1            129    547
18-21 months   PROVIDE          BANGLADESH                     0            404    542
18-21 months   PROVIDE          BANGLADESH                     1            138    542
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             10     10
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0     10
21-24 months   CMC-V-BCS-2002   INDIA                          0            301    308
21-24 months   CMC-V-BCS-2002   INDIA                          1              7    308
21-24 months   EE               PAKISTAN                       0             75    106
21-24 months   EE               PAKISTAN                       1             31    106
21-24 months   GMS-Nepal        NEPAL                          0             86    323
21-24 months   GMS-Nepal        NEPAL                          1            237    323
21-24 months   IRC              INDIA                          0            382    389
21-24 months   IRC              INDIA                          1              7    389
21-24 months   NIH-Crypto       BANGLADESH                     0            374    493
21-24 months   NIH-Crypto       BANGLADESH                     1            119    493
21-24 months   PROVIDE          BANGLADESH                     0            362    485
21-24 months   PROVIDE          BANGLADESH                     1            123    485


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/25c540fa-62fa-4dde-9c52-8d2d166f4249/993c8189-ed55-47e2-8736-6f8f0865ffd8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/25c540fa-62fa-4dde-9c52-8d2d166f4249/993c8189-ed55-47e2-8736-6f8f0865ffd8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/25c540fa-62fa-4dde-9c52-8d2d166f4249/993c8189-ed55-47e2-8736-6f8f0865ffd8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                0.7447108    0.7209313   0.7684903
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                0.8320366    0.6241919   1.0398814
0-3 months     COHORTS          INDIA                          0                    NA                0.8241037    0.8172351   0.8309723
0-3 months     COHORTS          INDIA                          1                    NA                0.7728510    0.7638206   0.7818814
0-3 months     EE               PAKISTAN                       0                    NA                0.6964935    0.6679054   0.7250815
0-3 months     EE               PAKISTAN                       1                    NA                0.6843608    0.6455243   0.7231973
0-3 months     GMS-Nepal        NEPAL                          0                    NA                0.8542816    0.8232100   0.8853533
0-3 months     GMS-Nepal        NEPAL                          1                    NA                0.8249361    0.8045398   0.8453325
0-3 months     IRC              INDIA                          0                    NA                0.7681641    0.7483859   0.7879424
0-3 months     IRC              INDIA                          1                    NA                0.7567660    0.6579056   0.8556263
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                0.8880251    0.8713779   0.9046723
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                0.8724437    0.8426472   0.9022401
0-3 months     PROVIDE          BANGLADESH                     0                    NA                0.9054934    0.8886445   0.9223423
0-3 months     PROVIDE          BANGLADESH                     1                    NA                0.8902984    0.8599242   0.9206726
0-3 months     SAS-CompFeed     INDIA                          0                    NA                0.8266923    0.7987133   0.8546712
0-3 months     SAS-CompFeed     INDIA                          1                    NA                0.7877227    0.7674189   0.8080265
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9216350    0.9110455   0.9322245
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9205693    0.8723791   0.9687595
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                0.4747175    0.4553582   0.4940767
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                0.5058603    0.4129994   0.5987211
3-6 months     COHORTS          INDIA                          0                    NA                0.4922134    0.4863096   0.4981172
3-6 months     COHORTS          INDIA                          1                    NA                0.4473926    0.4402498   0.4545355
3-6 months     EE               PAKISTAN                       0                    NA                0.4849331    0.4615461   0.5083202
3-6 months     EE               PAKISTAN                       1                    NA                0.4586115    0.4266705   0.4905524
3-6 months     GMS-Nepal        NEPAL                          0                    NA                0.4937926    0.4636358   0.5239495
3-6 months     GMS-Nepal        NEPAL                          1                    NA                0.4982521    0.4829164   0.5135879
3-6 months     IRC              INDIA                          0                    NA                0.4681097    0.4507088   0.4855105
3-6 months     IRC              INDIA                          1                    NA                0.3664661    0.1929788   0.5399534
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                0.4995253    0.4868501   0.5122004
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                0.4930718    0.4704312   0.5157123
3-6 months     PROVIDE          BANGLADESH                     0                    NA                0.4963207    0.4806540   0.5119873
3-6 months     PROVIDE          BANGLADESH                     1                    NA                0.4676168    0.4450942   0.4901395
3-6 months     SAS-CompFeed     INDIA                          0                    NA                0.4485757    0.4288643   0.4682871
3-6 months     SAS-CompFeed     INDIA                          1                    NA                0.4437403    0.4257021   0.4617785
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4173718    0.4083152   0.4264284
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4434467    0.4009847   0.4859086
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                0.2619658    0.2454955   0.2784361
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                0.1989501    0.1276271   0.2702731
6-9 months     COHORTS          INDIA                          0                    NA                0.2875363    0.2814261   0.2936465
6-9 months     COHORTS          INDIA                          1                    NA                0.2498208    0.2421338   0.2575078
6-9 months     EE               PAKISTAN                       0                    NA                0.2703102    0.2515460   0.2890744
6-9 months     EE               PAKISTAN                       1                    NA                0.2170720    0.1942876   0.2398563
6-9 months     GMS-Nepal        NEPAL                          0                    NA                0.1896223    0.1643733   0.2148714
6-9 months     GMS-Nepal        NEPAL                          1                    NA                0.1879598    0.1735060   0.2024135
6-9 months     IRC              INDIA                          0                    NA                0.2603730    0.2466654   0.2740806
6-9 months     IRC              INDIA                          1                    NA                0.3760950    0.2417567   0.5104333
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                0.2698058    0.2575726   0.2820390
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                0.2593373    0.2388655   0.2798090
6-9 months     PROVIDE          BANGLADESH                     0                    NA                0.2514421    0.2365737   0.2663106
6-9 months     PROVIDE          BANGLADESH                     1                    NA                0.2424596    0.2239794   0.2609399
6-9 months     SAS-CompFeed     INDIA                          0                    NA                0.2049237    0.1748579   0.2349896
6-9 months     SAS-CompFeed     INDIA                          1                    NA                0.2038429    0.1855381   0.2221478
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                0.2314086    0.1939751   0.2688422
6-9 months     SAS-FoodSuppl    INDIA                          1                    NA                0.1895485    0.1715184   0.2075787
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2577754    0.2485502   0.2670006
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2534152    0.2079742   0.2988562
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.2125972    0.1951821   0.2300124
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.2392568    0.0616339   0.4168797
9-12 months    COHORTS          INDIA                          0                    NA                0.2263589    0.2199585   0.2327593
9-12 months    COHORTS          INDIA                          1                    NA                0.1941745    0.1862017   0.2021473
9-12 months    EE               PAKISTAN                       0                    NA                0.2579017    0.2378327   0.2779708
9-12 months    EE               PAKISTAN                       1                    NA                0.2265142    0.1973229   0.2557056
9-12 months    GMS-Nepal        NEPAL                          0                    NA                0.1456916    0.1183479   0.1730353
9-12 months    GMS-Nepal        NEPAL                          1                    NA                0.1406652    0.1263791   0.1549512
9-12 months    IRC              INDIA                          0                    NA                0.2162807    0.2021569   0.2304045
9-12 months    IRC              INDIA                          1                    NA                0.0623226   -0.0545040   0.1791491
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                0.2002275    0.1883864   0.2120687
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                0.1893058    0.1676806   0.2109310
9-12 months    PROVIDE          BANGLADESH                     0                    NA                0.1814637    0.1701478   0.1927795
9-12 months    PROVIDE          BANGLADESH                     1                    NA                0.1659265    0.1504239   0.1814292
9-12 months    SAS-CompFeed     INDIA                          0                    NA                0.2047283    0.1772487   0.2322079
9-12 months    SAS-CompFeed     INDIA                          1                    NA                0.1843441    0.1790899   0.1895983
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                0.1398640    0.0962100   0.1835179
9-12 months    SAS-FoodSuppl    INDIA                          1                    NA                0.1413455    0.1201400   0.1625510
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2070490    0.1965028   0.2175952
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1742482    0.1485902   0.1999063
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1502255    0.1361293   0.1643216
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1695910    0.1001219   0.2390601
12-15 months   EE               PAKISTAN                       0                    NA                0.1331219    0.1106493   0.1555946
12-15 months   EE               PAKISTAN                       1                    NA                0.1423087    0.1122691   0.1723483
12-15 months   GMS-Nepal        NEPAL                          0                    NA                0.1646869    0.1349113   0.1944625
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.1737866    0.1583235   0.1892498
12-15 months   IRC              INDIA                          0                    NA                0.1816400    0.1686471   0.1946328
12-15 months   IRC              INDIA                          1                    NA                0.2097864    0.1392028   0.2803700
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                0.1670742    0.1548263   0.1793221
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1536025    0.1333531   0.1738519
12-15 months   PROVIDE          BANGLADESH                     0                    NA                0.1804249    0.1667221   0.1941276
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.1788636    0.1564384   0.2012887
12-15 months   SAS-CompFeed     INDIA                          0                    NA                0.1885780    0.1640416   0.2131145
12-15 months   SAS-CompFeed     INDIA                          1                    NA                0.1862800    0.1779889   0.1945711
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                0.1608107    0.1157007   0.2059206
12-15 months   SAS-FoodSuppl    INDIA                          1                    NA                0.1789598    0.1623589   0.1955607
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1719049    0.1599267   0.1838830
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1069120    0.0965900   0.1172340
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1529189    0.1383405   0.1674972
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1354447    0.1004720   0.1704174
15-18 months   EE               PAKISTAN                       0                    NA                0.0780551    0.0604401   0.0956700
15-18 months   EE               PAKISTAN                       1                    NA                0.1083137    0.0843851   0.1322424
15-18 months   GMS-Nepal        NEPAL                          0                    NA                0.2721433    0.2433320   0.3009546
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.2172976    0.1994834   0.2351119
15-18 months   IRC              INDIA                          0                    NA                0.1620456    0.1483183   0.1757730
15-18 months   IRC              INDIA                          1                    NA                0.0752143   -0.0004408   0.1508695
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                0.1638130    0.1513132   0.1763128
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1525896    0.1339102   0.1712690
15-18 months   PROVIDE          BANGLADESH                     0                    NA                0.1551046    0.1412696   0.1689396
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.1600273    0.1377796   0.1822751
15-18 months   SAS-CompFeed     INDIA                          0                    NA                0.1540654    0.1342799   0.1738509
15-18 months   SAS-CompFeed     INDIA                          1                    NA                0.1814535    0.1656310   0.1972761
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                0.1688648    0.1347459   0.2029838
15-18 months   SAS-FoodSuppl    INDIA                          1                    NA                0.1638243    0.1460448   0.1816038
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1684817    0.1536929   0.1832705
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1023443    0.0206499   0.1840388
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1331292    0.1176263   0.1486322
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.2210854    0.1408832   0.3012876
18-21 months   EE               PAKISTAN                       0                    NA                0.1309436    0.1122787   0.1496085
18-21 months   EE               PAKISTAN                       1                    NA                0.1247855    0.0950438   0.1545273
18-21 months   GMS-Nepal        NEPAL                          0                    NA                0.1135054    0.0840474   0.1429634
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.1552366    0.1365726   0.1739006
18-21 months   IRC              INDIA                          0                    NA                0.1594721    0.1458733   0.1730708
18-21 months   IRC              INDIA                          1                    NA                0.1327141    0.0618623   0.2035659
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                0.1423088    0.1300338   0.1545839
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1438018    0.1217318   0.1658718
18-21 months   PROVIDE          BANGLADESH                     0                    NA                0.1308309    0.1171567   0.1445051
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.1373398    0.1169210   0.1577587
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1510487    0.1368978   0.1651997
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.0607284   -0.0304102   0.1518671
21-24 months   EE               PAKISTAN                       0                    NA                0.2018821    0.1741416   0.2296225
21-24 months   EE               PAKISTAN                       1                    NA                0.1727885    0.1381647   0.2074124
21-24 months   GMS-Nepal        NEPAL                          0                    NA                0.1927259    0.1538120   0.2316397
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.1729377    0.1415853   0.2042902
21-24 months   IRC              INDIA                          0                    NA                0.1778672    0.1637598   0.1919747
21-24 months   IRC              INDIA                          1                    NA                0.1704662    0.1183535   0.2225789
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.1755151    0.1607896   0.1902406
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1735885    0.1498177   0.1973593
21-24 months   PROVIDE          BANGLADESH                     0                    NA                0.1432171    0.1303813   0.1560529
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1383015    0.1136825   0.1629205


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.7460379   0.7222497   0.7698262
0-3 months     COHORTS          INDIA                          NA                   NA                0.8050648   0.7995520   0.8105776
0-3 months     EE               PAKISTAN                       NA                   NA                0.6924874   0.6694331   0.7155417
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                0.8319468   0.8147027   0.8491909
0-3 months     IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                0.7930247   0.7714336   0.8146158
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9216206   0.9112258   0.9320154
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.4754960   0.4564711   0.4945210
3-6 months     COHORTS          INDIA                          NA                   NA                0.4750981   0.4704988   0.4796973
3-6 months     EE               PAKISTAN                       NA                   NA                0.4760628   0.4571294   0.4949963
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                0.4972214   0.4835230   0.5109198
3-6 months     IRC              INDIA                          NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                0.4443963   0.4287483   0.4600443
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4178504   0.4089549   0.4267458
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.2604002   0.2442074   0.2765930
6-9 months     COHORTS          INDIA                          NA                   NA                0.2731799   0.2683635   0.2779963
6-9 months     EE               PAKISTAN                       NA                   NA                0.2528609   0.2379300   0.2677918
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                0.1883531   0.1758056   0.2009007
6-9 months     IRC              INDIA                          NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                0.2039879   0.1893738   0.2186020
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                0.1982186   0.1818458   0.2145914
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2577075   0.2486414   0.2667736
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2132535   0.1956969   0.2308100
9-12 months    COHORTS          INDIA                          NA                   NA                0.2142235   0.2092036   0.2192434
9-12 months    EE               PAKISTAN                       NA                   NA                0.2476983   0.2310822   0.2643145
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.1418215   0.1291487   0.1544943
9-12 months    IRC              INDIA                          NA                   NA                0.2132244   0.1989917   0.2274571
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.1871662   0.1818903   0.1924421
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1410472   0.1219662   0.1601282
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2066959   0.1963913   0.2170006
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1506921   0.1368354   0.1645489
12-15 months   EE               PAKISTAN                       NA                   NA                0.1362566   0.1182431   0.1542701
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.1715656   0.1577965   0.1853347
12-15 months   IRC              INDIA                          NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.1865956   0.1780953   0.1950959
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1752090   0.1590517   0.1913663
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1713800   0.1596910   0.1830691
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1524847   0.1382409   0.1667286
15-18 months   EE               PAKISTAN                       NA                   NA                0.0887281   0.0744394   0.1030168
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.2310705   0.2157341   0.2464069
15-18 months   IRC              INDIA                          NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.1779095   0.1621370   0.1936820
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1648845   0.1491151   0.1806540
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1677410   0.1531677   0.1823142
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1354212   0.1200977   0.1507448
18-21 months   EE               PAKISTAN                       NA                   NA                0.1290041   0.1131497   0.1448584
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.1447789   0.1288688   0.1606890
18-21 months   IRC              INDIA                          NA                   NA                0.1589791   0.1455977   0.1723606
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1489960   0.1349311   0.1630609
21-24 months   EE               PAKISTAN                       NA                   NA                0.1933736   0.1711433   0.2156039
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1782064   0.1529581   0.2034548
21-24 months   IRC              INDIA                          NA                   NA                0.1777340   0.1639174   0.1915507
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.0873258   -0.1218748    0.2965264
0-3 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    0                 -0.0512527   -0.0625984   -0.0399070
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       1                    0                 -0.0121327   -0.0603567    0.0360913
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                 -0.0293455   -0.0665135    0.0078225
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                 -0.0113982   -0.1122175    0.0894212
0-3 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0155814   -0.0497129    0.0185500
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                 -0.0151950   -0.0499294    0.0195394
0-3 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          1                    0                 -0.0389695   -0.0566958   -0.0212432
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0010657   -0.0504056    0.0482743
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.0311428   -0.0637145    0.1260001
3-6 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    0                 -0.0448208   -0.0540877   -0.0355539
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                 -0.0263216   -0.0659093    0.0132660
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                  0.0044595   -0.0293728    0.0382918
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                 -0.1016436   -0.2760014    0.0727142
3-6 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0064535   -0.0324006    0.0194936
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                 -0.0287038   -0.0561395   -0.0012682
3-6 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          1                    0                 -0.0048354   -0.0338332    0.0241624
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0260749   -0.0173421    0.0694919
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.0630157   -0.1362157    0.0101843
6-9 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    0                 -0.0377155   -0.0475351   -0.0278959
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                 -0.0532382   -0.0827547   -0.0237218
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                 -0.0016626   -0.0307560    0.0274308
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                  0.1157220   -0.0193138    0.2507578
6-9 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0104685   -0.0343169    0.0133798
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                 -0.0089825   -0.0327015    0.0147365
6-9 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          1                    0                 -0.0010808   -0.0422417    0.0400800
6-9 months     SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          1                    0                 -0.0418601   -0.0834095   -0.0003106
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0043602   -0.0507282    0.0420077
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.0266596   -0.1518150    0.2051341
9-12 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    0                 -0.0321844   -0.0424084   -0.0219604
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                 -0.0313875   -0.0668121    0.0040371
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                 -0.0050265   -0.0358772    0.0258243
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                 -0.1539581   -0.2716353   -0.0362809
9-12 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.0109218   -0.0355766    0.0137331
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                 -0.0155371   -0.0347304    0.0036561
9-12 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          1                    0                 -0.0203842   -0.0506383    0.0098699
9-12 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          1                    0                  0.0014815   -0.0470504    0.0500134
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0328008   -0.0605417   -0.0050598
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0193655   -0.0515193    0.0902503
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                  0.0091868   -0.0283286    0.0467021
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                  0.0090997   -0.0244516    0.0426511
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                  0.0281464   -0.0436230    0.0999159
12-15 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0134717   -0.0371370    0.0101936
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.0015613   -0.0278416    0.0247189
12-15 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          1                    0                 -0.0022981   -0.0270323    0.0224361
12-15 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          1                    0                  0.0181492   -0.0299185    0.0662168
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0649929   -0.0808049   -0.0491809
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0174742   -0.0553638    0.0204154
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                  0.0302586    0.0005456    0.0599717
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                 -0.0548457   -0.0887195   -0.0209718
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                 -0.0868313   -0.1637218   -0.0099408
15-18 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0112234   -0.0336992    0.0112525
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                  0.0049228   -0.0212759    0.0311214
15-18 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          1                    0                  0.0273881    0.0050427    0.0497335
15-18 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          1                    0                 -0.0050405   -0.0435141    0.0334330
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0661374   -0.1491596    0.0168849
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0879562    0.0062694    0.1696430
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                 -0.0061581   -0.0412714    0.0289553
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                  0.0417312    0.0068584    0.0766041
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0267579   -0.0989030    0.0453871
18-21 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0014930   -0.0237609    0.0267469
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                  0.0065089   -0.0180657    0.0310836
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0903203   -0.1825510    0.0019104
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                 -0.0290935   -0.0734596    0.0152725
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0197881   -0.0697607    0.0301845
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                 -0.0074010   -0.0613895    0.0465874
21-24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0019266   -0.0298889    0.0260358
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0049156   -0.0326798    0.0228487


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0013271   -0.0040291    0.0066834
0-3 months     COHORTS          INDIA                          0                    NA                -0.0190389   -0.0233124   -0.0147653
0-3 months     EE               PAKISTAN                       0                    NA                -0.0040061   -0.0199415    0.0119293
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0223348   -0.0506459    0.0059762
0-3 months     IRC              INDIA                          0                    NA                -0.0001736   -0.0026978    0.0023507
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0035031   -0.0111914    0.0041852
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.0038462   -0.0126533    0.0049608
0-3 months     SAS-CompFeed     INDIA                          0                    NA                -0.0336675   -0.0502848   -0.0170502
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0000144   -0.0012479    0.0012191
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0007786   -0.0016521    0.0032093
3-6 months     COHORTS          INDIA                          0                    NA                -0.0171153   -0.0207094   -0.0135213
3-6 months     EE               PAKISTAN                       0                    NA                -0.0088703   -0.0222929    0.0045523
3-6 months     GMS-Nepal        NEPAL                          0                    NA                 0.0034288   -0.0225847    0.0294423
3-6 months     IRC              INDIA                          0                    NA                -0.0020380   -0.0066161    0.0025402
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0014709   -0.0073882    0.0044464
3-6 months     PROVIDE          BANGLADESH                     0                    NA                -0.0072595   -0.0142698   -0.0002493
3-6 months     SAS-CompFeed     INDIA                          0                    NA                -0.0041794   -0.0292674    0.0209086
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004786   -0.0006205    0.0015777
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0015656   -0.0036870    0.0005558
6-9 months     COHORTS          INDIA                          0                    NA                -0.0143564   -0.0181361   -0.0105767
6-9 months     EE               PAKISTAN                       0                    NA                -0.0174493   -0.0275311   -0.0073676
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0012692   -0.0234790    0.0209406
6-9 months     IRC              INDIA                          0                    NA                 0.0022580   -0.0014572    0.0059732
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0022961   -0.0075369    0.0029446
6-9 months     PROVIDE          BANGLADESH                     0                    NA                -0.0022768   -0.0082974    0.0037438
6-9 months     SAS-CompFeed     INDIA                          0                    NA                -0.0009359   -0.0365506    0.0346789
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                -0.0331900   -0.0661882   -0.0001919
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0000679   -0.0012275    0.0010916
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0006562   -0.0038282    0.0051407
9-12 months    COHORTS          INDIA                          0                    NA                -0.0121354   -0.0160247   -0.0082461
9-12 months    EE               PAKISTAN                       0                    NA                -0.0102034   -0.0218305    0.0014238
9-12 months    GMS-Nepal        NEPAL                          0                    NA                -0.0038701   -0.0276246    0.0198843
9-12 months    IRC              INDIA                          0                    NA                -0.0030562   -0.0066704    0.0005579
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0023826   -0.0077719    0.0030066
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0039321   -0.0088211    0.0009569
9-12 months    SAS-CompFeed     INDIA                          0                    NA                -0.0175621   -0.0430613    0.0079372
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                 0.0011832   -0.0375772    0.0399436
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003530   -0.0010770    0.0003709
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0004666   -0.0013341    0.0022674
12-15 months   EE               PAKISTAN                       0                    NA                 0.0031347   -0.0096758    0.0159452
12-15 months   GMS-Nepal        NEPAL                          0                    NA                 0.0068787   -0.0184863    0.0322437
12-15 months   IRC              INDIA                          0                    NA                 0.0005026   -0.0013293    0.0023345
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0030139   -0.0083256    0.0022977
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0003925   -0.0069995    0.0062145
12-15 months   SAS-CompFeed     INDIA                          0                    NA                -0.0019824   -0.0232544    0.0192895
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                 0.0143983   -0.0237444    0.0525411
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0005248   -0.0011005    0.0000509
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0004341   -0.0014270    0.0005587
15-18 months   EE               PAKISTAN                       0                    NA                 0.0106731    0.0000536    0.0212926
15-18 months   GMS-Nepal        NEPAL                          0                    NA                -0.0410728   -0.0665362   -0.0156093
15-18 months   IRC              INDIA                          0                    NA                -0.0015870   -0.0038354    0.0006615
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0026157   -0.0078675    0.0026361
15-18 months   PROVIDE          BANGLADESH                     0                    NA                 0.0012469   -0.0053913    0.0078850
15-18 months   SAS-CompFeed     INDIA                          0                    NA                 0.0238441    0.0057911    0.0418971
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0039803   -0.0343620    0.0264015
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0007407   -0.0028869    0.0014055
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0022920   -0.0003530    0.0049370
18-21 months   EE               PAKISTAN                       0                    NA                -0.0019396   -0.0130045    0.0091254
18-21 months   GMS-Nepal        NEPAL                          0                    NA                 0.0312735    0.0050822    0.0574648
18-21 months   IRC              INDIA                          0                    NA                -0.0004929   -0.0023326    0.0013467
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0003521   -0.0056038    0.0063080
18-21 months   PROVIDE          BANGLADESH                     0                    NA                 0.0016573   -0.0046043    0.0079188
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0020527   -0.0048066    0.0007011
21-24 months   EE               PAKISTAN                       0                    NA                -0.0085085   -0.0217281    0.0047111
21-24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0145195   -0.0511991    0.0221602
21-24 months   IRC              INDIA                          0                    NA                -0.0001332   -0.0014864    0.0012201
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0004650   -0.0072150    0.0062849
21-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0012466   -0.0082905    0.0057972
