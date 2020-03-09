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




# Results Detail

## Results Plots
![](/tmp/f4d61fec-fa62-42cd-b743-cba99a0438e5/e19ae01d-be8e-4766-bef4-848e73cd85eb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f4d61fec-fa62-42cd-b743-cba99a0438e5/e19ae01d-be8e-4766-bef4-848e73cd85eb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f4d61fec-fa62-42cd-b743-cba99a0438e5/e19ae01d-be8e-4766-bef4-848e73cd85eb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                3.6247179   3.5668850   3.6825508
0-3 months     GMS-Nepal   NEPAL                          0                    NA                3.5758866   3.4436646   3.7081086
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                3.7041969   3.6900639   3.7183299
0-3 months     JiVitA-3    BANGLADESH                     0                    NA                3.7080818   3.6826160   3.7335477
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                3.6499926   3.6165978   3.6833874
0-3 months     JiVitA-4    BANGLADESH                     0                    NA                3.5143473   3.4293026   3.5993921
0-3 months     MAL-ED      BANGLADESH                     1                    NA                3.2620059   3.1583696   3.3656422
0-3 months     MAL-ED      BANGLADESH                     0                    NA                3.3833476   3.2988046   3.4678907
0-3 months     MAL-ED      BRAZIL                         1                    NA                4.1781701   3.7732676   4.5830725
0-3 months     MAL-ED      BRAZIL                         0                    NA                3.7744371   3.6600534   3.8888208
0-3 months     MAL-ED      INDIA                          1                    NA                3.7604189   2.9284612   4.5923766
0-3 months     MAL-ED      INDIA                          0                    NA                3.3430123   3.2490747   3.4369498
0-3 months     MAL-ED      NEPAL                          1                    NA                3.2566947   3.0041285   3.5092609
0-3 months     MAL-ED      NEPAL                          0                    NA                3.6355630   3.5400307   3.7310953
0-3 months     MAL-ED      PERU                           1                    NA                3.1210356   2.9908303   3.2512409
0-3 months     MAL-ED      PERU                           0                    NA                3.0224829   2.9448701   3.1000957
3-6 months     GMS-Nepal   NEPAL                          1                    NA                1.7201380   1.6766867   1.7635892
3-6 months     GMS-Nepal   NEPAL                          0                    NA                1.6623837   1.5663031   1.7584642
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                1.9106460   1.8944730   1.9268190
3-6 months     JiVitA-3    BANGLADESH                     0                    NA                1.9107481   1.8831822   1.9383141
3-6 months     JiVitA-4    BANGLADESH                     1                    NA                1.8834628   1.8503184   1.9166072
3-6 months     JiVitA-4    BANGLADESH                     0                    NA                1.9538902   1.8782002   2.0295802
3-6 months     MAL-ED      BANGLADESH                     1                    NA                1.9209289   1.8262527   2.0156051
3-6 months     MAL-ED      BANGLADESH                     0                    NA                1.9306628   1.8723751   1.9889505
3-6 months     MAL-ED      BRAZIL                         1                    NA                2.2551154   2.0345007   2.4757300
3-6 months     MAL-ED      BRAZIL                         0                    NA                2.1384512   2.0531330   2.2237694
3-6 months     MAL-ED      INDIA                          1                    NA                1.9525057   1.7396838   2.1653276
3-6 months     MAL-ED      INDIA                          0                    NA                1.8786181   1.8115416   1.9456947
3-6 months     MAL-ED      NEPAL                          1                    NA                1.9686909   1.6865490   2.2508327
3-6 months     MAL-ED      NEPAL                          0                    NA                1.9659877   1.9085533   2.0234221
3-6 months     MAL-ED      PERU                           1                    NA                2.0738672   1.9333028   2.2144316
3-6 months     MAL-ED      PERU                           0                    NA                1.9989513   1.9241411   2.0737615
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                1.6207289   1.4299522   1.8115056
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8334280   1.7636111   1.9032449
6-9 months     GMS-Nepal   NEPAL                          1                    NA                1.3116476   1.2716007   1.3516945
6-9 months     GMS-Nepal   NEPAL                          0                    NA                1.3334196   1.1996782   1.4671610
6-9 months     JiVitA-4    BANGLADESH                     1                    NA                1.3236496   1.2998126   1.3474865
6-9 months     JiVitA-4    BANGLADESH                     0                    NA                1.3332431   1.2869434   1.3795428
6-9 months     LCNI-5      MALAWI                         1                    NA                1.3289714   1.1318530   1.5260898
6-9 months     LCNI-5      MALAWI                         0                    NA                1.4288356   1.3622134   1.4954577
6-9 months     MAL-ED      BANGLADESH                     1                    NA                1.2740197   1.2027673   1.3452721
6-9 months     MAL-ED      BANGLADESH                     0                    NA                1.2375135   1.1889777   1.2860493
6-9 months     MAL-ED      BRAZIL                         1                    NA                1.4743198   1.2607613   1.6878782
6-9 months     MAL-ED      BRAZIL                         0                    NA                1.4863440   1.3990406   1.5736474
6-9 months     MAL-ED      INDIA                          1                    NA                1.2422926   1.0842906   1.4002946
6-9 months     MAL-ED      INDIA                          0                    NA                1.2443867   1.1902322   1.2985413
6-9 months     MAL-ED      NEPAL                          1                    NA                1.2866511   1.0305905   1.5427117
6-9 months     MAL-ED      NEPAL                          0                    NA                1.3614039   1.3165607   1.4062470
6-9 months     MAL-ED      PERU                           1                    NA                1.3075003   1.1915061   1.4234944
6-9 months     MAL-ED      PERU                           0                    NA                1.3222008   1.2608935   1.3835080
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                1.4020878   1.0872084   1.7169673
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1882113   1.1086903   1.2677324
9-12 months    GMS-Nepal   NEPAL                          1                    NA                0.9972464   0.9632908   1.0312020
9-12 months    GMS-Nepal   NEPAL                          0                    NA                1.0083277   0.8989156   1.1177399
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                1.0677023   1.0453632   1.0900415
9-12 months    JiVitA-4    BANGLADESH                     0                    NA                1.0629997   1.0224948   1.1035046
9-12 months    LCNI-5      MALAWI                         1                    NA                0.9300524   0.6858792   1.1742255
9-12 months    LCNI-5      MALAWI                         0                    NA                0.8670675   0.6760684   1.0580666
9-12 months    MAL-ED      BANGLADESH                     1                    NA                0.9646078   0.8973690   1.0318465
9-12 months    MAL-ED      BANGLADESH                     0                    NA                1.0035733   0.9557054   1.0514413
9-12 months    MAL-ED      BRAZIL                         1                    NA                1.1734031   1.0020848   1.3447213
9-12 months    MAL-ED      BRAZIL                         0                    NA                1.3091106   1.2275577   1.3906636
9-12 months    MAL-ED      INDIA                          1                    NA                0.8490362   0.6562364   1.0418359
9-12 months    MAL-ED      INDIA                          0                    NA                0.9845067   0.9452992   1.0237142
9-12 months    MAL-ED      NEPAL                          1                    NA                0.9963726   0.8922715   1.1004736
9-12 months    MAL-ED      NEPAL                          0                    NA                1.0912728   1.0492608   1.1332849
9-12 months    MAL-ED      PERU                           1                    NA                1.0629389   0.9737793   1.1520986
9-12 months    MAL-ED      PERU                           0                    NA                1.1050221   1.0433177   1.1667264
12-15 months   GMS-Nepal   NEPAL                          1                    NA                0.8726724   0.8444029   0.9009419
12-15 months   GMS-Nepal   NEPAL                          0                    NA                0.8604311   0.7928829   0.9279794
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                0.9297550   0.9103175   0.9491924
12-15 months   JiVitA-4    BANGLADESH                     0                    NA                0.9684358   0.9270451   1.0098265
12-15 months   MAL-ED      BANGLADESH                     1                    NA                0.8681556   0.8065272   0.9297840
12-15 months   MAL-ED      BANGLADESH                     0                    NA                0.9399357   0.8882848   0.9915865
12-15 months   MAL-ED      BRAZIL                         1                    NA                1.0143757   0.8526439   1.1761075
12-15 months   MAL-ED      BRAZIL                         0                    NA                1.1458735   1.0829048   1.2088422
12-15 months   MAL-ED      INDIA                          1                    NA                0.7370415   0.6022360   0.8718470
12-15 months   MAL-ED      INDIA                          0                    NA                0.9179884   0.8770088   0.9589680
12-15 months   MAL-ED      NEPAL                          1                    NA                0.9089104   0.7121503   1.1056706
12-15 months   MAL-ED      NEPAL                          0                    NA                0.9526185   0.9122933   0.9929436
12-15 months   MAL-ED      PERU                           1                    NA                0.8429726   0.7640825   0.9218627
12-15 months   MAL-ED      PERU                           0                    NA                0.9082776   0.8518956   0.9646596
15-18 months   GMS-Nepal   NEPAL                          1                    NA                0.7748265   0.7357587   0.8138943
15-18 months   GMS-Nepal   NEPAL                          0                    NA                0.6999507   0.6441298   0.7557717
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                0.8563017   0.8362997   0.8763037
15-18 months   JiVitA-4    BANGLADESH                     0                    NA                0.8535890   0.8147485   0.8924295
15-18 months   MAL-ED      BANGLADESH                     1                    NA                0.8142973   0.7498965   0.8786982
15-18 months   MAL-ED      BANGLADESH                     0                    NA                0.8294666   0.7826521   0.8762811
15-18 months   MAL-ED      BRAZIL                         1                    NA                1.0603550   0.8941615   1.2265486
15-18 months   MAL-ED      BRAZIL                         0                    NA                0.9957272   0.9326321   1.0588223
15-18 months   MAL-ED      INDIA                          1                    NA                0.7805282   0.6426033   0.9184532
15-18 months   MAL-ED      INDIA                          0                    NA                0.8482982   0.8105117   0.8860847
15-18 months   MAL-ED      NEPAL                          1                    NA                0.9086489   0.7591956   1.0581022
15-18 months   MAL-ED      NEPAL                          0                    NA                0.8381099   0.7953541   0.8808657
15-18 months   MAL-ED      PERU                           1                    NA                0.8307950   0.7539852   0.9076047
15-18 months   MAL-ED      PERU                           0                    NA                0.8615637   0.8107177   0.9124098
18-21 months   GMS-Nepal   NEPAL                          1                    NA                0.9005861   0.8577499   0.9434224
18-21 months   GMS-Nepal   NEPAL                          0                    NA                0.9177457   0.8573653   0.9781261
18-21 months   LCNI-5      MALAWI                         1                    NA                0.7858477   0.5485281   1.0231674
18-21 months   LCNI-5      MALAWI                         0                    NA                0.8726005   0.7919290   0.9532721
18-21 months   MAL-ED      BANGLADESH                     1                    NA                0.7878532   0.7291353   0.8465711
18-21 months   MAL-ED      BANGLADESH                     0                    NA                0.8262358   0.7837294   0.8687422
18-21 months   MAL-ED      BRAZIL                         1                    NA                0.8796047   0.7585870   1.0006223
18-21 months   MAL-ED      BRAZIL                         0                    NA                0.9210026   0.8432329   0.9987722
18-21 months   MAL-ED      INDIA                          1                    NA                0.7573725   0.6094341   0.9053109
18-21 months   MAL-ED      INDIA                          0                    NA                0.8819275   0.8455894   0.9182655
18-21 months   MAL-ED      NEPAL                          1                    NA                0.6607062   0.4802918   0.8411205
18-21 months   MAL-ED      NEPAL                          0                    NA                0.8236151   0.7847133   0.8625168
18-21 months   MAL-ED      PERU                           1                    NA                0.8278594   0.7391698   0.9165490
18-21 months   MAL-ED      PERU                           0                    NA                0.8471368   0.7950127   0.8992608
21-24 months   GMS-Nepal   NEPAL                          1                    NA                0.7708161   0.7230146   0.8186176
21-24 months   GMS-Nepal   NEPAL                          0                    NA                0.8510008   0.6957109   1.0062907
21-24 months   LCNI-5      MALAWI                         1                    NA                0.7431395   0.5983185   0.8879604
21-24 months   LCNI-5      MALAWI                         0                    NA                0.7340926   0.6563282   0.8118569
21-24 months   MAL-ED      BANGLADESH                     1                    NA                0.7712696   0.7054075   0.8371317
21-24 months   MAL-ED      BANGLADESH                     0                    NA                0.7714305   0.7290436   0.8138174
21-24 months   MAL-ED      BRAZIL                         1                    NA                0.8638528   0.7616847   0.9660210
21-24 months   MAL-ED      BRAZIL                         0                    NA                0.7870623   0.7380758   0.8360488
21-24 months   MAL-ED      INDIA                          1                    NA                0.8803110   0.7815918   0.9790301
21-24 months   MAL-ED      INDIA                          0                    NA                0.8248426   0.7922884   0.8573967
21-24 months   MAL-ED      NEPAL                          1                    NA                0.9602142   0.6789533   1.2414750
21-24 months   MAL-ED      NEPAL                          0                    NA                0.7768540   0.7359514   0.8177565
21-24 months   MAL-ED      PERU                           1                    NA                0.7912572   0.6863592   0.8961553
21-24 months   MAL-ED      PERU                           0                    NA                0.7520341   0.6990832   0.8049849


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
0-3 months     GMS-Nepal   NEPAL                          0                    1                 -0.0488313   -0.1931965    0.0955339
0-3 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH                     0                    1                  0.0038849   -0.0231482    0.0309180
0-3 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH                     0                    1                 -0.1356452   -0.2269081   -0.0443824
0-3 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH                     0                    1                  0.1213418   -0.0126986    0.2553821
0-3 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL                         0                    1                 -0.4037330   -0.8239312    0.0164653
0-3 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      INDIA                          0                    1                 -0.4174066   -1.2573701    0.4225568
0-3 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      NEPAL                          0                    1                  0.3788683    0.1088384    0.6488981
0-3 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU                           0                    1                 -0.0985527   -0.2502984    0.0531930
3-6 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL                          0                    1                 -0.0577543   -0.1630172    0.0475086
3-6 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH                     0                    1                  0.0001021   -0.0308188    0.0310231
3-6 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4    BANGLADESH                     0                    1                  0.0704274   -0.0119285    0.1527833
3-6 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH                     0                    1                  0.0097339   -0.1018315    0.1212992
3-6 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL                         0                    1                 -0.1166641   -0.3538375    0.1205092
3-6 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA                          0                    1                 -0.0738875   -0.3000487    0.1522736
3-6 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      NEPAL                          0                    1                 -0.0027032   -0.2906315    0.2852252
3-6 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU                           0                    1                 -0.0749159   -0.2338121    0.0839802
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2126991    0.0095485    0.4158496
6-9 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL                          0                    1                  0.0217720   -0.1169711    0.1605150
6-9 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4    BANGLADESH                     0                    1                  0.0095935   -0.0417805    0.0609675
6-9 months     LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5      MALAWI                         0                    1                  0.0998641   -0.1123570    0.3120853
6-9 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH                     0                    1                 -0.0365062   -0.1228604    0.0498480
6-9 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL                         0                    1                  0.0120242   -0.2200832    0.2441317
6-9 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA                          0                    1                  0.0020941   -0.1648145    0.1690027
6-9 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      NEPAL                          0                    1                  0.0747528   -0.1852049    0.3347104
6-9 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU                           0                    1                  0.0147005   -0.1167552    0.1461563
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2138765   -0.5386421    0.1108890
9-12 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL                          0                    1                  0.0110814   -0.1023495    0.1245123
9-12 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH                     0                    1                 -0.0047026   -0.0509101    0.0415048
9-12 months    LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5      MALAWI                         0                    1                 -0.0629849   -0.3967486    0.2707788
9-12 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH                     0                    1                  0.0389656   -0.0435281    0.1214592
9-12 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL                         0                    1                  0.1357076   -0.0551566    0.3265717
9-12 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA                          0                    1                  0.1354706   -0.0610943    0.3320354
9-12 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      NEPAL                          0                    1                  0.0949003   -0.0173585    0.2071591
9-12 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU                           0                    1                  0.0420831   -0.0665166    0.1506829
12-15 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL                          0                    1                 -0.0122413   -0.0855085    0.0610260
12-15 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH                     0                    1                  0.0386809   -0.0067923    0.0841540
12-15 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH                     0                    1                  0.0717801   -0.0089103    0.1524705
12-15 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL                         0                    1                  0.1314978   -0.0420072    0.3050028
12-15 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA                          0                    1                  0.1809468    0.0399170    0.3219767
12-15 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      NEPAL                          0                    1                  0.0437080   -0.1571418    0.2445579
12-15 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU                           0                    1                  0.0653050   -0.0315340    0.1621440
15-18 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL                          0                    1                 -0.0748758   -0.1437374   -0.0060142
15-18 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH                     0                    1                 -0.0027127   -0.0451857    0.0397603
15-18 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH                     0                    1                  0.0151693   -0.0647549    0.0950935
15-18 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL                         0                    1                 -0.0646279   -0.2429814    0.1137257
15-18 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA                          0                    1                  0.0677700   -0.0751678    0.2107078
15-18 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      NEPAL                          0                    1                 -0.0705390   -0.2259878    0.0849098
15-18 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU                           0                    1                  0.0307688   -0.0615731    0.1231107
18-21 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL                          0                    1                  0.0171596   -0.0572332    0.0915523
18-21 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5      MALAWI                         0                    1                  0.0867528   -0.1650378    0.3385434
18-21 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH                     0                    1                  0.0383826   -0.0344030    0.1111682
18-21 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL                         0                    1                  0.0413979   -0.1023644    0.1851602
18-21 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA                          0                    1                  0.1245550   -0.0274511    0.2765610
18-21 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      NEPAL                          0                    1                  0.1629089   -0.0216519    0.3474697
18-21 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      PERU                           0                    1                  0.0192774   -0.0840817    0.1226364
21-24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL                          0                    1                  0.0801846   -0.0824799    0.2428492
21-24 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5      MALAWI                         0                    1                 -0.0090469   -0.1740753    0.1559816
21-24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH                     0                    1                  0.0001609   -0.0784807    0.0788024
21-24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL                         0                    1                 -0.0767905   -0.1902494    0.0366684
21-24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA                          0                    1                 -0.0554684   -0.1594573    0.0485206
21-24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      NEPAL                          0                    1                 -0.1833602   -0.4675796    0.1008592
21-24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      PERU                           0                    1                 -0.0392232   -0.1571869    0.0787405


### Parameter: PAR


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                -0.0073367   -0.0357600    0.0210867
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                 0.0007265   -0.0052155    0.0066684
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                -0.0227806   -0.0383200   -0.0072412
0-3 months     MAL-ED      BANGLADESH                     1                    NA                 0.0782112   -0.0110698    0.1674922
0-3 months     MAL-ED      BRAZIL                         1                    NA                -0.3696048   -0.7503503    0.0111407
0-3 months     MAL-ED      INDIA                          1                    NA                -0.4105118   -1.2052760    0.3842525
0-3 months     MAL-ED      NEPAL                          1                    NA                 0.3591868    0.1028381    0.6155356
0-3 months     MAL-ED      PERU                           1                    NA                -0.0719951   -0.1842158    0.0402255
3-6 months     GMS-Nepal   NEPAL                          1                    NA                -0.0115774   -0.0330496    0.0098949
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                -0.0003027   -0.0074714    0.0068659
3-6 months     JiVitA-4    BANGLADESH                     1                    NA                 0.0111380   -0.0018107    0.0240867
3-6 months     MAL-ED      BANGLADESH                     1                    NA                 0.0051744   -0.0710743    0.0814231
3-6 months     MAL-ED      BRAZIL                         1                    NA                -0.1090338   -0.3194088    0.1013411
3-6 months     MAL-ED      INDIA                          1                    NA                -0.0676526   -0.2773548    0.1420495
3-6 months     MAL-ED      NEPAL                          1                    NA                -0.0026100   -0.2806098    0.2753898
3-6 months     MAL-ED      PERU                           1                    NA                -0.0581851   -0.1761236    0.0597534
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2081736    0.0100628    0.4062844
6-9 months     GMS-Nepal   NEPAL                          1                    NA                 0.0028299   -0.0236848    0.0293446
6-9 months     JiVitA-4    BANGLADESH                     1                    NA                 0.0015613   -0.0090793    0.0122018
6-9 months     LCNI-5      MALAWI                         1                    NA                 0.1082890   -0.0728531    0.2894310
6-9 months     MAL-ED      BANGLADESH                     1                    NA                -0.0259746   -0.0856196    0.0336704
6-9 months     MAL-ED      BRAZIL                         1                    NA                 0.0087962   -0.1953902    0.2129825
6-9 months     MAL-ED      INDIA                          1                    NA                -0.0019580   -0.1567450    0.1528290
6-9 months     MAL-ED      NEPAL                          1                    NA                 0.0721413   -0.1787411    0.3230238
6-9 months     MAL-ED      PERU                           1                    NA                 0.0124963   -0.0833738    0.1083664
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2091025   -0.5257761    0.1075711
9-12 months    GMS-Nepal   NEPAL                          1                    NA                 0.0011688   -0.0192016    0.0215393
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                 0.0015547   -0.0084706    0.0115800
9-12 months    LCNI-5      MALAWI                         1                    NA                 0.0405820   -0.2106587    0.2918228
9-12 months    MAL-ED      BANGLADESH                     1                    NA                 0.0250368   -0.0309271    0.0810008
9-12 months    MAL-ED      BRAZIL                         1                    NA                 0.1248529   -0.0451891    0.2948948
9-12 months    MAL-ED      INDIA                          1                    NA                 0.1308325   -0.0530134    0.3146784
9-12 months    MAL-ED      NEPAL                          1                    NA                 0.0919867   -0.0168464    0.2008198
9-12 months    MAL-ED      PERU                           1                    NA                 0.0355734   -0.0431660    0.1143129
12-15 months   GMS-Nepal   NEPAL                          1                    NA                -0.0024250   -0.0166880    0.0118381
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0075868   -0.0025210    0.0176946
12-15 months   MAL-ED      BANGLADESH                     1                    NA                 0.0459449   -0.0086874    0.1005771
12-15 months   MAL-ED      BRAZIL                         1                    NA                 0.1278017   -0.0256544    0.2812577
12-15 months   MAL-ED      INDIA                          1                    NA                 0.1705430    0.0390662    0.3020198
12-15 months   MAL-ED      NEPAL                          1                    NA                 0.0423720   -0.1523408    0.2370847
12-15 months   MAL-ED      PERU                           1                    NA                 0.0487553   -0.0226203    0.1201310
15-18 months   GMS-Nepal   NEPAL                          1                    NA                -0.0151456   -0.0290463   -0.0012449
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0013449   -0.0077450    0.0104347
15-18 months   MAL-ED      BANGLADESH                     1                    NA                 0.0098253   -0.0447928    0.0644433
15-18 months   MAL-ED      BRAZIL                         1                    NA                -0.0582437   -0.2141226    0.0976353
15-18 months   MAL-ED      INDIA                          1                    NA                 0.0671524   -0.0655085    0.1998133
15-18 months   MAL-ED      NEPAL                          1                    NA                -0.0680421   -0.2179979    0.0819138
15-18 months   MAL-ED      PERU                           1                    NA                 0.0226358   -0.0448897    0.0901612
18-21 months   GMS-Nepal   NEPAL                          1                    NA                 0.0039481   -0.0100208    0.0179170
18-21 months   LCNI-5      MALAWI                         1                    NA                 0.0561296   -0.1313118    0.2435710
18-21 months   MAL-ED      BANGLADESH                     1                    NA                 0.0255315   -0.0238430    0.0749061
18-21 months   MAL-ED      BRAZIL                         1                    NA                 0.0364712   -0.0918056    0.1647480
18-21 months   MAL-ED      INDIA                          1                    NA                 0.1185898   -0.0231548    0.2603344
18-21 months   MAL-ED      NEPAL                          1                    NA                 0.1571422   -0.0209289    0.3352134
18-21 months   MAL-ED      PERU                           1                    NA                 0.0135845   -0.0625800    0.0897490
21-24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0212199   -0.0069549    0.0493946
21-24 months   LCNI-5      MALAWI                         1                    NA                -0.0088826   -0.1459309    0.1281658
21-24 months   MAL-ED      BANGLADESH                     1                    NA                -0.0018514   -0.0554174    0.0517147
21-24 months   MAL-ED      BRAZIL                         1                    NA                -0.0677009   -0.1694451    0.0340433
21-24 months   MAL-ED      INDIA                          1                    NA                -0.0533892   -0.1504679    0.0436895
21-24 months   MAL-ED      NEPAL                          1                    NA                -0.1768696   -0.4510639    0.0973247
21-24 months   MAL-ED      PERU                           1                    NA                -0.0302067   -0.1191337    0.0587204
