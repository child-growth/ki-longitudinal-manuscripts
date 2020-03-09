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

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid         country                        predfeed36    n_cell      n
-------------  --------------  -----------------------------  -----------  -------  -----
0-3 months     EE              PAKISTAN                       1                  3      7
0-3 months     EE              PAKISTAN                       0                  4      7
0-3 months     GMS-Nepal       NEPAL                          1                373    466
0-3 months     GMS-Nepal       NEPAL                          0                 93    466
0-3 months     JiVitA-3        BANGLADESH                     1               7730   9919
0-3 months     JiVitA-3        BANGLADESH                     0               2189   9919
0-3 months     JiVitA-4        BANGLADESH                     1               1399   1675
0-3 months     JiVitA-4        BANGLADESH                     0                276   1675
0-3 months     MAL-ED          BANGLADESH                     1                 83    245
0-3 months     MAL-ED          BANGLADESH                     0                162    245
0-3 months     MAL-ED          BRAZIL                         1                 27    217
0-3 months     MAL-ED          BRAZIL                         0                190    217
0-3 months     MAL-ED          INDIA                          1                 18    235
0-3 months     MAL-ED          INDIA                          0                217    235
0-3 months     MAL-ED          NEPAL                          1                  9    230
0-3 months     MAL-ED          NEPAL                          0                221    230
0-3 months     MAL-ED          PERU                           1                 77    280
0-3 months     MAL-ED          PERU                           0                203    280
0-3 months     MAL-ED          SOUTH AFRICA                   1                  5    268
0-3 months     MAL-ED          SOUTH AFRICA                   0                263    268
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    232
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                228    232
3-6 months     EE              PAKISTAN                       1                  3      7
3-6 months     EE              PAKISTAN                       0                  4      7
3-6 months     GMS-Nepal       NEPAL                          1                367    460
3-6 months     GMS-Nepal       NEPAL                          0                 93    460
3-6 months     JiVitA-3        BANGLADESH                     1               5133   6658
3-6 months     JiVitA-3        BANGLADESH                     0               1525   6658
3-6 months     JiVitA-4        BANGLADESH                     1               1485   1755
3-6 months     JiVitA-4        BANGLADESH                     0                270   1755
3-6 months     MAL-ED          BANGLADESH                     1                 78    232
3-6 months     MAL-ED          BANGLADESH                     0                154    232
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
6-9 months     GMS-Nepal       NEPAL                          1                377    467
6-9 months     GMS-Nepal       NEPAL                          0                 90    467
6-9 months     JiVitA-4        BANGLADESH                     1               2196   2769
6-9 months     JiVitA-4        BANGLADESH                     0                573   2769
6-9 months     LCNI-5          MALAWI                         1                 23    144
6-9 months     LCNI-5          MALAWI                         0                121    144
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
6-9 months     SAS-FoodSuppl   INDIA                          1                  0    139
6-9 months     SAS-FoodSuppl   INDIA                          0                139    139
9-12 months    EE              PAKISTAN                       1                  3      8
9-12 months    EE              PAKISTAN                       0                  5      8
9-12 months    GMS-Nepal       NEPAL                          1                345    421
9-12 months    GMS-Nepal       NEPAL                          0                 76    421
9-12 months    JiVitA-4        BANGLADESH                     1               2377   3053
9-12 months    JiVitA-4        BANGLADESH                     0                676   3053
9-12 months    LCNI-5          MALAWI                         1                 10     31
9-12 months    LCNI-5          MALAWI                         0                 21     31
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
9-12 months    SAS-FoodSuppl   INDIA                          1                  0    138
9-12 months    SAS-FoodSuppl   INDIA                          0                138    138
12-15 months   EE              PAKISTAN                       1                  3      8
12-15 months   EE              PAKISTAN                       0                  5      8
12-15 months   GMS-Nepal       NEPAL                          1                339    417
12-15 months   GMS-Nepal       NEPAL                          0                 78    417
12-15 months   JiVitA-4        BANGLADESH                     1               2362   3043
12-15 months   JiVitA-4        BANGLADESH                     0                681   3043
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
15-18 months   GMS-Nepal       NEPAL                          1                351    437
15-18 months   GMS-Nepal       NEPAL                          0                 86    437
15-18 months   JiVitA-4        BANGLADESH                     1               2347   3005
15-18 months   JiVitA-4        BANGLADESH                     0                658   3005
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
15-18 months   MAL-ED          PERU                           1                 59    214
15-18 months   MAL-ED          PERU                           0                155    214
15-18 months   MAL-ED          SOUTH AFRICA                   1                  3    224
15-18 months   MAL-ED          SOUTH AFRICA                   0                221    224
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    219
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                215    219
15-18 months   SAS-FoodSuppl   INDIA                          1                  0    129
15-18 months   SAS-FoodSuppl   INDIA                          0                129    129
18-21 months   EE              PAKISTAN                       1                  2      7
18-21 months   EE              PAKISTAN                       0                  5      7
18-21 months   GMS-Nepal       NEPAL                          1                334    412
18-21 months   GMS-Nepal       NEPAL                          0                 78    412
18-21 months   LCNI-5          MALAWI                         1                 28    166
18-21 months   LCNI-5          MALAWI                         0                138    166
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
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    207
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                203    207
21-24 months   EE              PAKISTAN                       1                  0      2
21-24 months   EE              PAKISTAN                       0                  2      2
21-24 months   GMS-Nepal       NEPAL                          1                260    316
21-24 months   GMS-Nepal       NEPAL                          0                 56    316
21-24 months   LCNI-5          MALAWI                         1                 24    134
21-24 months   LCNI-5          MALAWI                         0                110    134
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
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    205
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                201    205


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




