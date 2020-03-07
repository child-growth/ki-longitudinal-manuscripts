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

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid         country                        predfeed36    n_cell      n
-------------  --------------  -----------------------------  -----------  -------  -----
0-3 months     EE              PAKISTAN                       1                  2      6
0-3 months     EE              PAKISTAN                       0                  4      6
0-3 months     GMS-Nepal       NEPAL                          1                372    465
0-3 months     GMS-Nepal       NEPAL                          0                 93    465
0-3 months     JiVitA-3        BANGLADESH                     1               7584   9726
0-3 months     JiVitA-3        BANGLADESH                     0               2142   9726
0-3 months     JiVitA-4        BANGLADESH                     1               1402   1685
0-3 months     JiVitA-4        BANGLADESH                     0                283   1685
0-3 months     MAL-ED          BANGLADESH                     1                 81    242
0-3 months     MAL-ED          BANGLADESH                     0                161    242
0-3 months     MAL-ED          BRAZIL                         1                 19    167
0-3 months     MAL-ED          BRAZIL                         0                148    167
0-3 months     MAL-ED          INDIA                          1                 11    181
0-3 months     MAL-ED          INDIA                          0                170    181
0-3 months     MAL-ED          NEPAL                          1                  8    154
0-3 months     MAL-ED          NEPAL                          0                146    154
0-3 months     MAL-ED          PERU                           1                 69    263
0-3 months     MAL-ED          PERU                           0                194    263
0-3 months     MAL-ED          SOUTH AFRICA                   1                  1    209
0-3 months     MAL-ED          SOUTH AFRICA                   0                208    209
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    223
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                220    223
3-6 months     EE              PAKISTAN                       1                  3      7
3-6 months     EE              PAKISTAN                       0                  4      7
3-6 months     GMS-Nepal       NEPAL                          1                366    460
3-6 months     GMS-Nepal       NEPAL                          0                 94    460
3-6 months     JiVitA-3        BANGLADESH                     1               5078   6591
3-6 months     JiVitA-3        BANGLADESH                     0               1513   6591
3-6 months     JiVitA-4        BANGLADESH                     1               1496   1777
3-6 months     JiVitA-4        BANGLADESH                     0                281   1777
3-6 months     MAL-ED          BANGLADESH                     1                 77    230
3-6 months     MAL-ED          BANGLADESH                     0                153    230
3-6 months     MAL-ED          BRAZIL                         1                 25    208
3-6 months     MAL-ED          BRAZIL                         0                183    208
3-6 months     MAL-ED          INDIA                          1                 17    228
3-6 months     MAL-ED          INDIA                          0                211    228
3-6 months     MAL-ED          NEPAL                          1                  8    232
3-6 months     MAL-ED          NEPAL                          0                224    232
3-6 months     MAL-ED          PERU                           1                 70    267
3-6 months     MAL-ED          PERU                           0                197    267
3-6 months     MAL-ED          SOUTH AFRICA                   1                  3    240
3-6 months     MAL-ED          SOUTH AFRICA                   0                237    240
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    235
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                230    235
6-9 months     EE              PAKISTAN                       1                  4      9
6-9 months     EE              PAKISTAN                       0                  5      9
6-9 months     GMS-Nepal       NEPAL                          1                377    470
6-9 months     GMS-Nepal       NEPAL                          0                 93    470
6-9 months     JiVitA-4        BANGLADESH                     1               2182   2752
6-9 months     JiVitA-4        BANGLADESH                     0                570   2752
6-9 months     LCNI-5          MALAWI                         1                 23    145
6-9 months     LCNI-5          MALAWI                         0                122    145
6-9 months     MAL-ED          BANGLADESH                     1                 73    224
6-9 months     MAL-ED          BANGLADESH                     0                151    224
6-9 months     MAL-ED          BRAZIL                         1                 25    198
6-9 months     MAL-ED          BRAZIL                         0                173    198
6-9 months     MAL-ED          INDIA                          1                 17    228
6-9 months     MAL-ED          INDIA                          0                211    228
6-9 months     MAL-ED          NEPAL                          1                  8    229
6-9 months     MAL-ED          NEPAL                          0                221    229
6-9 months     MAL-ED          PERU                           1                 67    245
6-9 months     MAL-ED          PERU                           0                178    245
6-9 months     MAL-ED          SOUTH AFRICA                   1                  3    228
6-9 months     MAL-ED          SOUTH AFRICA                   0                225    228
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    224
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                219    224
6-9 months     SAS-FoodSuppl   INDIA                          1                  0    142
6-9 months     SAS-FoodSuppl   INDIA                          0                142    142
9-12 months    EE              PAKISTAN                       1                  3      8
9-12 months    EE              PAKISTAN                       0                  5      8
9-12 months    GMS-Nepal       NEPAL                          1                352    434
9-12 months    GMS-Nepal       NEPAL                          0                 82    434
9-12 months    JiVitA-4        BANGLADESH                     1               2368   3039
9-12 months    JiVitA-4        BANGLADESH                     0                671   3039
9-12 months    LCNI-5          MALAWI                         1                 10     32
9-12 months    LCNI-5          MALAWI                         0                 22     32
9-12 months    MAL-ED          BANGLADESH                     1                 75    225
9-12 months    MAL-ED          BANGLADESH                     0                150    225
9-12 months    MAL-ED          BRAZIL                         1                 23    194
9-12 months    MAL-ED          BRAZIL                         0                171    194
9-12 months    MAL-ED          INDIA                          1                 16    224
9-12 months    MAL-ED          INDIA                          0                208    224
9-12 months    MAL-ED          NEPAL                          1                  7    228
9-12 months    MAL-ED          NEPAL                          0                221    228
9-12 months    MAL-ED          PERU                           1                 65    235
9-12 months    MAL-ED          PERU                           0                170    235
9-12 months    MAL-ED          SOUTH AFRICA                   1                  4    230
9-12 months    MAL-ED          SOUTH AFRICA                   0                226    230
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    223
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                219    223
9-12 months    SAS-FoodSuppl   INDIA                          1                  0    144
9-12 months    SAS-FoodSuppl   INDIA                          0                144    144
12-15 months   EE              PAKISTAN                       1                  3      8
12-15 months   EE              PAKISTAN                       0                  5      8
12-15 months   GMS-Nepal       NEPAL                          1                347    433
12-15 months   GMS-Nepal       NEPAL                          0                 86    433
12-15 months   JiVitA-4        BANGLADESH                     1               2361   3039
12-15 months   JiVitA-4        BANGLADESH                     0                678   3039
12-15 months   LCNI-5          MALAWI                         1                  0      1
12-15 months   LCNI-5          MALAWI                         0                  1      1
12-15 months   MAL-ED          BANGLADESH                     1                 69    212
12-15 months   MAL-ED          BANGLADESH                     0                143    212
12-15 months   MAL-ED          BRAZIL                         1                 22    184
12-15 months   MAL-ED          BRAZIL                         0                162    184
12-15 months   MAL-ED          INDIA                          1                 16    223
12-15 months   MAL-ED          INDIA                          0                207    223
12-15 months   MAL-ED          NEPAL                          1                  7    229
12-15 months   MAL-ED          NEPAL                          0                222    229
12-15 months   MAL-ED          PERU                           1                 60    224
12-15 months   MAL-ED          PERU                           0                164    224
12-15 months   MAL-ED          SOUTH AFRICA                   1                  3    225
12-15 months   MAL-ED          SOUTH AFRICA                   0                222    225
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    225
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                221    225
12-15 months   SAS-FoodSuppl   INDIA                          1                  0    137
12-15 months   SAS-FoodSuppl   INDIA                          0                137    137
15-18 months   EE              PAKISTAN                       1                  3      8
15-18 months   EE              PAKISTAN                       0                  5      8
15-18 months   GMS-Nepal       NEPAL                          1                353    441
15-18 months   GMS-Nepal       NEPAL                          0                 88    441
15-18 months   JiVitA-4        BANGLADESH                     1               2371   3039
15-18 months   JiVitA-4        BANGLADESH                     0                668   3039
15-18 months   LCNI-5          MALAWI                         1                  0      4
15-18 months   LCNI-5          MALAWI                         0                  4      4
15-18 months   MAL-ED          BANGLADESH                     1                 70    212
15-18 months   MAL-ED          BANGLADESH                     0                142    212
15-18 months   MAL-ED          BRAZIL                         1                 22    175
15-18 months   MAL-ED          BRAZIL                         0                153    175
15-18 months   MAL-ED          INDIA                          1                 17    224
15-18 months   MAL-ED          INDIA                          0                207    224
15-18 months   MAL-ED          NEPAL                          1                  8    226
15-18 months   MAL-ED          NEPAL                          0                218    226
15-18 months   MAL-ED          PERU                           1                 59    213
15-18 months   MAL-ED          PERU                           0                154    213
15-18 months   MAL-ED          SOUTH AFRICA                   1                  3    224
15-18 months   MAL-ED          SOUTH AFRICA                   0                221    224
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    216
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                212    216
15-18 months   SAS-FoodSuppl   INDIA                          1                  0    129
15-18 months   SAS-FoodSuppl   INDIA                          0                129    129
18-21 months   EE              PAKISTAN                       1                  2      7
18-21 months   EE              PAKISTAN                       0                  5      7
18-21 months   GMS-Nepal       NEPAL                          1                333    411
18-21 months   GMS-Nepal       NEPAL                          0                 78    411
18-21 months   LCNI-5          MALAWI                         1                 29    170
18-21 months   LCNI-5          MALAWI                         0                141    170
18-21 months   MAL-ED          BANGLADESH                     1                 68    209
18-21 months   MAL-ED          BANGLADESH                     0                141    209
18-21 months   MAL-ED          BRAZIL                         1                 20    167
18-21 months   MAL-ED          BRAZIL                         0                147    167
18-21 months   MAL-ED          INDIA                          1                 17    224
18-21 months   MAL-ED          INDIA                          0                207    224
18-21 months   MAL-ED          NEPAL                          1                  8    226
18-21 months   MAL-ED          NEPAL                          0                218    226
18-21 months   MAL-ED          PERU                           1                 53    202
18-21 months   MAL-ED          PERU                           0                149    202
18-21 months   MAL-ED          SOUTH AFRICA                   1                  3    232
18-21 months   MAL-ED          SOUTH AFRICA                   0                229    232
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    203
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                199    203
21-24 months   EE              PAKISTAN                       1                  0      2
21-24 months   EE              PAKISTAN                       0                  2      2
21-24 months   GMS-Nepal       NEPAL                          1                259    315
21-24 months   GMS-Nepal       NEPAL                          0                 56    315
21-24 months   LCNI-5          MALAWI                         1                 25    141
21-24 months   LCNI-5          MALAWI                         0                116    141
21-24 months   MAL-ED          BANGLADESH                     1                 67    207
21-24 months   MAL-ED          BANGLADESH                     0                140    207
21-24 months   MAL-ED          BRAZIL                         1                 20    165
21-24 months   MAL-ED          BRAZIL                         0                145    165
21-24 months   MAL-ED          INDIA                          1                 17    223
21-24 months   MAL-ED          INDIA                          0                206    223
21-24 months   MAL-ED          NEPAL                          1                  8    226
21-24 months   MAL-ED          NEPAL                          0                218    226
21-24 months   MAL-ED          PERU                           1                 48    189
21-24 months   MAL-ED          PERU                           0                141    189
21-24 months   MAL-ED          SOUTH AFRICA                   1                  3    233
21-24 months   MAL-ED          SOUTH AFRICA                   0                230    233
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    203
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                199    203


