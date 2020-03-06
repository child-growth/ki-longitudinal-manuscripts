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

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid        country                        earlybf    n_cell      n
-------------  -------------  -----------------------------  --------  -------  -----
0-3 months     EE             PAKISTAN                       1              57    310
0-3 months     EE             PAKISTAN                       0             253    310
0-3 months     GMS-Nepal      NEPAL                          1             141    463
0-3 months     GMS-Nepal      NEPAL                          0             322    463
0-3 months     MAL-ED         BANGLADESH                     1             152    245
0-3 months     MAL-ED         BANGLADESH                     0              93    245
0-3 months     MAL-ED         BRAZIL                         1             100    218
0-3 months     MAL-ED         BRAZIL                         0             118    218
0-3 months     MAL-ED         INDIA                          1             142    238
0-3 months     MAL-ED         INDIA                          0              96    238
0-3 months     MAL-ED         NEPAL                          1              94    232
0-3 months     MAL-ED         NEPAL                          0             138    232
0-3 months     MAL-ED         PERU                           1             210    282
0-3 months     MAL-ED         PERU                           0              72    282
0-3 months     MAL-ED         SOUTH AFRICA                   1             168    268
0-3 months     MAL-ED         SOUTH AFRICA                   0             100    268
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             200    237
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              37    237
0-3 months     NIH-Crypto     BANGLADESH                     1             626    725
0-3 months     NIH-Crypto     BANGLADESH                     0              99    725
0-3 months     SAS-CompFeed   INDIA                          1              93   1265
0-3 months     SAS-CompFeed   INDIA                          0            1172   1265
0-3 months     ZVITAMBO       ZIMBABWE                       1            3845   7237
0-3 months     ZVITAMBO       ZIMBABWE                       0            3392   7237
3-6 months     EE             PAKISTAN                       1              48    267
3-6 months     EE             PAKISTAN                       0             219    267
3-6 months     GMS-Nepal      NEPAL                          1             128    423
3-6 months     GMS-Nepal      NEPAL                          0             295    423
3-6 months     MAL-ED         BANGLADESH                     1             141    232
3-6 months     MAL-ED         BANGLADESH                     0              91    232
3-6 months     MAL-ED         BRAZIL                         1              95    208
3-6 months     MAL-ED         BRAZIL                         0             113    208
3-6 months     MAL-ED         INDIA                          1             137    230
3-6 months     MAL-ED         INDIA                          0              93    230
3-6 months     MAL-ED         NEPAL                          1              95    233
3-6 months     MAL-ED         NEPAL                          0             138    233
3-6 months     MAL-ED         PERU                           1             199    267
3-6 months     MAL-ED         PERU                           0              68    267
3-6 months     MAL-ED         SOUTH AFRICA                   1             150    240
3-6 months     MAL-ED         SOUTH AFRICA                   0              90    240
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             198    239
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              41    239
3-6 months     NIH-Crypto     BANGLADESH                     1             607    702
3-6 months     NIH-Crypto     BANGLADESH                     0              95    702
3-6 months     SAS-CompFeed   INDIA                          1              86   1118
3-6 months     SAS-CompFeed   INDIA                          0            1032   1118
3-6 months     ZVITAMBO       ZIMBABWE                       1            2930   5436
3-6 months     ZVITAMBO       ZIMBABWE                       0            2506   5436
6-9 months     EE             PAKISTAN                       1              54    292
6-9 months     EE             PAKISTAN                       0             238    292
6-9 months     GMS-Nepal      NEPAL                          1             127    429
6-9 months     GMS-Nepal      NEPAL                          0             302    429
6-9 months     MAL-ED         BANGLADESH                     1             136    223
6-9 months     MAL-ED         BANGLADESH                     0              87    223
6-9 months     MAL-ED         BRAZIL                         1              91    198
6-9 months     MAL-ED         BRAZIL                         0             107    198
6-9 months     MAL-ED         INDIA                          1             138    230
6-9 months     MAL-ED         INDIA                          0              92    230
6-9 months     MAL-ED         NEPAL                          1              95    230
6-9 months     MAL-ED         NEPAL                          0             135    230
6-9 months     MAL-ED         PERU                           1             179    245
6-9 months     MAL-ED         PERU                           0              66    245
6-9 months     MAL-ED         SOUTH AFRICA                   1             138    227
6-9 months     MAL-ED         SOUTH AFRICA                   0              89    227
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             188    225
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              37    225
6-9 months     NIH-Crypto     BANGLADESH                     1             599    693
6-9 months     NIH-Crypto     BANGLADESH                     0              94    693
6-9 months     SAS-CompFeed   INDIA                          1              90   1138
6-9 months     SAS-CompFeed   INDIA                          0            1048   1138
6-9 months     ZVITAMBO       ZIMBABWE                       1            2658   4941
6-9 months     ZVITAMBO       ZIMBABWE                       0            2283   4941
9-12 months    EE             PAKISTAN                       1              57    315
9-12 months    EE             PAKISTAN                       0             258    315
9-12 months    GMS-Nepal      NEPAL                          1             118    410
9-12 months    GMS-Nepal      NEPAL                          0             292    410
9-12 months    MAL-ED         BANGLADESH                     1             137    224
9-12 months    MAL-ED         BANGLADESH                     0              87    224
9-12 months    MAL-ED         BRAZIL                         1              89    194
9-12 months    MAL-ED         BRAZIL                         0             105    194
9-12 months    MAL-ED         INDIA                          1             135    227
9-12 months    MAL-ED         INDIA                          0              92    227
9-12 months    MAL-ED         NEPAL                          1              95    229
9-12 months    MAL-ED         NEPAL                          0             134    229
9-12 months    MAL-ED         PERU                           1             173    235
9-12 months    MAL-ED         PERU                           0              62    235
9-12 months    MAL-ED         SOUTH AFRICA                   1             138    230
9-12 months    MAL-ED         SOUTH AFRICA                   0              92    230
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             188    224
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              36    224
9-12 months    NIH-Crypto     BANGLADESH                     1             588    683
9-12 months    NIH-Crypto     BANGLADESH                     0              95    683
9-12 months    SAS-CompFeed   INDIA                          1              86   1141
9-12 months    SAS-CompFeed   INDIA                          0            1055   1141
9-12 months    ZVITAMBO       ZIMBABWE                       1            2396   4476
9-12 months    ZVITAMBO       ZIMBABWE                       0            2080   4476
12-15 months   EE             PAKISTAN                       1              55    290
12-15 months   EE             PAKISTAN                       0             235    290
12-15 months   GMS-Nepal      NEPAL                          1             120    409
12-15 months   GMS-Nepal      NEPAL                          0             289    409
12-15 months   MAL-ED         BANGLADESH                     1             127    211
12-15 months   MAL-ED         BANGLADESH                     0              84    211
12-15 months   MAL-ED         BRAZIL                         1              86    184
12-15 months   MAL-ED         BRAZIL                         0              98    184
12-15 months   MAL-ED         INDIA                          1             135    226
12-15 months   MAL-ED         INDIA                          0              91    226
12-15 months   MAL-ED         NEPAL                          1              95    230
12-15 months   MAL-ED         NEPAL                          0             135    230
12-15 months   MAL-ED         PERU                           1             163    224
12-15 months   MAL-ED         PERU                           0              61    224
12-15 months   MAL-ED         SOUTH AFRICA                   1             136    225
12-15 months   MAL-ED         SOUTH AFRICA                   0              89    225
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             190    226
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              36    226
12-15 months   NIH-Crypto     BANGLADESH                     1             571    666
12-15 months   NIH-Crypto     BANGLADESH                     0              95    666
12-15 months   SAS-CompFeed   INDIA                          1              85   1165
12-15 months   SAS-CompFeed   INDIA                          0            1080   1165
12-15 months   ZVITAMBO       ZIMBABWE                       1             841   1620
12-15 months   ZVITAMBO       ZIMBABWE                       0             779   1620
15-18 months   EE             PAKISTAN                       1              52    270
15-18 months   EE             PAKISTAN                       0             218    270
15-18 months   GMS-Nepal      NEPAL                          1             132    434
15-18 months   GMS-Nepal      NEPAL                          0             302    434
15-18 months   MAL-ED         BANGLADESH                     1             128    211
15-18 months   MAL-ED         BANGLADESH                     0              83    211
15-18 months   MAL-ED         BRAZIL                         1              85    175
15-18 months   MAL-ED         BRAZIL                         0              90    175
15-18 months   MAL-ED         INDIA                          1             135    226
15-18 months   MAL-ED         INDIA                          0              91    226
15-18 months   MAL-ED         NEPAL                          1              95    227
15-18 months   MAL-ED         NEPAL                          0             132    227
15-18 months   MAL-ED         PERU                           1             155    214
15-18 months   MAL-ED         PERU                           0              59    214
15-18 months   MAL-ED         SOUTH AFRICA                   1             133    222
15-18 months   MAL-ED         SOUTH AFRICA                   0              89    222
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             188    220
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              32    220
15-18 months   NIH-Crypto     BANGLADESH                     1             519    605
15-18 months   NIH-Crypto     BANGLADESH                     0              86    605
15-18 months   SAS-CompFeed   INDIA                          1              88   1171
15-18 months   SAS-CompFeed   INDIA                          0            1083   1171
15-18 months   ZVITAMBO       ZIMBABWE                       1             557   1039
15-18 months   ZVITAMBO       ZIMBABWE                       0             482   1039
18-21 months   EE             PAKISTAN                       1              52    250
18-21 months   EE             PAKISTAN                       0             198    250
18-21 months   GMS-Nepal      NEPAL                          1             123    408
18-21 months   GMS-Nepal      NEPAL                          0             285    408
18-21 months   MAL-ED         BANGLADESH                     1             126    208
18-21 months   MAL-ED         BANGLADESH                     0              82    208
18-21 months   MAL-ED         BRAZIL                         1              80    167
18-21 months   MAL-ED         BRAZIL                         0              87    167
18-21 months   MAL-ED         INDIA                          1             134    226
18-21 months   MAL-ED         INDIA                          0              92    226
18-21 months   MAL-ED         NEPAL                          1              95    227
18-21 months   MAL-ED         NEPAL                          0             132    227
18-21 months   MAL-ED         PERU                           1             147    202
18-21 months   MAL-ED         PERU                           0              55    202
18-21 months   MAL-ED         SOUTH AFRICA                   1             140    230
18-21 months   MAL-ED         SOUTH AFRICA                   0              90    230
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             177    208
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              31    208
18-21 months   NIH-Crypto     BANGLADESH                     1             470    547
18-21 months   NIH-Crypto     BANGLADESH                     0              77    547
18-21 months   ZVITAMBO       ZIMBABWE                       1             301    561
18-21 months   ZVITAMBO       ZIMBABWE                       0             260    561
21-24 months   EE             PAKISTAN                       1              21    103
21-24 months   EE             PAKISTAN                       0              82    103
21-24 months   GMS-Nepal      NEPAL                          1             100    319
21-24 months   GMS-Nepal      NEPAL                          0             219    319
21-24 months   MAL-ED         BANGLADESH                     1             126    206
21-24 months   MAL-ED         BANGLADESH                     0              80    206
21-24 months   MAL-ED         BRAZIL                         1              77    165
21-24 months   MAL-ED         BRAZIL                         0              88    165
21-24 months   MAL-ED         INDIA                          1             133    226
21-24 months   MAL-ED         INDIA                          0              93    226
21-24 months   MAL-ED         NEPAL                          1              94    227
21-24 months   MAL-ED         NEPAL                          0             133    227
21-24 months   MAL-ED         PERU                           1             139    189
21-24 months   MAL-ED         PERU                           0              50    189
21-24 months   MAL-ED         SOUTH AFRICA                   1             142    232
21-24 months   MAL-ED         SOUTH AFRICA                   0              90    232
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             172    206
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34    206
21-24 months   NIH-Crypto     BANGLADESH                     1             425    493
21-24 months   NIH-Crypto     BANGLADESH                     0              68    493
21-24 months   ZVITAMBO       ZIMBABWE                       1             153    267
21-24 months   ZVITAMBO       ZIMBABWE                       0             114    267


