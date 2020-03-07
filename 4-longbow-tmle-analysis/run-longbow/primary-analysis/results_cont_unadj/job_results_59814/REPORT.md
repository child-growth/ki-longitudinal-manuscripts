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
![](/tmp/d48d65e4-dd4c-46ba-bd4e-fa22ee0d7f48/878d7a54-29e2-4aa6-b53b-54d935db5721/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d48d65e4-dd4c-46ba-bd4e-fa22ee0d7f48/878d7a54-29e2-4aa6-b53b-54d935db5721/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d48d65e4-dd4c-46ba-bd4e-fa22ee0d7f48/878d7a54-29e2-4aa6-b53b-54d935db5721/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                -0.0213499   -0.0498784    0.0071787
0-3 months     GMS-Nepal   NEPAL                          0                    NA                -0.0367826   -0.1006988    0.0271337
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                 0.0685995    0.0615927    0.0756064
0-3 months     JiVitA-3    BANGLADESH                     0                    NA                 0.0722418    0.0590612    0.0854225
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                 0.0752047    0.0590906    0.0913188
0-3 months     JiVitA-4    BANGLADESH                     0                    NA                 0.0098021   -0.0317494    0.0513535
0-3 months     MAL-ED      BANGLADESH                     1                    NA                -0.1469621   -0.2012133   -0.0927110
0-3 months     MAL-ED      BANGLADESH                     0                    NA                -0.1094279   -0.1522808   -0.0665750
0-3 months     MAL-ED      BRAZIL                         1                    NA                 0.2986660    0.1236651    0.4736669
0-3 months     MAL-ED      BRAZIL                         0                    NA                 0.1187342    0.0597456    0.1777228
0-3 months     MAL-ED      INDIA                          1                    NA                 0.0071331   -0.3623225    0.3765887
0-3 months     MAL-ED      INDIA                          0                    NA                -0.0622279   -0.1104754   -0.0139805
0-3 months     MAL-ED      NEPAL                          1                    NA                -0.0889117   -0.1986958    0.0208725
0-3 months     MAL-ED      NEPAL                          0                    NA                 0.0598120    0.0134670    0.1061569
0-3 months     MAL-ED      PERU                           1                    NA                -0.2243974   -0.2888608   -0.1599340
0-3 months     MAL-ED      PERU                           0                    NA                -0.2797191   -0.3195611   -0.2398770
3-6 months     GMS-Nepal   NEPAL                          1                    NA                -0.1580077   -0.1785321   -0.1374833
3-6 months     GMS-Nepal   NEPAL                          0                    NA                -0.1771258   -0.2230868   -0.1311648
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                -0.0061295   -0.0136045    0.0013455
3-6 months     JiVitA-3    BANGLADESH                     0                    NA                -0.0065182   -0.0195985    0.0065622
3-6 months     JiVitA-4    BANGLADESH                     1                    NA                -0.0167567   -0.0320430   -0.0014705
3-6 months     JiVitA-4    BANGLADESH                     0                    NA                 0.0233490   -0.0111589    0.0578570
3-6 months     MAL-ED      BANGLADESH                     1                    NA                -0.0206372   -0.0633330    0.0220586
3-6 months     MAL-ED      BANGLADESH                     0                    NA                -0.0245343   -0.0528433    0.0037747
3-6 months     MAL-ED      BRAZIL                         1                    NA                 0.0889100   -0.0078875    0.1857075
3-6 months     MAL-ED      BRAZIL                         0                    NA                 0.0557427    0.0164229    0.0950625
3-6 months     MAL-ED      INDIA                          1                    NA                -0.0244505   -0.1130782    0.0641772
3-6 months     MAL-ED      INDIA                          0                    NA                -0.0407901   -0.0716194   -0.0099609
3-6 months     MAL-ED      NEPAL                          1                    NA                -0.0082546   -0.1325394    0.1160303
3-6 months     MAL-ED      NEPAL                          0                    NA                -0.0227604   -0.0500178    0.0044970
3-6 months     MAL-ED      PERU                           1                    NA                 0.0529825   -0.0133490    0.1193140
3-6 months     MAL-ED      PERU                           0                    NA                 0.0160681   -0.0190462    0.0511825
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1893761   -0.2987707   -0.0799816
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0688887   -0.1019762   -0.0358013
6-9 months     GMS-Nepal   NEPAL                          1                    NA                -0.0466441   -0.0640489   -0.0292392
6-9 months     GMS-Nepal   NEPAL                          0                    NA                -0.0394839   -0.0952644    0.0162966
6-9 months     JiVitA-4    BANGLADESH                     1                    NA                -0.0299794   -0.0402789   -0.0196799
6-9 months     JiVitA-4    BANGLADESH                     0                    NA                -0.0230055   -0.0437965   -0.0022145
6-9 months     LCNI-5      MALAWI                         1                    NA                 0.0130077   -0.0680361    0.0940515
6-9 months     LCNI-5      MALAWI                         0                    NA                 0.0089411   -0.0193006    0.0371829
6-9 months     MAL-ED      BANGLADESH                     1                    NA                -0.0597021   -0.0884841   -0.0309200
6-9 months     MAL-ED      BANGLADESH                     0                    NA                -0.0750128   -0.0964574   -0.0535683
6-9 months     MAL-ED      BRAZIL                         1                    NA                 0.0008868   -0.0878331    0.0896068
6-9 months     MAL-ED      BRAZIL                         0                    NA                 0.0099245   -0.0278579    0.0477068
6-9 months     MAL-ED      INDIA                          1                    NA                -0.0886600   -0.1598257   -0.0174943
6-9 months     MAL-ED      INDIA                          0                    NA                -0.0718038   -0.0956195   -0.0479881
6-9 months     MAL-ED      NEPAL                          1                    NA                -0.0693233   -0.1761665    0.0375198
6-9 months     MAL-ED      NEPAL                          0                    NA                -0.0325400   -0.0521461   -0.0129339
6-9 months     MAL-ED      PERU                           1                    NA                -0.0351131   -0.0854104    0.0151842
6-9 months     MAL-ED      PERU                           0                    NA                -0.0330008   -0.0602610   -0.0057405
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0045510   -0.1236005    0.1327026
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0945262   -0.1287194   -0.0603330
9-12 months    GMS-Nepal   NEPAL                          1                    NA                -0.0818618   -0.0958611   -0.0678625
9-12 months    GMS-Nepal   NEPAL                          0                    NA                -0.0721457   -0.1186956   -0.0255957
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                -0.0539387   -0.0632242   -0.0446531
9-12 months    JiVitA-4    BANGLADESH                     0                    NA                -0.0501663   -0.0672618   -0.0330708
9-12 months    LCNI-5      MALAWI                         1                    NA                -0.0518243   -0.1272823    0.0236337
9-12 months    LCNI-5      MALAWI                         0                    NA                -0.1295742   -0.2051770   -0.0539714
9-12 months    MAL-ED      BANGLADESH                     1                    NA                -0.0972874   -0.1238226   -0.0707522
9-12 months    MAL-ED      BANGLADESH                     0                    NA                -0.0821644   -0.1024064   -0.0619223
9-12 months    MAL-ED      BRAZIL                         1                    NA                -0.0284097   -0.0920140    0.0351945
9-12 months    MAL-ED      BRAZIL                         0                    NA                 0.0130996   -0.0207347    0.0469339
9-12 months    MAL-ED      INDIA                          1                    NA                -0.1215599   -0.1963374   -0.0467824
9-12 months    MAL-ED      INDIA                          0                    NA                -0.0896115   -0.1058271   -0.0733960
9-12 months    MAL-ED      NEPAL                          1                    NA                -0.1051817   -0.1503284   -0.0600349
9-12 months    MAL-ED      NEPAL                          0                    NA                -0.0613397   -0.0787408   -0.0439385
9-12 months    MAL-ED      PERU                           1                    NA                -0.0514321   -0.0895467   -0.0133174
9-12 months    MAL-ED      PERU                           0                    NA                -0.0382914   -0.0641094   -0.0124735
12-15 months   GMS-Nepal   NEPAL                          1                    NA                -0.0707528   -0.0813439   -0.0601616
12-15 months   GMS-Nepal   NEPAL                          0                    NA                -0.0708165   -0.0951026   -0.0465305
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0513238   -0.0586788   -0.0439688
12-15 months   JiVitA-4    BANGLADESH                     0                    NA                -0.0299485   -0.0461418   -0.0137553
12-15 months   MAL-ED      BANGLADESH                     1                    NA                -0.0739713   -0.0966722   -0.0512703
12-15 months   MAL-ED      BANGLADESH                     0                    NA                -0.0469020   -0.0670056   -0.0267985
12-15 months   MAL-ED      BRAZIL                         1                    NA                -0.0199500   -0.0850923    0.0451924
12-15 months   MAL-ED      BRAZIL                         0                    NA                -0.0007470   -0.0247909    0.0232969
12-15 months   MAL-ED      INDIA                          1                    NA                -0.1005008   -0.1536914   -0.0473102
12-15 months   MAL-ED      INDIA                          0                    NA                -0.0542882   -0.0701958   -0.0383805
12-15 months   MAL-ED      NEPAL                          1                    NA                -0.0737365   -0.1444881   -0.0029848
12-15 months   MAL-ED      NEPAL                          0                    NA                -0.0570089   -0.0728532   -0.0411645
12-15 months   MAL-ED      PERU                           1                    NA                -0.0810348   -0.1101020   -0.0519676
12-15 months   MAL-ED      PERU                           0                    NA                -0.0596160   -0.0815318   -0.0377002
15-18 months   GMS-Nepal   NEPAL                          1                    NA                -0.0618289   -0.0760523   -0.0476056
15-18 months   GMS-Nepal   NEPAL                          0                    NA                -0.0907557   -0.1095990   -0.0719125
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0340858   -0.0414708   -0.0267008
15-18 months   JiVitA-4    BANGLADESH                     0                    NA                -0.0308325   -0.0445115   -0.0171535
15-18 months   MAL-ED      BANGLADESH                     1                    NA                -0.0484549   -0.0701628   -0.0267471
15-18 months   MAL-ED      BANGLADESH                     0                    NA                -0.0444827   -0.0615170   -0.0274484
15-18 months   MAL-ED      BRAZIL                         1                    NA                 0.0036385   -0.0566369    0.0639138
15-18 months   MAL-ED      BRAZIL                         0                    NA                -0.0237904   -0.0462419   -0.0013390
15-18 months   MAL-ED      INDIA                          1                    NA                -0.0343172   -0.0808370    0.0122025
15-18 months   MAL-ED      INDIA                          0                    NA                -0.0369528   -0.0502828   -0.0236229
15-18 months   MAL-ED      NEPAL                          1                    NA                -0.0337660   -0.0907984    0.0232663
15-18 months   MAL-ED      NEPAL                          0                    NA                -0.0558117   -0.0713407   -0.0402827
15-18 months   MAL-ED      PERU                           1                    NA                -0.0430211   -0.0696639   -0.0163784
15-18 months   MAL-ED      PERU                           0                    NA                -0.0333883   -0.0522103   -0.0145662
18-21 months   GMS-Nepal   NEPAL                          1                    NA                 0.0141602   -0.0006345    0.0289549
18-21 months   GMS-Nepal   NEPAL                          0                    NA                 0.0228326    0.0040265    0.0416388
18-21 months   LCNI-5      MALAWI                         1                    NA                -0.0578036   -0.1993216    0.0837143
18-21 months   LCNI-5      MALAWI                         0                    NA                 0.0007623   -0.0262457    0.0277704
18-21 months   MAL-ED      BANGLADESH                     1                    NA                -0.0224034   -0.0412410   -0.0035657
18-21 months   MAL-ED      BANGLADESH                     0                    NA                -0.0122031   -0.0268151    0.0024088
18-21 months   MAL-ED      BRAZIL                         1                    NA                -0.0315689   -0.0722251    0.0090872
18-21 months   MAL-ED      BRAZIL                         0                    NA                -0.0188338   -0.0461643    0.0084967
18-21 months   MAL-ED      INDIA                          1                    NA                -0.0122231   -0.0593032    0.0348569
18-21 months   MAL-ED      INDIA                          0                    NA                 0.0061884   -0.0055490    0.0179257
18-21 months   MAL-ED      NEPAL                          1                    NA                -0.0851181   -0.1423222   -0.0279140
18-21 months   MAL-ED      NEPAL                          0                    NA                -0.0261870   -0.0395006   -0.0128733
18-21 months   MAL-ED      PERU                           1                    NA                -0.0111721   -0.0420535    0.0197093
18-21 months   MAL-ED      PERU                           0                    NA                -0.0070264   -0.0245269    0.0104741
21-24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0398969    0.0234770    0.0563168
21-24 months   GMS-Nepal   NEPAL                          0                    NA                 0.0682499    0.0179408    0.1185590
21-24 months   LCNI-5      MALAWI                         1                    NA                -0.0119023   -0.0556287    0.0318242
21-24 months   LCNI-5      MALAWI                         0                    NA                -0.0115650   -0.0365774    0.0134475
21-24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0224264   -0.0009803    0.0458331
21-24 months   MAL-ED      BANGLADESH                     0                    NA                 0.0271457    0.0130884    0.0412030
21-24 months   MAL-ED      BRAZIL                         1                    NA                 0.0352478   -0.0025425    0.0730380
21-24 months   MAL-ED      BRAZIL                         0                    NA                 0.0138993   -0.0035042    0.0313028
21-24 months   MAL-ED      INDIA                          1                    NA                 0.0490270    0.0227032    0.0753508
21-24 months   MAL-ED      INDIA                          0                    NA                 0.0286257    0.0170659    0.0401854
21-24 months   MAL-ED      NEPAL                          1                    NA                 0.0659251   -0.0207777    0.1526279
21-24 months   MAL-ED      NEPAL                          0                    NA                 0.0033234   -0.0104873    0.0171342
21-24 months   MAL-ED      PERU                           1                    NA                 0.0685584    0.0358349    0.1012819
21-24 months   MAL-ED      PERU                           0                    NA                 0.0530309    0.0358419    0.0702198


### Parameter: E(Y)


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          NA                   NA                -0.0244364   -0.0506014    0.0017286
0-3 months     JiVitA-3    BANGLADESH                     NA                   NA                 0.0694017    0.0630146    0.0757888
0-3 months     JiVitA-4    BANGLADESH                     NA                   NA                 0.0642202    0.0489852    0.0794552
0-3 months     MAL-ED      BANGLADESH                     NA                   NA                -0.1219910   -0.1558661   -0.0881159
0-3 months     MAL-ED      BRAZIL                         NA                   NA                 0.1392055    0.0825938    0.1958172
0-3 months     MAL-ED      INDIA                          NA                   NA                -0.0580126   -0.1086434   -0.0073818
0-3 months     MAL-ED      NEPAL                          NA                   NA                 0.0520861    0.0074724    0.0966997
0-3 months     MAL-ED      PERU                           NA                   NA                -0.2652050   -0.2992408   -0.2311692
3-6 months     GMS-Nepal   NEPAL                          NA                   NA                -0.1619144   -0.1807661   -0.1430628
3-6 months     JiVitA-3    BANGLADESH                     NA                   NA                -0.0062187   -0.0128267    0.0003893
3-6 months     JiVitA-4    BANGLADESH                     NA                   NA                -0.0104148   -0.0243612    0.0035317
3-6 months     MAL-ED      BANGLADESH                     NA                   NA                -0.0232296   -0.0468728    0.0004136
3-6 months     MAL-ED      BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     MAL-ED      INDIA                          NA                   NA                -0.0395718   -0.0688631   -0.0102806
3-6 months     MAL-ED      NEPAL                          NA                   NA                -0.0222602   -0.0489265    0.0044061
3-6 months     MAL-ED      PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0714523   -0.1039048   -0.0389998
6-9 months     GMS-Nepal   NEPAL                          NA                   NA                -0.0452273   -0.0630261   -0.0274285
6-9 months     JiVitA-4    BANGLADESH                     NA                   NA                -0.0285349   -0.0378750   -0.0191949
6-9 months     LCNI-5      MALAWI                         NA                   NA                 0.0095862   -0.0174314    0.0366037
6-9 months     MAL-ED      BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     MAL-ED      BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     MAL-ED      INDIA                          NA                   NA                -0.0730606   -0.0957376   -0.0503836
6-9 months     MAL-ED      NEPAL                          NA                   NA                -0.0338250   -0.0531307   -0.0145193
6-9 months     MAL-ED      PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0923147   -0.1258617   -0.0587677
9-12 months    GMS-Nepal   NEPAL                          NA                   NA                -0.0800260   -0.0943928   -0.0656593
9-12 months    JiVitA-4    BANGLADESH                     NA                   NA                -0.0531058   -0.0612606   -0.0449509
9-12 months    LCNI-5      MALAWI                         NA                   NA                -0.1052774   -0.1637460   -0.0468087
9-12 months    MAL-ED      BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED      BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    MAL-ED      INDIA                          NA                   NA                -0.0918936   -0.1079066   -0.0758806
9-12 months    MAL-ED      NEPAL                          NA                   NA                -0.0626857   -0.0796381   -0.0457334
9-12 months    MAL-ED      PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
12-15 months   GMS-Nepal   NEPAL                          NA                   NA                -0.0707654   -0.0805279   -0.0610030
12-15 months   JiVitA-4    BANGLADESH                     NA                   NA                -0.0465550   -0.0533118   -0.0397982
12-15 months   MAL-ED      BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED      BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   MAL-ED      INDIA                          NA                   NA                -0.0576039   -0.0729359   -0.0422719
12-15 months   MAL-ED      NEPAL                          NA                   NA                -0.0575202   -0.0730362   -0.0420042
12-15 months   MAL-ED      PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
15-18 months   GMS-Nepal   NEPAL                          NA                   NA                -0.0676012   -0.0796397   -0.0555626
15-18 months   JiVitA-4    BANGLADESH                     NA                   NA                -0.0333707   -0.0399958   -0.0267456
15-18 months   MAL-ED      BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   MAL-ED      BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   MAL-ED      INDIA                          NA                   NA                -0.0367528   -0.0495674   -0.0239382
15-18 months   MAL-ED      NEPAL                          NA                   NA                -0.0550313   -0.0701554   -0.0399073
15-18 months   MAL-ED      PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
18-21 months   GMS-Nepal   NEPAL                          NA                   NA                 0.0158061    0.0032947    0.0283174
18-21 months   LCNI-5      MALAWI                         NA                   NA                -0.0092283   -0.0423286    0.0238719
18-21 months   MAL-ED      BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   MAL-ED      BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   MAL-ED      INDIA                          NA                   NA                 0.0047911   -0.0066468    0.0162289
18-21 months   MAL-ED      NEPAL                          NA                   NA                -0.0282730   -0.0413517   -0.0151944
18-21 months   MAL-ED      PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
21-24 months   GMS-Nepal   NEPAL                          NA                   NA                 0.0449374    0.0286985    0.0611763
21-24 months   LCNI-5      MALAWI                         NA                   NA                -0.0116248   -0.0336145    0.0103649
21-24 months   MAL-ED      BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   MAL-ED      BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   MAL-ED      INDIA                          NA                   NA                 0.0301809    0.0192922    0.0410697
21-24 months   MAL-ED      NEPAL                          NA                   NA                 0.0055394   -0.0082148    0.0192936
21-24 months   MAL-ED      PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859


### Parameter: ATE


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal   NEPAL                          0                    1                 -0.0154327   -0.0854268    0.0545613
0-3 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH                     0                    1                  0.0036423   -0.0107847    0.0180693
0-3 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH                     0                    1                 -0.0654026   -0.1099200   -0.0208853
0-3 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH                     0                    1                  0.0375342   -0.0316001    0.1066686
0-3 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL                         0                    1                 -0.1799318   -0.3646071    0.0047435
0-3 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      INDIA                          0                    1                 -0.0693610   -0.4419536    0.3032316
0-3 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      NEPAL                          0                    1                  0.1487236    0.0295581    0.2678891
0-3 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU                           0                    1                 -0.0553217   -0.1311037    0.0204604
3-6 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL                          0                    1                 -0.0191181   -0.0694536    0.0312175
3-6 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH                     0                    1                 -0.0003887   -0.0151725    0.0143950
3-6 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4    BANGLADESH                     0                    1                  0.0401058    0.0022128    0.0779988
3-6 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH                     0                    1                 -0.0038971   -0.0551253    0.0473311
3-6 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL                         0                    1                 -0.0331673   -0.1376460    0.0713114
3-6 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA                          0                    1                 -0.0163396   -0.1101762    0.0774970
3-6 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      NEPAL                          0                    1                 -0.0145058   -0.1417445    0.1127329
3-6 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU                           0                    1                 -0.0369143   -0.1119668    0.0381382
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1204874    0.0061985    0.2347762
6-9 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL                          0                    1                  0.0071601   -0.0512727    0.0655929
6-9 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4    BANGLADESH                     0                    1                  0.0069739   -0.0159793    0.0299271
6-9 months     LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5      MALAWI                         0                    1                 -0.0040666   -0.0898902    0.0817570
6-9 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH                     0                    1                 -0.0153108   -0.0512033    0.0205818
6-9 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL                         0                    1                  0.0090376   -0.0873923    0.1054676
6-9 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA                          0                    1                  0.0168562   -0.0581887    0.0919011
6-9 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      NEPAL                          0                    1                  0.0367833   -0.0718438    0.1454105
6-9 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU                           0                    1                  0.0021124   -0.0550972    0.0593220
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0990772   -0.2317121    0.0335576
9-12 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL                          0                    1                  0.0097161   -0.0388933    0.0583256
9-12 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH                     0                    1                  0.0037724   -0.0157076    0.0232523
9-12 months    LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5      MALAWI                         0                    1                 -0.0777499   -0.1845661    0.0290663
9-12 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH                     0                    1                  0.0151230   -0.0182515    0.0484975
9-12 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL                         0                    1                  0.0415094   -0.0305341    0.1135528
9-12 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA                          0                    1                  0.0319484   -0.0445671    0.1084639
9-12 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      NEPAL                          0                    1                  0.0438420   -0.0045422    0.0922262
9-12 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU                           0                    1                  0.0131406   -0.0328951    0.0591764
12-15 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL                          0                    1                 -0.0000638   -0.0265588    0.0264312
12-15 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH                     0                    1                  0.0213753    0.0034788    0.0392718
12-15 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH                     0                    1                  0.0270692   -0.0032538    0.0573922
12-15 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL                         0                    1                  0.0192030   -0.0502350    0.0886410
12-15 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA                          0                    1                  0.0462126   -0.0093058    0.1017311
12-15 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      NEPAL                          0                    1                  0.0167276   -0.0557765    0.0892317
12-15 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU                           0                    1                  0.0214188   -0.0149846    0.0578221
15-18 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL                          0                    1                 -0.0289268   -0.0525355   -0.0053181
15-18 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH                     0                    1                  0.0032533   -0.0119705    0.0184772
15-18 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH                     0                    1                  0.0039722   -0.0236212    0.0315656
15-18 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL                         0                    1                 -0.0274289   -0.0917499    0.0368921
15-18 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA                          0                    1                 -0.0026356   -0.0510275    0.0457563
15-18 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      NEPAL                          0                    1                 -0.0220457   -0.0811544    0.0370630
15-18 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU                           0                    1                  0.0096329   -0.0229877    0.0422535
18-21 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL                          0                    1                  0.0086724   -0.0152557    0.0326005
18-21 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5      MALAWI                         0                    1                  0.0585660   -0.0855061    0.2026380
18-21 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH                     0                    1                  0.0102002   -0.0136402    0.0340407
18-21 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL                         0                    1                  0.0127351   -0.0362534    0.0617237
18-21 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA                          0                    1                  0.0184115   -0.0301096    0.0669326
18-21 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      NEPAL                          0                    1                  0.0589311    0.0001982    0.1176641
18-21 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      PERU                           0                    1                  0.0041457   -0.0313497    0.0396412
21-24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL                          0                    1                  0.0283531   -0.0245678    0.0812739
21-24 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5      MALAWI                         0                    1                  0.0003373   -0.0500376    0.0507121
21-24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH                     0                    1                  0.0047193   -0.0225842    0.0320229
21-24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL                         0                    1                 -0.0213484   -0.0629535    0.0202566
21-24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA                          0                    1                 -0.0204014   -0.0491515    0.0083488
21-24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      NEPAL                          0                    1                 -0.0626017   -0.1503975    0.0251942
21-24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      PERU                           0                    1                 -0.0155276   -0.0524909    0.0214358


### Parameter: PAR


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                -0.0030865   -0.0170966    0.0109235
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                 0.0008022   -0.0023726    0.0039770
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                -0.0109845   -0.0186363   -0.0033327
0-3 months     MAL-ED      BANGLADESH                     1                    NA                 0.0249711   -0.0210775    0.0710198
0-3 months     MAL-ED      BRAZIL                         1                    NA                -0.1594605   -0.3233555    0.0044344
0-3 months     MAL-ED      INDIA                          1                    NA                -0.0651457   -0.4151029    0.2848115
0-3 months     MAL-ED      NEPAL                          1                    NA                 0.1409977    0.0279017    0.2540937
0-3 months     MAL-ED      PERU                           1                    NA                -0.0408076   -0.0967853    0.0151701
3-6 months     GMS-Nepal   NEPAL                          1                    NA                -0.0039067   -0.0142168    0.0064034
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                -0.0000892   -0.0034822    0.0033037
3-6 months     JiVitA-4    BANGLADESH                     1                    NA                 0.0063420    0.0002872    0.0123968
3-6 months     MAL-ED      BANGLADESH                     1                    NA                -0.0025924   -0.0366712    0.0314863
3-6 months     MAL-ED      BRAZIL                         1                    NA                -0.0291809   -0.1211138    0.0627521
3-6 months     MAL-ED      INDIA                          1                    NA                -0.0151213   -0.1019631    0.0717206
3-6 months     MAL-ED      NEPAL                          1                    NA                -0.0140056   -0.1368572    0.1088460
3-6 months     MAL-ED      PERU                           1                    NA                -0.0272364   -0.0826466    0.0281738
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1179238    0.0064699    0.2293777
6-9 months     GMS-Nepal   NEPAL                          1                    NA                 0.0014168   -0.0101483    0.0129819
6-9 months     JiVitA-4    BANGLADESH                     1                    NA                 0.0014445   -0.0033095    0.0061984
6-9 months     LCNI-5      MALAWI                         1                    NA                -0.0034215   -0.0756321    0.0687891
6-9 months     MAL-ED      BANGLADESH                     1                    NA                -0.0103211   -0.0345349    0.0138927
6-9 months     MAL-ED      BRAZIL                         1                    NA                 0.0078965   -0.0763590    0.0921520
6-9 months     MAL-ED      INDIA                          1                    NA                 0.0155994   -0.0538525    0.0850512
6-9 months     MAL-ED      NEPAL                          1                    NA                 0.0354983   -0.0693377    0.1403343
6-9 months     MAL-ED      PERU                           1                    NA                 0.0015347   -0.0400300    0.0430994
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0968657   -0.2261989    0.0324675
9-12 months    GMS-Nepal   NEPAL                          1                    NA                 0.0018358   -0.0073555    0.0110270
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                 0.0008329   -0.0034687    0.0051346
9-12 months    LCNI-5      MALAWI                         1                    NA                -0.0534531   -0.1279769    0.0210708
9-12 months    MAL-ED      BANGLADESH                     1                    NA                 0.0100820   -0.0121872    0.0323513
9-12 months    MAL-ED      BRAZIL                         1                    NA                 0.0365881   -0.0269423    0.1001186
9-12 months    MAL-ED      INDIA                          1                    NA                 0.0296663   -0.0413920    0.1007246
9-12 months    MAL-ED      NEPAL                          1                    NA                 0.0424960   -0.0044131    0.0894050
9-12 months    MAL-ED      PERU                           1                    NA                 0.0095060   -0.0238050    0.0428170
12-15 months   GMS-Nepal   NEPAL                          1                    NA                -0.0000127   -0.0052749    0.0052496
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0047688    0.0007306    0.0088071
12-15 months   MAL-ED      BANGLADESH                     1                    NA                 0.0182589   -0.0022662    0.0387841
12-15 months   MAL-ED      BRAZIL                         1                    NA                 0.0169070   -0.0442353    0.0780493
12-15 months   MAL-ED      INDIA                          1                    NA                 0.0428969   -0.0086620    0.0944558
12-15 months   MAL-ED      NEPAL                          1                    NA                 0.0162163   -0.0540725    0.0865050
12-15 months   MAL-ED      PERU                           1                    NA                 0.0156816   -0.0109999    0.0423631
15-18 months   GMS-Nepal   NEPAL                          1                    NA                -0.0057722   -0.0106055   -0.0009389
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0007151   -0.0026310    0.0040612
15-18 months   MAL-ED      BANGLADESH                     1                    NA                 0.0026606   -0.0158235    0.0211447
15-18 months   MAL-ED      BRAZIL                         1                    NA                -0.0239807   -0.0802318    0.0322704
15-18 months   MAL-ED      INDIA                          1                    NA                -0.0024356   -0.0471550    0.0422838
15-18 months   MAL-ED      NEPAL                          1                    NA                -0.0212653   -0.0782841    0.0357535
15-18 months   MAL-ED      PERU                           1                    NA                 0.0069646   -0.0166274    0.0305566
18-21 months   GMS-Nepal   NEPAL                          1                    NA                 0.0016459   -0.0029072    0.0061989
18-21 months   LCNI-5      MALAWI                         1                    NA                 0.0485753   -0.0709659    0.1681165
18-21 months   MAL-ED      BANGLADESH                     1                    NA                 0.0068815   -0.0092154    0.0229783
18-21 months   MAL-ED      BRAZIL                         1                    NA                 0.0112100   -0.0319163    0.0543362
18-21 months   MAL-ED      INDIA                          1                    NA                 0.0170142   -0.0278291    0.0618574
18-21 months   MAL-ED      NEPAL                          1                    NA                 0.0568451    0.0001733    0.1135169
18-21 months   MAL-ED      PERU                           1                    NA                 0.0030580   -0.0231255    0.0292415
21-24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0050405   -0.0044437    0.0145248
21-24 months   LCNI-5      MALAWI                         1                    NA                 0.0002775   -0.0411657    0.0417206
21-24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0031918   -0.0152768    0.0216604
21-24 months   MAL-ED      BRAZIL                         1                    NA                -0.0187608   -0.0553383    0.0178168
21-24 months   MAL-ED      INDIA                          1                    NA                -0.0188461   -0.0454141    0.0077219
21-24 months   MAL-ED      NEPAL                          1                    NA                -0.0603857   -0.1450872    0.0243158
21-24 months   MAL-ED      PERU                           1                    NA                -0.0115840   -0.0391768    0.0160087