The following strata were considered:

* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/8e50f749-584f-4b3a-867e-8b67f23d91c2/b116ac44-a0ff-416b-894a-1ce4d908dbd2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8e50f749-584f-4b3a-867e-8b67f23d91c2/b116ac44-a0ff-416b-894a-1ce4d908dbd2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8e50f749-584f-4b3a-867e-8b67f23d91c2/b116ac44-a0ff-416b-894a-1ce4d908dbd2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                3.6253644   3.5675080   3.6832209
0-3 months     GMS-Nepal   NEPAL                          0                    NA                3.5854484   3.4559271   3.7149698
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                3.7031388   3.6887375   3.7175401
0-3 months     JiVitA-3    BANGLADESH                     0                    NA                3.7112419   3.6833347   3.7391492
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                3.6496697   3.6161984   3.6831411
0-3 months     JiVitA-4    BANGLADESH                     0                    NA                3.5159550   3.4311318   3.6007781
0-3 months     MAL-ED      BANGLADESH                     1                    NA                3.2625667   3.1597487   3.3653846
0-3 months     MAL-ED      BANGLADESH                     0                    NA                3.3792835   3.2954697   3.4630972
0-3 months     MAL-ED      BRAZIL                         1                    NA                4.0871286   3.7403101   4.4339471
0-3 months     MAL-ED      BRAZIL                         0                    NA                3.7728038   3.6589657   3.8866418
0-3 months     MAL-ED      INDIA                          1                    NA                3.5185166   2.7845702   4.2524631
0-3 months     MAL-ED      INDIA                          0                    NA                3.3389972   3.2454040   3.4325903
0-3 months     MAL-ED      NEPAL                          1                    NA                3.2566947   3.0041285   3.5092609
0-3 months     MAL-ED      NEPAL                          0                    NA                3.6355630   3.5400307   3.7310953
0-3 months     MAL-ED      PERU                           1                    NA                3.1225747   2.9941209   3.2510285
0-3 months     MAL-ED      PERU                           0                    NA                3.0228865   2.9453083   3.1004648
3-6 months     GMS-Nepal   NEPAL                          1                    NA                1.7180444   1.6744326   1.7616562
3-6 months     GMS-Nepal   NEPAL                          0                    NA                1.6716342   1.5771432   1.7661253
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                1.9107751   1.8944614   1.9270888
3-6 months     JiVitA-3    BANGLADESH                     0                    NA                1.9088939   1.8804454   1.9373424
3-6 months     JiVitA-4    BANGLADESH                     1                    NA                1.8821133   1.8489211   1.9153056
3-6 months     JiVitA-4    BANGLADESH                     0                    NA                1.9610820   1.8853832   2.0367807
3-6 months     MAL-ED      BANGLADESH                     1                    NA                1.9205024   1.8288466   2.0121583
3-6 months     MAL-ED      BANGLADESH                     0                    NA                1.9289220   1.8688940   1.9889500
3-6 months     MAL-ED      BRAZIL                         1                    NA                2.2074793   1.9962551   2.4187035
3-6 months     MAL-ED      BRAZIL                         0                    NA                2.1376939   2.0524805   2.2229073
3-6 months     MAL-ED      INDIA                          1                    NA                1.9212981   1.7352710   2.1073252
3-6 months     MAL-ED      INDIA                          0                    NA                1.8819167   1.8152509   1.9485824
3-6 months     MAL-ED      NEPAL                          1                    NA                1.9686909   1.6865490   2.2508327
3-6 months     MAL-ED      NEPAL                          0                    NA                1.9659877   1.9085533   2.0234221
3-6 months     MAL-ED      PERU                           1                    NA                2.0697886   1.9301510   2.2094262
3-6 months     MAL-ED      PERU                           0                    NA                1.9964565   1.9218611   2.0710519
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                1.6207289   1.4299522   1.8115056
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8334280   1.7636111   1.9032449
6-9 months     GMS-Nepal   NEPAL                          1                    NA                1.3130344   1.2731058   1.3529631
6-9 months     GMS-Nepal   NEPAL                          0                    NA                1.3203276   1.1881506   1.4525046
6-9 months     JiVitA-4    BANGLADESH                     1                    NA                1.3228667   1.2990299   1.3467035
6-9 months     JiVitA-4    BANGLADESH                     0                    NA                1.3341844   1.2875177   1.3808512
6-9 months     LCNI-5      MALAWI                         1                    NA                1.4504298   1.2732863   1.6275734
6-9 months     LCNI-5      MALAWI                         0                    NA                1.4347776   1.3694403   1.5001149
6-9 months     MAL-ED      BANGLADESH                     1                    NA                1.2686623   1.2007290   1.3365957
6-9 months     MAL-ED      BANGLADESH                     0                    NA                1.2380778   1.1892290   1.2869267
6-9 months     MAL-ED      BRAZIL                         1                    NA                1.4681855   1.2699916   1.6663793
6-9 months     MAL-ED      BRAZIL                         0                    NA                1.4852735   1.3977607   1.5727863
6-9 months     MAL-ED      INDIA                          1                    NA                1.1971899   1.0396668   1.3547130
6-9 months     MAL-ED      INDIA                          0                    NA                1.2438107   1.1897290   1.2978924
6-9 months     MAL-ED      NEPAL                          1                    NA                1.2866511   1.0305905   1.5427117
6-9 months     MAL-ED      NEPAL                          0                    NA                1.3614039   1.3165607   1.4062470
6-9 months     MAL-ED      PERU                           1                    NA                1.3148559   1.2004500   1.4292618
6-9 months     MAL-ED      PERU                           0                    NA                1.3219315   1.2607886   1.3830744
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                1.4020878   1.0872084   1.7169673
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1882113   1.1086903   1.2677324
9-12 months    GMS-Nepal   NEPAL                          1                    NA                0.9954710   0.9614953   1.0294466
9-12 months    GMS-Nepal   NEPAL                          0                    NA                1.0110540   0.9026203   1.1194877
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                1.0696797   1.0472536   1.0921057
9-12 months    JiVitA-4    BANGLADESH                     0                    NA                1.0677654   1.0276595   1.1078714
9-12 months    LCNI-5      MALAWI                         1                    NA                1.1282752   0.9389981   1.3175524
9-12 months    LCNI-5      MALAWI                         0                    NA                0.8989795   0.7125644   1.0853947
9-12 months    MAL-ED      BANGLADESH                     1                    NA                0.9653184   0.9000380   1.0305988
9-12 months    MAL-ED      BANGLADESH                     0                    NA                1.0018076   0.9539780   1.0496373
9-12 months    MAL-ED      BRAZIL                         1                    NA                1.2161598   1.0583697   1.3739500
9-12 months    MAL-ED      BRAZIL                         0                    NA                1.3092981   1.2279958   1.3906004
9-12 months    MAL-ED      INDIA                          1                    NA                0.9009093   0.7220684   1.0797501
9-12 months    MAL-ED      INDIA                          0                    NA                0.9859424   0.9467540   1.0251309
9-12 months    MAL-ED      NEPAL                          1                    NA                0.9963726   0.8922715   1.1004736
9-12 months    MAL-ED      NEPAL                          0                    NA                1.0912728   1.0492608   1.1332849
9-12 months    MAL-ED      PERU                           1                    NA                1.0750143   0.9862534   1.1637752
9-12 months    MAL-ED      PERU                           0                    NA                1.1074970   1.0458887   1.1691053
12-15 months   GMS-Nepal   NEPAL                          1                    NA                0.8729529   0.8447350   0.9011709
12-15 months   GMS-Nepal   NEPAL                          0                    NA                0.8593311   0.7936951   0.9249671
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                0.9270795   0.9076299   0.9465290
12-15 months   JiVitA-4    BANGLADESH                     0                    NA                0.9730782   0.9325808   1.0135756
12-15 months   MAL-ED      BANGLADESH                     1                    NA                0.8639189   0.8026892   0.9251485
12-15 months   MAL-ED      BANGLADESH                     0                    NA                0.9383139   0.8867611   0.9898668
12-15 months   MAL-ED      BRAZIL                         1                    NA                1.0975178   0.9288211   1.2662144
12-15 months   MAL-ED      BRAZIL                         0                    NA                1.1482423   1.0852863   1.2111982
12-15 months   MAL-ED      INDIA                          1                    NA                0.7778492   0.6484740   0.9072245
12-15 months   MAL-ED      INDIA                          0                    NA                0.9176124   0.8766614   0.9585634
12-15 months   MAL-ED      NEPAL                          1                    NA                0.9089104   0.7121503   1.1056706
12-15 months   MAL-ED      NEPAL                          0                    NA                0.9526185   0.9122933   0.9929436
12-15 months   MAL-ED      PERU                           1                    NA                0.8535193   0.7765467   0.9304919
12-15 months   MAL-ED      PERU                           0                    NA                0.9057067   0.8492495   0.9621640
15-18 months   GMS-Nepal   NEPAL                          1                    NA                0.7775949   0.7385185   0.8166714
15-18 months   GMS-Nepal   NEPAL                          0                    NA                0.6878211   0.6352113   0.7404308
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                0.8578283   0.8376611   0.8779955
15-18 months   JiVitA-4    BANGLADESH                     0                    NA                0.8570017   0.8192109   0.8947925
15-18 months   MAL-ED      BANGLADESH                     1                    NA                0.8132579   0.7523610   0.8741548
15-18 months   MAL-ED      BANGLADESH                     0                    NA                0.8294784   0.7832547   0.8757021
15-18 months   MAL-ED      BRAZIL                         1                    NA                1.0592142   0.8887678   1.2296605
15-18 months   MAL-ED      BRAZIL                         0                    NA                0.9939005   0.9309950   1.0568061
15-18 months   MAL-ED      INDIA                          1                    NA                0.8341987   0.7040811   0.9643163
15-18 months   MAL-ED      INDIA                          0                    NA                0.8487878   0.8109969   0.8865787
15-18 months   MAL-ED      NEPAL                          1                    NA                0.9086489   0.7591956   1.0581022
15-18 months   MAL-ED      NEPAL                          0                    NA                0.8381099   0.7953541   0.8808657
15-18 months   MAL-ED      PERU                           1                    NA                0.8336907   0.7586465   0.9087349
15-18 months   MAL-ED      PERU                           0                    NA                0.8609935   0.8101058   0.9118811
18-21 months   GMS-Nepal   NEPAL                          1                    NA                0.9014153   0.8587553   0.9440752
18-21 months   GMS-Nepal   NEPAL                          0                    NA                0.9178500   0.8616736   0.9740265
18-21 months   LCNI-5      MALAWI                         1                    NA                0.6988372   0.3078257   1.0898487
18-21 months   LCNI-5      MALAWI                         0                    NA                0.8714175   0.7927107   0.9501243
18-21 months   MAL-ED      BANGLADESH                     1                    NA                0.7876927   0.7297538   0.8456317
18-21 months   MAL-ED      BANGLADESH                     0                    NA                0.8257752   0.7833153   0.8682352
18-21 months   MAL-ED      BRAZIL                         1                    NA                0.8803505   0.7647659   0.9959351
18-21 months   MAL-ED      BRAZIL                         0                    NA                0.9209364   0.8420770   0.9997959
18-21 months   MAL-ED      INDIA                          1                    NA                0.8023575   0.6643159   0.9403991
18-21 months   MAL-ED      INDIA                          0                    NA                0.8820071   0.8456257   0.9183886
18-21 months   MAL-ED      NEPAL                          1                    NA                0.6607062   0.4802918   0.8411205
18-21 months   MAL-ED      NEPAL                          0                    NA                0.8236151   0.7847133   0.8625168
18-21 months   MAL-ED      PERU                           1                    NA                0.8305241   0.7412849   0.9197632
18-21 months   MAL-ED      PERU                           0                    NA                0.8453281   0.7938025   0.8968538
21-24 months   GMS-Nepal   NEPAL                          1                    NA                0.7725648   0.7246152   0.8205144
21-24 months   GMS-Nepal   NEPAL                          0                    NA                0.8820903   0.7351887   1.0289920
21-24 months   LCNI-5      MALAWI                         1                    NA                0.7347572   0.5989843   0.8705300
21-24 months   LCNI-5      MALAWI                         0                    NA                0.7341491   0.6568139   0.8114842
21-24 months   MAL-ED      BANGLADESH                     1                    NA                0.7664833   0.7017959   0.8311708
21-24 months   MAL-ED      BANGLADESH                     0                    NA                0.7708228   0.7284852   0.8131604
21-24 months   MAL-ED      BRAZIL                         1                    NA                0.8521649   0.7656108   0.9387189
21-24 months   MAL-ED      BRAZIL                         0                    NA                0.7884260   0.7398802   0.8369718
21-24 months   MAL-ED      INDIA                          1                    NA                0.8561617   0.7714086   0.9409148
21-24 months   MAL-ED      INDIA                          0                    NA                0.8245087   0.7919624   0.8570550
21-24 months   MAL-ED      NEPAL                          1                    NA                0.9602142   0.6789533   1.2414750
21-24 months   MAL-ED      NEPAL                          0                    NA                0.7768540   0.7359514   0.8177565
21-24 months   MAL-ED      PERU                           1                    NA                0.7891178   0.6896516   0.8885841
21-24 months   MAL-ED      PERU                           0                    NA                0.7514958   0.6986350   0.8043565


