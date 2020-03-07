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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        exclfeed36    n_cell      n
-------------  ---------------  -----------------------------  -----------  -------  -----
0-3 months     CMC-V-BCS-2002   INDIA                          1                  6      6
0-3 months     CMC-V-BCS-2002   INDIA                          0                  0      6
0-3 months     EE               PAKISTAN                       1                  3      7
0-3 months     EE               PAKISTAN                       0                  4      7
0-3 months     GMS-Nepal        NEPAL                          1                373    466
0-3 months     GMS-Nepal        NEPAL                          0                 93    466
0-3 months     IRC              INDIA                          1                  0      4
0-3 months     IRC              INDIA                          0                  4      4
0-3 months     JiVitA-3         BANGLADESH                     1               7718   9919
0-3 months     JiVitA-3         BANGLADESH                     0               2201   9919
0-3 months     JiVitA-4         BANGLADESH                     1               1396   1675
0-3 months     JiVitA-4         BANGLADESH                     0                279   1675
0-3 months     Keneba           GAMBIA                         1                400   1384
0-3 months     Keneba           GAMBIA                         0                984   1384
0-3 months     MAL-ED           BANGLADESH                     1                 32    245
0-3 months     MAL-ED           BANGLADESH                     0                213    245
0-3 months     MAL-ED           BRAZIL                         1                 14    217
0-3 months     MAL-ED           BRAZIL                         0                203    217
0-3 months     MAL-ED           INDIA                          1                 10    235
0-3 months     MAL-ED           INDIA                          0                225    235
0-3 months     MAL-ED           NEPAL                          1                  5    230
0-3 months     MAL-ED           NEPAL                          0                225    230
0-3 months     MAL-ED           PERU                           1                  7    280
0-3 months     MAL-ED           PERU                           0                273    280
0-3 months     MAL-ED           SOUTH AFRICA                   1                  3    268
0-3 months     MAL-ED           SOUTH AFRICA                   0                265    268
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3    232
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                229    232
0-3 months     PROVIDE          BANGLADESH                     1                161    634
0-3 months     PROVIDE          BANGLADESH                     0                473    634
3-6 months     CMC-V-BCS-2002   INDIA                          1                  6      6
3-6 months     CMC-V-BCS-2002   INDIA                          0                  0      6
3-6 months     EE               PAKISTAN                       1                  3      7
3-6 months     EE               PAKISTAN                       0                  4      7
3-6 months     GMS-Nepal        NEPAL                          1                367    460
3-6 months     GMS-Nepal        NEPAL                          0                 93    460
3-6 months     IRC              INDIA                          1                  0      4
3-6 months     IRC              INDIA                          0                  4      4
3-6 months     JiVitA-3         BANGLADESH                     1               5122   6658
3-6 months     JiVitA-3         BANGLADESH                     0               1536   6658
3-6 months     JiVitA-4         BANGLADESH                     1               1483   1755
3-6 months     JiVitA-4         BANGLADESH                     0                272   1755
3-6 months     Keneba           GAMBIA                         1                338   1268
3-6 months     Keneba           GAMBIA                         0                930   1268
3-6 months     MAL-ED           BANGLADESH                     1                 30    232
3-6 months     MAL-ED           BANGLADESH                     0                202    232
3-6 months     MAL-ED           BRAZIL                         1                 12    208
3-6 months     MAL-ED           BRAZIL                         0                196    208
3-6 months     MAL-ED           INDIA                          1                  9    228
3-6 months     MAL-ED           INDIA                          0                219    228
3-6 months     MAL-ED           NEPAL                          1                  4    232
3-6 months     MAL-ED           NEPAL                          0                228    232
3-6 months     MAL-ED           PERU                           1                  6    267
3-6 months     MAL-ED           PERU                           0                261    267
3-6 months     MAL-ED           SOUTH AFRICA                   1                  1    240
3-6 months     MAL-ED           SOUTH AFRICA                   0                239    240
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  4    235
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                231    235
3-6 months     PROVIDE          BANGLADESH                     1                144    601
3-6 months     PROVIDE          BANGLADESH                     0                457    601
6-9 months     CMC-V-BCS-2002   INDIA                          1                  9      9
6-9 months     CMC-V-BCS-2002   INDIA                          0                  0      9
6-9 months     EE               PAKISTAN                       1                  4      9
6-9 months     EE               PAKISTAN                       0                  5      9
6-9 months     GMS-Nepal        NEPAL                          1                377    467
6-9 months     GMS-Nepal        NEPAL                          0                 90    467
6-9 months     IRC              INDIA                          1                  0      4
6-9 months     IRC              INDIA                          0                  4      4
6-9 months     JiVitA-4         BANGLADESH                     1               2189   2769
6-9 months     JiVitA-4         BANGLADESH                     0                580   2769
6-9 months     Keneba           GAMBIA                         1                220    774
6-9 months     Keneba           GAMBIA                         0                554    774
6-9 months     LCNI-5           MALAWI                         1                 23    144
6-9 months     LCNI-5           MALAWI                         0                121    144
6-9 months     MAL-ED           BANGLADESH                     1                 28    224
6-9 months     MAL-ED           BANGLADESH                     0                196    224
6-9 months     MAL-ED           BRAZIL                         1                 12    198
6-9 months     MAL-ED           BRAZIL                         0                186    198
6-9 months     MAL-ED           INDIA                          1                  9    228
6-9 months     MAL-ED           INDIA                          0                219    228
6-9 months     MAL-ED           NEPAL                          1                  4    229
6-9 months     MAL-ED           NEPAL                          0                225    229
6-9 months     MAL-ED           PERU                           1                  6    245
6-9 months     MAL-ED           PERU                           0                239    245
6-9 months     MAL-ED           SOUTH AFRICA                   1                  1    228
6-9 months     MAL-ED           SOUTH AFRICA                   0                227    228
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  4    224
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                220    224
6-9 months     PROVIDE          BANGLADESH                     1                132    576
6-9 months     PROVIDE          BANGLADESH                     0                444    576
6-9 months     SAS-FoodSuppl    INDIA                          1                  0    139
6-9 months     SAS-FoodSuppl    INDIA                          0                139    139
9-12 months    CMC-V-BCS-2002   INDIA                          1                  9      9
9-12 months    CMC-V-BCS-2002   INDIA                          0                  0      9
9-12 months    EE               PAKISTAN                       1                  3      8
9-12 months    EE               PAKISTAN                       0                  5      8
9-12 months    GMS-Nepal        NEPAL                          1                345    421
9-12 months    GMS-Nepal        NEPAL                          0                 76    421
9-12 months    IRC              INDIA                          1                  0      4
9-12 months    IRC              INDIA                          0                  4      4
9-12 months    JiVitA-4         BANGLADESH                     1               2367   3053
9-12 months    JiVitA-4         BANGLADESH                     0                686   3053
9-12 months    Keneba           GAMBIA                         1                223    741
9-12 months    Keneba           GAMBIA                         0                518    741
9-12 months    LCNI-5           MALAWI                         1                 10     31
9-12 months    LCNI-5           MALAWI                         0                 21     31
9-12 months    MAL-ED           BANGLADESH                     1                 27    225
9-12 months    MAL-ED           BANGLADESH                     0                198    225
9-12 months    MAL-ED           BRAZIL                         1                 12    194
9-12 months    MAL-ED           BRAZIL                         0                182    194
9-12 months    MAL-ED           INDIA                          1                  8    224
9-12 months    MAL-ED           INDIA                          0                216    224
9-12 months    MAL-ED           NEPAL                          1                  3    228
9-12 months    MAL-ED           NEPAL                          0                225    228
9-12 months    MAL-ED           PERU                           1                  6    235
9-12 months    MAL-ED           PERU                           0                229    235
9-12 months    MAL-ED           SOUTH AFRICA                   1                  2    230
9-12 months    MAL-ED           SOUTH AFRICA                   0                228    230
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3    223
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                220    223
9-12 months    PROVIDE          BANGLADESH                     1                134    568
9-12 months    PROVIDE          BANGLADESH                     0                434    568
9-12 months    SAS-FoodSuppl    INDIA                          1                  0    138
9-12 months    SAS-FoodSuppl    INDIA                          0                138    138
12-15 months   CMC-V-BCS-2002   INDIA                          1                  9      9
12-15 months   CMC-V-BCS-2002   INDIA                          0                  0      9
12-15 months   EE               PAKISTAN                       1                  3      8
12-15 months   EE               PAKISTAN                       0                  5      8
12-15 months   GMS-Nepal        NEPAL                          1                339    417
12-15 months   GMS-Nepal        NEPAL                          0                 78    417
12-15 months   IRC              INDIA                          1                  0      4
12-15 months   IRC              INDIA                          0                  4      4
12-15 months   JiVitA-4         BANGLADESH                     1               2352   3043
12-15 months   JiVitA-4         BANGLADESH                     0                691   3043
12-15 months   Keneba           GAMBIA                         1                351   1149
12-15 months   Keneba           GAMBIA                         0                798   1149
12-15 months   LCNI-5           MALAWI                         1                  0      1
12-15 months   LCNI-5           MALAWI                         0                  1      1
12-15 months   MAL-ED           BANGLADESH                     1                 24    212
12-15 months   MAL-ED           BANGLADESH                     0                188    212
12-15 months   MAL-ED           BRAZIL                         1                 12    184
12-15 months   MAL-ED           BRAZIL                         0                172    184
12-15 months   MAL-ED           INDIA                          1                  8    223
12-15 months   MAL-ED           INDIA                          0                215    223
12-15 months   MAL-ED           NEPAL                          1                  3    229
12-15 months   MAL-ED           NEPAL                          0                226    229
12-15 months   MAL-ED           PERU                           1                  5    224
12-15 months   MAL-ED           PERU                           0                219    224
12-15 months   MAL-ED           SOUTH AFRICA                   1                  1    225
12-15 months   MAL-ED           SOUTH AFRICA                   0                224    225
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3    225
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                222    225
12-15 months   PROVIDE          BANGLADESH                     1                130    535
12-15 months   PROVIDE          BANGLADESH                     0                405    535
12-15 months   SAS-FoodSuppl    INDIA                          1                  0    137
12-15 months   SAS-FoodSuppl    INDIA                          0                137    137
15-18 months   CMC-V-BCS-2002   INDIA                          1                  6      6
15-18 months   CMC-V-BCS-2002   INDIA                          0                  0      6
15-18 months   EE               PAKISTAN                       1                  3      8
15-18 months   EE               PAKISTAN                       0                  5      8
15-18 months   GMS-Nepal        NEPAL                          1                351    437
15-18 months   GMS-Nepal        NEPAL                          0                 86    437
15-18 months   IRC              INDIA                          1                  0      4
15-18 months   IRC              INDIA                          0                  4      4
15-18 months   JiVitA-4         BANGLADESH                     1               2338   3005
15-18 months   JiVitA-4         BANGLADESH                     0                667   3005
15-18 months   Keneba           GAMBIA                         1                364   1159
15-18 months   Keneba           GAMBIA                         0                795   1159
15-18 months   LCNI-5           MALAWI                         1                  0      4
15-18 months   LCNI-5           MALAWI                         0                  4      4
15-18 months   MAL-ED           BANGLADESH                     1                 25    212
15-18 months   MAL-ED           BANGLADESH                     0                187    212
15-18 months   MAL-ED           BRAZIL                         1                 12    175
15-18 months   MAL-ED           BRAZIL                         0                163    175
15-18 months   MAL-ED           INDIA                          1                  9    224
15-18 months   MAL-ED           INDIA                          0                215    224
15-18 months   MAL-ED           NEPAL                          1                  4    226
15-18 months   MAL-ED           NEPAL                          0                222    226
15-18 months   MAL-ED           PERU                           1                  5    214
15-18 months   MAL-ED           PERU                           0                209    214
15-18 months   MAL-ED           SOUTH AFRICA                   1                  1    224
15-18 months   MAL-ED           SOUTH AFRICA                   0                223    224
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3    219
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                216    219
15-18 months   PROVIDE          BANGLADESH                     1                133    531
15-18 months   PROVIDE          BANGLADESH                     0                398    531
15-18 months   SAS-FoodSuppl    INDIA                          1                  0    129
15-18 months   SAS-FoodSuppl    INDIA                          0                129    129
18-21 months   CMC-V-BCS-2002   INDIA                          1                  5      5
18-21 months   CMC-V-BCS-2002   INDIA                          0                  0      5
18-21 months   EE               PAKISTAN                       1                  2      7
18-21 months   EE               PAKISTAN                       0                  5      7
18-21 months   GMS-Nepal        NEPAL                          1                334    412
18-21 months   GMS-Nepal        NEPAL                          0                 78    412
18-21 months   IRC              INDIA                          1                  0      4
18-21 months   IRC              INDIA                          0                  4      4
18-21 months   Keneba           GAMBIA                         1                358   1145
18-21 months   Keneba           GAMBIA                         0                787   1145
18-21 months   LCNI-5           MALAWI                         1                 28    166
18-21 months   LCNI-5           MALAWI                         0                138    166
18-21 months   MAL-ED           BANGLADESH                     1                 24    209
18-21 months   MAL-ED           BANGLADESH                     0                185    209
18-21 months   MAL-ED           BRAZIL                         1                 11    167
18-21 months   MAL-ED           BRAZIL                         0                156    167
18-21 months   MAL-ED           INDIA                          1                  9    224
18-21 months   MAL-ED           INDIA                          0                215    224
18-21 months   MAL-ED           NEPAL                          1                  4    226
18-21 months   MAL-ED           NEPAL                          0                222    226
18-21 months   MAL-ED           PERU                           1                  4    202
18-21 months   MAL-ED           PERU                           0                198    202
18-21 months   MAL-ED           SOUTH AFRICA                   1                  1    232
18-21 months   MAL-ED           SOUTH AFRICA                   0                231    232
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3    207
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                204    207
18-21 months   PROVIDE          BANGLADESH                     1                130    540
18-21 months   PROVIDE          BANGLADESH                     0                410    540
21-24 months   CMC-V-BCS-2002   INDIA                          1                  6      6
21-24 months   CMC-V-BCS-2002   INDIA                          0                  0      6
21-24 months   EE               PAKISTAN                       1                  0      2
21-24 months   EE               PAKISTAN                       0                  2      2
21-24 months   GMS-Nepal        NEPAL                          1                260    316
21-24 months   GMS-Nepal        NEPAL                          0                 56    316
21-24 months   IRC              INDIA                          1                  0      4
21-24 months   IRC              INDIA                          0                  4      4
21-24 months   Keneba           GAMBIA                         1                314   1046
21-24 months   Keneba           GAMBIA                         0                732   1046
21-24 months   LCNI-5           MALAWI                         1                 24    134
21-24 months   LCNI-5           MALAWI                         0                110    134
21-24 months   MAL-ED           BANGLADESH                     1                 24    207
21-24 months   MAL-ED           BANGLADESH                     0                183    207
21-24 months   MAL-ED           BRAZIL                         1                 11    165
21-24 months   MAL-ED           BRAZIL                         0                154    165
21-24 months   MAL-ED           INDIA                          1                  9    223
21-24 months   MAL-ED           INDIA                          0                214    223
21-24 months   MAL-ED           NEPAL                          1                  4    226
21-24 months   MAL-ED           NEPAL                          0                222    226
21-24 months   MAL-ED           PERU                           1                  3    189
21-24 months   MAL-ED           PERU                           0                186    189
21-24 months   MAL-ED           SOUTH AFRICA                   1                  1    233
21-24 months   MAL-ED           SOUTH AFRICA                   0                232    233
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3    205
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                202    205
21-24 months   PROVIDE          BANGLADESH                     1                118    483
21-24 months   PROVIDE          BANGLADESH                     0                365    483


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/2fc0455b-5003-4106-aa6a-7b1b7c93b88e/9a49c566-80a6-40a3-bcf6-74d7de667260/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2fc0455b-5003-4106-aa6a-7b1b7c93b88e/9a49c566-80a6-40a3-bcf6-74d7de667260/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2fc0455b-5003-4106-aa6a-7b1b7c93b88e/9a49c566-80a6-40a3-bcf6-74d7de667260/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                0.8382463    0.8182606   0.8582321
0-3 months     GMS-Nepal   NEPAL        0                    NA                0.7922569    0.7535676   0.8309462
0-3 months     JiVitA-3    BANGLADESH   1                    NA                0.8688283    0.8642685   0.8733881
0-3 months     JiVitA-3    BANGLADESH   0                    NA                0.8712514    0.8614976   0.8810052
0-3 months     JiVitA-4    BANGLADESH   1                    NA                0.8999610    0.8887380   0.9111840
0-3 months     JiVitA-4    BANGLADESH   0                    NA                0.8354731    0.8080403   0.8629058
0-3 months     Keneba      GAMBIA       1                    NA                0.9536655    0.9331460   0.9741850
0-3 months     Keneba      GAMBIA       0                    NA                0.9127427    0.8985814   0.9269041
0-3 months     MAL-ED      BANGLADESH   1                    NA                0.8811539    0.8202359   0.9420720
0-3 months     MAL-ED      BANGLADESH   0                    NA                0.8791093    0.8541265   0.9040921
0-3 months     MAL-ED      BRAZIL       1                    NA                1.1537402    1.0087610   1.2987195
0-3 months     MAL-ED      BRAZIL       0                    NA                1.0594288    1.0242433   1.0946143
0-3 months     MAL-ED      INDIA        1                    NA                0.7865209    0.6625842   0.9104575
0-3 months     MAL-ED      INDIA        0                    NA                0.7576177    0.7348557   0.7803798
0-3 months     MAL-ED      NEPAL        1                    NA                0.8372995    0.7064060   0.9681929
0-3 months     MAL-ED      NEPAL        0                    NA                0.9593001    0.9319184   0.9866818
0-3 months     MAL-ED      PERU         1                    NA                1.0619875    0.9042981   1.2196769
0-3 months     MAL-ED      PERU         0                    NA                0.9686296    0.9431775   0.9940816
0-3 months     PROVIDE     BANGLADESH   1                    NA                0.9313025    0.9048491   0.9577559
0-3 months     PROVIDE     BANGLADESH   0                    NA                0.8926254    0.8753799   0.9098709
3-6 months     GMS-Nepal   NEPAL        1                    NA                0.4969046    0.4808220   0.5129873
3-6 months     GMS-Nepal   NEPAL        0                    NA                0.4972205    0.4696583   0.5247827
3-6 months     JiVitA-3    BANGLADESH   1                    NA                0.4384695    0.4338765   0.4430624
3-6 months     JiVitA-3    BANGLADESH   0                    NA                0.4350259    0.4217908   0.4482610
3-6 months     JiVitA-4    BANGLADESH   1                    NA                0.4377508    0.4276106   0.4478910
3-6 months     JiVitA-4    BANGLADESH   0                    NA                0.4437672    0.4226995   0.4648348
3-6 months     Keneba      GAMBIA       1                    NA                0.4579705    0.4385124   0.4774285
3-6 months     Keneba      GAMBIA       0                    NA                0.4424451    0.4309693   0.4539208
3-6 months     MAL-ED      BANGLADESH   1                    NA                0.4624104    0.4320984   0.4927224
3-6 months     MAL-ED      BANGLADESH   0                    NA                0.4757855    0.4571468   0.4944242
3-6 months     MAL-ED      BRAZIL       1                    NA                0.6435037    0.4940347   0.7929727
3-6 months     MAL-ED      BRAZIL       0                    NA                0.5741992    0.5424338   0.6059647
3-6 months     MAL-ED      INDIA        1                    NA                0.4279072    0.3201283   0.5356861
3-6 months     MAL-ED      INDIA        0                    NA                0.4443757    0.4266827   0.4620687
3-6 months     MAL-ED      PERU         1                    NA                0.4723659    0.3597202   0.5850116
3-6 months     MAL-ED      PERU         0                    NA                0.4988281    0.4796094   0.5180469
3-6 months     PROVIDE     BANGLADESH   1                    NA                0.4991535    0.4746240   0.5236830
3-6 months     PROVIDE     BANGLADESH   0                    NA                0.4858810    0.4705620   0.5012000
6-9 months     GMS-Nepal   NEPAL        1                    NA                0.1818776    0.1699946   0.1937605
6-9 months     GMS-Nepal   NEPAL        0                    NA                0.2092282    0.1698447   0.2486117
6-9 months     JiVitA-4    BANGLADESH   1                    NA                0.2361876    0.2299815   0.2423936
6-9 months     JiVitA-4    BANGLADESH   0                    NA                0.2483672    0.2374324   0.2593021
6-9 months     Keneba      GAMBIA       1                    NA                0.2149013    0.1871064   0.2426962
6-9 months     Keneba      GAMBIA       0                    NA                0.1947904    0.1800729   0.2095079
6-9 months     LCNI-5      MALAWI       1                    NA                0.2433070    0.2027065   0.2839075
6-9 months     LCNI-5      MALAWI       0                    NA                0.2904468    0.2618043   0.3190893
6-9 months     MAL-ED      BANGLADESH   1                    NA                0.2148189    0.1822456   0.2473923
6-9 months     MAL-ED      BANGLADESH   0                    NA                0.2468604    0.2310099   0.2627109
6-9 months     MAL-ED      BRAZIL       1                    NA                0.3922430    0.2329542   0.5515318
6-9 months     MAL-ED      BRAZIL       0                    NA                0.3825632    0.3567933   0.4083331
6-9 months     MAL-ED      INDIA        1                    NA                0.1136157    0.0158178   0.2114135
6-9 months     MAL-ED      INDIA        0                    NA                0.2354316    0.2206943   0.2501689
6-9 months     MAL-ED      PERU         1                    NA                0.1884335    0.1239257   0.2529414
6-9 months     MAL-ED      PERU         0                    NA                0.2632249    0.2474924   0.2789574
6-9 months     PROVIDE     BANGLADESH   1                    NA                0.2386031    0.2174536   0.2597526
6-9 months     PROVIDE     BANGLADESH   0                    NA                0.2523054    0.2380036   0.2666072
9-12 months    GMS-Nepal   NEPAL        1                    NA                0.1371820    0.1229539   0.1514101
9-12 months    GMS-Nepal   NEPAL        0                    NA                0.1505015    0.1187171   0.1822859
9-12 months    JiVitA-4    BANGLADESH   1                    NA                0.1507553    0.1457399   0.1557708
9-12 months    JiVitA-4    BANGLADESH   0                    NA                0.1623461    0.1529928   0.1716994
9-12 months    Keneba      GAMBIA       1                    NA                0.1304677    0.1062999   0.1546355
9-12 months    Keneba      GAMBIA       0                    NA                0.1739902    0.1586277   0.1893527
9-12 months    LCNI-5      MALAWI       1                    NA                0.2060735    0.0681565   0.3439905
9-12 months    LCNI-5      MALAWI       0                    NA                0.1749155    0.0989861   0.2508448
9-12 months    MAL-ED      BANGLADESH   1                    NA                0.1579174    0.1190994   0.1967354
9-12 months    MAL-ED      BANGLADESH   0                    NA                0.1750960    0.1605202   0.1896719
9-12 months    MAL-ED      BRAZIL       1                    NA                0.3019165    0.1547024   0.4491305
9-12 months    MAL-ED      BRAZIL       0                    NA                0.2834500    0.2509766   0.3159234
9-12 months    MAL-ED      INDIA        1                    NA                0.1652329    0.1020139   0.2284519
9-12 months    MAL-ED      INDIA        0                    NA                0.1792498    0.1646887   0.1938108
9-12 months    MAL-ED      PERU         1                    NA                0.1769510    0.1118470   0.2420551
9-12 months    MAL-ED      PERU         0                    NA                0.1877565    0.1721386   0.2033745
9-12 months    PROVIDE     BANGLADESH   1                    NA                0.1848069    0.1650482   0.2045656
9-12 months    PROVIDE     BANGLADESH   0                    NA                0.1759493    0.1654278   0.1864708
12-15 months   GMS-Nepal   NEPAL        1                    NA                0.1736874    0.1587973   0.1885775
12-15 months   GMS-Nepal   NEPAL        0                    NA                0.1789079    0.1459512   0.2118645
12-15 months   JiVitA-4    BANGLADESH   1                    NA                0.1276097    0.1223461   0.1328733
12-15 months   JiVitA-4    BANGLADESH   0                    NA                0.1419152    0.1325287   0.1513017
12-15 months   Keneba      GAMBIA       1                    NA                0.1882559    0.1680240   0.2084878
12-15 months   Keneba      GAMBIA       0                    NA                0.1895289    0.1770995   0.2019583
12-15 months   MAL-ED      BANGLADESH   1                    NA                0.1350701    0.0882440   0.1818962
12-15 months   MAL-ED      BANGLADESH   0                    NA                0.1353955    0.1186441   0.1521469
12-15 months   MAL-ED      BRAZIL       1                    NA                0.1998193    0.0653389   0.3342997
12-15 months   MAL-ED      BRAZIL       0                    NA                0.2109184    0.1860781   0.2357588
12-15 months   MAL-ED      INDIA        1                    NA                0.1364731    0.0773877   0.1955585
12-15 months   MAL-ED      INDIA        0                    NA                0.1753603    0.1588478   0.1918729
12-15 months   MAL-ED      PERU         1                    NA                0.1495693    0.0073473   0.2917913
12-15 months   MAL-ED      PERU         0                    NA                0.1415602    0.1248323   0.1582881
12-15 months   PROVIDE     BANGLADESH   1                    NA                0.1676204    0.1422548   0.1929860
12-15 months   PROVIDE     BANGLADESH   0                    NA                0.1834586    0.1703124   0.1966047
15-18 months   GMS-Nepal   NEPAL        1                    NA                0.2288321    0.2114355   0.2462287
15-18 months   GMS-Nepal   NEPAL        0                    NA                0.2303955    0.1943112   0.2664797
15-18 months   JiVitA-4    BANGLADESH   1                    NA                0.1569876    0.1511128   0.1628624
15-18 months   JiVitA-4    BANGLADESH   0                    NA                0.1699086    0.1578151   0.1820021
15-18 months   Keneba      GAMBIA       1                    NA                0.1533619    0.1340210   0.1727028
15-18 months   Keneba      GAMBIA       0                    NA                0.1591249    0.1460768   0.1721729
15-18 months   MAL-ED      BANGLADESH   1                    NA                0.1821036    0.1265138   0.2376934
15-18 months   MAL-ED      BANGLADESH   0                    NA                0.1375321    0.1216271   0.1534371
15-18 months   MAL-ED      BRAZIL       1                    NA                0.0998707    0.0018108   0.1979306
15-18 months   MAL-ED      BRAZIL       0                    NA                0.2110427    0.1837425   0.2383429
15-18 months   MAL-ED      INDIA        1                    NA                0.1851480    0.0917188   0.2785772
15-18 months   MAL-ED      INDIA        0                    NA                0.1633543    0.1483664   0.1783421
15-18 months   MAL-ED      PERU         1                    NA                0.0937279   -0.0015239   0.1889797
15-18 months   MAL-ED      PERU         0                    NA                0.1474439    0.1282855   0.1666024
15-18 months   PROVIDE     BANGLADESH   1                    NA                0.1441030    0.1198551   0.1683509
15-18 months   PROVIDE     BANGLADESH   0                    NA                0.1598238    0.1463581   0.1732896
18-21 months   GMS-Nepal   NEPAL        1                    NA                0.1497326    0.1313413   0.1681239
18-21 months   GMS-Nepal   NEPAL        0                    NA                0.1135151    0.0800961   0.1469340
18-21 months   Keneba      GAMBIA       1                    NA                0.1720479    0.1504735   0.1936223
18-21 months   Keneba      GAMBIA       0                    NA                0.1438778    0.1306943   0.1570613
18-21 months   LCNI-5      MALAWI       1                    NA                0.2199597    0.1493703   0.2905492
18-21 months   LCNI-5      MALAWI       0                    NA                0.1979692    0.1661510   0.2297875
18-21 months   MAL-ED      BANGLADESH   1                    NA                0.1144419    0.0642133   0.1646705
18-21 months   MAL-ED      BANGLADESH   0                    NA                0.1463825    0.1284800   0.1642850
18-21 months   MAL-ED      BRAZIL       1                    NA                0.0856286    0.0397062   0.1315510
18-21 months   MAL-ED      BRAZIL       0                    NA                0.1659390    0.1405229   0.1913552
18-21 months   MAL-ED      INDIA        1                    NA                0.1299081    0.0159308   0.2438853
18-21 months   MAL-ED      INDIA        0                    NA                0.1718445    0.1575461   0.1861430
18-21 months   PROVIDE     BANGLADESH   1                    NA                0.1162882    0.0938434   0.1387329
18-21 months   PROVIDE     BANGLADESH   0                    NA                0.1375988    0.1243008   0.1508968
21-24 months   GMS-Nepal   NEPAL        1                    NA                0.1813558    0.1527326   0.2099789
21-24 months   GMS-Nepal   NEPAL        0                    NA                0.1650687    0.1164167   0.2137208
21-24 months   Keneba      GAMBIA       1                    NA                0.1397095    0.1194400   0.1599790
21-24 months   Keneba      GAMBIA       0                    NA                0.1774716    0.1641691   0.1907741
21-24 months   LCNI-5      MALAWI       1                    NA                0.1423943    0.0658003   0.2189883
21-24 months   LCNI-5      MALAWI       0                    NA                0.1857376    0.1371245   0.2343506
21-24 months   MAL-ED      BANGLADESH   1                    NA                0.1560064    0.1130815   0.1989313
21-24 months   MAL-ED      BANGLADESH   0                    NA                0.1516053    0.1354500   0.1677606
21-24 months   MAL-ED      BRAZIL       1                    NA                0.1977600    0.0610489   0.3344712
21-24 months   MAL-ED      BRAZIL       0                    NA                0.1396136    0.1167026   0.1625246
21-24 months   MAL-ED      INDIA        1                    NA                0.1449941    0.0776191   0.2123690
21-24 months   MAL-ED      INDIA        0                    NA                0.1570041    0.1435283   0.1704798
21-24 months   PROVIDE     BANGLADESH   1                    NA                0.1511742    0.1272681   0.1750802
21-24 months   PROVIDE     BANGLADESH   0                    NA                0.1390023    0.1259371   0.1520676