The following strata were considered:

* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE



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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/0cb24036-d150-4980-ac62-5e5b1e4c7b36/1516ab82-f86d-40f5-aa07-2e8db8f030f1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0cb24036-d150-4980-ac62-5e5b1e4c7b36/1516ab82-f86d-40f5-aa07-2e8db8f030f1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0cb24036-d150-4980-ac62-5e5b1e4c7b36/1516ab82-f86d-40f5-aa07-2e8db8f030f1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     EE             PAKISTAN                       1                    NA                0.7137449   0.6586750   0.7688148
0-3 months     EE             PAKISTAN                       0                    NA                0.6909755   0.6652756   0.7166755
0-3 months     GMS-Nepal      NEPAL                          1                    NA                0.8446018   0.8117609   0.8774427
0-3 months     GMS-Nepal      NEPAL                          0                    NA                0.8237723   0.8025139   0.8450306
0-3 months     MAL-ED         BANGLADESH                     1                    NA                0.8896553   0.8590698   0.9202408
0-3 months     MAL-ED         BANGLADESH                     0                    NA                0.8620946   0.8274479   0.8967413
0-3 months     MAL-ED         BRAZIL                         1                    NA                1.0701730   1.0234817   1.1168643
0-3 months     MAL-ED         BRAZIL                         0                    NA                1.0600952   1.0107681   1.1094222
0-3 months     MAL-ED         INDIA                          1                    NA                0.7504922   0.7234164   0.7775680
0-3 months     MAL-ED         INDIA                          0                    NA                0.7726769   0.7350684   0.8102855
0-3 months     MAL-ED         NEPAL                          1                    NA                0.9453068   0.9046122   0.9860015
0-3 months     MAL-ED         NEPAL                          0                    NA                0.9648810   0.9294827   1.0002793
0-3 months     MAL-ED         PERU                           1                    NA                0.9616388   0.9324875   0.9907902
0-3 months     MAL-ED         PERU                           0                    NA                0.9946667   0.9462614   1.0430720
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                0.9443450   0.9114021   0.9772879
0-3 months     MAL-ED         SOUTH AFRICA                   0                    NA                0.9450266   0.9005740   0.9894791
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8868221   0.8540533   0.9195909
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8725970   0.7944159   0.9507782
0-3 months     NIH-Crypto     BANGLADESH                     1                    NA                0.8857392   0.8703756   0.9011028
0-3 months     NIH-Crypto     BANGLADESH                     0                    NA                0.8768249   0.8331311   0.9205188
0-3 months     SAS-CompFeed   INDIA                          1                    NA                0.8022684   0.7492638   0.8552730
0-3 months     SAS-CompFeed   INDIA                          0                    NA                0.7899283   0.7700004   0.8098562
0-3 months     ZVITAMBO       ZIMBABWE                       1                    NA                0.9564020   0.9490828   0.9637211
0-3 months     ZVITAMBO       ZIMBABWE                       0                    NA                0.9439962   0.9358682   0.9521242
3-6 months     EE             PAKISTAN                       1                    NA                0.4595796   0.4234088   0.4957503
3-6 months     EE             PAKISTAN                       0                    NA                0.4752628   0.4532227   0.4973029
3-6 months     GMS-Nepal      NEPAL                          1                    NA                0.5288301   0.4985521   0.5591080
3-6 months     GMS-Nepal      NEPAL                          0                    NA                0.4887813   0.4728798   0.5046827
3-6 months     MAL-ED         BANGLADESH                     1                    NA                0.4772209   0.4552936   0.4991482
3-6 months     MAL-ED         BANGLADESH                     0                    NA                0.4716990   0.4459408   0.4974572
3-6 months     MAL-ED         BRAZIL                         1                    NA                0.5928300   0.5409272   0.6447329
3-6 months     MAL-ED         BRAZIL                         0                    NA                0.5658959   0.5286297   0.6031621
3-6 months     MAL-ED         INDIA                          1                    NA                0.4405130   0.4192140   0.4618121
3-6 months     MAL-ED         INDIA                          0                    NA                0.4521575   0.4222610   0.4820540
3-6 months     MAL-ED         NEPAL                          1                    NA                0.4951053   0.4671003   0.5231104
3-6 months     MAL-ED         NEPAL                          0                    NA                0.5400354   0.5123583   0.5677125
3-6 months     MAL-ED         PERU                           1                    NA                0.4975397   0.4748074   0.5202720
3-6 months     MAL-ED         PERU                           0                    NA                0.5002639   0.4669008   0.5336269
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                0.4610999   0.4287322   0.4934676
3-6 months     MAL-ED         SOUTH AFRICA                   0                    NA                0.4697779   0.4267226   0.5128332
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4465208   0.4208484   0.4721931
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5083630   0.4450620   0.5716640
3-6 months     NIH-Crypto     BANGLADESH                     1                    NA                0.4938063   0.4818038   0.5058087
3-6 months     NIH-Crypto     BANGLADESH                     0                    NA                0.5251975   0.4974503   0.5529448
3-6 months     SAS-CompFeed   INDIA                          1                    NA                0.4557135   0.4378484   0.4735786
3-6 months     SAS-CompFeed   INDIA                          0                    NA                0.4497487   0.4358502   0.4636472
3-6 months     ZVITAMBO       ZIMBABWE                       1                    NA                0.4758353   0.4692554   0.4824151
3-6 months     ZVITAMBO       ZIMBABWE                       0                    NA                0.4828264   0.4756431   0.4900096
6-9 months     EE             PAKISTAN                       1                    NA                0.2457119   0.2121467   0.2792771
6-9 months     EE             PAKISTAN                       0                    NA                0.2549303   0.2380032   0.2718574
6-9 months     GMS-Nepal      NEPAL                          1                    NA                0.1781175   0.1544388   0.2017961
6-9 months     GMS-Nepal      NEPAL                          0                    NA                0.1900910   0.1744485   0.2057336
6-9 months     MAL-ED         BANGLADESH                     1                    NA                0.2328247   0.2151236   0.2505258
6-9 months     MAL-ED         BANGLADESH                     0                    NA                0.2593133   0.2345968   0.2840297
6-9 months     MAL-ED         BRAZIL                         1                    NA                0.3666903   0.3275572   0.4058233
6-9 months     MAL-ED         BRAZIL                         0                    NA                0.3971482   0.3624617   0.4318347
6-9 months     MAL-ED         INDIA                          1                    NA                0.2247938   0.2072424   0.2423452
6-9 months     MAL-ED         INDIA                          0                    NA                0.2423669   0.2159596   0.2687743
6-9 months     MAL-ED         NEPAL                          1                    NA                0.2567295   0.2366725   0.2767866
6-9 months     MAL-ED         NEPAL                          0                    NA                0.2786115   0.2585224   0.2987006
6-9 months     MAL-ED         PERU                           1                    NA                0.2611263   0.2428362   0.2794164
6-9 months     MAL-ED         PERU                           0                    NA                0.2621174   0.2330244   0.2912105
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                0.2522340   0.2239956   0.2804724
6-9 months     MAL-ED         SOUTH AFRICA                   0                    NA                0.2666628   0.2345716   0.2987541
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2473870   0.2242552   0.2705189
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1924953   0.1066297   0.2783610
6-9 months     NIH-Crypto     BANGLADESH                     1                    NA                0.2636436   0.2521737   0.2751135
6-9 months     NIH-Crypto     BANGLADESH                     0                    NA                0.2921456   0.2659234   0.3183679
6-9 months     SAS-CompFeed   INDIA                          1                    NA                0.2016081   0.1811427   0.2220735
6-9 months     SAS-CompFeed   INDIA                          0                    NA                0.2104699   0.1951836   0.2257562
6-9 months     ZVITAMBO       ZIMBABWE                       1                    NA                0.2563249   0.2495833   0.2630664
6-9 months     ZVITAMBO       ZIMBABWE                       0                    NA                0.2610338   0.2541461   0.2679216
9-12 months    EE             PAKISTAN                       1                    NA                0.2318555   0.1960340   0.2676771
9-12 months    EE             PAKISTAN                       0                    NA                0.2514395   0.2323672   0.2705118
9-12 months    GMS-Nepal      NEPAL                          1                    NA                0.1490107   0.1214561   0.1765652
9-12 months    GMS-Nepal      NEPAL                          0                    NA                0.1402844   0.1245307   0.1560380
9-12 months    MAL-ED         BANGLADESH                     1                    NA                0.1678556   0.1520711   0.1836402
9-12 months    MAL-ED         BANGLADESH                     0                    NA                0.1819226   0.1569451   0.2069001
9-12 months    MAL-ED         BRAZIL                         1                    NA                0.2802787   0.2317724   0.3287850
9-12 months    MAL-ED         BRAZIL                         0                    NA                0.2882485   0.2462824   0.3302147
9-12 months    MAL-ED         INDIA                          1                    NA                0.1797333   0.1620154   0.1974511
9-12 months    MAL-ED         INDIA                          0                    NA                0.1775390   0.1545876   0.2004905
9-12 months    MAL-ED         NEPAL                          1                    NA                0.1962590   0.1780642   0.2144537
9-12 months    MAL-ED         NEPAL                          0                    NA                0.1787132   0.1578368   0.1995896
9-12 months    MAL-ED         PERU                           1                    NA                0.1888945   0.1710301   0.2067589
9-12 months    MAL-ED         PERU                           0                    NA                0.1835356   0.1538383   0.2132329
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                0.2070033   0.1780713   0.2359354
9-12 months    MAL-ED         SOUTH AFRICA                   0                    NA                0.2269358   0.1919957   0.2618760
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1662628   0.1434660   0.1890596
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1701579   0.1291287   0.2111871
9-12 months    NIH-Crypto     BANGLADESH                     1                    NA                0.1948933   0.1834566   0.2063300
9-12 months    NIH-Crypto     BANGLADESH                     0                    NA                0.2161138   0.1924500   0.2397776
9-12 months    SAS-CompFeed   INDIA                          1                    NA                0.1670477   0.1172791   0.2168162
9-12 months    SAS-CompFeed   INDIA                          0                    NA                0.1965457   0.1888080   0.2042834
9-12 months    ZVITAMBO       ZIMBABWE                       1                    NA                0.1772826   0.1706965   0.1838687
9-12 months    ZVITAMBO       ZIMBABWE                       0                    NA                0.1808998   0.1738311   0.1879685
12-15 months   EE             PAKISTAN                       1                    NA                0.1332464   0.1006136   0.1658792
12-15 months   EE             PAKISTAN                       0                    NA                0.1388551   0.1179557   0.1597545
12-15 months   GMS-Nepal      NEPAL                          1                    NA                0.1939048   0.1629011   0.2249085
12-15 months   GMS-Nepal      NEPAL                          0                    NA                0.1660784   0.1511878   0.1809690
12-15 months   MAL-ED         BANGLADESH                     1                    NA                0.1354019   0.1133781   0.1574256
12-15 months   MAL-ED         BANGLADESH                     0                    NA                0.1351135   0.1133019   0.1569250
12-15 months   MAL-ED         BRAZIL                         1                    NA                0.1949808   0.1610660   0.2288957
12-15 months   MAL-ED         BRAZIL                         0                    NA                0.2235454   0.1878853   0.2592054
12-15 months   MAL-ED         INDIA                          1                    NA                0.1698375   0.1490411   0.1906338
12-15 months   MAL-ED         INDIA                          0                    NA                0.1800662   0.1555187   0.2046138
12-15 months   MAL-ED         NEPAL                          1                    NA                0.1471406   0.1232039   0.1710774
12-15 months   MAL-ED         NEPAL                          0                    NA                0.1566018   0.1338985   0.1793050
12-15 months   MAL-ED         PERU                           1                    NA                0.1364568   0.1167093   0.1562042
12-15 months   MAL-ED         PERU                           0                    NA                0.1558538   0.1249343   0.1867733
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.1761204   0.1403825   0.2118583
12-15 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.2109840   0.1768824   0.2450855
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1658956   0.1388223   0.1929690
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1253935   0.0663775   0.1844095
12-15 months   NIH-Crypto     BANGLADESH                     1                    NA                0.1650022   0.1538726   0.1761318
12-15 months   NIH-Crypto     BANGLADESH                     0                    NA                0.1583987   0.1270303   0.1897670
12-15 months   SAS-CompFeed   INDIA                          1                    NA                0.1840884   0.1553537   0.2128230
12-15 months   SAS-CompFeed   INDIA                          0                    NA                0.1852039   0.1765748   0.1938331
12-15 months   ZVITAMBO       ZIMBABWE                       1                    NA                0.1474120   0.1353103   0.1595137
12-15 months   ZVITAMBO       ZIMBABWE                       0                    NA                0.1518596   0.1394959   0.1642232
15-18 months   EE             PAKISTAN                       1                    NA                0.0902560   0.0619103   0.1186017
15-18 months   EE             PAKISTAN                       0                    NA                0.0857542   0.0691877   0.1023206
15-18 months   GMS-Nepal      NEPAL                          1                    NA                0.2525212   0.2208187   0.2842238
15-18 months   GMS-Nepal      NEPAL                          0                    NA                0.2350340   0.2162318   0.2538362
15-18 months   MAL-ED         BANGLADESH                     1                    NA                0.1449466   0.1247689   0.1651243
15-18 months   MAL-ED         BANGLADESH                     0                    NA                0.1395706   0.1146735   0.1644677
15-18 months   MAL-ED         BRAZIL                         1                    NA                0.1956882   0.1524004   0.2389760
15-18 months   MAL-ED         BRAZIL                         0                    NA                0.2107213   0.1790134   0.2424292
15-18 months   MAL-ED         INDIA                          1                    NA                0.1767407   0.1577348   0.1957466
15-18 months   MAL-ED         INDIA                          0                    NA                0.1415589   0.1180755   0.1650423
15-18 months   MAL-ED         NEPAL                          1                    NA                0.1691857   0.1451901   0.1931814
15-18 months   MAL-ED         NEPAL                          0                    NA                0.1765895   0.1557389   0.1974401
15-18 months   MAL-ED         PERU                           1                    NA                0.1552163   0.1332633   0.1771693
15-18 months   MAL-ED         PERU                           0                    NA                0.1224728   0.0863661   0.1585794
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.2303499   0.1942441   0.2664557
15-18 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.2139795   0.1672211   0.2607380
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1476489   0.1225740   0.1727237
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1143284   0.0584242   0.1702326
15-18 months   NIH-Crypto     BANGLADESH                     1                    NA                0.1577051   0.1466004   0.1688097
15-18 months   NIH-Crypto     BANGLADESH                     0                    NA                0.1822724   0.1509822   0.2135626
15-18 months   SAS-CompFeed   INDIA                          1                    NA                0.1873227   0.1137345   0.2609108
15-18 months   SAS-CompFeed   INDIA                          0                    NA                0.1767960   0.1640829   0.1895090
15-18 months   ZVITAMBO       ZIMBABWE                       1                    NA                0.1408237   0.1249699   0.1566775
15-18 months   ZVITAMBO       ZIMBABWE                       0                    NA                0.1249913   0.1079639   0.1420188
18-21 months   EE             PAKISTAN                       1                    NA                0.1534356   0.1184311   0.1884401
18-21 months   EE             PAKISTAN                       0                    NA                0.1252531   0.1073705   0.1431357
18-21 months   GMS-Nepal      NEPAL                          1                    NA                0.1312250   0.1018021   0.1606479
18-21 months   GMS-Nepal      NEPAL                          0                    NA                0.1416385   0.1221543   0.1611227
18-21 months   MAL-ED         BANGLADESH                     1                    NA                0.1437792   0.1240428   0.1635156
18-21 months   MAL-ED         BANGLADESH                     0                    NA                0.1418046   0.1111765   0.1724327
18-21 months   MAL-ED         BRAZIL                         1                    NA                0.1626347   0.1247398   0.2005296
18-21 months   MAL-ED         BRAZIL                         0                    NA                0.1588233   0.1283278   0.1893188
18-21 months   MAL-ED         INDIA                          1                    NA                0.1668277   0.1480175   0.1856378
18-21 months   MAL-ED         INDIA                          0                    NA                0.1811708   0.1569549   0.2053868
18-21 months   MAL-ED         NEPAL                          1                    NA                0.1570570   0.1347823   0.1793318
18-21 months   MAL-ED         NEPAL                          0                    NA                0.1406214   0.1149041   0.1663386
18-21 months   MAL-ED         PERU                           1                    NA                0.1586976   0.1355275   0.1818678
18-21 months   MAL-ED         PERU                           0                    NA                0.1692296   0.1373929   0.2010662
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.1854740   0.1530557   0.2178922
18-21 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.1680368   0.1225454   0.2135281
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1435800   0.1158758   0.1712843
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1621913   0.1089269   0.2154558
18-21 months   NIH-Crypto     BANGLADESH                     1                    NA                0.1391283   0.1279355   0.1503211
18-21 months   NIH-Crypto     BANGLADESH                     0                    NA                0.1642237   0.1308623   0.1975851
18-21 months   ZVITAMBO       ZIMBABWE                       1                    NA                0.1352874   0.1112761   0.1592988
18-21 months   ZVITAMBO       ZIMBABWE                       0                    NA                0.1122771   0.0830414   0.1415127
21-24 months   EE             PAKISTAN                       1                    NA                0.1842409   0.1363253   0.2321565
21-24 months   EE             PAKISTAN                       0                    NA                0.1943746   0.1686432   0.2201060
21-24 months   GMS-Nepal      NEPAL                          1                    NA                0.1705793   0.1257588   0.2153999
21-24 months   GMS-Nepal      NEPAL                          0                    NA                0.1724684   0.1415740   0.2033627
21-24 months   MAL-ED         BANGLADESH                     1                    NA                0.1523889   0.1344695   0.1703082
21-24 months   MAL-ED         BANGLADESH                     0                    NA                0.1524751   0.1254041   0.1795462
21-24 months   MAL-ED         BRAZIL                         1                    NA                0.1372203   0.1071896   0.1672510
21-24 months   MAL-ED         BRAZIL                         0                    NA                0.1489761   0.1139961   0.1839560
21-24 months   MAL-ED         INDIA                          1                    NA                0.1551260   0.1374131   0.1728390
21-24 months   MAL-ED         INDIA                          0                    NA                0.1579068   0.1383727   0.1774408
21-24 months   MAL-ED         NEPAL                          1                    NA                0.1569789   0.1233122   0.1906455
21-24 months   MAL-ED         NEPAL                          0                    NA                0.1775664   0.1534181   0.2017148
21-24 months   MAL-ED         PERU                           1                    NA                0.1767558   0.1527284   0.2007832
21-24 months   MAL-ED         PERU                           0                    NA                0.1945646   0.1616214   0.2275078
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.1910768   0.1635396   0.2186140
21-24 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.1844783   0.1405659   0.2283907
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1420706   0.1107608   0.1733803
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1375154   0.0826621   0.1923687
21-24 months   NIH-Crypto     BANGLADESH                     1                    NA                0.1755669   0.1616035   0.1895304
21-24 months   NIH-Crypto     BANGLADESH                     0                    NA                0.1718196   0.1458736   0.1977657
21-24 months   ZVITAMBO       ZIMBABWE                       1                    NA                0.0823934   0.0398784   0.1249084
21-24 months   ZVITAMBO       ZIMBABWE                       0                    NA                0.1074771   0.0657919   0.1491624