### Parameter: E(Y)


agecat         studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL                          NA                   NA                3.6173812   3.5643204   3.6704421
0-3 months     JiVitA-3    BANGLADESH                     NA                   NA                3.7049234   3.6917779   3.7180688
0-3 months     JiVitA-4    BANGLADESH                     NA                   NA                3.6272120   3.5957777   3.6586463
0-3 months     MAL-ED      BANGLADESH                     NA                   NA                3.3402171   3.2743239   3.4061103
0-3 months     MAL-ED      BRAZIL                         NA                   NA                3.8085653   3.6991781   3.9179525
0-3 months     MAL-ED      INDIA                          NA                   NA                3.3499072   3.2511340   3.4486803
0-3 months     MAL-ED      NEPAL                          NA                   NA                3.6158815   3.5234019   3.7083612
0-3 months     MAL-ED      PERU                           NA                   NA                3.0490404   2.9824173   3.1156636
3-6 months     GMS-Nepal   NEPAL                          NA                   NA                1.7085606   1.6688133   1.7483079
3-6 months     JiVitA-3    BANGLADESH                     NA                   NA                1.9103432   1.8959278   1.9247587
3-6 months     JiVitA-4    BANGLADESH                     NA                   NA                1.8946008   1.8642204   1.9249811
3-6 months     MAL-ED      BANGLADESH                     NA                   NA                1.9261033   1.8757410   1.9764655
3-6 months     MAL-ED      BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     MAL-ED      INDIA                          NA                   NA                1.8848530   1.8216037   1.9481024
3-6 months     MAL-ED      NEPAL                          NA                   NA                1.9660809   1.9097800   2.0223819
3-6 months     MAL-ED      PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8289025   1.7605509   1.8972540
6-9 months     GMS-Nepal   NEPAL                          NA                   NA                1.3144775   1.2731267   1.3558284
6-9 months     JiVitA-4    BANGLADESH                     NA                   NA                1.3252108   1.3036943   1.3467274
6-9 months     LCNI-5      MALAWI                         NA                   NA                1.4372604   1.3755150   1.4990057
6-9 months     MAL-ED      BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     MAL-ED      BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     MAL-ED      INDIA                          NA                   NA                1.2403346   1.1889010   1.2917682
6-9 months     MAL-ED      NEPAL                          NA                   NA                1.3587924   1.3145651   1.4030198
6-9 months     MAL-ED      PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1929853   1.1149435   1.2710272
9-12 months    GMS-Nepal   NEPAL                          NA                   NA                0.9984152   0.9640726   1.0327578
9-12 months    JiVitA-4    BANGLADESH                     NA                   NA                1.0692570   1.0496985   1.0888155
9-12 months    LCNI-5      MALAWI                         NA                   NA                0.9706344   0.8246089   1.1166600
9-12 months    MAL-ED      BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    MAL-ED      BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    MAL-ED      INDIA                          NA                   NA                0.9798686   0.9411954   1.0185419
9-12 months    MAL-ED      NEPAL                          NA                   NA                1.0883592   1.0474563   1.1292621
9-12 months    MAL-ED      PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
12-15 months   GMS-Nepal   NEPAL                          NA                   NA                0.8702474   0.8441404   0.8963544
12-15 months   JiVitA-4    BANGLADESH                     NA                   NA                0.9373418   0.9196982   0.9549854
12-15 months   MAL-ED      BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   MAL-ED      BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   MAL-ED      INDIA                          NA                   NA                0.9075845   0.8681682   0.9470009
12-15 months   MAL-ED      NEPAL                          NA                   NA                0.9512824   0.9117179   0.9908469
12-15 months   MAL-ED      PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
15-18 months   GMS-Nepal   NEPAL                          NA                   NA                0.7596809   0.7265174   0.7928444
15-18 months   JiVitA-4    BANGLADESH                     NA                   NA                0.8576466   0.8394619   0.8758313
15-18 months   MAL-ED      BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   MAL-ED      BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   MAL-ED      INDIA                          NA                   NA                0.8476806   0.8113849   0.8839763
15-18 months   MAL-ED      NEPAL                          NA                   NA                0.8406068   0.7989917   0.8822220
15-18 months   MAL-ED      PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
18-21 months   GMS-Nepal   NEPAL                          NA                   NA                0.9045343   0.8683581   0.9407104
18-21 months   LCNI-5      MALAWI                         NA                   NA                0.8419773   0.7481346   0.9358201
18-21 months   MAL-ED      BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   MAL-ED      BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   MAL-ED      INDIA                          NA                   NA                0.8759623   0.8406388   0.9112858
18-21 months   MAL-ED      NEPAL                          NA                   NA                0.8178484   0.7795814   0.8561153
18-21 months   MAL-ED      PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
21-24 months   GMS-Nepal   NEPAL                          NA                   NA                0.7920360   0.7445193   0.8395527
21-24 months   LCNI-5      MALAWI                         NA                   NA                0.7342569   0.6662316   0.8022822
21-24 months   MAL-ED      BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   MAL-ED      BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   MAL-ED      INDIA                          NA                   NA                0.8269217   0.7961503   0.8576932
21-24 months   MAL-ED      NEPAL                          NA                   NA                0.7833446   0.7424130   0.8242761
21-24 months   MAL-ED      PERU                           NA                   NA                0.7610506   0.7141593   0.8079419