### Parameter: E(Y)


agecat         studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL        NA                   NA                0.8290682   0.8112267   0.8469097
0-3 months     JiVitA-3    BANGLADESH   NA                   NA                0.8693660   0.8652018   0.8735301
0-3 months     JiVitA-4    BANGLADESH   NA                   NA                0.8892195   0.8786542   0.8997847
0-3 months     Keneba      GAMBIA       NA                   NA                0.9245701   0.9128441   0.9362962
0-3 months     MAL-ED      BANGLADESH   NA                   NA                0.8793764   0.8562449   0.9025078
0-3 months     MAL-ED      BRAZIL       NA                   NA                1.0655134   1.0311555   1.0998713
0-3 months     MAL-ED      INDIA        NA                   NA                0.7588477   0.7364127   0.7812826
0-3 months     MAL-ED      NEPAL        NA                   NA                0.9566479   0.9296524   0.9836434
0-3 months     MAL-ED      PERU         NA                   NA                0.9709635   0.9457785   0.9961485
0-3 months     PROVIDE     BANGLADESH   NA                   NA                0.9024472   0.8878738   0.9170206
3-6 months     GMS-Nepal   NEPAL        NA                   NA                0.4969685   0.4829796   0.5109574
3-6 months     JiVitA-3    BANGLADESH   NA                   NA                0.4376750   0.4329472   0.4424029
3-6 months     JiVitA-4    BANGLADESH   NA                   NA                0.4386833   0.4295081   0.4478585
3-6 months     Keneba      GAMBIA       NA                   NA                0.4465835   0.4366897   0.4564773
3-6 months     MAL-ED      BANGLADESH   NA                   NA                0.4740560   0.4573508   0.4907612
3-6 months     MAL-ED      BRAZIL       NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     MAL-ED      INDIA        NA                   NA                0.4437256   0.4262017   0.4612496
3-6 months     MAL-ED      PERU         NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     PROVIDE     BANGLADESH   NA                   NA                0.4890611   0.4760060   0.5021163
6-9 months     GMS-Nepal   NEPAL        NA                   NA                0.1871486   0.1748771   0.1994201
6-9 months     JiVitA-4    BANGLADESH   NA                   NA                0.2387387   0.2332737   0.2442038
6-9 months     Keneba      GAMBIA       NA                   NA                0.2005067   0.1873236   0.2136898
6-9 months     LCNI-5      MALAWI       NA                   NA                0.2829175   0.2578313   0.3080037
6-9 months     MAL-ED      BANGLADESH   NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     MAL-ED      BRAZIL       NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     MAL-ED      INDIA        NA                   NA                0.2306231   0.2156296   0.2456166
6-9 months     MAL-ED      PERU         NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     PROVIDE     BANGLADESH   NA                   NA                0.2491653   0.2371134   0.2612172
9-12 months    GMS-Nepal   NEPAL        NA                   NA                0.1395865   0.1265823   0.1525906
9-12 months    JiVitA-4    BANGLADESH   NA                   NA                0.1533597   0.1488837   0.1578358
9-12 months    Keneba      GAMBIA       NA                   NA                0.1608923   0.1478424   0.1739422
9-12 months    LCNI-5      MALAWI       NA                   NA                0.1849664   0.1167599   0.2531730
9-12 months    MAL-ED      BANGLADESH   NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    MAL-ED      BRAZIL       NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    MAL-ED      INDIA        NA                   NA                0.1787492   0.1645237   0.1929747
9-12 months    MAL-ED      PERU         NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    PROVIDE     BANGLADESH   NA                   NA                0.1780389   0.1687408   0.1873370
12-15 months   GMS-Nepal   NEPAL        NA                   NA                0.1746639   0.1610783   0.1882495
12-15 months   JiVitA-4    BANGLADESH   NA                   NA                0.1308582   0.1262352   0.1354811
12-15 months   Keneba      GAMBIA       NA                   NA                0.1891400   0.1785232   0.1997569
12-15 months   MAL-ED      BANGLADESH   NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   MAL-ED      BRAZIL       NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   MAL-ED      INDIA        NA                   NA                0.1739653   0.1578765   0.1900541
12-15 months   MAL-ED      PERU         NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   PROVIDE     BANGLADESH   NA                   NA                0.1796101   0.1678900   0.1913301
15-18 months   GMS-Nepal   NEPAL        NA                   NA                0.2291397   0.2134657   0.2448138
15-18 months   JiVitA-4    BANGLADESH   NA                   NA                0.1598556   0.1545499   0.1651613
15-18 months   Keneba      GAMBIA       NA                   NA                0.1573149   0.1464971   0.1681327
15-18 months   MAL-ED      BANGLADESH   NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   MAL-ED      BRAZIL       NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   MAL-ED      INDIA        NA                   NA                0.1642299   0.1493519   0.1791079
15-18 months   MAL-ED      PERU         NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   PROVIDE     BANGLADESH   NA                   NA                0.1558862   0.1440925   0.1676799
18-21 months   GMS-Nepal   NEPAL        NA                   NA                0.1428759   0.1266216   0.1591302
18-21 months   Keneba      GAMBIA       NA                   NA                0.1526855   0.1413636   0.1640074
18-21 months   LCNI-5      MALAWI       NA                   NA                0.2016785   0.1726437   0.2307133
18-21 months   MAL-ED      BANGLADESH   NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   MAL-ED      BRAZIL       NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   MAL-ED      INDIA        NA                   NA                0.1701596   0.1556514   0.1846677
18-21 months   PROVIDE     BANGLADESH   NA                   NA                0.1324685   0.1209911   0.1439458
21-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1784694   0.1533807   0.2035582
21-24 months   Keneba      GAMBIA       NA                   NA                0.1661358   0.1549650   0.1773065
21-24 months   LCNI-5      MALAWI       NA                   NA                0.1779746   0.1356818   0.2202674
21-24 months   MAL-ED      BANGLADESH   NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   MAL-ED      BRAZIL       NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   MAL-ED      INDIA        NA                   NA                0.1565193   0.1433011   0.1697376
21-24 months   PROVIDE     BANGLADESH   NA                   NA                0.1419760   0.1304951   0.1534569