### Parameter: E(Y)


agecat         studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     EE             PAKISTAN                       NA                   NA                0.6951621   0.6718506   0.7184737
0-3 months     GMS-Nepal      NEPAL                          NA                   NA                0.8301156   0.8122447   0.8479864
0-3 months     MAL-ED         BANGLADESH                     NA                   NA                0.8791935   0.8560450   0.9023419
0-3 months     MAL-ED         BRAZIL                         NA                   NA                1.0647180   1.0304826   1.0989534
0-3 months     MAL-ED         INDIA                          NA                   NA                0.7594406   0.7372368   0.7816445
0-3 months     MAL-ED         NEPAL                          NA                   NA                0.9569501   0.9301779   0.9837223
0-3 months     MAL-ED         PERU                           NA                   NA                0.9700715   0.9450349   0.9951081
0-3 months     MAL-ED         SOUTH AFRICA                   NA                   NA                0.9445993   0.9181120   0.9710866
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     NIH-Crypto     BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     SAS-CompFeed   INDIA                          NA                   NA                0.7908355   0.7705160   0.8111550
0-3 months     ZVITAMBO       ZIMBABWE                       NA                   NA                0.9505874   0.9451417   0.9560330
3-6 months     EE             PAKISTAN                       NA                   NA                0.4724434   0.4532180   0.4916688
3-6 months     GMS-Nepal      NEPAL                          NA                   NA                0.5009000   0.4864085   0.5153916
3-6 months     MAL-ED         BANGLADESH                     NA                   NA                0.4750550   0.4583279   0.4917821
3-6 months     MAL-ED         BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     MAL-ED         INDIA                          NA                   NA                0.4452214   0.4276818   0.4627610
3-6 months     MAL-ED         NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     MAL-ED         PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     MAL-ED         SOUTH AFRICA                   NA                   NA                0.4643542   0.4384657   0.4902426
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     NIH-Crypto     BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     SAS-CompFeed   INDIA                          NA                   NA                0.4502075   0.4368094   0.4636057
3-6 months     ZVITAMBO       ZIMBABWE                       NA                   NA                0.4790582   0.4742051   0.4839113
6-9 months     EE             PAKISTAN                       NA                   NA                0.2532255   0.2380911   0.2683599
6-9 months     GMS-Nepal      NEPAL                          NA                   NA                0.1865464   0.1734825   0.1996102
6-9 months     MAL-ED         BANGLADESH                     NA                   NA                0.2431588   0.2285845   0.2577331
6-9 months     MAL-ED         BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     MAL-ED         INDIA                          NA                   NA                0.2318230   0.2168658   0.2467803
6-9 months     MAL-ED         NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     MAL-ED         PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     MAL-ED         SOUTH AFRICA                   NA                   NA                0.2578911   0.2365872   0.2791950
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     NIH-Crypto     BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     SAS-CompFeed   INDIA                          NA                   NA                0.2097690   0.1949147   0.2246234
6-9 months     ZVITAMBO       ZIMBABWE                       NA                   NA                0.2585007   0.2536752   0.2633261
9-12 months    EE             PAKISTAN                       NA                   NA                0.2478957   0.2309626   0.2648289
9-12 months    GMS-Nepal      NEPAL                          NA                   NA                0.1427958   0.1290511   0.1565406
9-12 months    MAL-ED         BANGLADESH                     NA                   NA                0.1733191   0.1596035   0.1870348
9-12 months    MAL-ED         BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    MAL-ED         INDIA                          NA                   NA                0.1788440   0.1647878   0.1929001
9-12 months    MAL-ED         NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    MAL-ED         PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    MAL-ED         SOUTH AFRICA                   NA                   NA                0.2149763   0.1926543   0.2372984
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    NIH-Crypto     BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    SAS-CompFeed   INDIA                          NA                   NA                0.1943224   0.1874198   0.2012249
9-12 months    ZVITAMBO       ZIMBABWE                       NA                   NA                0.1789635   0.1741446   0.1837825
12-15 months   EE             PAKISTAN                       NA                   NA                0.1377914   0.1197584   0.1558243
12-15 months   GMS-Nepal      NEPAL                          NA                   NA                0.1742426   0.1602797   0.1882055
12-15 months   MAL-ED         BANGLADESH                     NA                   NA                0.1352870   0.1194402   0.1511339
12-15 months   MAL-ED         BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   MAL-ED         INDIA                          NA                   NA                0.1739561   0.1580675   0.1898447
12-15 months   MAL-ED         NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   MAL-ED         PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.1899109   0.1643460   0.2154759
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   NIH-Crypto     BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   SAS-CompFeed   INDIA                          NA                   NA                0.1851225   0.1777268   0.1925183
12-15 months   ZVITAMBO       ZIMBABWE                       NA                   NA                0.1495507   0.1409004   0.1582009
15-18 months   EE             PAKISTAN                       NA                   NA                0.0866212   0.0721726   0.1010698
15-18 months   GMS-Nepal      NEPAL                          NA                   NA                0.2403527   0.2240823   0.2566231
15-18 months   MAL-ED         BANGLADESH                     NA                   NA                0.1428319   0.1271516   0.1585122
15-18 months   MAL-ED         BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   MAL-ED         INDIA                          NA                   NA                0.1625746   0.1476285   0.1775207
15-18 months   MAL-ED         NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   MAL-ED         PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.2237870   0.1951442   0.2524298
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   NIH-Crypto     BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   SAS-CompFeed   INDIA                          NA                   NA                0.1775870   0.1644275   0.1907466
15-18 months   ZVITAMBO       ZIMBABWE                       NA                   NA                0.1334789   0.1218659   0.1450919
18-21 months   EE             PAKISTAN                       NA                   NA                0.1311151   0.1151269   0.1471032
18-21 months   GMS-Nepal      NEPAL                          NA                   NA                0.1384991   0.1222469   0.1547513
18-21 months   MAL-ED         BANGLADESH                     NA                   NA                0.1430007   0.1260081   0.1599934
18-21 months   MAL-ED         BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   MAL-ED         INDIA                          NA                   NA                0.1726665   0.1577530   0.1875800
18-21 months   MAL-ED         NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   MAL-ED         PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.1786507   0.1520523   0.2052491
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   NIH-Crypto     BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ZVITAMBO       ZIMBABWE                       NA                   NA                0.1246231   0.1059024   0.1433438
21-24 months   EE             PAKISTAN                       NA                   NA                0.1923085   0.1695993   0.2150177
21-24 months   GMS-Nepal      NEPAL                          NA                   NA                0.1718762   0.1464347   0.1973177
21-24 months   MAL-ED         BANGLADESH                     NA                   NA                0.1524224   0.1372351   0.1676097
21-24 months   MAL-ED         BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   MAL-ED         INDIA                          NA                   NA                0.1562703   0.1431057   0.1694349
21-24 months   MAL-ED         NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   MAL-ED         PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.1885171   0.1645495   0.2124846
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   NIH-Crypto     BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ZVITAMBO       ZIMBABWE                       NA                   NA                0.0931033   0.0628952   0.1233114


