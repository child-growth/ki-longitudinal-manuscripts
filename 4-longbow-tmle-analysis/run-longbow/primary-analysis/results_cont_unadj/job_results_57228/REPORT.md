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
0-3 months     EE             PAKISTAN                       1              55    294
0-3 months     EE             PAKISTAN                       0             239    294
0-3 months     GMS-Nepal      NEPAL                          1             139    462
0-3 months     GMS-Nepal      NEPAL                          0             323    462
0-3 months     MAL-ED         BANGLADESH                     1             151    242
0-3 months     MAL-ED         BANGLADESH                     0              91    242
0-3 months     MAL-ED         BRAZIL                         1              76    168
0-3 months     MAL-ED         BRAZIL                         0              92    168
0-3 months     MAL-ED         INDIA                          1             110    183
0-3 months     MAL-ED         INDIA                          0              73    183
0-3 months     MAL-ED         NEPAL                          1              70    156
0-3 months     MAL-ED         NEPAL                          0              86    156
0-3 months     MAL-ED         PERU                           1             200    265
0-3 months     MAL-ED         PERU                           0              65    265
0-3 months     MAL-ED         SOUTH AFRICA                   1             134    208
0-3 months     MAL-ED         SOUTH AFRICA                   0              74    208
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             196    228
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              32    228
0-3 months     NIH-Crypto     BANGLADESH                     1             623    721
0-3 months     NIH-Crypto     BANGLADESH                     0              98    721
0-3 months     SAS-CompFeed   INDIA                          1              93   1261
0-3 months     SAS-CompFeed   INDIA                          0            1168   1261
0-3 months     ZVITAMBO       ZIMBABWE                       1            3772   7074
0-3 months     ZVITAMBO       ZIMBABWE                       0            3302   7074
3-6 months     EE             PAKISTAN                       1              49    272
3-6 months     EE             PAKISTAN                       0             223    272
3-6 months     GMS-Nepal      NEPAL                          1             127    422
3-6 months     GMS-Nepal      NEPAL                          0             295    422
3-6 months     MAL-ED         BANGLADESH                     1             140    230
3-6 months     MAL-ED         BANGLADESH                     0              90    230
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
3-6 months     NIH-Crypto     BANGLADESH                     1             602    695
3-6 months     NIH-Crypto     BANGLADESH                     0              93    695
3-6 months     SAS-CompFeed   INDIA                          1              87   1124
3-6 months     SAS-CompFeed   INDIA                          0            1037   1124
3-6 months     ZVITAMBO       ZIMBABWE                       1            2948   5473
3-6 months     ZVITAMBO       ZIMBABWE                       0            2525   5473
6-9 months     EE             PAKISTAN                       1              54    295
6-9 months     EE             PAKISTAN                       0             241    295
6-9 months     GMS-Nepal      NEPAL                          1             128    432
6-9 months     GMS-Nepal      NEPAL                          0             304    432
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
6-9 months     NIH-Crypto     BANGLADESH                     1             595    688
6-9 months     NIH-Crypto     BANGLADESH                     0              93    688
6-9 months     SAS-CompFeed   INDIA                          1              91   1144
6-9 months     SAS-CompFeed   INDIA                          0            1053   1144
6-9 months     ZVITAMBO       ZIMBABWE                       1            2839   5271
6-9 months     ZVITAMBO       ZIMBABWE                       0            2432   5271
9-12 months    EE             PAKISTAN                       1              57    316
9-12 months    EE             PAKISTAN                       0             259    316
9-12 months    GMS-Nepal      NEPAL                          1             124    425
9-12 months    GMS-Nepal      NEPAL                          0             301    425
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
9-12 months    NIH-Crypto     BANGLADESH                     1             580    674
9-12 months    NIH-Crypto     BANGLADESH                     0              94    674
9-12 months    SAS-CompFeed   INDIA                          1              86   1146
9-12 months    SAS-CompFeed   INDIA                          0            1060   1146
9-12 months    ZVITAMBO       ZIMBABWE                       1            2809   5265
9-12 months    ZVITAMBO       ZIMBABWE                       0            2456   5265
12-15 months   EE             PAKISTAN                       1              54    289
12-15 months   EE             PAKISTAN                       0             235    289
12-15 months   GMS-Nepal      NEPAL                          1             125    426
12-15 months   GMS-Nepal      NEPAL                          0             301    426
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
12-15 months   NIH-Crypto     BANGLADESH                     1             565    660
12-15 months   NIH-Crypto     BANGLADESH                     0              95    660
12-15 months   SAS-CompFeed   INDIA                          1              84   1168
12-15 months   SAS-CompFeed   INDIA                          0            1084   1168
12-15 months   ZVITAMBO       ZIMBABWE                       1            1144   2218
12-15 months   ZVITAMBO       ZIMBABWE                       0            1074   2218
15-18 months   EE             PAKISTAN                       1              52    270
15-18 months   EE             PAKISTAN                       0             218    270
15-18 months   GMS-Nepal      NEPAL                          1             132    437
15-18 months   GMS-Nepal      NEPAL                          0             305    437
15-18 months   MAL-ED         BANGLADESH                     1             128    211
15-18 months   MAL-ED         BANGLADESH                     0              83    211
15-18 months   MAL-ED         BRAZIL                         1              85    175
15-18 months   MAL-ED         BRAZIL                         0              90    175
15-18 months   MAL-ED         INDIA                          1             135    226
15-18 months   MAL-ED         INDIA                          0              91    226
15-18 months   MAL-ED         NEPAL                          1              95    227
15-18 months   MAL-ED         NEPAL                          0             132    227
15-18 months   MAL-ED         PERU                           1             154    213
15-18 months   MAL-ED         PERU                           0              59    213
15-18 months   MAL-ED         SOUTH AFRICA                   1             133    222
15-18 months   MAL-ED         SOUTH AFRICA                   0              89    222
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             185    217
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              32    217
15-18 months   NIH-Crypto     BANGLADESH                     1             518    604
15-18 months   NIH-Crypto     BANGLADESH                     0              86    604
15-18 months   SAS-CompFeed   INDIA                          1              88   1171
15-18 months   SAS-CompFeed   INDIA                          0            1083   1171
15-18 months   ZVITAMBO       ZIMBABWE                       1             947   1776
15-18 months   ZVITAMBO       ZIMBABWE                       0             829   1776
18-21 months   EE             PAKISTAN                       1              52    248
18-21 months   EE             PAKISTAN                       0             196    248
18-21 months   GMS-Nepal      NEPAL                          1             122    406
18-21 months   GMS-Nepal      NEPAL                          0             284    406
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
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             173    204
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              31    204
18-21 months   NIH-Crypto     BANGLADESH                     1             469    546
18-21 months   NIH-Crypto     BANGLADESH                     0              77    546
18-21 months   ZVITAMBO       ZIMBABWE                       1             728   1382
18-21 months   ZVITAMBO       ZIMBABWE                       0             654   1382
21-24 months   EE             PAKISTAN                       1              21    103
21-24 months   EE             PAKISTAN                       0              82    103
21-24 months   GMS-Nepal      NEPAL                          1             100    318
21-24 months   GMS-Nepal      NEPAL                          0             218    318
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
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             171    204
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              33    204
21-24 months   NIH-Crypto     BANGLADESH                     1             422    490
21-24 months   NIH-Crypto     BANGLADESH                     0              68    490
21-24 months   ZVITAMBO       ZIMBABWE                       1             527   1000
21-24 months   ZVITAMBO       ZIMBABWE                       0             473   1000


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
![](/tmp/c524bc76-03ee-455b-9ba4-2cdca91b9b03/e390a4fc-f1d3-449b-9a40-c5321c332066/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c524bc76-03ee-455b-9ba4-2cdca91b9b03/e390a4fc-f1d3-449b-9a40-c5321c332066/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c524bc76-03ee-455b-9ba4-2cdca91b9b03/e390a4fc-f1d3-449b-9a40-c5321c332066/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     EE             PAKISTAN                       1                    NA                -0.2637918   -0.3469849   -0.1805988
0-3 months     EE             PAKISTAN                       0                    NA                -0.2060516   -0.2560587   -0.1560444
0-3 months     GMS-Nepal      NEPAL                          1                    NA                -0.0155191   -0.0580816    0.0270434
0-3 months     GMS-Nepal      NEPAL                          0                    NA                -0.0387991   -0.0716882   -0.0059100
0-3 months     MAL-ED         BANGLADESH                     1                    NA                -0.1377298   -0.1781323   -0.0973273
0-3 months     MAL-ED         BANGLADESH                     0                    NA                -0.0921013   -0.1511863   -0.0330162
0-3 months     MAL-ED         BRAZIL                         1                    NA                 0.1250406    0.0384183    0.2116629
0-3 months     MAL-ED         BRAZIL                         0                    NA                 0.1415316    0.0655595    0.2175036
0-3 months     MAL-ED         INDIA                          1                    NA                -0.0665358   -0.1348378    0.0017663
0-3 months     MAL-ED         INDIA                          0                    NA                -0.0477407   -0.1198347    0.0243532
0-3 months     MAL-ED         NEPAL                          1                    NA                 0.0048545   -0.0615129    0.0712218
0-3 months     MAL-ED         NEPAL                          0                    NA                 0.0953855    0.0373187    0.1534523
0-3 months     MAL-ED         PERU                           1                    NA                -0.2786313   -0.3155552   -0.2417074
0-3 months     MAL-ED         PERU                           0                    NA                -0.2140910   -0.2929896   -0.1351924
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.1869728   -0.2505553   -0.1233903
0-3 months     MAL-ED         SOUTH AFRICA                   0                    NA                -0.1669390   -0.2434321   -0.0904460
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1297225   -0.1713861   -0.0880589
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1857541   -0.2973477   -0.0741606
0-3 months     NIH-Crypto     BANGLADESH                     1                    NA                -0.2278903   -0.2465286   -0.2092519
0-3 months     NIH-Crypto     BANGLADESH                     0                    NA                -0.2526874   -0.3011760   -0.2041988
0-3 months     SAS-CompFeed   INDIA                          1                    NA                -0.1389277   -0.2179505   -0.0599049
0-3 months     SAS-CompFeed   INDIA                          0                    NA                -0.1264353   -0.1528129   -0.1000577
0-3 months     ZVITAMBO       ZIMBABWE                       1                    NA                -0.1022008   -0.1167968   -0.0876048
0-3 months     ZVITAMBO       ZIMBABWE                       0                    NA                -0.1857553   -0.2020080   -0.1695025
3-6 months     EE             PAKISTAN                       1                    NA                 0.0350141   -0.0330924    0.1031205
3-6 months     EE             PAKISTAN                       0                    NA                 0.0742059    0.0437213    0.1046905
3-6 months     GMS-Nepal      NEPAL                          1                    NA                -0.1507034   -0.1875359   -0.1138709
3-6 months     GMS-Nepal      NEPAL                          0                    NA                -0.1628315   -0.1847550   -0.1409079
3-6 months     MAL-ED         BANGLADESH                     1                    NA                -0.0228823   -0.0547613    0.0089968
3-6 months     MAL-ED         BANGLADESH                     0                    NA                -0.0233403   -0.0579470    0.0112663
3-6 months     MAL-ED         BRAZIL                         1                    NA                 0.0885075    0.0361252    0.1408898
3-6 months     MAL-ED         BRAZIL                         0                    NA                 0.0355350   -0.0148393    0.0859094
3-6 months     MAL-ED         INDIA                          1                    NA                -0.0287626   -0.0648322    0.0073070
3-6 months     MAL-ED         INDIA                          0                    NA                -0.0467610   -0.0966454    0.0031235
3-6 months     MAL-ED         NEPAL                          1                    NA                -0.0380815   -0.0764997    0.0003367
3-6 months     MAL-ED         NEPAL                          0                    NA                -0.0127503   -0.0489481    0.0234475
3-6 months     MAL-ED         PERU                           1                    NA                 0.0128206   -0.0245136    0.0501549
3-6 months     MAL-ED         PERU                           0                    NA                 0.0635719    0.0085832    0.1185605
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.0296985   -0.0793358    0.0199389
3-6 months     MAL-ED         SOUTH AFRICA                   0                    NA                 0.0324471   -0.0250275    0.0899218
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0796951   -0.1148153   -0.0445750
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0263555   -0.1050968    0.0523858
3-6 months     NIH-Crypto     BANGLADESH                     1                    NA                 0.0138923   -0.0037047    0.0314893
3-6 months     NIH-Crypto     BANGLADESH                     0                    NA                 0.1101590    0.0603445    0.1599735
3-6 months     SAS-CompFeed   INDIA                          1                    NA                -0.0640420   -0.1286650    0.0005811
3-6 months     SAS-CompFeed   INDIA                          0                    NA                -0.0126576   -0.0306532    0.0053380
3-6 months     ZVITAMBO       ZIMBABWE                       1                    NA                -0.0052299   -0.0182998    0.0078399
3-6 months     ZVITAMBO       ZIMBABWE                       0                    NA                 0.0071812   -0.0074587    0.0218210
6-9 months     EE             PAKISTAN                       1                    NA                -0.0925909   -0.1371906   -0.0479912
6-9 months     EE             PAKISTAN                       0                    NA                -0.0841585   -0.1079051   -0.0604119
6-9 months     GMS-Nepal      NEPAL                          1                    NA                -0.0398070   -0.0744389   -0.0051751
6-9 months     GMS-Nepal      NEPAL                          0                    NA                -0.0482220   -0.0704051   -0.0260389
6-9 months     MAL-ED         BANGLADESH                     1                    NA                -0.0688704   -0.0929648   -0.0447759
6-9 months     MAL-ED         BANGLADESH                     0                    NA                -0.0693644   -0.0924373   -0.0462915
6-9 months     MAL-ED         BRAZIL                         1                    NA                 0.0135652   -0.0320730    0.0592033
6-9 months     MAL-ED         BRAZIL                         0                    NA                 0.0047166   -0.0468018    0.0562350
6-9 months     MAL-ED         INDIA                          1                    NA                -0.0926902   -0.1221421   -0.0632383
6-9 months     MAL-ED         INDIA                          0                    NA                -0.0368036   -0.0721198   -0.0014874
6-9 months     MAL-ED         NEPAL                          1                    NA                -0.0388541   -0.0664819   -0.0112264
6-9 months     MAL-ED         NEPAL                          0                    NA                -0.0315375   -0.0579917   -0.0050832
6-9 months     MAL-ED         PERU                           1                    NA                -0.0322923   -0.0603486   -0.0042360
6-9 months     MAL-ED         PERU                           0                    NA                -0.0370664   -0.0841989    0.0100660
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.0355213   -0.0702870   -0.0007556
6-9 months     MAL-ED         SOUTH AFRICA                   0                    NA                 0.0049957   -0.0434685    0.0534600
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0936375   -0.1311827   -0.0560923
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0922531   -0.1631325   -0.0213738
6-9 months     NIH-Crypto     BANGLADESH                     1                    NA                -0.0323635   -0.0458517   -0.0188753
6-9 months     NIH-Crypto     BANGLADESH                     0                    NA                -0.0249676   -0.0630510    0.0131157
6-9 months     SAS-CompFeed   INDIA                          1                    NA                -0.0944999   -0.1495422   -0.0394576
6-9 months     SAS-CompFeed   INDIA                          0                    NA                -0.0812981   -0.0916230   -0.0709731
6-9 months     ZVITAMBO       ZIMBABWE                       1                    NA                -0.0312577   -0.0431457   -0.0193697
6-9 months     ZVITAMBO       ZIMBABWE                       0                    NA                -0.0327275   -0.0458439   -0.0196112
9-12 months    EE             PAKISTAN                       1                    NA                -0.1058098   -0.1384878   -0.0731317
9-12 months    EE             PAKISTAN                       0                    NA                -0.1033052   -0.1200959   -0.0865145
9-12 months    GMS-Nepal      NEPAL                          1                    NA                -0.0949698   -0.1242717   -0.0656679
9-12 months    GMS-Nepal      NEPAL                          0                    NA                -0.0754961   -0.0920959   -0.0588964
9-12 months    MAL-ED         BANGLADESH                     1                    NA                -0.1005590   -0.1210909   -0.0800271
9-12 months    MAL-ED         BANGLADESH                     0                    NA                -0.0668339   -0.0927044   -0.0409633
9-12 months    MAL-ED         BRAZIL                         1                    NA                 0.0127251   -0.0262552    0.0517055
9-12 months    MAL-ED         BRAZIL                         0                    NA                 0.0043245   -0.0420400    0.0506890
9-12 months    MAL-ED         INDIA                          1                    NA                -0.0909091   -0.1111672   -0.0706511
9-12 months    MAL-ED         INDIA                          0                    NA                -0.0917254   -0.1170413   -0.0664094
9-12 months    MAL-ED         NEPAL                          1                    NA                -0.0560011   -0.0811064   -0.0308958
9-12 months    MAL-ED         NEPAL                          0                    NA                -0.0667596   -0.0894644   -0.0440549
9-12 months    MAL-ED         PERU                           1                    NA                -0.0399758   -0.0649585   -0.0149932
9-12 months    MAL-ED         PERU                           0                    NA                -0.0473679   -0.0892525   -0.0054833
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.0679912   -0.0997789   -0.0362035
9-12 months    MAL-ED         SOUTH AFRICA                   0                    NA                -0.1090721   -0.1571339   -0.0610103
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1538938   -0.1914542   -0.1163334
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1605658   -0.2358317   -0.0852999
9-12 months    NIH-Crypto     BANGLADESH                     1                    NA                -0.0320950   -0.0439576   -0.0202323
9-12 months    NIH-Crypto     BANGLADESH                     0                    NA                -0.0479020   -0.0759570   -0.0198469
9-12 months    SAS-CompFeed   INDIA                          1                    NA                -0.0845608   -0.1300051   -0.0391165
9-12 months    SAS-CompFeed   INDIA                          0                    NA                -0.0809234   -0.0978738   -0.0639729
9-12 months    ZVITAMBO       ZIMBABWE                       1                    NA                -0.0648841   -0.0759247   -0.0538435
9-12 months    ZVITAMBO       ZIMBABWE                       0                    NA                -0.0533942   -0.0645201   -0.0422683
12-15 months   EE             PAKISTAN                       1                    NA                 0.0055878   -0.0219154    0.0330909
12-15 months   EE             PAKISTAN                       0                    NA                -0.0019355   -0.0168482    0.0129772
12-15 months   GMS-Nepal      NEPAL                          1                    NA                -0.0580752   -0.0765366   -0.0396138
12-15 months   GMS-Nepal      NEPAL                          0                    NA                -0.0721380   -0.0866710   -0.0576051
12-15 months   MAL-ED         BANGLADESH                     1                    NA                -0.0649811   -0.0856772   -0.0442849
12-15 months   MAL-ED         BANGLADESH                     0                    NA                -0.0420924   -0.0654053   -0.0187795
12-15 months   MAL-ED         BRAZIL                         1                    NA                 0.0030569   -0.0306420    0.0367557
12-15 months   MAL-ED         BRAZIL                         0                    NA                -0.0083960   -0.0387198    0.0219278
12-15 months   MAL-ED         INDIA                          1                    NA                -0.0552616   -0.0746626   -0.0358607
12-15 months   MAL-ED         INDIA                          0                    NA                -0.0583927   -0.0829187   -0.0338666
12-15 months   MAL-ED         NEPAL                          1                    NA                -0.0552365   -0.0777156   -0.0327573
12-15 months   MAL-ED         NEPAL                          0                    NA                -0.0590161   -0.0800486   -0.0379836
12-15 months   MAL-ED         PERU                           1                    NA                -0.0762191   -0.0957046   -0.0567337
12-15 months   MAL-ED         PERU                           0                    NA                -0.0363180   -0.0753781    0.0027421
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0544312   -0.0819000   -0.0269624
12-15 months   MAL-ED         SOUTH AFRICA                   0                    NA                -0.0657098   -0.1064156   -0.0250039
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0703016   -0.0976801   -0.0429232
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0643672   -0.1265077   -0.0022266
12-15 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.0381241   -0.0483577   -0.0278904
12-15 months   NIH-Crypto     BANGLADESH                     0                    NA                -0.0395639   -0.0648021   -0.0143257
12-15 months   SAS-CompFeed   INDIA                          1                    NA                -0.1041656   -0.1827409   -0.0255903
12-15 months   SAS-CompFeed   INDIA                          0                    NA                -0.0832336   -0.0948394   -0.0716279
12-15 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0709805   -0.0868846   -0.0550765
12-15 months   ZVITAMBO       ZIMBABWE                       0                    NA                -0.0560458   -0.0726525   -0.0394390
15-18 months   EE             PAKISTAN                       1                    NA                -0.0348831   -0.0555231   -0.0142431
15-18 months   EE             PAKISTAN                       0                    NA                -0.0210811   -0.0343947   -0.0077675
15-18 months   GMS-Nepal      NEPAL                          1                    NA                -0.0610371   -0.0817789   -0.0402954
15-18 months   GMS-Nepal      NEPAL                          0                    NA                -0.0737020   -0.0908398   -0.0565641
15-18 months   MAL-ED         BANGLADESH                     1                    NA                -0.0474606   -0.0659353   -0.0289860
15-18 months   MAL-ED         BANGLADESH                     0                    NA                -0.0428999   -0.0621924   -0.0236074
15-18 months   MAL-ED         BRAZIL                         1                    NA                -0.0116658   -0.0429761    0.0196444
15-18 months   MAL-ED         BRAZIL                         0                    NA                -0.0285366   -0.0568277   -0.0002455
15-18 months   MAL-ED         INDIA                          1                    NA                -0.0327626   -0.0491632   -0.0163619
15-18 months   MAL-ED         INDIA                          0                    NA                -0.0457784   -0.0662715   -0.0252853
15-18 months   MAL-ED         NEPAL                          1                    NA                -0.0436708   -0.0676760   -0.0196656
15-18 months   MAL-ED         NEPAL                          0                    NA                -0.0630411   -0.0822124   -0.0438697
15-18 months   MAL-ED         PERU                           1                    NA                -0.0363094   -0.0548597   -0.0177591
15-18 months   MAL-ED         PERU                           0                    NA                -0.0353964   -0.0633852   -0.0074075
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0317674   -0.0570942   -0.0064406
15-18 months   MAL-ED         SOUTH AFRICA                   0                    NA                -0.0188862   -0.0477877    0.0100152
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0871950   -0.1112747   -0.0631154
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0766106   -0.1363170   -0.0169042
15-18 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.0183096   -0.0274073   -0.0092118
15-18 months   NIH-Crypto     BANGLADESH                     0                    NA                -0.0084614   -0.0292266    0.0123038
15-18 months   SAS-CompFeed   INDIA                          1                    NA                 0.0089895   -0.0331762    0.0511552
15-18 months   SAS-CompFeed   INDIA                          0                    NA                -0.0133980   -0.0245947   -0.0022013
15-18 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0664785   -0.0823908   -0.0505661
15-18 months   ZVITAMBO       ZIMBABWE                       0                    NA                -0.0580377   -0.0757401   -0.0403353
18-21 months   EE             PAKISTAN                       1                    NA                -0.0326333   -0.0547727   -0.0104939
18-21 months   EE             PAKISTAN                       0                    NA                -0.0352008   -0.0484820   -0.0219196
18-21 months   GMS-Nepal      NEPAL                          1                    NA                -0.0014060   -0.0271647    0.0243528
18-21 months   GMS-Nepal      NEPAL                          0                    NA                 0.0241513    0.0099677    0.0383349
18-21 months   MAL-ED         BANGLADESH                     1                    NA                -0.0111474   -0.0271923    0.0048976
18-21 months   MAL-ED         BANGLADESH                     0                    NA                -0.0210259   -0.0372032   -0.0048487
18-21 months   MAL-ED         BRAZIL                         1                    NA                -0.0001029   -0.0408944    0.0406885
18-21 months   MAL-ED         BRAZIL                         0                    NA                -0.0389852   -0.0669529   -0.0110175
18-21 months   MAL-ED         INDIA                          1                    NA                 0.0049025   -0.0089749    0.0187799
18-21 months   MAL-ED         INDIA                          0                    NA                 0.0070434   -0.0124424    0.0265292
18-21 months   MAL-ED         NEPAL                          1                    NA                -0.0354087   -0.0559878   -0.0148296
18-21 months   MAL-ED         NEPAL                          0                    NA                -0.0228490   -0.0395951   -0.0061028
18-21 months   MAL-ED         PERU                           1                    NA                -0.0033037   -0.0192999    0.0126926
18-21 months   MAL-ED         PERU                           0                    NA                -0.0209711   -0.0568927    0.0149505
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0406031   -0.0627840   -0.0184222
18-21 months   MAL-ED         SOUTH AFRICA                   0                    NA                -0.0188550   -0.0542218    0.0165118
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0216572   -0.0461897    0.0028753
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0647342   -0.1263149   -0.0031535
18-21 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.0296624   -0.0384491   -0.0208756
18-21 months   NIH-Crypto     BANGLADESH                     0                    NA                -0.0176529   -0.0369981    0.0016922
18-21 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0624555   -0.0802038   -0.0447071
18-21 months   ZVITAMBO       ZIMBABWE                       0                    NA                -0.0841526   -0.1022879   -0.0660173
21-24 months   EE             PAKISTAN                       1                    NA                -0.0016851   -0.0261531    0.0227829
21-24 months   EE             PAKISTAN                       0                    NA                -0.0064146   -0.0210979    0.0082686
21-24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0651724    0.0338107    0.0965342
21-24 months   GMS-Nepal      NEPAL                          0                    NA                 0.0425236    0.0235537    0.0614935
21-24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0229954    0.0069438    0.0390470
21-24 months   MAL-ED         BANGLADESH                     0                    NA                 0.0318659    0.0136658    0.0500660
21-24 months   MAL-ED         BRAZIL                         1                    NA                -0.0002589   -0.0257947    0.0252768
21-24 months   MAL-ED         BRAZIL                         0                    NA                 0.0311397    0.0116298    0.0506496
21-24 months   MAL-ED         INDIA                          1                    NA                 0.0280356    0.0147976    0.0412737
21-24 months   MAL-ED         INDIA                          0                    NA                 0.0322956    0.0136328    0.0509584
21-24 months   MAL-ED         NEPAL                          1                    NA                 0.0259570    0.0020752    0.0498388
21-24 months   MAL-ED         NEPAL                          0                    NA                -0.0090355   -0.0247422    0.0066712
21-24 months   MAL-ED         PERU                           1                    NA                 0.0537545    0.0352859    0.0722232
21-24 months   MAL-ED         PERU                           0                    NA                 0.0659256    0.0393677    0.0924834
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0465858    0.0255430    0.0676287
21-24 months   MAL-ED         SOUTH AFRICA                   0                    NA                 0.0390115    0.0106481    0.0673748
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0067330   -0.0172985    0.0307646
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0197564   -0.0302522    0.0697651
21-24 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0585543    0.0494706    0.0676380
21-24 months   NIH-Crypto     BANGLADESH                     0                    NA                 0.0600516    0.0416229    0.0784804
21-24 months   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0084256   -0.0079345    0.0247858
21-24 months   ZVITAMBO       ZIMBABWE                       0                    NA                 0.0254937    0.0044952    0.0464921


### Parameter: E(Y)


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     EE             PAKISTAN                       NA                   NA                -0.2168533   -0.2604590   -0.1732477
0-3 months     GMS-Nepal      NEPAL                          NA                   NA                -0.0317949   -0.0581322   -0.0054576
0-3 months     MAL-ED         BANGLADESH                     NA                   NA                -0.1205719   -0.1542907   -0.0868531
0-3 months     MAL-ED         BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     MAL-ED         INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     MAL-ED         NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     MAL-ED         PERU                           NA                   NA                -0.2628007   -0.2968934   -0.2287079
0-3 months     MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1798454   -0.2290406   -0.1306502
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     NIH-Crypto     BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     SAS-CompFeed   INDIA                          NA                   NA                -0.1273566   -0.1543372   -0.1003761
0-3 months     ZVITAMBO       ZIMBABWE                       NA                   NA                -0.1412023   -0.1521143   -0.1302904
3-6 months     EE             PAKISTAN                       NA                   NA                 0.0671456    0.0392459    0.0950453
3-6 months     GMS-Nepal      NEPAL                          NA                   NA                -0.1591815   -0.1781032   -0.1402599
3-6 months     MAL-ED         BANGLADESH                     NA                   NA                -0.0230615   -0.0467241    0.0006011
3-6 months     MAL-ED         BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     MAL-ED         INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     MAL-ED         NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     MAL-ED         PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0063939   -0.0443613    0.0315736
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     NIH-Crypto     BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     SAS-CompFeed   INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ZVITAMBO       ZIMBABWE                       NA                   NA                 0.0004960   -0.0092614    0.0102534
6-9 months     EE             PAKISTAN                       NA                   NA                -0.0857021   -0.1067530   -0.0646512
6-9 months     GMS-Nepal      NEPAL                          NA                   NA                -0.0457287   -0.0644131   -0.0270443
6-9 months     MAL-ED         BANGLADESH                     NA                   NA                -0.0690631   -0.0862955   -0.0518308
6-9 months     MAL-ED         BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     MAL-ED         INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     MAL-ED         NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     MAL-ED         PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0196358   -0.0481734    0.0089019
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     NIH-Crypto     BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     SAS-CompFeed   INDIA                          NA                   NA                -0.0823482   -0.0898643   -0.0748321
6-9 months     ZVITAMBO       ZIMBABWE                       NA                   NA                -0.0319359   -0.0407462   -0.0231255
9-12 months    EE             PAKISTAN                       NA                   NA                -0.1037570   -0.1187285   -0.0887854
9-12 months    GMS-Nepal      NEPAL                          NA                   NA                -0.0811779   -0.0957386   -0.0666171
9-12 months    MAL-ED         BANGLADESH                     NA                   NA                -0.0874604   -0.1036871   -0.0712337
9-12 months    MAL-ED         BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    MAL-ED         INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    MAL-ED         NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    MAL-ED         PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0844236   -0.1116292   -0.0572179
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    NIH-Crypto     BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    SAS-CompFeed   INDIA                          NA                   NA                -0.0811963   -0.0946758   -0.0677169
9-12 months    ZVITAMBO       ZIMBABWE                       NA                   NA                -0.0595243   -0.0673765   -0.0516722
12-15 months   EE             PAKISTAN                       NA                   NA                -0.0005298   -0.0137044    0.0126448
12-15 months   GMS-Nepal      NEPAL                          NA                   NA                -0.0680116   -0.0796374   -0.0563858
12-15 months   MAL-ED         BANGLADESH                     NA                   NA                -0.0558690   -0.0714769   -0.0402611
12-15 months   MAL-ED         BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   MAL-ED         INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   MAL-ED         NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   MAL-ED         PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0588925   -0.0820323   -0.0357527
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   NIH-Crypto     BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   SAS-CompFeed   INDIA                          NA                   NA                -0.0847390   -0.0988912   -0.0705868
12-15 months   ZVITAMBO       ZIMBABWE                       NA                   NA                -0.0637488   -0.0752400   -0.0522576
15-18 months   EE             PAKISTAN                       NA                   NA                -0.0237393   -0.0352187   -0.0122599
15-18 months   GMS-Nepal      NEPAL                          NA                   NA                -0.0698764   -0.0833902   -0.0563627
15-18 months   MAL-ED         BANGLADESH                     NA                   NA                -0.0456666   -0.0592050   -0.0321282
15-18 months   MAL-ED         BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   MAL-ED         INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   MAL-ED         NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   MAL-ED         PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0266033   -0.0457128   -0.0074939
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   NIH-Crypto     BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   SAS-CompFeed   INDIA                          NA                   NA                -0.0117156   -0.0214328   -0.0019983
15-18 months   ZVITAMBO       ZIMBABWE                       NA                   NA                -0.0625385   -0.0743837   -0.0506933
18-21 months   EE             PAKISTAN                       NA                   NA                -0.0346625   -0.0461403   -0.0231846
18-21 months   GMS-Nepal      NEPAL                          NA                   NA                 0.0164715    0.0038362    0.0291068
18-21 months   MAL-ED         BANGLADESH                     NA                   NA                -0.0150418   -0.0266855   -0.0033981
18-21 months   MAL-ED         BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   MAL-ED         INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   MAL-ED         NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   MAL-ED         PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0320929   -0.0514760   -0.0127099
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   NIH-Crypto     BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ZVITAMBO       ZIMBABWE                       NA                   NA                -0.0727232   -0.0854271   -0.0600192
21-24 months   EE             PAKISTAN                       NA                   NA                -0.0054503   -0.0181653    0.0072646
21-24 months   GMS-Nepal      NEPAL                          NA                   NA                 0.0496459    0.0332837    0.0660081
21-24 months   MAL-ED         BANGLADESH                     NA                   NA                 0.0264403    0.0143283    0.0385522
21-24 months   MAL-ED         BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   MAL-ED         INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   MAL-ED         NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   MAL-ED         PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                 0.0436475    0.0267011    0.0605939
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   NIH-Crypto     BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ZVITAMBO       ZIMBABWE                       NA                   NA                 0.0164988    0.0033358    0.0296618


### Parameter: ATE


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     EE             PAKISTAN                       0                    1                  0.0577403   -0.0393257    0.1548062
0-3 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal      NEPAL                          0                    1                 -0.0232800   -0.0770690    0.0305090
0-3 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH                     0                    1                  0.0456285   -0.0259495    0.1172065
0-3 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL                         0                    1                  0.0164909   -0.0987270    0.1317089
0-3 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         INDIA                          0                    1                  0.0187950   -0.0805161    0.1181062
0-3 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         NEPAL                          0                    1                  0.0905310    0.0023472    0.1787148
0-3 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         PERU                           0                    1                  0.0645403   -0.0225710    0.1516515
0-3 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.0200338   -0.0794344    0.1195019
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0560316   -0.1751491    0.0630858
0-3 months     NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto     BANGLADESH                     0                    1                 -0.0247972   -0.0767446    0.0271502
0-3 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA                          0                    1                  0.0124924   -0.0608264    0.0858113
0-3 months     ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO       ZIMBABWE                       0                    1                 -0.0835545   -0.1053993   -0.0617097
3-6 months     EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     EE             PAKISTAN                       0                    1                  0.0391918   -0.0354259    0.1138095
3-6 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL                          0                    1                 -0.0121281   -0.0549915    0.0307354
3-6 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH                     0                    1                 -0.0004581   -0.0475101    0.0465939
3-6 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL                         0                    1                 -0.0529725   -0.1256463    0.0197013
3-6 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         INDIA                          0                    1                 -0.0179984   -0.0795571    0.0435604
3-6 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         NEPAL                          0                    1                  0.0253312   -0.0274536    0.0781160
3-6 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU                           0                    1                  0.0507512   -0.0157138    0.1172162
3-6 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.0621456   -0.0137965    0.1380877
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0533396   -0.0328788    0.1395581
3-6 months     NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto     BANGLADESH                     0                    1                  0.0962667    0.0434355    0.1490979
3-6 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA                          0                    1                  0.0513844   -0.0127665    0.1155353
3-6 months     ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO       ZIMBABWE                       0                    1                  0.0124111   -0.0072140    0.0320362
6-9 months     EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     EE             PAKISTAN                       0                    1                  0.0084323   -0.0420952    0.0589599
6-9 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL                          0                    1                 -0.0084150   -0.0495423    0.0327123
6-9 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH                     0                    1                 -0.0004940   -0.0338542    0.0328662
6-9 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL                         0                    1                 -0.0088485   -0.0776743    0.0599772
6-9 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         INDIA                          0                    1                  0.0558866    0.0099013    0.1018719
6-9 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL                          0                    1                  0.0073167   -0.0309341    0.0455674
6-9 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU                           0                    1                 -0.0047741   -0.0596250    0.0500768
6-9 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.0405171   -0.0191272    0.1001614
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0013844   -0.0788249    0.0815936
6-9 months     NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto     BANGLADESH                     0                    1                  0.0073959   -0.0330055    0.0477973
6-9 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA                          0                    1                  0.0132018   -0.0488409    0.0752445
6-9 months     ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO       ZIMBABWE                       0                    1                 -0.0014699   -0.0191719    0.0162322
9-12 months    EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    EE             PAKISTAN                       0                    1                  0.0025046   -0.0342348    0.0392439
9-12 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL                          0                    1                  0.0194737   -0.0142035    0.0531509
9-12 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH                     0                    1                  0.0337251    0.0006972    0.0667530
9-12 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL                         0                    1                 -0.0084006   -0.0689740    0.0521727
9-12 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         INDIA                          0                    1                 -0.0008162   -0.0332398    0.0316073
9-12 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         NEPAL                          0                    1                 -0.0107585   -0.0446079    0.0230909
9-12 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU                           0                    1                 -0.0073921   -0.0561615    0.0413773
9-12 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         SOUTH AFRICA                   0                    1                 -0.0410809   -0.0987037    0.0165419
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0066720   -0.0907894    0.0774454
9-12 months    NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto     BANGLADESH                     0                    1                 -0.0158070   -0.0462670    0.0146529
9-12 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA                          0                    1                  0.0036374   -0.0548340    0.0621089
9-12 months    ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO       ZIMBABWE                       0                    1                  0.0114899   -0.0041843    0.0271641
12-15 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   EE             PAKISTAN                       0                    1                 -0.0075233   -0.0388092    0.0237627
12-15 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL                          0                    1                 -0.0140628   -0.0375582    0.0094325
12-15 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH                     0                    1                  0.0228886   -0.0082854    0.0540627
12-15 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL                         0                    1                 -0.0114528   -0.0567865    0.0338809
12-15 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         INDIA                          0                    1                 -0.0031310   -0.0344028    0.0281408
12-15 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         NEPAL                          0                    1                 -0.0037796   -0.0345640    0.0270048
12-15 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         PERU                           0                    1                  0.0399011   -0.0037495    0.0835517
12-15 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.0112785   -0.0603856    0.0378285
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0059345   -0.0619701    0.0738390
12-15 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto     BANGLADESH                     0                    1                 -0.0014398   -0.0286739    0.0257942
12-15 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA                          0                    1                  0.0209320   -0.0515902    0.0934542
12-15 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO       ZIMBABWE                       0                    1                  0.0149348   -0.0080592    0.0379287
15-18 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   EE             PAKISTAN                       0                    1                  0.0138020   -0.0107594    0.0383634
15-18 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL                          0                    1                 -0.0126649   -0.0395707    0.0142410
15-18 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH                     0                    1                  0.0045607   -0.0221509    0.0312724
15-18 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL                         0                    1                 -0.0168708   -0.0590693    0.0253278
15-18 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         INDIA                          0                    1                 -0.0130158   -0.0392637    0.0132320
15-18 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL                          0                    1                 -0.0193703   -0.0500914    0.0113508
15-18 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         PERU                           0                    1                  0.0009131   -0.0326651    0.0344912
15-18 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0128812   -0.0255472    0.0513096
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0105844   -0.0537948    0.0749636
15-18 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto     BANGLADESH                     0                    1                  0.0098482   -0.0128226    0.0325190
15-18 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed   INDIA                          0                    1                 -0.0223875   -0.0675809    0.0228059
15-18 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO       ZIMBABWE                       0                    1                  0.0084408   -0.0153621    0.0322436
18-21 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   EE             PAKISTAN                       0                    1                 -0.0025675   -0.0283850    0.0232500
18-21 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal      NEPAL                          0                    1                  0.0255573   -0.0038483    0.0549628
18-21 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BANGLADESH                     0                    1                 -0.0098786   -0.0326633    0.0129062
18-21 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL                         0                    1                 -0.0388823   -0.0883407    0.0105762
18-21 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         INDIA                          0                    1                  0.0021409   -0.0217814    0.0260632
18-21 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL                          0                    1                  0.0125597   -0.0139720    0.0390915
18-21 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         PERU                           0                    1                 -0.0176674   -0.0569896    0.0216548
18-21 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0217481   -0.0199988    0.0634950
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0430769   -0.1093644    0.0232105
18-21 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto     BANGLADESH                     0                    1                  0.0120094   -0.0092377    0.0332566
18-21 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO       ZIMBABWE                       0                    1                 -0.0216972   -0.0470722    0.0036779
21-24 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   EE             PAKISTAN                       0                    1                 -0.0047295   -0.0332651    0.0238061
21-24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL                          0                    1                 -0.0226488   -0.0593015    0.0140038
21-24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH                     0                    1                  0.0088705   -0.0153967    0.0331377
21-24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL                         0                    1                  0.0313987   -0.0007372    0.0635345
21-24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         INDIA                          0                    1                  0.0042600   -0.0186212    0.0271411
21-24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL                          0                    1                 -0.0349925   -0.0635765   -0.0064086
21-24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         PERU                           0                    1                  0.0121711   -0.0201772    0.0445193
21-24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.0075744   -0.0428913    0.0277425
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0130234   -0.0424598    0.0685066
21-24 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto     BANGLADESH                     0                    1                  0.0014974   -0.0190485    0.0220432
21-24 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO       ZIMBABWE                       0                    1                  0.0170680   -0.0095513    0.0436874


### Parameter: PAR


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     EE             PAKISTAN                       1                    NA                 0.0469385   -0.0320109    0.1258879
0-3 months     GMS-Nepal      NEPAL                          1                    NA                -0.0162758   -0.0538942    0.0213425
0-3 months     MAL-ED         BANGLADESH                     1                    NA                 0.0171578   -0.0099021    0.0442178
0-3 months     MAL-ED         BRAZIL                         1                    NA                 0.0090308   -0.0540771    0.0721386
0-3 months     MAL-ED         INDIA                          1                    NA                 0.0074975   -0.0321410    0.0471359
0-3 months     MAL-ED         NEPAL                          1                    NA                 0.0499081    0.0007799    0.0990363
0-3 months     MAL-ED         PERU                           1                    NA                 0.0158306   -0.0057972    0.0374585
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.0071274   -0.0282844    0.0425392
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0078641   -0.0247730    0.0090448
0-3 months     NIH-Crypto     BANGLADESH                     1                    NA                -0.0033705   -0.0104585    0.0037176
0-3 months     SAS-CompFeed   INDIA                          1                    NA                 0.0115711   -0.0567973    0.0799395
0-3 months     ZVITAMBO       ZIMBABWE                       1                    NA                -0.0390015   -0.0492444   -0.0287587
3-6 months     EE             PAKISTAN                       1                    NA                 0.0321315   -0.0290703    0.0933333
3-6 months     GMS-Nepal      NEPAL                          1                    NA                -0.0084782   -0.0384466    0.0214903
3-6 months     MAL-ED         BANGLADESH                     1                    NA                -0.0001792   -0.0185909    0.0182324
3-6 months     MAL-ED         BRAZIL                         1                    NA                -0.0287783   -0.0684230    0.0108664
3-6 months     MAL-ED         INDIA                          1                    NA                -0.0072776   -0.0321950    0.0176398
3-6 months     MAL-ED         NEPAL                          1                    NA                 0.0150030   -0.0163011    0.0463072
3-6 months     MAL-ED         PERU                           1                    NA                 0.0129254   -0.0042093    0.0300601
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.0233046   -0.0054280    0.0520372
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0091503   -0.0058593    0.0241599
3-6 months     NIH-Crypto     BANGLADESH                     1                    NA                 0.0128817    0.0054035    0.0203599
3-6 months     SAS-CompFeed   INDIA                          1                    NA                 0.0474071   -0.0118615    0.1066757
3-6 months     ZVITAMBO       ZIMBABWE                       1                    NA                 0.0057259   -0.0033297    0.0147816
6-9 months     EE             PAKISTAN                       1                    NA                 0.0068888   -0.0343913    0.0481689
6-9 months     GMS-Nepal      NEPAL                          1                    NA                -0.0059217   -0.0348654    0.0230220
6-9 months     MAL-ED         BANGLADESH                     1                    NA                -0.0001927   -0.0132077    0.0128223
6-9 months     MAL-ED         BRAZIL                         1                    NA                -0.0047818   -0.0419806    0.0324170
6-9 months     MAL-ED         INDIA                          1                    NA                 0.0223546    0.0036218    0.0410874
6-9 months     MAL-ED         NEPAL                          1                    NA                 0.0042946   -0.0181618    0.0267509
6-9 months     MAL-ED         PERU                           1                    NA                -0.0012861   -0.0160646    0.0134925
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.0158855   -0.0076410    0.0394121
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0002276   -0.0129625    0.0134178
6-9 months     NIH-Crypto     BANGLADESH                     1                    NA                 0.0009997   -0.0044648    0.0064642
6-9 months     SAS-CompFeed   INDIA                          1                    NA                 0.0121517   -0.0451019    0.0694052
6-9 months     ZVITAMBO       ZIMBABWE                       1                    NA                -0.0006782   -0.0088458    0.0074894
9-12 months    EE             PAKISTAN                       1                    NA                 0.0020528   -0.0280597    0.0321653
9-12 months    GMS-Nepal      NEPAL                          1                    NA                 0.0137920   -0.0100743    0.0376582
9-12 months    MAL-ED         BANGLADESH                     1                    NA                 0.0130986    0.0000906    0.0261065
9-12 months    MAL-ED         BRAZIL                         1                    NA                -0.0045467   -0.0373366    0.0282431
9-12 months    MAL-ED         INDIA                          1                    NA                -0.0003308   -0.0134717    0.0128101
9-12 months    MAL-ED         NEPAL                          1                    NA                -0.0062954   -0.0261144    0.0135236
9-12 months    MAL-ED         PERU                           1                    NA                -0.0019503   -0.0148238    0.0109233
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.0164324   -0.0396284    0.0067637
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0010723   -0.0145950    0.0124504
9-12 months    NIH-Crypto     BANGLADESH                     1                    NA                -0.0022045   -0.0064728    0.0020637
9-12 months    SAS-CompFeed   INDIA                          1                    NA                 0.0033645   -0.0506241    0.0573530
9-12 months    ZVITAMBO       ZIMBABWE                       1                    NA                 0.0053598   -0.0019535    0.0126731
12-15 months   EE             PAKISTAN                       1                    NA                -0.0061175   -0.0315599    0.0193249
12-15 months   GMS-Nepal      NEPAL                          1                    NA                -0.0099364   -0.0265488    0.0066759
12-15 months   MAL-ED         BANGLADESH                     1                    NA                 0.0091121   -0.0033906    0.0216148
12-15 months   MAL-ED         BRAZIL                         1                    NA                -0.0060999   -0.0302592    0.0180594
12-15 months   MAL-ED         INDIA                          1                    NA                -0.0012607   -0.0138541    0.0113326
12-15 months   MAL-ED         NEPAL                          1                    NA                -0.0022185   -0.0202892    0.0158522
12-15 months   MAL-ED         PERU                           1                    NA                 0.0108659   -0.0012475    0.0229794
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0044613   -0.0238993    0.0149767
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0009453   -0.0098751    0.0117657
12-15 months   NIH-Crypto     BANGLADESH                     1                    NA                -0.0002072   -0.0041275    0.0037130
12-15 months   SAS-CompFeed   INDIA                          1                    NA                 0.0194266   -0.0481846    0.0870377
12-15 months   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0072317   -0.0039068    0.0183702
15-18 months   EE             PAKISTAN                       1                    NA                 0.0111438   -0.0086979    0.0309855
15-18 months   GMS-Nepal      NEPAL                          1                    NA                -0.0088393   -0.0276260    0.0099473
15-18 months   MAL-ED         BANGLADESH                     1                    NA                 0.0017940   -0.0087177    0.0123058
15-18 months   MAL-ED         BRAZIL                         1                    NA                -0.0086764   -0.0304146    0.0130618
15-18 months   MAL-ED         INDIA                          1                    NA                -0.0052409   -0.0158426    0.0053608
15-18 months   MAL-ED         NEPAL                          1                    NA                -0.0112638   -0.0291714    0.0066439
15-18 months   MAL-ED         PERU                           1                    NA                 0.0002529   -0.0090482    0.0095541
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0051641   -0.0102644    0.0205925
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0015608   -0.0079461    0.0110677
15-18 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0014022   -0.0018374    0.0046418
15-18 months   SAS-CompFeed   INDIA                          1                    NA                -0.0207051   -0.0629410    0.0215308
15-18 months   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0039400   -0.0071725    0.0150524
18-21 months   EE             PAKISTAN                       1                    NA                -0.0020292   -0.0224337    0.0183754
18-21 months   GMS-Nepal      NEPAL                          1                    NA                 0.0178775   -0.0027235    0.0384785
18-21 months   MAL-ED         BANGLADESH                     1                    NA                -0.0038944   -0.0129009    0.0051120
18-21 months   MAL-ED         BRAZIL                         1                    NA                -0.0202560   -0.0461907    0.0056786
18-21 months   MAL-ED         INDIA                          1                    NA                 0.0008715   -0.0088677    0.0106108
18-21 months   MAL-ED         NEPAL                          1                    NA                 0.0073035   -0.0081458    0.0227527
18-21 months   MAL-ED         PERU                           1                    NA                -0.0048104   -0.0155720    0.0059512
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0085101   -0.0078834    0.0249036
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0065460   -0.0168413    0.0037493
18-21 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0016936   -0.0013232    0.0047105
18-21 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0102677   -0.0222894    0.0017540
21-24 months   EE             PAKISTAN                       1                    NA                -0.0037652   -0.0264859    0.0189555
21-24 months   GMS-Nepal      NEPAL                          1                    NA                -0.0155265   -0.0406799    0.0096268
21-24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0034449   -0.0059979    0.0128876
21-24 months   MAL-ED         BRAZIL                         1                    NA                 0.0167460   -0.0005600    0.0340519
21-24 months   MAL-ED         INDIA                          1                    NA                 0.0017530   -0.0076667    0.0111727
21-24 months   MAL-ED         NEPAL                          1                    NA                -0.0205022   -0.0373997   -0.0036047
21-24 months   MAL-ED         PERU                           1                    NA                 0.0032199   -0.0053722    0.0118119
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0029383   -0.0166471    0.0107704
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0021067   -0.0068927    0.0111062
21-24 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0002078   -0.0026438    0.0030594
21-24 months   ZVITAMBO       ZIMBABWE                       1                    NA                 0.0080732   -0.0045289    0.0206752