### Parameter: ATE


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal   NEPAL        0                    1                 -0.0459894   -0.0895359   -0.0024430
0-3 months     JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH   0                    1                  0.0024231   -0.0083220    0.0131682
0-3 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH   0                    1                 -0.0644880   -0.0941927   -0.0347832
0-3 months     Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba      GAMBIA       0                    1                 -0.0409227   -0.0658545   -0.0159910
0-3 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH   0                    1                 -0.0020446   -0.0678865    0.0637972
0-3 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL       0                    1                 -0.0943114   -0.2434993    0.0548764
0-3 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      INDIA        0                    1                 -0.0289031   -0.1549127    0.0971064
0-3 months     MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      NEPAL        0                    1                  0.1220006   -0.0117262    0.2557274
0-3 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU         0                    1                 -0.0933579   -0.2530882    0.0663723
0-3 months     PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE     BANGLADESH   0                    1                 -0.0386771   -0.0702554   -0.0070988
3-6 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL        0                    1                  0.0003159   -0.0315953    0.0322271
3-6 months     JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH   0                    1                 -0.0034436   -0.0173298    0.0104426
3-6 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4    BANGLADESH   0                    1                  0.0060163   -0.0173402    0.0293729
3-6 months     Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba      GAMBIA       0                    1                 -0.0155254   -0.0381154    0.0070646
3-6 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH   0                    1                  0.0133751   -0.0222089    0.0489591
3-6 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL       0                    1                 -0.0693045   -0.2221117    0.0835027
3-6 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA        0                    1                  0.0164685   -0.0927529    0.1256900
3-6 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU         0                    1                  0.0264622   -0.0878112    0.1407356
3-6 months     PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE     BANGLADESH   0                    1                 -0.0132724   -0.0421925    0.0156476
6-9 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL        0                    1                  0.0273506   -0.0137865    0.0684877
6-9 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4    BANGLADESH   0                    1                  0.0121797   -0.0002941    0.0246534
6-9 months     Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba      GAMBIA       0                    1                 -0.0201109   -0.0515618    0.0113401
6-9 months     LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5      MALAWI       0                    1                  0.0471398   -0.0025472    0.0968267
6-9 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH   0                    1                  0.0320414   -0.0041837    0.0682666
6-9 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL       0                    1                 -0.0096798   -0.1710397    0.1516801
6-9 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA        0                    1                  0.1218160    0.0229139    0.2207180
6-9 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU         0                    1                  0.0747914    0.0083928    0.1411900
6-9 months     PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE     BANGLADESH   0                    1                  0.0137023   -0.0118289    0.0392335
9-12 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL        0                    1                  0.0133195   -0.0215041    0.0481432
9-12 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH   0                    1                  0.0115908    0.0010856    0.0220959
9-12 months    Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba      GAMBIA       0                    1                  0.0435225    0.0148853    0.0721597
9-12 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5      MALAWI       0                    1                 -0.0311580   -0.1885949    0.1262788
9-12 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH   0                    1                  0.0171786   -0.0242858    0.0586430
9-12 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL       0                    1                 -0.0184665   -0.1692195    0.1322866
9-12 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA        0                    1                  0.0140169   -0.0508573    0.0788910
9-12 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU         0                    1                  0.0108055   -0.0561456    0.0777566
9-12 months    PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE     BANGLADESH   0                    1                 -0.0088576   -0.0312430    0.0135278
12-15 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL        0                    1                  0.0052205   -0.0309439    0.0413848
12-15 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH   0                    1                  0.0143055    0.0035853    0.0250257
12-15 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba      GAMBIA       0                    1                  0.0012730   -0.0224718    0.0250179
12-15 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH   0                    1                  0.0003254   -0.0494069    0.0500576
12-15 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL       0                    1                  0.0110991   -0.1256563    0.1478544
12-15 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA        0                    1                  0.0388873   -0.0224621    0.1002366
12-15 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU         0                    1                 -0.0080091   -0.1512115    0.1351933
12-15 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE     BANGLADESH   0                    1                  0.0158382   -0.0127316    0.0444080
15-18 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL        0                    1                  0.0015634   -0.0384955    0.0416223
15-18 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH   0                    1                  0.0129210   -0.0005442    0.0263862
15-18 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba      GAMBIA       0                    1                  0.0057630   -0.0175677    0.0290937
15-18 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH   0                    1                 -0.0445715   -0.1023919    0.0132489
15-18 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL       0                    1                  0.1111720    0.0093828    0.2129613
15-18 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA        0                    1                 -0.0217937   -0.1164175    0.0728300
15-18 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU         0                    1                  0.0537160   -0.0434433    0.1508754
15-18 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE     BANGLADESH   0                    1                  0.0157209   -0.0120152    0.0434569
18-21 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL        0                    1                 -0.0362176   -0.0743629    0.0019277
18-21 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba      GAMBIA       0                    1                 -0.0281701   -0.0534537   -0.0028865
18-21 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5      MALAWI       0                    1                 -0.0219905   -0.0994196    0.0554386
18-21 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH   0                    1                  0.0319405   -0.0213831    0.0852642
18-21 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL       0                    1                  0.0803104    0.0278238    0.1327971
18-21 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA        0                    1                  0.0419364   -0.0729342    0.1568071
18-21 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE     BANGLADESH   0                    1                  0.0213107   -0.0047777    0.0473991
21-24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL        0                    1                 -0.0162870   -0.0727344    0.0401604
21-24 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba      GAMBIA       0                    1                  0.0377621    0.0135173    0.0620069
21-24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5      MALAWI       0                    1                  0.0433432   -0.0473754    0.1340619
21-24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH   0                    1                 -0.0044011   -0.0502655    0.0414632
21-24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL       0                    1                 -0.0581464   -0.1967641    0.0804712
21-24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA        0                    1                  0.0120100   -0.0566994    0.0807194
21-24 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE     BANGLADESH   0                    1                 -0.0121718   -0.0394152    0.0150716