### Parameter: ATE


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     EE             PAKISTAN                       0                    1                 -0.0227694   -0.0835409    0.0380022
0-3 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal      NEPAL                          0                    1                 -0.0208295   -0.0599504    0.0182913
0-3 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH                     0                    1                 -0.0275606   -0.0737761    0.0186548
0-3 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL                         0                    1                 -0.0100778   -0.0779986    0.0578430
0-3 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         INDIA                          0                    1                  0.0221847   -0.0241564    0.0685259
0-3 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         NEPAL                          0                    1                  0.0195742   -0.0343619    0.0735102
0-3 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         PERU                           0                    1                  0.0330279   -0.0234776    0.0895334
0-3 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.0006816   -0.0546471    0.0560103
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0142251   -0.0989958    0.0705457
0-3 months     NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto     BANGLADESH                     0                    1                 -0.0089143   -0.0552305    0.0374020
0-3 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA                          0                    1                 -0.0123401   -0.0609813    0.0363010
0-3 months     ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO       ZIMBABWE                       0                    1                 -0.0124058   -0.0233435   -0.0014680
3-6 months     EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     EE             PAKISTAN                       0                    1                  0.0156832   -0.0266735    0.0580400
3-6 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL                          0                    1                 -0.0400488   -0.0742484   -0.0058492
3-6 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH                     0                    1                 -0.0055220   -0.0393493    0.0283054
3-6 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL                         0                    1                 -0.0269341   -0.0908299    0.0369617
3-6 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         INDIA                          0                    1                  0.0116445   -0.0250632    0.0483521
3-6 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         NEPAL                          0                    1                  0.0449301    0.0055561    0.0843040
3-6 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU                           0                    1                  0.0027242   -0.0376472    0.0430956
3-6 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.0086780   -0.0451869    0.0625428
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0618422   -0.0064665    0.1301510
3-6 months     NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto     BANGLADESH                     0                    1                  0.0313913    0.0011593    0.0616232
3-6 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA                          0                    1                 -0.0059648   -0.0222041    0.0102745
3-6 months     ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO       ZIMBABWE                       0                    1                  0.0069911   -0.0027503    0.0167325
6-9 months     EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE             PAKISTAN                       0                    1                  0.0092184   -0.0283735    0.0468102
6-9 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL                          0                    1                  0.0119736   -0.0164055    0.0403526
6-9 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH                     0                    1                  0.0264886   -0.0039126    0.0568897
6-9 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL                         0                    1                  0.0304579   -0.0218349    0.0827508
6-9 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         INDIA                          0                    1                  0.0175732   -0.0141349    0.0492813
6-9 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL                          0                    1                  0.0218820   -0.0065056    0.0502696
6-9 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU                           0                    1                  0.0009912   -0.0333736    0.0353559
6-9 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.0144289   -0.0283176    0.0571753
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0548917   -0.1438185    0.0340352
6-9 months     NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto     BANGLADESH                     0                    1                  0.0285020   -0.0001190    0.0571230
6-9 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA                          0                    1                  0.0088618   -0.0088468    0.0265704
6-9 months     ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO       ZIMBABWE                       0                    1                  0.0047090   -0.0049290    0.0143470
9-12 months    EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE             PAKISTAN                       0                    1                  0.0195840   -0.0209985    0.0601664
9-12 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL                          0                    1                 -0.0087263   -0.0404664    0.0230137
9-12 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH                     0                    1                  0.0140669   -0.0154801    0.0436140
9-12 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL                         0                    1                  0.0079698   -0.0561708    0.0721104
9-12 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         INDIA                          0                    1                 -0.0021943   -0.0311889    0.0268004
9-12 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         NEPAL                          0                    1                 -0.0175458   -0.0452383    0.0101467
9-12 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU                           0                    1                 -0.0053589   -0.0400153    0.0292975
9-12 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         SOUTH AFRICA                   0                    1                  0.0199325   -0.0254313    0.0652964
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0038951   -0.0430419    0.0508322
9-12 months    NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto     BANGLADESH                     0                    1                  0.0212205   -0.0050621    0.0475031
9-12 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA                          0                    1                  0.0294980   -0.0232270    0.0822231
9-12 months    ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO       ZIMBABWE                       0                    1                  0.0036172   -0.0060442    0.0132787
12-15 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE             PAKISTAN                       0                    1                  0.0056087   -0.0331429    0.0443603
12-15 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL                          0                    1                 -0.0278264   -0.0622205    0.0065678
12-15 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH                     0                    1                 -0.0002884   -0.0312850    0.0307082
12-15 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL                         0                    1                  0.0285645   -0.0206478    0.0777769
12-15 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         INDIA                          0                    1                  0.0102288   -0.0219437    0.0424013
12-15 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         NEPAL                          0                    1                  0.0094611   -0.0235299    0.0424521
12-15 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         PERU                           0                    1                  0.0193970   -0.0172905    0.0560846
12-15 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0348635   -0.0145340    0.0842610
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0405021   -0.1054317    0.0244275
12-15 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto     BANGLADESH                     0                    1                 -0.0066036   -0.0398878    0.0266807
12-15 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA                          0                    1                  0.0011155   -0.0321709    0.0344020
12-15 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO       ZIMBABWE                       0                    1                  0.0044476   -0.0128530    0.0217482
15-18 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE             PAKISTAN                       0                    1                 -0.0045019   -0.0373336    0.0283299
15-18 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL                          0                    1                 -0.0174872   -0.0543460    0.0193716
15-18 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH                     0                    1                 -0.0053760   -0.0374229    0.0266710
15-18 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL                         0                    1                  0.0150331   -0.0386253    0.0686915
15-18 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         INDIA                          0                    1                 -0.0351818   -0.0653926   -0.0049710
15-18 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL                          0                    1                  0.0074038   -0.0243852    0.0391928
15-18 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         PERU                           0                    1                 -0.0327435   -0.0750002    0.0095131
15-18 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.0163703   -0.0754464    0.0427057
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0333205   -0.0945906    0.0279496
15-18 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto     BANGLADESH                     0                    1                  0.0245673   -0.0086349    0.0577695
15-18 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed   INDIA                          0                    1                 -0.0105267   -0.0846638    0.0636104
15-18 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO       ZIMBABWE                       0                    1                 -0.0158324   -0.0390977    0.0074330
18-21 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   EE             PAKISTAN                       0                    1                 -0.0281825   -0.0674903    0.0111253
18-21 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal      NEPAL                          0                    1                  0.0104135   -0.0248759    0.0457029
18-21 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BANGLADESH                     0                    1                 -0.0019746   -0.0384109    0.0344617
18-21 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL                         0                    1                 -0.0038114   -0.0524529    0.0448301
18-21 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         INDIA                          0                    1                  0.0143432   -0.0163200    0.0450064
18-21 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL                          0                    1                 -0.0164357   -0.0504583    0.0175870
18-21 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         PERU                           0                    1                  0.0105319   -0.0288435    0.0499074
18-21 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.0174372   -0.0732978    0.0384234
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0186113   -0.0414272    0.0786499
18-21 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto     BANGLADESH                     0                    1                  0.0250954   -0.0100936    0.0602843
18-21 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO       ZIMBABWE                       0                    1                 -0.0230104   -0.0608424    0.0148217
21-24 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   EE             PAKISTAN                       0                    1                  0.0101336   -0.0442540    0.0645212
21-24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL                          0                    1                  0.0018890   -0.0525476    0.0563256
21-24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH                     0                    1                  0.0000863   -0.0323782    0.0325508
21-24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL                         0                    1                  0.0117557   -0.0343467    0.0578582
21-24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         INDIA                          0                    1                  0.0027807   -0.0235884    0.0291498
21-24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL                          0                    1                  0.0205876   -0.0208442    0.0620193
21-24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         PERU                           0                    1                  0.0178088   -0.0229659    0.0585834
21-24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.0065985   -0.0584309    0.0452339
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0045552   -0.0677152    0.0586048
21-24 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto     BANGLADESH                     0                    1                 -0.0037473   -0.0332121    0.0257175
21-24 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO       ZIMBABWE                       0                    1                  0.0250838   -0.0344577    0.0846252