# Results Detail

## Results Plots
![](/tmp/424f8914-3991-4738-a4ac-a7a016e122c9/61dad2a7-ab8e-4bef-a0ef-6051cb400b2e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/424f8914-3991-4738-a4ac-a7a016e122c9/61dad2a7-ab8e-4bef-a0ef-6051cb400b2e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/424f8914-3991-4738-a4ac-a7a016e122c9/61dad2a7-ab8e-4bef-a0ef-6051cb400b2e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                0.8377489   0.8177413   0.8577564
0-3 months     GMS-Nepal   NEPAL                          0                    NA                0.7978391   0.7586516   0.8370266
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                0.8691120   0.8646147   0.8736092
0-3 months     JiVitA-3    BANGLADESH                     0                    NA                0.8704020   0.8607340   0.8800699
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                0.9002988   0.8890894   0.9115081
0-3 months     JiVitA-4    BANGLADESH                     0                    NA                0.8336174   0.8063766   0.8608581
0-3 months     MAL-ED      BANGLADESH                     1                    NA                0.8757570   0.8391723   0.9123418
0-3 months     MAL-ED      BANGLADESH                     0                    NA                0.8845095   0.8546845   0.9143346
0-3 months     MAL-ED      BRAZIL                         1                    NA                1.1506897   1.0178837   1.2834957
0-3 months     MAL-ED      BRAZIL                         0                    NA                1.0550784   1.0196468   1.0905100
0-3 months     MAL-ED      INDIA                          1                    NA                0.8034047   0.7058563   0.9009530
0-3 months     MAL-ED      INDIA                          0                    NA                0.7558263   0.7326596   0.7789931
0-3 months     MAL-ED      NEPAL                          1                    NA                0.8917231   0.7591937   1.0242525
0-3 months     MAL-ED      NEPAL                          0                    NA                0.9592919   0.9317769   0.9868068
0-3 months     MAL-ED      PERU                           1                    NA                1.0128687   0.9660978   1.0596397
0-3 months     MAL-ED      PERU                           0                    NA                0.9506000   0.9211678   0.9800322
0-3 months     MAL-ED      SOUTH AFRICA                   1                    NA                1.1240287   0.9802729   1.2677845
0-3 months     MAL-ED      SOUTH AFRICA                   0                    NA                0.9375440   0.9105230   0.9645650
3-6 months     GMS-Nepal   NEPAL                          1                    NA                0.4960921   0.4799501   0.5122340
3-6 months     GMS-Nepal   NEPAL                          0                    NA                0.4969200   0.4680122   0.5258278
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                0.4385398   0.4339614   0.4431181
3-6 months     JiVitA-3    BANGLADESH                     0                    NA                0.4345737   0.4212883   0.4478592
3-6 months     JiVitA-4    BANGLADESH                     1                    NA                0.4377835   0.4276328   0.4479342
3-6 months     JiVitA-4    BANGLADESH                     0                    NA                0.4429608   0.4211632   0.4647585
3-6 months     MAL-ED      BANGLADESH                     1                    NA                0.4677963   0.4411925   0.4944001
3-6 months     MAL-ED      BANGLADESH                     0                    NA                0.4771405   0.4557615   0.4985195
3-6 months     MAL-ED      BRAZIL                         1                    NA                0.5792061   0.4905231   0.6678891
3-6 months     MAL-ED      BRAZIL                         0                    NA                0.5772213   0.5435649   0.6108777
3-6 months     MAL-ED      INDIA                          1                    NA                0.4708617   0.4026547   0.5390688
3-6 months     MAL-ED      INDIA                          0                    NA                0.4450933   0.4270174   0.4631692
3-6 months     MAL-ED      NEPAL                          1                    NA                0.4237838   0.3564157   0.4911520
3-6 months     MAL-ED      NEPAL                          0                    NA                0.5256796   0.5049974   0.5463618
3-6 months     MAL-ED      PERU                           1                    NA                0.5248549   0.4857533   0.5639564
3-6 months     MAL-ED      PERU                           0                    NA                0.4926816   0.4713038   0.5140594
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4474229   0.3122280   0.5826178
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4580815   0.4333589   0.4828041
6-9 months     GMS-Nepal   NEPAL                          1                    NA                0.1820149   0.1700673   0.1939625
6-9 months     GMS-Nepal   NEPAL                          0                    NA                0.1980878   0.1577632   0.2384125
6-9 months     JiVitA-4    BANGLADESH                     1                    NA                0.2363453   0.2301612   0.2425294
6-9 months     JiVitA-4    BANGLADESH                     0                    NA                0.2481700   0.2370158   0.2593243
6-9 months     LCNI-5      MALAWI                         1                    NA                0.2449903   0.2020823   0.2878983
6-9 months     LCNI-5      MALAWI                         0                    NA                0.2900220   0.2614161   0.3186279
6-9 months     MAL-ED      BANGLADESH                     1                    NA                0.2309771   0.2024684   0.2594857
6-9 months     MAL-ED      BANGLADESH                     0                    NA                0.2485779   0.2313421   0.2658138
6-9 months     MAL-ED      BRAZIL                         1                    NA                0.3314456   0.2303531   0.4325381
6-9 months     MAL-ED      BRAZIL                         0                    NA                0.3870561   0.3600348   0.4140774
6-9 months     MAL-ED      INDIA                          1                    NA                0.1788945   0.1162455   0.2415435
6-9 months     MAL-ED      INDIA                          0                    NA                0.2371855   0.2220146   0.2523565
6-9 months     MAL-ED      NEPAL                          1                    NA                0.2627961   0.2130192   0.3125730
6-9 months     MAL-ED      NEPAL                          0                    NA                0.2702490   0.2553144   0.2851836
6-9 months     MAL-ED      PERU                           1                    NA                0.2398461   0.2126773   0.2670150
6-9 months     MAL-ED      PERU                           0                    NA                0.2674935   0.2487192   0.2862677
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1651971   0.0343276   0.2960666
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2401833   0.2156461   0.2647204
9-12 months    GMS-Nepal   NEPAL                          1                    NA                0.1361417   0.1218415   0.1504419
9-12 months    GMS-Nepal   NEPAL                          0                    NA                0.1507722   0.1180538   0.1834907
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                0.1510417   0.1460711   0.1560122
9-12 months    JiVitA-4    BANGLADESH                     0                    NA                0.1591987   0.1496336   0.1687638
9-12 months    LCNI-5      MALAWI                         1                    NA                0.2580229   0.0874313   0.4286145
9-12 months    LCNI-5      MALAWI                         0                    NA                0.1672428   0.0865459   0.2479397
9-12 months    MAL-ED      BANGLADESH                     1                    NA                0.1723972   0.1468671   0.1979272
9-12 months    MAL-ED      BANGLADESH                     0                    NA                0.1735326   0.1570756   0.1899895
9-12 months    MAL-ED      BRAZIL                         1                    NA                0.3589419   0.2601818   0.4577019
9-12 months    MAL-ED      BRAZIL                         0                    NA                0.2841951   0.2507029   0.3176874
9-12 months    MAL-ED      INDIA                          1                    NA                0.2107919   0.1672854   0.2542984
9-12 months    MAL-ED      INDIA                          0                    NA                0.1784702   0.1635126   0.1934278
9-12 months    MAL-ED      NEPAL                          1                    NA                0.2006778   0.1566946   0.2446609
9-12 months    MAL-ED      NEPAL                          0                    NA                0.1852689   0.1704220   0.2001158
9-12 months    MAL-ED      PERU                           1                    NA                0.1567803   0.1279196   0.1856410
9-12 months    MAL-ED      PERU                           0                    NA                0.1996388   0.1818173   0.2174604
12-15 months   GMS-Nepal   NEPAL                          1                    NA                0.1731540   0.1583628   0.1879452
12-15 months   GMS-Nepal   NEPAL                          0                    NA                0.1795083   0.1463374   0.2126793
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                0.1281581   0.1229405   0.1333757
12-15 months   JiVitA-4    BANGLADESH                     0                    NA                0.1410574   0.1317246   0.1503901
12-15 months   MAL-ED      BANGLADESH                     1                    NA                0.1188508   0.0910114   0.1466902
12-15 months   MAL-ED      BANGLADESH                     0                    NA                0.1435827   0.1246380   0.1625274
12-15 months   MAL-ED      BRAZIL                         1                    NA                0.1795332   0.0847169   0.2743495
12-15 months   MAL-ED      BRAZIL                         0                    NA                0.2145442   0.1891065   0.2399819
12-15 months   MAL-ED      INDIA                          1                    NA                0.1414751   0.0596143   0.2233359
12-15 months   MAL-ED      INDIA                          0                    NA                0.1778048   0.1615090   0.1941007
12-15 months   MAL-ED      NEPAL                          1                    NA                0.1058415   0.0151086   0.1965744
12-15 months   MAL-ED      NEPAL                          0                    NA                0.1540679   0.1371426   0.1709932
12-15 months   MAL-ED      PERU                           1                    NA                0.1285133   0.0979849   0.1590418
12-15 months   MAL-ED      PERU                           0                    NA                0.1473636   0.1273170   0.1674102
15-18 months   GMS-Nepal   NEPAL                          1                    NA                0.2280272   0.2106442   0.2454102
15-18 months   GMS-Nepal   NEPAL                          0                    NA                0.2353225   0.1986749   0.2719702
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                0.1567704   0.1508366   0.1627042
15-18 months   JiVitA-4    BANGLADESH                     0                    NA                0.1716042   0.1579005   0.1853079
15-18 months   MAL-ED      BANGLADESH                     1                    NA                0.1546999   0.1224942   0.1869056
15-18 months   MAL-ED      BANGLADESH                     0                    NA                0.1366615   0.1173616   0.1559613
15-18 months   MAL-ED      BRAZIL                         1                    NA                0.1508575   0.0782274   0.2234876
15-18 months   MAL-ED      BRAZIL                         0                    NA                0.2143228   0.1859966   0.2426491
15-18 months   MAL-ED      INDIA                          1                    NA                0.1488586   0.0722968   0.2254204
15-18 months   MAL-ED      INDIA                          0                    NA                0.1623877   0.1471773   0.1775981
15-18 months   MAL-ED      NEPAL                          1                    NA                0.1408374   0.0930431   0.1886318
15-18 months   MAL-ED      NEPAL                          0                    NA                0.1743689   0.1580959   0.1906420
15-18 months   MAL-ED      PERU                           1                    NA                0.1129928   0.0738083   0.1521773
15-18 months   MAL-ED      PERU                           0                    NA                0.1567503   0.1356820   0.1778186
18-21 months   GMS-Nepal   NEPAL                          1                    NA                0.1496063   0.1311078   0.1681048
18-21 months   GMS-Nepal   NEPAL                          0                    NA                0.1121799   0.0779610   0.1463989
18-21 months   LCNI-5      MALAWI                         1                    NA                0.2046033   0.1311101   0.2780966
18-21 months   LCNI-5      MALAWI                         0                    NA                0.1973602   0.1653544   0.2293660
18-21 months   MAL-ED      BANGLADESH                     1                    NA                0.1263482   0.0929820   0.1597143
18-21 months   MAL-ED      BANGLADESH                     0                    NA                0.1532929   0.1342656   0.1723201
18-21 months   MAL-ED      BRAZIL                         1                    NA                0.1221503   0.0751194   0.1691813
18-21 months   MAL-ED      BRAZIL                         0                    NA                0.1659557   0.1393143   0.1925971
18-21 months   MAL-ED      INDIA                          1                    NA                0.1228643   0.0464755   0.1992530
18-21 months   MAL-ED      INDIA                          0                    NA                0.1719639   0.1573042   0.1866235
18-21 months   MAL-ED      NEPAL                          1                    NA                0.1974941   0.0998061   0.2951822
18-21 months   MAL-ED      NEPAL                          0                    NA                0.1456590   0.1276760   0.1636421
18-21 months   MAL-ED      PERU                           1                    NA                0.1697643   0.1329725   0.2065560
18-21 months   MAL-ED      PERU                           0                    NA                0.1626521   0.1403437   0.1849606
21-24 months   GMS-Nepal   NEPAL                          1                    NA                0.1817583   0.1531131   0.2104034
21-24 months   GMS-Nepal   NEPAL                          0                    NA                0.1681911   0.1201810   0.2162012
21-24 months   LCNI-5      MALAWI                         1                    NA                0.1364263   0.0637596   0.2090931
21-24 months   LCNI-5      MALAWI                         0                    NA                0.1829958   0.1353131   0.2306784
21-24 months   MAL-ED      BANGLADESH                     1                    NA                0.1509703   0.1237891   0.1781514
21-24 months   MAL-ED      BANGLADESH                     0                    NA                0.1532935   0.1345985   0.1719885
21-24 months   MAL-ED      BRAZIL                         1                    NA                0.1696851   0.0754886   0.2638815
21-24 months   MAL-ED      BRAZIL                         0                    NA                0.1427205   0.1184459   0.1669952
21-24 months   MAL-ED      INDIA                          1                    NA                0.2043273   0.1414380   0.2672166
21-24 months   MAL-ED      INDIA                          0                    NA                0.1537968   0.1403749   0.1672187
21-24 months   MAL-ED      NEPAL                          1                    NA                0.1369113   0.0168014   0.2570213
21-24 months   MAL-ED      NEPAL                          0                    NA                0.1708248   0.1506226   0.1910270
21-24 months   MAL-ED      PERU                           1                    NA                0.1685535   0.1309446   0.2061625
21-24 months   MAL-ED      PERU                           0                    NA                0.1871750   0.1639973   0.2103526


### Parameter: E(Y)


agecat         studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL                          NA                   NA                0.8290682   0.8112267   0.8469097
0-3 months     JiVitA-3    BANGLADESH                     NA                   NA                0.8693660   0.8652018   0.8735301
0-3 months     JiVitA-4    BANGLADESH                     NA                   NA                0.8892195   0.8786542   0.8997847
0-3 months     MAL-ED      BANGLADESH                     NA                   NA                0.8793764   0.8562449   0.9025078
0-3 months     MAL-ED      BRAZIL                         NA                   NA                1.0655134   1.0311555   1.0998713
0-3 months     MAL-ED      INDIA                          NA                   NA                0.7588477   0.7364127   0.7812826
0-3 months     MAL-ED      NEPAL                          NA                   NA                0.9566479   0.9296524   0.9836434
0-3 months     MAL-ED      PERU                           NA                   NA                0.9709635   0.9457785   0.9961485
0-3 months     MAL-ED      SOUTH AFRICA                   NA                   NA                0.9410232   0.9142620   0.9677844
3-6 months     GMS-Nepal   NEPAL                          NA                   NA                0.4969685   0.4829796   0.5109574
3-6 months     JiVitA-3    BANGLADESH                     NA                   NA                0.4376750   0.4329472   0.4424029
3-6 months     JiVitA-4    BANGLADESH                     NA                   NA                0.4386833   0.4295081   0.4478585
3-6 months     MAL-ED      BANGLADESH                     NA                   NA                0.4740560   0.4573508   0.4907612
3-6 months     MAL-ED      BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     MAL-ED      INDIA                          NA                   NA                0.4437256   0.4262017   0.4612496
3-6 months     MAL-ED      NEPAL                          NA                   NA                0.5221660   0.5019198   0.5424121
3-6 months     MAL-ED      PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4578547   0.4335136   0.4821959
6-9 months     GMS-Nepal   NEPAL                          NA                   NA                0.1871486   0.1748771   0.1994201
6-9 months     JiVitA-4    BANGLADESH                     NA                   NA                0.2387387   0.2332737   0.2442038
6-9 months     LCNI-5      MALAWI                         NA                   NA                0.2829175   0.2578313   0.3080037
6-9 months     MAL-ED      BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     MAL-ED      BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     MAL-ED      INDIA                          NA                   NA                0.2306231   0.2156296   0.2456166
6-9 months     MAL-ED      NEPAL                          NA                   NA                0.2699886   0.2554702   0.2845071
6-9 months     MAL-ED      PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2385095   0.2143193   0.2626996
9-12 months    GMS-Nepal   NEPAL                          NA                   NA                0.1395865   0.1265823   0.1525906
9-12 months    JiVitA-4    BANGLADESH                     NA                   NA                0.1533597   0.1488837   0.1578358
9-12 months    LCNI-5      MALAWI                         NA                   NA                0.1849664   0.1167599   0.2531730
9-12 months    MAL-ED      BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    MAL-ED      BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    MAL-ED      INDIA                          NA                   NA                0.1787492   0.1645237   0.1929747
9-12 months    MAL-ED      NEPAL                          NA                   NA                0.1857420   0.1712835   0.2002004
9-12 months    MAL-ED      PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
12-15 months   GMS-Nepal   NEPAL                          NA                   NA                0.1746639   0.1610783   0.1882495
12-15 months   JiVitA-4    BANGLADESH                     NA                   NA                0.1308582   0.1262352   0.1354811
12-15 months   MAL-ED      BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   MAL-ED      BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   MAL-ED      INDIA                          NA                   NA                0.1739653   0.1578765   0.1900541
12-15 months   MAL-ED      NEPAL                          NA                   NA                0.1525937   0.1359182   0.1692692
12-15 months   MAL-ED      PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
15-18 months   GMS-Nepal   NEPAL                          NA                   NA                0.2291397   0.2134657   0.2448138
15-18 months   JiVitA-4    BANGLADESH                     NA                   NA                0.1598556   0.1545499   0.1651613
15-18 months   MAL-ED      BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   MAL-ED      BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   MAL-ED      INDIA                          NA                   NA                0.1642299   0.1493519   0.1791079
15-18 months   MAL-ED      NEPAL                          NA                   NA                0.1731820   0.1573733   0.1889907
15-18 months   MAL-ED      PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
18-21 months   GMS-Nepal   NEPAL                          NA                   NA                0.1428759   0.1266216   0.1591302
18-21 months   LCNI-5      MALAWI                         NA                   NA                0.2016785   0.1726437   0.2307133
18-21 months   MAL-ED      BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   MAL-ED      BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   MAL-ED      INDIA                          NA                   NA                0.1701596   0.1556514   0.1846677
18-21 months   MAL-ED      NEPAL                          NA                   NA                0.1474939   0.1297619   0.1652260
18-21 months   MAL-ED      PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
21-24 months   GMS-Nepal   NEPAL                          NA                   NA                0.1784694   0.1533807   0.2035582
21-24 months   LCNI-5      MALAWI                         NA                   NA                0.1779746   0.1356818   0.2202674
21-24 months   MAL-ED      BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   MAL-ED      BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   MAL-ED      INDIA                          NA                   NA                0.1565193   0.1433011   0.1697376
21-24 months   MAL-ED      NEPAL                          NA                   NA                0.1696243   0.1496620   0.1895867
21-24 months   MAL-ED      PERU                           NA                   NA                0.1814671   0.1617319   0.2012023


### Parameter: ATE


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal   NEPAL                          0                    1                 -0.0399098   -0.0839160    0.0040965
0-3 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH                     0                    1                  0.0012900   -0.0092345    0.0118146
0-3 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH                     0                    1                 -0.0666814   -0.0961456   -0.0372172
0-3 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH                     0                    1                  0.0087525   -0.0386022    0.0561072
0-3 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL                         0                    1                 -0.0956113   -0.2328923    0.0416697
0-3 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      INDIA                          0                    1                 -0.0475783   -0.1479116    0.0527550
0-3 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      NEPAL                          0                    1                  0.0675688   -0.0677867    0.2029243
0-3 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU                           0                    1                 -0.0622688   -0.1176159   -0.0069216
0-3 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      SOUTH AFRICA                   0                    1                 -0.1864847   -0.3327579   -0.0402114
3-6 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL                          0                    1                  0.0008280   -0.0323508    0.0340067
3-6 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH                     0                    1                 -0.0039660   -0.0178642    0.0099321
3-6 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4    BANGLADESH                     0                    1                  0.0051773   -0.0188216    0.0291762
3-6 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH                     0                    1                  0.0093442   -0.0249261    0.0436145
3-6 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL                         0                    1                 -0.0019848   -0.0964636    0.0924940
3-6 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA                          0                    1                 -0.0257684   -0.0962659    0.0447290
3-6 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      NEPAL                          0                    1                  0.1018958    0.0314244    0.1723672
3-6 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU                           0                    1                 -0.0321733   -0.0767179    0.0123714
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0106586   -0.1267782    0.1480954
6-9 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL                          0                    1                  0.0160730   -0.0259188    0.0580648
6-9 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4    BANGLADESH                     0                    1                  0.0118247   -0.0007633    0.0244127
6-9 months     LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5      MALAWI                         0                    1                  0.0450317   -0.0067262    0.0967895
6-9 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH                     0                    1                  0.0176009   -0.0158524    0.0510542
6-9 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL                         0                    1                  0.0556105   -0.0495204    0.1607415
6-9 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA                          0                    1                  0.0582910   -0.0061268    0.1227088
6-9 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      NEPAL                          0                    1                  0.0074529   -0.0445161    0.0594219
6-9 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU                           0                    1                  0.0276473   -0.0053924    0.0606871
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0749862   -0.0581638    0.2081361
9-12 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL                          0                    1                  0.0146305   -0.0210080    0.0502691
9-12 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH                     0                    1                  0.0081570   -0.0023886    0.0187026
9-12 months    LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5      MALAWI                         0                    1                 -0.0907801   -0.2878720    0.1063118
9-12 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH                     0                    1                  0.0011354   -0.0296312    0.0319021
9-12 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL                         0                    1                 -0.0747467   -0.1797970    0.0303036
9-12 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA                          0                    1                 -0.0323217   -0.0782918    0.0136484
9-12 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      NEPAL                          0                    1                 -0.0154089   -0.0618303    0.0310125
9-12 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU                           0                    1                  0.0428585    0.0090765    0.0766405
12-15 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL                          0                    1                  0.0063543   -0.0300505    0.0427592
12-15 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH                     0                    1                  0.0128993    0.0023266    0.0234720
12-15 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH                     0                    1                  0.0247319   -0.0088405    0.0583043
12-15 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL                         0                    1                  0.0350110   -0.0632468    0.1332688
12-15 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA                          0                    1                  0.0363297   -0.0471387    0.1197981
12-15 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      NEPAL                          0                    1                  0.0482264   -0.0440716    0.1405244
12-15 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU                           0                    1                  0.0188503   -0.0177787    0.0554793
15-18 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL                          0                    1                  0.0072954   -0.0332380    0.0478288
15-18 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH                     0                    1                  0.0148338   -0.0001229    0.0297905
15-18 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH                     0                    1                 -0.0180384   -0.0571853    0.0211084
15-18 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL                         0                    1                  0.0634653   -0.0145248    0.1414555
15-18 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA                          0                    1                  0.0135291   -0.0646774    0.0917356
15-18 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      NEPAL                          0                    1                  0.0335315   -0.0169572    0.0840203
15-18 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU                           0                    1                  0.0437575   -0.0008330    0.0883481
18-21 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL                          0                    1                 -0.0374264   -0.0765278    0.0016750
18-21 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5      MALAWI                         0                    1                 -0.0072431   -0.0870497    0.0725635
18-21 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH                     0                    1                  0.0269447   -0.0111739    0.0650633
18-21 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL                         0                    1                  0.0438053   -0.0108808    0.0984914
18-21 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA                          0                    1                  0.0490996   -0.0288414    0.1270406
18-21 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      NEPAL                          0                    1                 -0.0518351   -0.1511646    0.0474943
18-21 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      PERU                           0                    1                 -0.0071121   -0.0504902    0.0362659
21-24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL                          0                    1                 -0.0135671   -0.0692352    0.0421009
21-24 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5      MALAWI                         0                    1                  0.0465694   -0.0416988    0.1348377
21-24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH                     0                    1                  0.0023233   -0.0307509    0.0353974
21-24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL                         0                    1                 -0.0269645   -0.1239958    0.0700668
21-24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA                          0                    1                 -0.0505305   -0.1148461    0.0137851
21-24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      NEPAL                          0                    1                  0.0339135   -0.0878836    0.1557106
21-24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      PERU                           0                    1                  0.0186214   -0.0258344    0.0630772


### Parameter: PAR


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                -0.0086807   -0.0175043    0.0001429
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                 0.0002540   -0.0020635    0.0025715
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                -0.0110793   -0.0163709   -0.0057877
0-3 months     MAL-ED      BANGLADESH                     1                    NA                 0.0036193   -0.0276774    0.0349161
0-3 months     MAL-ED      BRAZIL                         1                    NA                -0.0851763   -0.2086669    0.0383143
0-3 months     MAL-ED      INDIA                          1                    NA                -0.0445570   -0.1379660    0.0488520
0-3 months     MAL-ED      NEPAL                          1                    NA                 0.0649248   -0.0651452    0.1949949
0-3 months     MAL-ED      PERU                           1                    NA                -0.0419052   -0.0823333   -0.0014771
0-3 months     MAL-ED      SOUTH AFRICA                   1                    NA                -0.1830055   -0.3256540   -0.0403569
3-6 months     GMS-Nepal   NEPAL                          1                    NA                 0.0008764   -0.0056947    0.0074475
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                -0.0008647   -0.0040366    0.0023071
3-6 months     JiVitA-4    BANGLADESH                     1                    NA                 0.0008998   -0.0027062    0.0045057
3-6 months     MAL-ED      BANGLADESH                     1                    NA                 0.0062597   -0.0167853    0.0293047
3-6 months     MAL-ED      BRAZIL                         1                    NA                -0.0010086   -0.0848401    0.0828230
3-6 months     MAL-ED      INDIA                          1                    NA                -0.0271361   -0.0923883    0.0381161
3-6 months     MAL-ED      NEPAL                          1                    NA                 0.0983821    0.0302985    0.1664657
3-6 months     MAL-ED      PERU                           1                    NA                -0.0266214   -0.0596891    0.0064464
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0104319   -0.1235692    0.1444329
6-9 months     GMS-Nepal   NEPAL                          1                    NA                 0.0051337   -0.0027404    0.0130078
6-9 months     JiVitA-4    BANGLADESH                     1                    NA                 0.0023934   -0.0001684    0.0049552
6-9 months     LCNI-5      MALAWI                         1                    NA                 0.0379272   -0.0060115    0.0818659
6-9 months     MAL-ED      BANGLADESH                     1                    NA                 0.0118781   -0.0113193    0.0350756
6-9 months     MAL-ED      BRAZIL                         1                    NA                 0.0517043   -0.0416540    0.1450626
6-9 months     MAL-ED      INDIA                          1                    NA                 0.0517286   -0.0084659    0.1119230
6-9 months     MAL-ED      NEPAL                          1                    NA                 0.0071925   -0.0429613    0.0573464
6-9 months     MAL-ED      PERU                           1                    NA                 0.0215472   -0.0028487    0.0459431
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0733124   -0.0565170    0.2031417
9-12 months    GMS-Nepal   NEPAL                          1                    NA                 0.0034448   -0.0028370    0.0097266
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                 0.0023181    0.0000457    0.0045905
9-12 months    LCNI-5      MALAWI                         1                    NA                -0.0730564   -0.2156697    0.0695568
9-12 months    MAL-ED      BANGLADESH                     1                    NA                 0.0006375   -0.0201282    0.0214032
9-12 months    MAL-ED      BRAZIL                         1                    NA                -0.0743496   -0.1682585    0.0195593
9-12 months    MAL-ED      INDIA                          1                    NA                -0.0320427   -0.0749944    0.0109089
9-12 months    MAL-ED      NEPAL                          1                    NA                -0.0149358   -0.0599333    0.0300617
9-12 months    MAL-ED      PERU                           1                    NA                 0.0307003    0.0060527    0.0553480
12-15 months   GMS-Nepal   NEPAL                          1                    NA                 0.0015099   -0.0052997    0.0083195
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0027001    0.0003137    0.0050865
12-15 months   MAL-ED      BANGLADESH                     1                    NA                 0.0165078   -0.0062232    0.0392388
12-15 months   MAL-ED      BRAZIL                         1                    NA                 0.0306614   -0.0572750    0.1185977
12-15 months   MAL-ED      INDIA                          1                    NA                 0.0324902   -0.0455919    0.1105722
12-15 months   MAL-ED      NEPAL                          1                    NA                 0.0467522   -0.0427309    0.1362354
12-15 months   MAL-ED      PERU                           1                    NA                 0.0132257   -0.0138637    0.0403150
15-18 months   GMS-Nepal   NEPAL                          1                    NA                 0.0011126   -0.0068095    0.0090346
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0030852   -0.0000171    0.0061875
15-18 months   MAL-ED      BANGLADESH                     1                    NA                -0.0119117   -0.0392620    0.0154386
15-18 months   MAL-ED      BRAZIL                         1                    NA                 0.0525620   -0.0164862    0.1216102
15-18 months   MAL-ED      INDIA                          1                    NA                 0.0153713   -0.0582016    0.0889442
15-18 months   MAL-ED      NEPAL                          1                    NA                 0.0323446   -0.0163637    0.0810528
15-18 months   MAL-ED      PERU                           1                    NA                 0.0331961    0.0008576    0.0655346
18-21 months   GMS-Nepal   NEPAL                          1                    NA                -0.0067304   -0.0142493    0.0007884
18-21 months   LCNI-5      MALAWI                         1                    NA                -0.0029248   -0.0700459    0.0641962
18-21 months   MAL-ED      BANGLADESH                     1                    NA                 0.0163665   -0.0105091    0.0432420
18-21 months   MAL-ED      BRAZIL                         1                    NA                 0.0384988   -0.0101666    0.0871642
18-21 months   MAL-ED      INDIA                          1                    NA                 0.0472953   -0.0253511    0.1199417
18-21 months   MAL-ED      NEPAL                          1                    NA                -0.0500002   -0.1458218    0.0458213
18-21 months   MAL-ED      PERU                           1                    NA                -0.0081990   -0.0406337    0.0242356
21-24 months   GMS-Nepal   NEPAL                          1                    NA                -0.0032888   -0.0131657    0.0065880
21-24 months   LCNI-5      MALAWI                         1                    NA                 0.0415483   -0.0329002    0.1159967
21-24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0011453   -0.0220217    0.0243123
21-24 months   MAL-ED      BRAZIL                         1                    NA                -0.0261950   -0.1136380    0.0612479
21-24 months   MAL-ED      INDIA                          1                    NA                -0.0478079   -0.1076711    0.0120553
21-24 months   MAL-ED      NEPAL                          1                    NA                 0.0327130   -0.0847755    0.1502015
21-24 months   MAL-ED      PERU                           1                    NA                 0.0129136   -0.0208288    0.0466560