### Parameter: ATE


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal   NEPAL                          0                    1                 -0.0399160   -0.1817721    0.1019400
0-3 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH                     0                    1                  0.0081032   -0.0224626    0.0386690
0-3 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH                     0                    1                 -0.1337148   -0.2248472   -0.0425823
0-3 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH                     0                    1                  0.1167168   -0.0159342    0.2493677
0-3 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL                         0                    1                 -0.3143248   -0.6793483    0.0506987
0-3 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      INDIA                          0                    1                 -0.1795195   -0.9194094    0.5603704
0-3 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      NEPAL                          0                    1                  0.3788683    0.1088384    0.6488981
0-3 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU                           0                    1                 -0.0996882   -0.2497507    0.0503743
3-6 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL                          0                    1                 -0.0464102   -0.1504800    0.0576597
3-6 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH                     0                    1                 -0.0018812   -0.0340446    0.0302823
3-6 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4    BANGLADESH                     0                    1                  0.0789686   -0.0038613    0.1617986
3-6 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH                     0                    1                  0.0084196   -0.1011439    0.1179830
3-6 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL                         0                    1                 -0.0697854   -0.2975507    0.1579798
3-6 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA                          0                    1                 -0.0393814   -0.2369932    0.1582303
3-6 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      NEPAL                          0                    1                 -0.0027032   -0.2906315    0.2852252
3-6 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU                           0                    1                 -0.0733321   -0.2316456    0.0849813
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2126991    0.0095485    0.4158496
6-9 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL                          0                    1                  0.0072932   -0.1307831    0.1453694
6-9 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4    BANGLADESH                     0                    1                  0.0113178   -0.0403921    0.0630276
6-9 months     LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5      MALAWI                         0                    1                 -0.0156522   -0.2044611    0.1731567
6-9 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH                     0                    1                 -0.0305845   -0.1142574    0.0530884
6-9 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL                         0                    1                  0.0170881   -0.1995667    0.2337428
6-9 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA                          0                    1                  0.0466208   -0.1199275    0.2131692
6-9 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      NEPAL                          0                    1                  0.0747528   -0.1852049    0.3347104
6-9 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU                           0                    1                  0.0070756   -0.1226440    0.1367952
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2138765   -0.5386421    0.1108890
9-12 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL                          0                    1                  0.0155830   -0.0980489    0.1292149
9-12 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH                     0                    1                 -0.0019142   -0.0479363    0.0441079
9-12 months    LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5      MALAWI                         0                    1                 -0.2292957   -0.4949580    0.0363666
9-12 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH                     0                    1                  0.0364892   -0.0444379    0.1174164
9-12 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL                         0                    1                  0.0931382   -0.0843661    0.2706426
9-12 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA                          0                    1                  0.0850332   -0.0980509    0.2681173
9-12 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      NEPAL                          0                    1                  0.0949003   -0.0173585    0.2071591
9-12 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU                           0                    1                  0.0324827   -0.0755640    0.1405293
12-15 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL                          0                    1                 -0.0136218   -0.0850665    0.0578229
12-15 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH                     0                    1                  0.0459987    0.0009370    0.0910604
12-15 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH                     0                    1                  0.0743950   -0.0056472    0.1544373
12-15 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL                         0                    1                  0.0507245   -0.1293366    0.2307856
12-15 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA                          0                    1                  0.1397632    0.0040615    0.2754648
12-15 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      NEPAL                          0                    1                  0.0437080   -0.1571418    0.2445579
12-15 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU                           0                    1                  0.0521874   -0.0432704    0.1476453
15-18 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL                          0                    1                 -0.0897739   -0.1553082   -0.0242395
15-18 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH                     0                    1                 -0.0008266   -0.0426919    0.0410387
15-18 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH                     0                    1                  0.0162206   -0.0602324    0.0926736
15-18 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL                         0                    1                 -0.0653136   -0.2469976    0.1163703
15-18 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA                          0                    1                  0.0145891   -0.1209053    0.1500836
15-18 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      NEPAL                          0                    1                 -0.0705390   -0.2259878    0.0849098
15-18 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU                           0                    1                  0.0273028   -0.0633680    0.1179736
18-21 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL                          0                    1                  0.0164348   -0.0541036    0.0869732
18-21 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5      MALAWI                         0                    1                  0.1725803   -0.2262740    0.5714346
18-21 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH                     0                    1                  0.0380825   -0.0337491    0.1099141
18-21 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL                         0                    1                  0.0405860   -0.0993376    0.1805095
18-21 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA                          0                    1                  0.0796496   -0.0631057    0.2224050
18-21 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      NEPAL                          0                    1                  0.1629089   -0.0216519    0.3474697
18-21 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      PERU                           0                    1                  0.0148041   -0.0882421    0.1178502
21-24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL                          0                    1                  0.1095256   -0.0450036    0.2640547
21-24 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5      MALAWI                         0                    1                 -0.0006081   -0.1568611    0.1556449
21-24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH                     0                    1                  0.0043395   -0.0729712    0.0816502
21-24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL                         0                    1                 -0.0637389   -0.1629775    0.0354997
21-24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA                          0                    1                 -0.0316530   -0.1224404    0.0591344
21-24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      NEPAL                          0                    1                 -0.1833602   -0.4675796    0.1008592
21-24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      PERU                           0                    1                 -0.0376221   -0.1502622    0.0750180