### Parameter: PAR


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     EE             PAKISTAN                       1                    NA                -0.0185827   -0.0681899    0.0310244
0-3 months     GMS-Nepal      NEPAL                          1                    NA                -0.0144862   -0.0417074    0.0127350
0-3 months     MAL-ED         BANGLADESH                     1                    NA                -0.0104618   -0.0280849    0.0071613
0-3 months     MAL-ED         BRAZIL                         1                    NA                -0.0054550   -0.0422255    0.0313156
0-3 months     MAL-ED         INDIA                          1                    NA                 0.0089485   -0.0097950    0.0276920
0-3 months     MAL-ED         NEPAL                          1                    NA                 0.0116433   -0.0204633    0.0437498
0-3 months     MAL-ED         PERU                           1                    NA                 0.0084327   -0.0060922    0.0229575
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.0002543   -0.0203907    0.0208994
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0022208   -0.0154714    0.0110299
0-3 months     NIH-Crypto     BANGLADESH                     1                    NA                -0.0012173   -0.0075458    0.0051112
0-3 months     SAS-CompFeed   INDIA                          1                    NA                -0.0114329   -0.0560251    0.0331592
0-3 months     ZVITAMBO       ZIMBABWE                       1                    NA                -0.0058146   -0.0109432   -0.0006861
3-6 months     EE             PAKISTAN                       1                    NA                 0.0128638   -0.0218858    0.0476133
3-6 months     GMS-Nepal      NEPAL                          1                    NA                -0.0279300   -0.0518453   -0.0040148
3-6 months     MAL-ED         BANGLADESH                     1                    NA                -0.0021659   -0.0154390    0.0111071
3-6 months     MAL-ED         BRAZIL                         1                    NA                -0.0146325   -0.0493932    0.0201283
3-6 months     MAL-ED         INDIA                          1                    NA                 0.0047084   -0.0101527    0.0195695
3-6 months     MAL-ED         NEPAL                          1                    NA                 0.0266109    0.0031183    0.0501036
3-6 months     MAL-ED         PERU                           1                    NA                 0.0006938   -0.0095890    0.0109766
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.0032542   -0.0169521    0.0234606
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0106089   -0.0014778    0.0226957
3-6 months     NIH-Crypto     BANGLADESH                     1                    NA                 0.0042481    0.0000804    0.0084158
3-6 months     SAS-CompFeed   INDIA                          1                    NA                -0.0055060   -0.0204917    0.0094797
3-6 months     ZVITAMBO       ZIMBABWE                       1                    NA                 0.0032229   -0.0012688    0.0077146
6-9 months     EE             PAKISTAN                       1                    NA                 0.0075136   -0.0231291    0.0381563
6-9 months     GMS-Nepal      NEPAL                          1                    NA                 0.0084289   -0.0115555    0.0284134
6-9 months     MAL-ED         BANGLADESH                     1                    NA                 0.0103341   -0.0016476    0.0223158
6-9 months     MAL-ED         BRAZIL                         1                    NA                 0.0164596   -0.0118791    0.0447983
6-9 months     MAL-ED         INDIA                          1                    NA                 0.0070293   -0.0057029    0.0197614
6-9 months     MAL-ED         NEPAL                          1                    NA                 0.0128438   -0.0038768    0.0295644
6-9 months     MAL-ED         PERU                           1                    NA                 0.0002670   -0.0089906    0.0095246
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.0056571   -0.0111276    0.0224419
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0090266   -0.0238909    0.0058377
6-9 months     NIH-Crypto     BANGLADESH                     1                    NA                 0.0038661   -0.0000836    0.0078158
6-9 months     SAS-CompFeed   INDIA                          1                    NA                 0.0081610   -0.0079499    0.0242718
6-9 months     ZVITAMBO       ZIMBABWE                       1                    NA                 0.0021758   -0.0022779    0.0066295
9-12 months    EE             PAKISTAN                       1                    NA                 0.0160402   -0.0172092    0.0492896
9-12 months    GMS-Nepal      NEPAL                          1                    NA                -0.0062149   -0.0288232    0.0163935
9-12 months    MAL-ED         BANGLADESH                     1                    NA                 0.0054635   -0.0060476    0.0169746
9-12 months    MAL-ED         BRAZIL                         1                    NA                 0.0043136   -0.0304062    0.0390334
9-12 months    MAL-ED         INDIA                          1                    NA                -0.0008893   -0.0126413    0.0108627
9-12 months    MAL-ED         NEPAL                          1                    NA                -0.0102670   -0.0265101    0.0059762
9-12 months    MAL-ED         PERU                           1                    NA                -0.0014138   -0.0105622    0.0077346
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                 0.0079730   -0.0102166    0.0261626
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0006260   -0.0069198    0.0081718
9-12 months    NIH-Crypto     BANGLADESH                     1                    NA                 0.0029516   -0.0007454    0.0066486
9-12 months    SAS-CompFeed   INDIA                          1                    NA                 0.0272747   -0.0221927    0.0767421
9-12 months    ZVITAMBO       ZIMBABWE                       1                    NA                 0.0016809   -0.0028091    0.0061709
12-15 months   EE             PAKISTAN                       1                    NA                 0.0045450   -0.0268582    0.0359482
12-15 months   GMS-Nepal      NEPAL                          1                    NA                -0.0196622   -0.0439962    0.0046719
12-15 months   MAL-ED         BANGLADESH                     1                    NA                -0.0001148   -0.0124547    0.0122251
12-15 months   MAL-ED         BRAZIL                         1                    NA                 0.0152137   -0.0110784    0.0415058
12-15 months   MAL-ED         INDIA                          1                    NA                 0.0041187   -0.0088523    0.0170896
12-15 months   MAL-ED         NEPAL                          1                    NA                 0.0055533   -0.0138204    0.0249270
12-15 months   MAL-ED         PERU                           1                    NA                 0.0052822   -0.0047726    0.0153371
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0137905   -0.0058761    0.0334570
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0064517   -0.0169742    0.0040709
12-15 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.0009419   -0.0056929    0.0038090
12-15 months   SAS-CompFeed   INDIA                          1                    NA                 0.0010341   -0.0298208    0.0318891
12-15 months   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0021387   -0.0061813    0.0104586
15-18 months   EE             PAKISTAN                       1                    NA                -0.0036348   -0.0301443    0.0228746
15-18 months   GMS-Nepal      NEPAL                          1                    NA                -0.0121685   -0.0378280    0.0134909
15-18 months   MAL-ED         BANGLADESH                     1                    NA                -0.0021147   -0.0147259    0.0104964
15-18 months   MAL-ED         BRAZIL                         1                    NA                 0.0077313   -0.0198870    0.0353496
15-18 months   MAL-ED         INDIA                          1                    NA                -0.0141661   -0.0265378   -0.0017944
15-18 months   MAL-ED         NEPAL                          1                    NA                 0.0043053   -0.0141861    0.0227967
15-18 months   MAL-ED         PERU                           1                    NA                -0.0090274   -0.0208422    0.0027873
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0065629   -0.0302701    0.0171444
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0048466   -0.0138934    0.0042002
15-18 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0034922   -0.0012768    0.0082612
15-18 months   SAS-CompFeed   INDIA                          1                    NA                -0.0097356   -0.0783752    0.0589040
15-18 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0073448   -0.0181484    0.0034589
18-21 months   EE             PAKISTAN                       1                    NA                -0.0223205   -0.0534847    0.0088437
18-21 months   GMS-Nepal      NEPAL                          1                    NA                 0.0072741   -0.0173809    0.0319292
18-21 months   MAL-ED         BANGLADESH                     1                    NA                -0.0007784   -0.0151434    0.0135865
18-21 months   MAL-ED         BRAZIL                         1                    NA                -0.0019856   -0.0273274    0.0233563
18-21 months   MAL-ED         INDIA                          1                    NA                 0.0058388   -0.0066775    0.0183551
18-21 months   MAL-ED         NEPAL                          1                    NA                -0.0095573   -0.0293696    0.0102550
18-21 months   MAL-ED         PERU                           1                    NA                 0.0028676   -0.0078730    0.0136082
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0068233   -0.0287095    0.0150630
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0027738   -0.0062197    0.0117673
18-21 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0035326   -0.0014747    0.0085399
18-21 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0106643   -0.0282237    0.0068950
21-24 months   EE             PAKISTAN                       1                    NA                 0.0080676   -0.0352386    0.0513737
21-24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0012969   -0.0360751    0.0386688
21-24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0000335   -0.0125741    0.0126411
21-24 months   MAL-ED         BRAZIL                         1                    NA                 0.0062697   -0.0183346    0.0308741
21-24 months   MAL-ED         INDIA                          1                    NA                 0.0011443   -0.0097082    0.0119967
21-24 months   MAL-ED         NEPAL                          1                    NA                 0.0120623   -0.0122486    0.0363733
21-24 months   MAL-ED         PERU                           1                    NA                 0.0047113   -0.0061339    0.0155566
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0025598   -0.0226714    0.0175519
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0007518   -0.0111789    0.0096752
21-24 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.0005169   -0.0045826    0.0035488
21-24 months   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0107099   -0.0147560    0.0361758
