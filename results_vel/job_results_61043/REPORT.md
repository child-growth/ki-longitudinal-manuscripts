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
![](/tmp/11276373-8631-4f8f-8650-c9e212700099/59bb45a2-5930-4c0b-9c58-f85337b3d578/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/11276373-8631-4f8f-8650-c9e212700099/59bb45a2-5930-4c0b-9c58-f85337b3d578/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/11276373-8631-4f8f-8650-c9e212700099/59bb45a2-5930-4c0b-9c58-f85337b3d578/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                -0.0209848   -0.0495673    0.0075977
0-3 months     GMS-Nepal   NEPAL                          0                    NA                -0.0375443   -0.1020245    0.0269359
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                 0.0689038    0.0620256    0.0757820
0-3 months     JiVitA-3    BANGLADESH                     0                    NA                 0.0709434    0.0581926    0.0836943
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                 0.0757722    0.0598937    0.0916506
0-3 months     JiVitA-4    BANGLADESH                     0                    NA                 0.0055573   -0.0349860    0.0461007
0-3 months     MAL-ED      BANGLADESH                     1                    NA                -0.1446975   -0.1974348   -0.0919603
0-3 months     MAL-ED      BANGLADESH                     0                    NA                -0.1096933   -0.1525363   -0.0668504
0-3 months     MAL-ED      BRAZIL                         1                    NA                 0.2862509    0.0663728    0.5061290
0-3 months     MAL-ED      BRAZIL                         0                    NA                 0.1185190    0.0596928    0.1773452
0-3 months     MAL-ED      INDIA                          1                    NA                -0.1634856   -0.5508369    0.2238657
0-3 months     MAL-ED      INDIA                          0                    NA                -0.0644238   -0.1127361   -0.0161116
0-3 months     MAL-ED      NEPAL                          1                    NA                -0.0889117   -0.1986958    0.0208725
0-3 months     MAL-ED      NEPAL                          0                    NA                 0.0598120    0.0134670    0.1061569
0-3 months     MAL-ED      PERU                           1                    NA                -0.2386557   -0.3056515   -0.1716599
0-3 months     MAL-ED      PERU                           0                    NA                -0.2753635   -0.3147230   -0.2360040
3-6 months     GMS-Nepal   NEPAL                          1                    NA                -0.1573635   -0.1777915   -0.1369356
3-6 months     GMS-Nepal   NEPAL                          0                    NA                -0.1831925   -0.2314667   -0.1349183
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                -0.0063434   -0.0137441    0.0010573
3-6 months     JiVitA-3    BANGLADESH                     0                    NA                -0.0060769   -0.0187705    0.0066167
3-6 months     JiVitA-4    BANGLADESH                     1                    NA                -0.0166978   -0.0319831   -0.0014124
3-6 months     JiVitA-4    BANGLADESH                     0                    NA                 0.0182100   -0.0180798    0.0544998
3-6 months     MAL-ED      BANGLADESH                     1                    NA                -0.0218403   -0.0640049    0.0203243
3-6 months     MAL-ED      BANGLADESH                     0                    NA                -0.0205509   -0.0492766    0.0081749
3-6 months     MAL-ED      BRAZIL                         1                    NA                 0.1012749   -0.0108047    0.2133544
3-6 months     MAL-ED      BRAZIL                         0                    NA                 0.0566100    0.0170033    0.0962167
3-6 months     MAL-ED      INDIA                          1                    NA                 0.0410110   -0.0442923    0.1263143
3-6 months     MAL-ED      INDIA                          0                    NA                -0.0405309   -0.0713812   -0.0096807
3-6 months     MAL-ED      NEPAL                          1                    NA                -0.0082546   -0.1325394    0.1160303
3-6 months     MAL-ED      NEPAL                          0                    NA                -0.0227604   -0.0500178    0.0044970
3-6 months     MAL-ED      PERU                           1                    NA                 0.0476878   -0.0195142    0.1148897
3-6 months     MAL-ED      PERU                           0                    NA                 0.0182284   -0.0169612    0.0534180
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1893761   -0.2987707   -0.0799816
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0688887   -0.1019762   -0.0358013
6-9 months     GMS-Nepal   NEPAL                          1                    NA                -0.0467221   -0.0641158   -0.0293285
6-9 months     GMS-Nepal   NEPAL                          0                    NA                -0.0425546   -0.0978362    0.0127270
6-9 months     JiVitA-4    BANGLADESH                     1                    NA                -0.0295222   -0.0397740   -0.0192704
6-9 months     JiVitA-4    BANGLADESH                     0                    NA                -0.0239431   -0.0444324   -0.0034537
6-9 months     LCNI-5      MALAWI                         1                    NA                -0.0004128   -0.0803795    0.0795538
6-9 months     LCNI-5      MALAWI                         0                    NA                 0.0080103   -0.0202456    0.0362661
6-9 months     MAL-ED      BANGLADESH                     1                    NA                -0.0581080   -0.0889214   -0.0272945
6-9 months     MAL-ED      BANGLADESH                     0                    NA                -0.0757469   -0.0971396   -0.0543542
6-9 months     MAL-ED      BRAZIL                         1                    NA                 0.0093102   -0.0845849    0.1032053
6-9 months     MAL-ED      BRAZIL                         0                    NA                 0.0098963   -0.0284499    0.0482426
6-9 months     MAL-ED      INDIA                          1                    NA                -0.0863757   -0.1639281   -0.0088234
6-9 months     MAL-ED      INDIA                          0                    NA                -0.0718382   -0.0956979   -0.0479786
6-9 months     MAL-ED      NEPAL                          1                    NA                -0.0693233   -0.1761665    0.0375198
6-9 months     MAL-ED      NEPAL                          0                    NA                -0.0325400   -0.0521461   -0.0129339
6-9 months     MAL-ED      PERU                           1                    NA                -0.0421816   -0.0921065    0.0077433
6-9 months     MAL-ED      PERU                           0                    NA                -0.0302586   -0.0576383   -0.0028789
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0045510   -0.1236005    0.1327026
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0945262   -0.1287194   -0.0603330
9-12 months    GMS-Nepal   NEPAL                          1                    NA                -0.0807871   -0.0947853   -0.0667888
9-12 months    GMS-Nepal   NEPAL                          0                    NA                -0.0639862   -0.1114277   -0.0165447
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                -0.0539098   -0.0631251   -0.0446945
9-12 months    JiVitA-4    BANGLADESH                     0                    NA                -0.0510238   -0.0677668   -0.0342809
9-12 months    LCNI-5      MALAWI                         1                    NA                -0.1052783   -0.1969041   -0.0136524
9-12 months    LCNI-5      MALAWI                         0                    NA                -0.1364819   -0.2117729   -0.0611910
9-12 months    MAL-ED      BANGLADESH                     1                    NA                -0.0976087   -0.1245428   -0.0706747
9-12 months    MAL-ED      BANGLADESH                     0                    NA                -0.0818132   -0.1019478   -0.0616787
9-12 months    MAL-ED      BRAZIL                         1                    NA                -0.0271111   -0.1099057    0.0556836
9-12 months    MAL-ED      BRAZIL                         0                    NA                 0.0121449   -0.0218569    0.0461467
9-12 months    MAL-ED      INDIA                          1                    NA                -0.1156264   -0.1989673   -0.0322855
9-12 months    MAL-ED      INDIA                          0                    NA                -0.0904781   -0.1067976   -0.0741586
9-12 months    MAL-ED      NEPAL                          1                    NA                -0.1051817   -0.1503284   -0.0600349
9-12 months    MAL-ED      NEPAL                          0                    NA                -0.0613397   -0.0787408   -0.0439385
9-12 months    MAL-ED      PERU                           1                    NA                -0.0498831   -0.0889508   -0.0108153
9-12 months    MAL-ED      PERU                           0                    NA                -0.0385089   -0.0642777   -0.0127401
12-15 months   GMS-Nepal   NEPAL                          1                    NA                -0.0707596   -0.0813708   -0.0601483
12-15 months   GMS-Nepal   NEPAL                          0                    NA                -0.0713464   -0.0959574   -0.0467354
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0502672   -0.0576140   -0.0429204
12-15 months   JiVitA-4    BANGLADESH                     0                    NA                -0.0336188   -0.0502290   -0.0170086
12-15 months   MAL-ED      BANGLADESH                     1                    NA                -0.0759951   -0.0998858   -0.0521043
12-15 months   MAL-ED      BANGLADESH                     0                    NA                -0.0471193   -0.0673241   -0.0269144
12-15 months   MAL-ED      BRAZIL                         1                    NA                -0.0250182   -0.0925275    0.0424910
12-15 months   MAL-ED      BRAZIL                         0                    NA                 0.0005975   -0.0234406    0.0246356
12-15 months   MAL-ED      INDIA                          1                    NA                -0.0799059   -0.1397012   -0.0201106
12-15 months   MAL-ED      INDIA                          0                    NA                -0.0542637   -0.0702098   -0.0383176
12-15 months   MAL-ED      NEPAL                          1                    NA                -0.0737365   -0.1444881   -0.0029848
12-15 months   MAL-ED      NEPAL                          0                    NA                -0.0570089   -0.0728532   -0.0411645
12-15 months   MAL-ED      PERU                           1                    NA                -0.0853298   -0.1142656   -0.0563940
12-15 months   MAL-ED      PERU                           0                    NA                -0.0608529   -0.0826622   -0.0390437
15-18 months   GMS-Nepal   NEPAL                          1                    NA                -0.0621495   -0.0763183   -0.0479806
15-18 months   GMS-Nepal   NEPAL                          0                    NA                -0.0897299   -0.1090414   -0.0704183
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0344300   -0.0417901   -0.0270698
15-18 months   JiVitA-4    BANGLADESH                     0                    NA                -0.0321279   -0.0459880   -0.0182679
15-18 months   MAL-ED      BANGLADESH                     1                    NA                -0.0487179   -0.0713964   -0.0260393
15-18 months   MAL-ED      BANGLADESH                     0                    NA                -0.0443266   -0.0615010   -0.0271523
15-18 months   MAL-ED      BRAZIL                         1                    NA                 0.0112014   -0.0506403    0.0730431
15-18 months   MAL-ED      BRAZIL                         0                    NA                -0.0229837   -0.0455192   -0.0004483
15-18 months   MAL-ED      INDIA                          1                    NA                -0.0322827   -0.0832921    0.0187267
15-18 months   MAL-ED      INDIA                          0                    NA                -0.0368326   -0.0501677   -0.0234976
15-18 months   MAL-ED      NEPAL                          1                    NA                -0.0337660   -0.0907984    0.0232663
15-18 months   MAL-ED      NEPAL                          0                    NA                -0.0558117   -0.0713407   -0.0402827
15-18 months   MAL-ED      PERU                           1                    NA                -0.0414759   -0.0686036   -0.0143482
15-18 months   MAL-ED      PERU                           0                    NA                -0.0340218   -0.0528569   -0.0151867
18-21 months   GMS-Nepal   NEPAL                          1                    NA                 0.0151282    0.0001082    0.0301482
18-21 months   GMS-Nepal   NEPAL                          0                    NA                 0.0205762   -0.0021682    0.0433205
18-21 months   LCNI-5      MALAWI                         1                    NA                -0.0381887   -0.1610448    0.0846674
18-21 months   LCNI-5      MALAWI                         0                    NA                -0.0006992   -0.0277240    0.0263256
18-21 months   MAL-ED      BANGLADESH                     1                    NA                -0.0197953   -0.0392401   -0.0003505
18-21 months   MAL-ED      BANGLADESH                     0                    NA                -0.0137236   -0.0286367    0.0011896
18-21 months   MAL-ED      BRAZIL                         1                    NA                -0.0230053   -0.0641633    0.0181528
18-21 months   MAL-ED      BRAZIL                         0                    NA                -0.0194254   -0.0468138    0.0079630
18-21 months   MAL-ED      INDIA                          1                    NA                -0.0518611   -0.1053793    0.0016571
18-21 months   MAL-ED      INDIA                          0                    NA                 0.0056625   -0.0060867    0.0174118
18-21 months   MAL-ED      NEPAL                          1                    NA                -0.0851181   -0.1423222   -0.0279140
18-21 months   MAL-ED      NEPAL                          0                    NA                -0.0261870   -0.0395006   -0.0128733
18-21 months   MAL-ED      PERU                           1                    NA                -0.0188485   -0.0497187    0.0120217
18-21 months   MAL-ED      PERU                           0                    NA                -0.0067623   -0.0243751    0.0108506
21-24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0400975    0.0236818    0.0565133
21-24 months   GMS-Nepal   NEPAL                          0                    NA                 0.0734568    0.0224139    0.1244998
21-24 months   LCNI-5      MALAWI                         1                    NA                -0.0081857   -0.0563802    0.0400089
21-24 months   LCNI-5      MALAWI                         0                    NA                -0.0124318   -0.0375054    0.0126417
21-24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0220182   -0.0019118    0.0459483
21-24 months   MAL-ED      BANGLADESH                     0                    NA                 0.0268983    0.0127485    0.0410482
21-24 months   MAL-ED      BRAZIL                         1                    NA                 0.0300945   -0.0183947    0.0785837
21-24 months   MAL-ED      BRAZIL                         0                    NA                 0.0146636   -0.0027303    0.0320575
21-24 months   MAL-ED      INDIA                          1                    NA                 0.0402004    0.0132145    0.0671863
21-24 months   MAL-ED      INDIA                          0                    NA                 0.0285286    0.0169671    0.0400902
21-24 months   MAL-ED      NEPAL                          1                    NA                 0.0659251   -0.0207777    0.1526279
21-24 months   MAL-ED      NEPAL                          0                    NA                 0.0033234   -0.0104873    0.0171342
21-24 months   MAL-ED      PERU                           1                    NA                 0.0583491    0.0253425    0.0913557
21-24 months   MAL-ED      PERU                           0                    NA                 0.0570002    0.0395445    0.0744558


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
0-3 months     GMS-Nepal   NEPAL                          0                    1                 -0.0165595   -0.0871076    0.0539886
0-3 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH                     0                    1                  0.0020397   -0.0115797    0.0156590
0-3 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH                     0                    1                 -0.0702149   -0.1129267   -0.0275030
0-3 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH                     0                    1                  0.0350042   -0.0310168    0.1010251
0-3 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL                         0                    1                 -0.1677320   -0.3968750    0.0614111
0-3 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      INDIA                          0                    1                  0.0990618   -0.2905111    0.4886346
0-3 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      NEPAL                          0                    1                  0.1487236    0.0295581    0.2678891
0-3 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU                           0                    1                 -0.0367078   -0.1145901    0.0411745
3-6 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL                          0                    1                 -0.0258290   -0.0782992    0.0266412
3-6 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH                     0                    1                  0.0002665   -0.0138952    0.0144282
3-6 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4    BANGLADESH                     0                    1                  0.0349078   -0.0045192    0.0743347
3-6 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH                     0                    1                  0.0012894   -0.0501003    0.0526792
3-6 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL                         0                    1                 -0.0446648   -0.1630819    0.0737522
3-6 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA                          0                    1                 -0.0815420   -0.1727382    0.0096543
3-6 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      NEPAL                          0                    1                 -0.0145058   -0.1417445    0.1127329
3-6 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU                           0                    1                 -0.0294593   -0.1053978    0.0464791
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1204874    0.0061985    0.2347762
6-9 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL                          0                    1                  0.0041675   -0.0535137    0.0618487
6-9 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4    BANGLADESH                     0                    1                  0.0055792   -0.0169526    0.0281109
6-9 months     LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5      MALAWI                         0                    1                  0.0084231   -0.0764323    0.0932785
6-9 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH                     0                    1                 -0.0176389   -0.0552547    0.0199768
6-9 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL                         0                    1                  0.0005861   -0.1009353    0.1021075
6-9 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA                          0                    1                  0.0145375   -0.0668204    0.0958954
6-9 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      NEPAL                          0                    1                  0.0367833   -0.0718438    0.1454105
6-9 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU                           0                    1                  0.0119231   -0.0449697    0.0688158
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0990772   -0.2317121    0.0335576
9-12 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL                          0                    1                  0.0168009   -0.0326912    0.0662929
9-12 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH                     0                    1                  0.0028860   -0.0162194    0.0219913
9-12 months    LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5      MALAWI                         0                    1                 -0.0312036   -0.1558257    0.0934184
9-12 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH                     0                    1                  0.0157955   -0.0178647    0.0494557
9-12 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL                         0                    1                  0.0392559   -0.0504455    0.1289574
9-12 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA                          0                    1                  0.0251482   -0.0601534    0.1104499
9-12 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      NEPAL                          0                    1                  0.0438420   -0.0045422    0.0922262
9-12 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU                           0                    1                  0.0113741   -0.0354083    0.0581566
12-15 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL                          0                    1                 -0.0005868   -0.0274103    0.0262367
12-15 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH                     0                    1                  0.0166484   -0.0014262    0.0347229
12-15 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH                     0                    1                  0.0288758   -0.0025526    0.0603042
12-15 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL                         0                    1                  0.0256157   -0.0459942    0.0972257
12-15 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA                          0                    1                  0.0256422   -0.0363230    0.0876074
12-15 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      NEPAL                          0                    1                  0.0167276   -0.0557765    0.0892317
12-15 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU                           0                    1                  0.0244769   -0.0117342    0.0606880
15-18 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL                          0                    1                 -0.0275804   -0.0514188   -0.0037420
15-18 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH                     0                    1                  0.0023020   -0.0130844    0.0176884
15-18 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH                     0                    1                  0.0043912   -0.0240833    0.0328658
15-18 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL                         0                    1                 -0.0341852   -0.1004629    0.0320925
15-18 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA                          0                    1                 -0.0045499   -0.0572818    0.0481819
15-18 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      NEPAL                          0                    1                 -0.0220457   -0.0811544    0.0370630
15-18 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU                           0                    1                  0.0074541   -0.0256773    0.0405855
18-21 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL                          0                    1                  0.0054480   -0.0228778    0.0337738
18-21 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5      MALAWI                         0                    1                  0.0374895   -0.0889195    0.1638985
18-21 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH                     0                    1                  0.0060717   -0.0186027    0.0307462
18-21 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL                         0                    1                  0.0035798   -0.0456357    0.0527953
18-21 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA                          0                    1                  0.0575236    0.0024050    0.1126422
18-21 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      NEPAL                          0                    1                  0.0589311    0.0001982    0.1176641
18-21 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      PERU                           0                    1                  0.0120862   -0.0235027    0.0476752
21-24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL                          0                    1                  0.0333593   -0.0203777    0.0870964
21-24 months   LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5      MALAWI                         0                    1                 -0.0042462   -0.0587248    0.0502325
21-24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH                     0                    1                  0.0048801   -0.0230302    0.0327904
21-24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL                         0                    1                 -0.0154309   -0.0670798    0.0362180
21-24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA                          0                    1                 -0.0116718   -0.0410327    0.0176892
21-24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      NEPAL                          0                    1                 -0.0626017   -0.1503975    0.0251942
21-24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      PERU                           0                    1                 -0.0013490   -0.0388562    0.0361583


### Parameter: PAR


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                -0.0034516   -0.0174839    0.0105808
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                 0.0004979   -0.0024944    0.0034902
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                -0.0115520   -0.0188543   -0.0042497
0-3 months     MAL-ED      BANGLADESH                     1                    NA                 0.0227065   -0.0212581    0.0666712
0-3 months     MAL-ED      BRAZIL                         1                    NA                -0.1470454   -0.3544596    0.0603688
0-3 months     MAL-ED      INDIA                          1                    NA                 0.1054730   -0.2637382    0.4746841
0-3 months     MAL-ED      NEPAL                          1                    NA                 0.1409977    0.0279017    0.2540937
0-3 months     MAL-ED      PERU                           1                    NA                -0.0265493   -0.0843700    0.0312713
3-6 months     GMS-Nepal   NEPAL                          1                    NA                -0.0045509   -0.0151914    0.0060896
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                 0.0001247   -0.0031216    0.0033710
3-6 months     JiVitA-4    BANGLADESH                     1                    NA                 0.0062830    0.0002895    0.0122766
3-6 months     MAL-ED      BANGLADESH                     1                    NA                -0.0013893   -0.0356073    0.0328286
3-6 months     MAL-ED      BRAZIL                         1                    NA                -0.0415457   -0.1483395    0.0652481
3-6 months     MAL-ED      INDIA                          1                    NA                -0.0805829   -0.1657762    0.0046105
3-6 months     MAL-ED      NEPAL                          1                    NA                -0.0140056   -0.1368572    0.1088460
3-6 months     MAL-ED      PERU                           1                    NA                -0.0219417   -0.0783882    0.0345048
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1179238    0.0064699    0.2293777
6-9 months     GMS-Nepal   NEPAL                          1                    NA                 0.0014949   -0.0098146    0.0128043
6-9 months     JiVitA-4    BANGLADESH                     1                    NA                 0.0009873   -0.0036522    0.0056268
6-9 months     LCNI-5      MALAWI                         1                    NA                 0.0099990   -0.0612756    0.0812737
6-9 months     MAL-ED      BANGLADESH                     1                    NA                -0.0119152   -0.0381141    0.0142837
6-9 months     MAL-ED      BRAZIL                         1                    NA                -0.0005268   -0.0905786    0.0895249
6-9 months     MAL-ED      INDIA                          1                    NA                 0.0133151   -0.0625884    0.0892186
6-9 months     MAL-ED      NEPAL                          1                    NA                 0.0354983   -0.0693377    0.1403343
6-9 months     MAL-ED      PERU                           1                    NA                 0.0086032   -0.0329927    0.0501991
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0968657   -0.2261989    0.0324675
9-12 months    GMS-Nepal   NEPAL                          1                    NA                 0.0007610   -0.0084630    0.0099851
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                 0.0008041   -0.0034088    0.0050169
9-12 months    LCNI-5      MALAWI                         1                    NA                 0.0000009   -0.0915656    0.0915674
9-12 months    MAL-ED      BANGLADESH                     1                    NA                 0.0104034   -0.0122885    0.0330953
9-12 months    MAL-ED      BRAZIL                         1                    NA                 0.0352895   -0.0463871    0.1169661
9-12 months    MAL-ED      INDIA                          1                    NA                 0.0237328   -0.0559579    0.1034235
9-12 months    MAL-ED      NEPAL                          1                    NA                 0.0424960   -0.0044131    0.0894050
9-12 months    MAL-ED      PERU                           1                    NA                 0.0079570   -0.0261187    0.0420327
12-15 months   GMS-Nepal   NEPAL                          1                    NA                -0.0000059   -0.0052938    0.0052820
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0037122   -0.0002291    0.0076535
12-15 months   MAL-ED      BANGLADESH                     1                    NA                 0.0202828   -0.0013107    0.0418762
12-15 months   MAL-ED      BRAZIL                         1                    NA                 0.0219752   -0.0415098    0.0854603
12-15 months   MAL-ED      INDIA                          1                    NA                 0.0223020   -0.0357366    0.0803406
12-15 months   MAL-ED      NEPAL                          1                    NA                 0.0162163   -0.0540725    0.0865050
12-15 months   MAL-ED      PERU                           1                    NA                 0.0199766   -0.0065643    0.0465175
15-18 months   GMS-Nepal   NEPAL                          1                    NA                -0.0054517   -0.0102420   -0.0006614
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0010593   -0.0023016    0.0044202
15-18 months   MAL-ED      BANGLADESH                     1                    NA                 0.0029236   -0.0164614    0.0223085
15-18 months   MAL-ED      BRAZIL                         1                    NA                -0.0315437   -0.0916458    0.0285585
15-18 months   MAL-ED      INDIA                          1                    NA                -0.0044701   -0.0536023    0.0446621
15-18 months   MAL-ED      NEPAL                          1                    NA                -0.0212653   -0.0782841    0.0357535
15-18 months   MAL-ED      PERU                           1                    NA                 0.0054194   -0.0186411    0.0294799
18-21 months   GMS-Nepal   NEPAL                          1                    NA                 0.0006779   -0.0047003    0.0060561
18-21 months   LCNI-5      MALAWI                         1                    NA                 0.0289604   -0.0728874    0.1308082
18-21 months   MAL-ED      BANGLADESH                     1                    NA                 0.0042734   -0.0125943    0.0211412
18-21 months   MAL-ED      BRAZIL                         1                    NA                 0.0026463   -0.0413607    0.0466533
18-21 months   MAL-ED      INDIA                          1                    NA                 0.0566522    0.0051877    0.1081166
18-21 months   MAL-ED      NEPAL                          1                    NA                 0.0568451    0.0001733    0.1135169
18-21 months   MAL-ED      PERU                           1                    NA                 0.0107344   -0.0155894    0.0370582
21-24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0048399   -0.0047093    0.0143891
21-24 months   LCNI-5      MALAWI                         1                    NA                -0.0034391   -0.0492016    0.0423234
21-24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0036000   -0.0153850    0.0225849
21-24 months   MAL-ED      BRAZIL                         1                    NA                -0.0136075   -0.0603624    0.0331475
21-24 months   MAL-ED      INDIA                          1                    NA                -0.0100195   -0.0372290    0.0171901
21-24 months   MAL-ED      NEPAL                          1                    NA                -0.0603857   -0.1450872    0.0243158
21-24 months   MAL-ED      PERU                           1                    NA                -0.0013748   -0.0294368    0.0266872
