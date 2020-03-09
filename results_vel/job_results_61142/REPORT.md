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
0-3 months     JiVitA-3         BANGLADESH                     0             33    313
0-3 months     JiVitA-3         BANGLADESH                     1            280    313
0-3 months     JiVitA-4         BANGLADESH                     0            367   1784
0-3 months     JiVitA-4         BANGLADESH                     1           1417   1784
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
3-6 months     JiVitA-3         BANGLADESH                     0             28    276
3-6 months     JiVitA-3         BANGLADESH                     1            248    276
3-6 months     JiVitA-4         BANGLADESH                     0            406   1730
3-6 months     JiVitA-4         BANGLADESH                     1           1324   1730
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
6-9 months     JiVitA-4         BANGLADESH                     0            715   2706
6-9 months     JiVitA-4         BANGLADESH                     1           1991   2706
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
9-12 months    JiVitA-4         BANGLADESH                     0            780   2989
9-12 months    JiVitA-4         BANGLADESH                     1           2209   2989
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
12-15 months   JiVitA-4         BANGLADESH                     0            768   3005
12-15 months   JiVitA-4         BANGLADESH                     1           2237   3005
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
15-18 months   JiVitA-4         BANGLADESH                     0            753   2979
15-18 months   JiVitA-4         BANGLADESH                     1           2226   2979
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
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/7043aabe-3fe3-46d0-9903-6f8fcca4d15e/dab6a9fb-5cb1-4beb-bce7-d2c84cc2e8e4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7043aabe-3fe3-46d0-9903-6f8fcca4d15e/dab6a9fb-5cb1-4beb-bce7-d2c84cc2e8e4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7043aabe-3fe3-46d0-9903-6f8fcca4d15e/dab6a9fb-5cb1-4beb-bce7-d2c84cc2e8e4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                0.7447108    0.7209313   0.7684903
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                0.8320366    0.6241919   1.0398814
0-3 months     COHORTS          INDIA                          0                    NA                0.8111747    0.8032668   0.8190827
0-3 months     COHORTS          INDIA                          1                    NA                0.7851700    0.7731654   0.7971747
0-3 months     EE               PAKISTAN                       0                    NA                0.6966427    0.6680495   0.7252360
0-3 months     EE               PAKISTAN                       1                    NA                0.6829789    0.6440867   0.7218711
0-3 months     GMS-Nepal        NEPAL                          0                    NA                0.8553691    0.8210530   0.8896852
0-3 months     GMS-Nepal        NEPAL                          1                    NA                0.8262606    0.8057307   0.8467904
0-3 months     IRC              INDIA                          0                    NA                0.7681641    0.7483859   0.7879424
0-3 months     IRC              INDIA                          1                    NA                0.7567660    0.6579056   0.8556263
0-3 months     JiVitA-3         BANGLADESH                     0                    NA                0.9144134    0.8063869   1.0224400
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                0.8602728    0.8432400   0.8773056
0-3 months     JiVitA-4         BANGLADESH                     0                    NA                0.9105658    0.8897782   0.9313534
0-3 months     JiVitA-4         BANGLADESH                     1                    NA                0.8836252    0.8715510   0.8956994
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                0.8891032    0.8721852   0.9060213
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                0.8769663    0.8476604   0.9062722
0-3 months     PROVIDE          BANGLADESH                     0                    NA                0.9050918    0.8883320   0.9218517
0-3 months     PROVIDE          BANGLADESH                     1                    NA                0.8914061    0.8599906   0.9228215
0-3 months     SAS-CompFeed     INDIA                          0                    NA                0.8301121    0.8059303   0.8542939
0-3 months     SAS-CompFeed     INDIA                          1                    NA                0.7881314    0.7673875   0.8088753
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9214690    0.9108800   0.9320579
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9347623    0.8836641   0.9858604
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                0.4747175    0.4553582   0.4940767
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                0.5058603    0.4129994   0.5987211
3-6 months     COHORTS          INDIA                          0                    NA                0.4793014    0.4731299   0.4854729
3-6 months     COHORTS          INDIA                          1                    NA                0.4627038    0.4531284   0.4722792
3-6 months     EE               PAKISTAN                       0                    NA                0.4850290    0.4616343   0.5084237
3-6 months     EE               PAKISTAN                       1                    NA                0.4625551    0.4305335   0.4945767
3-6 months     GMS-Nepal        NEPAL                          0                    NA                0.4826144    0.4527432   0.5124855
3-6 months     GMS-Nepal        NEPAL                          1                    NA                0.5023760    0.4868448   0.5179072
3-6 months     IRC              INDIA                          0                    NA                0.4681097    0.4507088   0.4855105
3-6 months     IRC              INDIA                          1                    NA                0.3664661    0.1929788   0.5399534
3-6 months     JiVitA-3         BANGLADESH                     0                    NA                0.4378516    0.3972688   0.4784344
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                0.4401291    0.4265746   0.4536836
3-6 months     JiVitA-4         BANGLADESH                     0                    NA                0.4441342    0.4260152   0.4622532
3-6 months     JiVitA-4         BANGLADESH                     1                    NA                0.4374005    0.4273620   0.4474389
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                0.4997150    0.4869790   0.5124510
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                0.4938220    0.4702243   0.5174197
3-6 months     PROVIDE          BANGLADESH                     0                    NA                0.4957444    0.4800958   0.5113929
3-6 months     PROVIDE          BANGLADESH                     1                    NA                0.4718111    0.4485210   0.4951012
3-6 months     SAS-CompFeed     INDIA                          0                    NA                0.4473894    0.4272742   0.4675047
3-6 months     SAS-CompFeed     INDIA                          1                    NA                0.4427274    0.4247258   0.4607290
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4173781    0.4083226   0.4264337
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4443117    0.4019953   0.4866281
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                0.2619658    0.2454955   0.2784361
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                0.1989501    0.1276271   0.2702731
6-9 months     COHORTS          INDIA                          0                    NA                0.2769870    0.2704306   0.2835435
6-9 months     COHORTS          INDIA                          1                    NA                0.2694768    0.2611937   0.2777598
6-9 months     EE               PAKISTAN                       0                    NA                0.2704480    0.2515964   0.2892996
6-9 months     EE               PAKISTAN                       1                    NA                0.2152517    0.1921758   0.2383277
6-9 months     GMS-Nepal        NEPAL                          0                    NA                0.1876816    0.1620687   0.2132945
6-9 months     GMS-Nepal        NEPAL                          1                    NA                0.1875266    0.1730049   0.2020482
6-9 months     IRC              INDIA                          0                    NA                0.2603730    0.2466654   0.2740806
6-9 months     IRC              INDIA                          1                    NA                0.3760950    0.2417567   0.5104333
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                0.2463008    0.2357322   0.2568694
6-9 months     JiVitA-4         BANGLADESH                     1                    NA                0.2360583    0.2303483   0.2417683
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                0.2684498    0.2562078   0.2806918
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                0.2637523    0.2422503   0.2852542
6-9 months     PROVIDE          BANGLADESH                     0                    NA                0.2505354    0.2355987   0.2654722
6-9 months     PROVIDE          BANGLADESH                     1                    NA                0.2433632    0.2240188   0.2627077
6-9 months     SAS-CompFeed     INDIA                          0                    NA                0.1919460    0.1655574   0.2183346
6-9 months     SAS-CompFeed     INDIA                          1                    NA                0.2037583    0.1847704   0.2227462
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                0.2237190    0.1859082   0.2615297
6-9 months     SAS-FoodSuppl    INDIA                          1                    NA                0.1918507    0.1738373   0.2098641
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2578637    0.2486452   0.2670822
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2539371    0.2095271   0.2983471
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.2125972    0.1951821   0.2300124
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.2392568    0.0616339   0.4168797
9-12 months    COHORTS          INDIA                          0                    NA                0.2196454    0.2125391   0.2267516
9-12 months    COHORTS          INDIA                          1                    NA                0.2064621    0.1961846   0.2167395
9-12 months    EE               PAKISTAN                       0                    NA                0.2582040    0.2382391   0.2781689
9-12 months    EE               PAKISTAN                       1                    NA                0.2270191    0.1979611   0.2560772
9-12 months    GMS-Nepal        NEPAL                          0                    NA                0.1399761    0.1110002   0.1689520
9-12 months    GMS-Nepal        NEPAL                          1                    NA                0.1421330    0.1278463   0.1564197
9-12 months    IRC              INDIA                          0                    NA                0.2162807    0.2021569   0.2304045
9-12 months    IRC              INDIA                          1                    NA                0.0623226   -0.0545040   0.1791491
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                0.1489124    0.1395494   0.1582753
9-12 months    JiVitA-4         BANGLADESH                     1                    NA                0.1509457    0.1461438   0.1557477
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                0.1997814    0.1878868   0.2116760
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                0.1939790    0.1724995   0.2154585
9-12 months    PROVIDE          BANGLADESH                     0                    NA                0.1796753    0.1684393   0.1909112
9-12 months    PROVIDE          BANGLADESH                     1                    NA                0.1696869    0.1535674   0.1858064
9-12 months    SAS-CompFeed     INDIA                          0                    NA                0.1966946    0.1716437   0.2217456
9-12 months    SAS-CompFeed     INDIA                          1                    NA                0.1842413    0.1788031   0.1896794
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                0.1204069    0.0739522   0.1668617
9-12 months    SAS-FoodSuppl    INDIA                          1                    NA                0.1424357    0.1212719   0.1635996
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2071535    0.1966188   0.2176882
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1692776    0.1413494   0.1972058
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1502255    0.1361293   0.1643216
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1695910    0.1001219   0.2390601
12-15 months   EE               PAKISTAN                       0                    NA                0.1333991    0.1110535   0.1557446
12-15 months   EE               PAKISTAN                       1                    NA                0.1398603    0.1090608   0.1706598
12-15 months   GMS-Nepal        NEPAL                          0                    NA                0.1601955    0.1284431   0.1919480
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.1746266    0.1590049   0.1902482
12-15 months   IRC              INDIA                          0                    NA                0.1816400    0.1686471   0.1946328
12-15 months   IRC              INDIA                          1                    NA                0.2097864    0.1392028   0.2803700
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                0.1364456    0.1270847   0.1458065
12-15 months   JiVitA-4         BANGLADESH                     1                    NA                0.1303782    0.1254866   0.1352697
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                0.1656485    0.1533261   0.1779710
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1524493    0.1307496   0.1741490
12-15 months   PROVIDE          BANGLADESH                     0                    NA                0.1807431    0.1671090   0.1943772
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.1754805    0.1530105   0.1979505
12-15 months   SAS-CompFeed     INDIA                          0                    NA                0.1642036    0.1448806   0.1835266
12-15 months   SAS-CompFeed     INDIA                          1                    NA                0.1867922    0.1791465   0.1944379
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                0.1521884    0.1000117   0.2043652
12-15 months   SAS-FoodSuppl    INDIA                          1                    NA                0.1793714    0.1630903   0.1956525
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1719049    0.1599267   0.1838830
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1069120    0.0965900   0.1172340
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1529189    0.1383405   0.1674972
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1354447    0.1004720   0.1704174
15-18 months   EE               PAKISTAN                       0                    NA                0.0789528    0.0609213   0.0969844
15-18 months   EE               PAKISTAN                       1                    NA                0.1066806    0.0820937   0.1312674
15-18 months   GMS-Nepal        NEPAL                          0                    NA                0.2593155    0.2299568   0.2886742
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.2220850    0.2040242   0.2401458
15-18 months   IRC              INDIA                          0                    NA                0.1620456    0.1483183   0.1757730
15-18 months   IRC              INDIA                          1                    NA                0.0752143   -0.0004408   0.1508695
15-18 months   JiVitA-4         BANGLADESH                     0                    NA                0.1599984    0.1499533   0.1700435
15-18 months   JiVitA-4         BANGLADESH                     1                    NA                0.1606843    0.1548562   0.1665125
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                0.1638255    0.1513422   0.1763088
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1528099    0.1337562   0.1718636
15-18 months   PROVIDE          BANGLADESH                     0                    NA                0.1547146    0.1407792   0.1686501
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.1623445    0.1383402   0.1863489
15-18 months   SAS-CompFeed     INDIA                          0                    NA                0.1771180    0.1590496   0.1951865
15-18 months   SAS-CompFeed     INDIA                          1                    NA                0.1803976    0.1634556   0.1973396
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                0.1731530    0.1358856   0.2104203
15-18 months   SAS-FoodSuppl    INDIA                          1                    NA                0.1645530    0.1469531   0.1821529
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1684817    0.1536929   0.1832705
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1023443    0.0206499   0.1840388
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1331292    0.1176263   0.1486322
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.2210854    0.1408832   0.3012876
18-21 months   EE               PAKISTAN                       0                    NA                0.1328054    0.1138144   0.1517965
18-21 months   EE               PAKISTAN                       1                    NA                0.1287995    0.0989683   0.1586308
18-21 months   GMS-Nepal        NEPAL                          0                    NA                0.1254300    0.0966217   0.1542384
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.1520467    0.1333420   0.1707513
18-21 months   IRC              INDIA                          0                    NA                0.1594721    0.1458733   0.1730708
18-21 months   IRC              INDIA                          1                    NA                0.1327141    0.0618623   0.2035659
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                0.1426819    0.1303254   0.1550384
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1426718    0.1194816   0.1658619
18-21 months   PROVIDE          BANGLADESH                     0                    NA                0.1316119    0.1177509   0.1454728
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.1351494    0.1153659   0.1549328
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1510487    0.1368978   0.1651997
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.0607284   -0.0304102   0.1518671
21-24 months   EE               PAKISTAN                       0                    NA                0.1998399    0.1719944   0.2276855
21-24 months   EE               PAKISTAN                       1                    NA                0.1597533    0.1251006   0.1944059
21-24 months   GMS-Nepal        NEPAL                          0                    NA                0.1931019    0.1553151   0.2308888
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.1693632    0.1382775   0.2004488
21-24 months   IRC              INDIA                          0                    NA                0.1778672    0.1637598   0.1919747
21-24 months   IRC              INDIA                          1                    NA                0.1704662    0.1183535   0.2225789
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.1756568    0.1610285   0.1902852
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1730776    0.1482974   0.1978579
21-24 months   PROVIDE          BANGLADESH                     0                    NA                0.1428487    0.1301266   0.1555708
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1392350    0.1141370   0.1643331


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.7460379   0.7222497   0.7698262
0-3 months     COHORTS          INDIA                          NA                   NA                0.8050648   0.7995520   0.8105776
0-3 months     EE               PAKISTAN                       NA                   NA                0.6924874   0.6694331   0.7155417
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                0.8319468   0.8147027   0.8491909
0-3 months     IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                0.8666301   0.8475691   0.8856911
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                0.8896616   0.8791580   0.9001652
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                0.7930247   0.7714336   0.8146158
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9216206   0.9112258   0.9320154
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.4754960   0.4564711   0.4945210
3-6 months     COHORTS          INDIA                          NA                   NA                0.4750981   0.4704988   0.4796973
3-6 months     EE               PAKISTAN                       NA                   NA                0.4760628   0.4571294   0.4949963
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                0.4972214   0.4835230   0.5109198
3-6 months     IRC              INDIA                          NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                0.4413289   0.4280006   0.4546572
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                0.4395443   0.4307762   0.4483123
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                0.4443963   0.4287483   0.4600443
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4178504   0.4089549   0.4267458
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.2604002   0.2442074   0.2765930
6-9 months     COHORTS          INDIA                          NA                   NA                0.2731799   0.2683635   0.2779963
6-9 months     EE               PAKISTAN                       NA                   NA                0.2528609   0.2379300   0.2677918
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                0.1883531   0.1758056   0.2009007
6-9 months     IRC              INDIA                          NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                0.2388118   0.2335935   0.2440301
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
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1508143   0.1463823   0.1552463
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.1871662   0.1818903   0.1924421
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1410472   0.1219662   0.1601282
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2066959   0.1963913   0.2170006
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1506921   0.1368354   0.1645489
12-15 months   EE               PAKISTAN                       NA                   NA                0.1362566   0.1182431   0.1542701
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.1715656   0.1577965   0.1853347
12-15 months   IRC              INDIA                          NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1321782   0.1277028   0.1366537
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.1865956   0.1780953   0.1950959
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1752090   0.1590517   0.1913663
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1713800   0.1596910   0.1830691
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1524847   0.1382409   0.1667286
15-18 months   EE               PAKISTAN                       NA                   NA                0.0887281   0.0744394   0.1030168
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.2310705   0.2157341   0.2464069
15-18 months   IRC              INDIA                          NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1602098   0.1551426   0.1652770
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
0-3 months     COHORTS          INDIA                          1                    0                 -0.0260047   -0.0403642   -0.0116452
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       1                    0                 -0.0136638   -0.0620414    0.0347138
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                 -0.0291085   -0.0691767    0.0109597
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                 -0.0113982   -0.1122175    0.0894212
0-3 months     JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     1                    0                 -0.0541406   -0.1603373    0.0520560
0-3 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     1                    0                 -0.0269406   -0.0510920   -0.0027893
0-3 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0121369   -0.0458776    0.0216037
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                 -0.0136858   -0.0493139    0.0219423
0-3 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          1                    0                 -0.0419807   -0.0596016   -0.0243597
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0132933   -0.0388711    0.0654577
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.0311428   -0.0637145    0.1260001
3-6 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    0                 -0.0165976   -0.0278940   -0.0053011
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                 -0.0224739   -0.0621654    0.0172176
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                  0.0197617   -0.0138710    0.0533943
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                 -0.1016436   -0.2760014    0.0727142
3-6 months     JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     1                    0                  0.0022775   -0.0381928    0.0427479
3-6 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     1                    0                 -0.0067337   -0.0274004    0.0139330
3-6 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0058930   -0.0328555    0.0210695
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                 -0.0239333   -0.0520022    0.0041357
3-6 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          1                    0                 -0.0046621   -0.0333739    0.0240498
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0269336   -0.0163180    0.0701851
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.0630157   -0.1362157    0.0101843
6-9 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    0                 -0.0075103   -0.0179581    0.0029376
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                 -0.0551963   -0.0850971   -0.0252954
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                 -0.0001550   -0.0297031    0.0293931
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                  0.1157220   -0.0193138    0.2507578
6-9 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     1                    0                 -0.0102424   -0.0219957    0.0015108
6-9 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0046975   -0.0295318    0.0201368
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                 -0.0071722   -0.0313190    0.0169747
6-9 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          1                    0                  0.0118123   -0.0273513    0.0509759
6-9 months     SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          1                    0                 -0.0318683   -0.0735824    0.0098458
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0039266   -0.0491476    0.0412944
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.0266596   -0.1518150    0.2051341
9-12 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    0                 -0.0131833   -0.0256556   -0.0007111
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                 -0.0311849   -0.0662467    0.0038770
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                  0.0021570   -0.0300685    0.0343824
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                 -0.1539581   -0.2716353   -0.0362809
9-12 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     1                    0                  0.0020334   -0.0082273    0.0122940
9-12 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.0058024   -0.0302051    0.0186003
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                 -0.0099884   -0.0296198    0.0096430
9-12 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          1                    0                 -0.0124533   -0.0405177    0.0156110
9-12 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          1                    0                  0.0220288   -0.0290522    0.0731098
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0378759   -0.0675536   -0.0081983
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0193655   -0.0515193    0.0902503
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                  0.0064612   -0.0313799    0.0443023
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                  0.0144310   -0.0209542    0.0498162
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                  0.0281464   -0.0436230    0.0999159
12-15 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0060674   -0.0162084    0.0040735
12-15 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0131992   -0.0384593    0.0120608
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.0052626   -0.0312642    0.0207389
12-15 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          1                    0                  0.0225886    0.0046966    0.0404806
12-15 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          1                    0                  0.0271830   -0.0270447    0.0814107
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0649929   -0.0808049   -0.0491809
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0174742   -0.0553638    0.0204154
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                  0.0277277   -0.0030196    0.0584751
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                 -0.0372305   -0.0716310   -0.0028300
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                 -0.0868313   -0.1637218   -0.0099408
15-18 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     1                    0                  0.0006859   -0.0108046    0.0121765
15-18 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0110156   -0.0338053    0.0117741
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                  0.0076299   -0.0200824    0.0353422
15-18 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          1                    0                  0.0032796   -0.0209838    0.0275429
15-18 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          1                    0                 -0.0086000   -0.0495241    0.0323241
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0661374   -0.1491596    0.0168849
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0879562    0.0062694    0.1696430
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                 -0.0040059   -0.0396045    0.0315926
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                  0.0266167   -0.0074300    0.0606633
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0267579   -0.0989030    0.0453871
18-21 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0000101   -0.0263672    0.0263470
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                  0.0035375   -0.0206236    0.0276986
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0903203   -0.1825510    0.0019104
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                 -0.0400866   -0.0849959    0.0048226
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0237388   -0.0731486    0.0256711
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                 -0.0074010   -0.0613895    0.0465874
21-24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0025792   -0.0313387    0.0261803
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0036137   -0.0313902    0.0241628


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0013271   -0.0040291    0.0066834
0-3 months     COHORTS          INDIA                          0                    NA                -0.0061099   -0.0115888   -0.0006311
0-3 months     EE               PAKISTAN                       0                    NA                -0.0041553   -0.0201815    0.0118708
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0234223   -0.0549172    0.0080726
0-3 months     IRC              INDIA                          0                    NA                -0.0001736   -0.0026978    0.0023507
0-3 months     JiVitA-3         BANGLADESH                     0                    NA                -0.0477833   -0.1457894    0.0502228
0-3 months     JiVitA-4         BANGLADESH                     0                    NA                -0.0209043   -0.0402180   -0.0015905
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0045813   -0.0125270    0.0033645
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.0034447   -0.0122639    0.0053746
0-3 months     SAS-CompFeed     INDIA                          0                    NA                -0.0370874   -0.0537806   -0.0203942
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0001516   -0.0010649    0.0013681
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0007786   -0.0016521    0.0032093
3-6 months     COHORTS          INDIA                          0                    NA                -0.0042033   -0.0082161   -0.0001905
3-6 months     EE               PAKISTAN                       0                    NA                -0.0089662   -0.0224659    0.0045336
3-6 months     GMS-Nepal        NEPAL                          0                    NA                 0.0146071   -0.0114527    0.0406668
3-6 months     IRC              INDIA                          0                    NA                -0.0020380   -0.0066161    0.0025402
3-6 months     JiVitA-3         BANGLADESH                     0                    NA                 0.0034773   -0.0330886    0.0400432
3-6 months     JiVitA-4         BANGLADESH                     0                    NA                -0.0045899   -0.0209087    0.0117289
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0016606   -0.0077799    0.0044586
3-6 months     PROVIDE          BANGLADESH                     0                    NA                -0.0066832   -0.0137186    0.0003522
3-6 months     SAS-CompFeed     INDIA                          0                    NA                -0.0029931   -0.0272412    0.0212550
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004722   -0.0006189    0.0015633
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0015656   -0.0036870    0.0005558
6-9 months     COHORTS          INDIA                          0                    NA                -0.0038072   -0.0082076    0.0005933
6-9 months     EE               PAKISTAN                       0                    NA                -0.0175871   -0.0277889   -0.0073853
6-9 months     GMS-Nepal        NEPAL                          0                    NA                 0.0006715   -0.0221327    0.0234758
6-9 months     IRC              INDIA                          0                    NA                 0.0022580   -0.0014572    0.0059732
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                -0.0074890   -0.0163982    0.0014203
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0009401   -0.0062664    0.0043862
6-9 months     PROVIDE          BANGLADESH                     0                    NA                -0.0013701   -0.0074298    0.0046896
6-9 months     SAS-CompFeed     INDIA                          0                    NA                 0.0120419   -0.0212939    0.0453777
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                -0.0255004   -0.0597764    0.0087756
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0001562   -0.0012485    0.0009362
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0006562   -0.0038282    0.0051407
9-12 months    COHORTS          INDIA                          0                    NA                -0.0054218   -0.0102349   -0.0006088
9-12 months    EE               PAKISTAN                       0                    NA                -0.0105056   -0.0220204    0.0010091
9-12 months    GMS-Nepal        NEPAL                          0                    NA                 0.0018454   -0.0234375    0.0271283
9-12 months    IRC              INDIA                          0                    NA                -0.0030562   -0.0066704    0.0005579
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0019020   -0.0058130    0.0096170
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0019365   -0.0073613    0.0034883
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0021437   -0.0070068    0.0027195
9-12 months    SAS-CompFeed     INDIA                          0                    NA                -0.0095284   -0.0329840    0.0139272
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                 0.0206403   -0.0214501    0.0627307
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004576   -0.0011673    0.0002521
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0004666   -0.0013341    0.0022674
12-15 months   EE               PAKISTAN                       0                    NA                 0.0028575   -0.0099273    0.0156423
12-15 months   GMS-Nepal        NEPAL                          0                    NA                 0.0113701   -0.0157967    0.0385368
12-15 months   IRC              INDIA                          0                    NA                 0.0005026   -0.0013293    0.0023345
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0042674   -0.0119499    0.0034151
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0015883   -0.0072257    0.0040492
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0007107   -0.0072059    0.0057844
12-15 months   SAS-CompFeed     INDIA                          0                    NA                 0.0223920    0.0073573    0.0374268
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                 0.0230206   -0.0224690    0.0685102
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0005248   -0.0011005    0.0000509
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0004341   -0.0014270    0.0005587
15-18 months   EE               PAKISTAN                       0                    NA                 0.0097753   -0.0012525    0.0208031
15-18 months   GMS-Nepal        NEPAL                          0                    NA                -0.0282450   -0.0544238   -0.0020661
15-18 months   IRC              INDIA                          0                    NA                -0.0015870   -0.0038354    0.0006615
15-18 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0002114   -0.0085287    0.0089516
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0026282   -0.0079533    0.0026969
15-18 months   PROVIDE          BANGLADESH                     0                    NA                 0.0016368   -0.0051072    0.0083808
15-18 months   SAS-CompFeed     INDIA                          0                    NA                 0.0007915   -0.0196785    0.0212615
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0082684   -0.0417838    0.0252470
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0007407   -0.0028869    0.0014055
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0022920   -0.0003530    0.0049370
18-21 months   EE               PAKISTAN                       0                    NA                -0.0038014   -0.0154819    0.0078791
18-21 months   GMS-Nepal        NEPAL                          0                    NA                 0.0193489   -0.0061643    0.0448620
18-21 months   IRC              INDIA                          0                    NA                -0.0004929   -0.0023326    0.0013467
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0000210   -0.0060970    0.0060550
18-21 months   PROVIDE          BANGLADESH                     0                    NA                 0.0008763   -0.0055554    0.0073081
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0020527   -0.0048066    0.0007011
21-24 months   EE               PAKISTAN                       0                    NA                -0.0064663   -0.0199065    0.0069738
21-24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0148955   -0.0514815    0.0216904
21-24 months   IRC              INDIA                          0                    NA                -0.0001332   -0.0014864    0.0012201
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0006068   -0.0073420    0.0061284
21-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0008782   -0.0076541    0.0058976