### Parameter: PAR


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                -0.0091782   -0.0180279   -0.0003284
0-3 months     JiVitA-3    BANGLADESH   1                    NA                 0.0005377   -0.0018436    0.0029190
0-3 months     JiVitA-4    BANGLADESH   1                    NA                -0.0107416   -0.0161187   -0.0053645
0-3 months     Keneba      GAMBIA       1                    NA                -0.0290954   -0.0468484   -0.0113423
0-3 months     MAL-ED      BANGLADESH   1                    NA                -0.0017776   -0.0590197    0.0554646
0-3 months     MAL-ED      BRAZIL       1                    NA                -0.0882268   -0.2278238    0.0513702
0-3 months     MAL-ED      INDIA        1                    NA                -0.0276732   -0.1483229    0.0929765
0-3 months     MAL-ED      NEPAL        1                    NA                 0.1193484   -0.0110556    0.2497524
0-3 months     MAL-ED      PERU         1                    NA                -0.0910240   -0.2467704    0.0647224
0-3 months     PROVIDE     BANGLADESH   1                    NA                -0.0288553   -0.0524510   -0.0052596
3-6 months     GMS-Nepal   NEPAL        1                    NA                 0.0000639   -0.0063878    0.0065155
3-6 months     JiVitA-3    BANGLADESH   1                    NA                -0.0007944   -0.0039912    0.0024023
3-6 months     JiVitA-4    BANGLADESH   1                    NA                 0.0009324   -0.0026893    0.0045542
3-6 months     Keneba      GAMBIA       1                    NA                -0.0113869   -0.0279596    0.0051857
3-6 months     MAL-ED      BANGLADESH   1                    NA                 0.0116455   -0.0193425    0.0426335
3-6 months     MAL-ED      BRAZIL       1                    NA                -0.0653062   -0.2093143    0.0787020
3-6 months     MAL-ED      INDIA        1                    NA                 0.0158185   -0.0890925    0.1207294
3-6 months     MAL-ED      PERU         1                    NA                 0.0258676   -0.0855500    0.1372851
3-6 months     PROVIDE     BANGLADESH   1                    NA                -0.0100923   -0.0320878    0.0119031
6-9 months     GMS-Nepal   NEPAL        1                    NA                 0.0052710   -0.0027172    0.0132592
6-9 months     JiVitA-4    BANGLADESH   1                    NA                 0.0025512   -0.0000703    0.0051727
6-9 months     Keneba      GAMBIA       1                    NA                -0.0143946   -0.0369151    0.0081259
6-9 months     LCNI-5      MALAWI       1                    NA                 0.0396105   -0.0022362    0.0814572
6-9 months     MAL-ED      BANGLADESH   1                    NA                 0.0280363   -0.0036913    0.0597638
6-9 months     MAL-ED      BRAZIL       1                    NA                -0.0090931   -0.1606740    0.1424877
6-9 months     MAL-ED      INDIA        1                    NA                 0.1170074    0.0219593    0.2120555
6-9 months     MAL-ED      PERU         1                    NA                 0.0729598    0.0082049    0.1377146
6-9 months     PROVIDE     BANGLADESH   1                    NA                 0.0105622   -0.0091237    0.0302481
9-12 months    GMS-Nepal   NEPAL        1                    NA                 0.0024045   -0.0039010    0.0087100
9-12 months    JiVitA-4    BANGLADESH   1                    NA                 0.0026044    0.0002320    0.0049768
9-12 months    Keneba      GAMBIA       1                    NA                 0.0304246    0.0103540    0.0504952
9-12 months    LCNI-5      MALAWI       1                    NA                -0.0211070   -0.1278851    0.0856710
9-12 months    MAL-ED      BANGLADESH   1                    NA                 0.0151172   -0.0213788    0.0516131
9-12 months    MAL-ED      BRAZIL       1                    NA                -0.0173242   -0.1587537    0.1241053
9-12 months    MAL-ED      INDIA        1                    NA                 0.0135163   -0.0490419    0.0760744
9-12 months    MAL-ED      PERU         1                    NA                 0.0105296   -0.0547125    0.0757717
9-12 months    PROVIDE     BANGLADESH   1                    NA                -0.0067679   -0.0238751    0.0103392
12-15 months   GMS-Nepal   NEPAL        1                    NA                 0.0009765   -0.0057909    0.0077439
12-15 months   JiVitA-4    BANGLADESH   1                    NA                 0.0032485    0.0007898    0.0057072
12-15 months   Keneba      GAMBIA       1                    NA                 0.0008841   -0.0156071    0.0173754
12-15 months   MAL-ED      BANGLADESH   1                    NA                 0.0002885   -0.0438136    0.0443907
12-15 months   MAL-ED      BRAZIL       1                    NA                 0.0103752   -0.1174619    0.1382124
12-15 months   MAL-ED      INDIA        1                    NA                 0.0374922   -0.0216640    0.0966484
12-15 months   MAL-ED      PERU         1                    NA                -0.0078303   -0.1474527    0.1317921
12-15 months   PROVIDE     BANGLADESH   1                    NA                 0.0119897   -0.0096456    0.0336250
15-18 months   GMS-Nepal   NEPAL        1                    NA                 0.0003077   -0.0075760    0.0081913
15-18 months   JiVitA-4    BANGLADESH   1                    NA                 0.0028680   -0.0001519    0.0058878
15-18 months   Keneba      GAMBIA       1                    NA                 0.0039531   -0.0120511    0.0199572
15-18 months   MAL-ED      BANGLADESH   1                    NA                -0.0393154   -0.0903543    0.0117234
15-18 months   MAL-ED      BRAZIL       1                    NA                 0.1035488    0.0086476    0.1984501
15-18 months   MAL-ED      INDIA        1                    NA                -0.0209181   -0.1117417    0.0699055
15-18 months   MAL-ED      PERU         1                    NA                 0.0524610   -0.0422757    0.1471977
15-18 months   PROVIDE     BANGLADESH   1                    NA                 0.0117832   -0.0090138    0.0325803
18-21 months   GMS-Nepal   NEPAL        1                    NA                -0.0068567   -0.0142075    0.0004941
18-21 months   Keneba      GAMBIA       1                    NA                -0.0193623   -0.0367571   -0.0019675
18-21 months   LCNI-5      MALAWI       1                    NA                -0.0182813   -0.0826623    0.0460998
18-21 months   MAL-ED      BANGLADESH   1                    NA                 0.0282727   -0.0189479    0.0754934
18-21 months   MAL-ED      BRAZIL       1                    NA                 0.0750205    0.0258975    0.1241436
18-21 months   MAL-ED      INDIA        1                    NA                 0.0402515   -0.0700091    0.1505121
18-21 months   PROVIDE     BANGLADESH   1                    NA                 0.0161803   -0.0036425    0.0360031
21-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0028863   -0.0129132    0.0071406
21-24 months   Keneba      GAMBIA       1                    NA                 0.0264263    0.0094271    0.0434254
21-24 months   LCNI-5      MALAWI       1                    NA                 0.0355803   -0.0389438    0.1101043
21-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0038908   -0.0444380    0.0366564
21-24 months   MAL-ED      BRAZIL       1                    NA                -0.0542700   -0.1836655    0.0751255
21-24 months   MAL-ED      INDIA        1                    NA                 0.0115253   -0.0544118    0.0774624
21-24 months   PROVIDE     BANGLADESH   1                    NA                -0.0091982   -0.0297911    0.0113948