### Parameter: PAR


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                -0.0079832   -0.0363916    0.0204252
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                 0.0017846   -0.0049417    0.0085109
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                -0.0224577   -0.0380322   -0.0068833
0-3 months     MAL-ED      BANGLADESH                     1                    NA                 0.0776504   -0.0108744    0.1661752
0-3 months     MAL-ED      BRAZIL                         1                    NA                -0.2785633   -0.6024133    0.0452867
0-3 months     MAL-ED      INDIA                          1                    NA                -0.1686095   -0.8635619    0.5263430
0-3 months     MAL-ED      NEPAL                          1                    NA                 0.3591868    0.1028381    0.6155356
0-3 months     MAL-ED      PERU                           1                    NA                -0.0735342   -0.1843540    0.0372856
3-6 months     GMS-Nepal   NEPAL                          1                    NA                -0.0094838   -0.0308191    0.0118514
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                -0.0004318   -0.0078115    0.0069478
3-6 months     JiVitA-4    BANGLADESH                     1                    NA                 0.0124874   -0.0007385    0.0257134
3-6 months     MAL-ED      BANGLADESH                     1                    NA                 0.0056008   -0.0672845    0.0784862
3-6 months     MAL-ED      BRAZIL                         1                    NA                -0.0613978   -0.2618112    0.1390157
3-6 months     MAL-ED      INDIA                          1                    NA                -0.0364451   -0.2193276    0.1464374
3-6 months     MAL-ED      NEPAL                          1                    NA                -0.0026100   -0.2806098    0.2753898
3-6 months     MAL-ED      PERU                           1                    NA                -0.0541065   -0.1709788    0.0627658
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2081736    0.0100628    0.4062844
6-9 months     GMS-Nepal   NEPAL                          1                    NA                 0.0014431   -0.0258796    0.0287659
6-9 months     JiVitA-4    BANGLADESH                     1                    NA                 0.0023442   -0.0083673    0.0130556
6-9 months     LCNI-5      MALAWI                         1                    NA                -0.0131694   -0.1720321    0.1456932
6-9 months     MAL-ED      BANGLADESH                     1                    NA                -0.0206172   -0.0770531    0.0358186
6-9 months     MAL-ED      BRAZIL                         1                    NA                 0.0149305   -0.1743705    0.2042315
6-9 months     MAL-ED      INDIA                          1                    NA                 0.0431447   -0.1109938    0.1972832
6-9 months     MAL-ED      NEPAL                          1                    NA                 0.0721413   -0.1787411    0.3230238
6-9 months     MAL-ED      PERU                           1                    NA                 0.0051406   -0.0891054    0.0993867
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2091025   -0.5257761    0.1075711
9-12 months    GMS-Nepal   NEPAL                          1                    NA                 0.0029443   -0.0185331    0.0244216
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                -0.0004227   -0.0105837    0.0097384
9-12 months    LCNI-5      MALAWI                         1                    NA                -0.1576408   -0.3440762    0.0287946
9-12 months    MAL-ED      BANGLADESH                     1                    NA                 0.0243261   -0.0296723    0.0783246
9-12 months    MAL-ED      BRAZIL                         1                    NA                 0.0820961   -0.0744216    0.2386138
9-12 months    MAL-ED      INDIA                          1                    NA                 0.0789594   -0.0910715    0.2489903
9-12 months    MAL-ED      NEPAL                          1                    NA                 0.0919867   -0.0168464    0.2008198
9-12 months    MAL-ED      PERU                           1                    NA                 0.0234981   -0.0546855    0.1016817
12-15 months   GMS-Nepal   NEPAL                          1                    NA                -0.0027055   -0.0169047    0.0114937
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0102623    0.0001188    0.0204058
12-15 months   MAL-ED      BANGLADESH                     1                    NA                 0.0501816   -0.0040137    0.1043768
12-15 months   MAL-ED      BRAZIL                         1                    NA                 0.0446596   -0.1138904    0.2032096
12-15 months   MAL-ED      INDIA                          1                    NA                 0.1297353    0.0036808    0.2557899
12-15 months   MAL-ED      NEPAL                          1                    NA                 0.0423720   -0.1523408    0.2370847
12-15 months   MAL-ED      PERU                           1                    NA                 0.0382087   -0.0317459    0.1081632
15-18 months   GMS-Nepal   NEPAL                          1                    NA                -0.0179141   -0.0314141   -0.0044140
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0001817   -0.0093840    0.0090206
15-18 months   MAL-ED      BANGLADESH                     1                    NA                 0.0108647   -0.0403547    0.0620841
15-18 months   MAL-ED      BRAZIL                         1                    NA                -0.0571028   -0.2159791    0.1017735
15-18 months   MAL-ED      INDIA                          1                    NA                 0.0134819   -0.1117305    0.1386943
15-18 months   MAL-ED      NEPAL                          1                    NA                -0.0680421   -0.2179979    0.0819138
15-18 months   MAL-ED      PERU                           1                    NA                 0.0197400   -0.0458360    0.0853161
18-21 months   GMS-Nepal   NEPAL                          1                    NA                 0.0031190   -0.0102824    0.0165204
18-21 months   LCNI-5      MALAWI                         1                    NA                 0.1431401   -0.1878191    0.4740993
18-21 months   MAL-ED      BANGLADESH                     1                    NA                 0.0256920   -0.0228291    0.0742132
18-21 months   MAL-ED      BRAZIL                         1                    NA                 0.0357254   -0.0874572    0.1589079
18-21 months   MAL-ED      INDIA                          1                    NA                 0.0736048   -0.0583455    0.2055551
18-21 months   MAL-ED      NEPAL                          1                    NA                 0.1571422   -0.0209289    0.3352134
18-21 months   MAL-ED      PERU                           1                    NA                 0.0109198   -0.0650948    0.0869345
21-24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0194712   -0.0083883    0.0473308
21-24 months   LCNI-5      MALAWI                         1                    NA                -0.0005003   -0.1290488    0.1280483
21-24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0029349   -0.0493532    0.0552231
21-24 months   MAL-ED      BRAZIL                         1                    NA                -0.0560130   -0.1432807    0.0312548
21-24 months   MAL-ED      INDIA                          1                    NA                -0.0292400   -0.1131136    0.0546337
21-24 months   MAL-ED      NEPAL                          1                    NA                -0.1768696   -0.4510639    0.0973247
21-24 months   MAL-ED      PERU                           1                    NA                -0.0280673   -0.1121330    0.0559984
