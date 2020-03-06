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
0-3 months     CMC-V-BCS-2002   INDIA                          1                  2      2
0-3 months     CMC-V-BCS-2002   INDIA                          0                  0      2
0-3 months     EE               PAKISTAN                       1                  2      6
0-3 months     EE               PAKISTAN                       0                  4      6
0-3 months     GMS-Nepal        NEPAL                          1                372    465
0-3 months     GMS-Nepal        NEPAL                          0                 93    465
0-3 months     IRC              INDIA                          1                  0      4
0-3 months     IRC              INDIA                          0                  4      4
0-3 months     Keneba           GAMBIA                         1                326   1116
0-3 months     Keneba           GAMBIA                         0                790   1116
0-3 months     MAL-ED           BANGLADESH                     1                 32    242
0-3 months     MAL-ED           BANGLADESH                     0                210    242
0-3 months     MAL-ED           BRAZIL                         1                  8    167
0-3 months     MAL-ED           BRAZIL                         0                159    167
0-3 months     MAL-ED           INDIA                          1                  4    181
0-3 months     MAL-ED           INDIA                          0                177    181
0-3 months     MAL-ED           NEPAL                          1                  4    154
0-3 months     MAL-ED           NEPAL                          0                150    154
0-3 months     MAL-ED           PERU                           1                  5    263
0-3 months     MAL-ED           PERU                           0                258    263
0-3 months     MAL-ED           SOUTH AFRICA                   1                  0    209
0-3 months     MAL-ED           SOUTH AFRICA                   0                209    209
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3    223
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                220    223
0-3 months     PROVIDE          BANGLADESH                     1                161    634
0-3 months     PROVIDE          BANGLADESH                     0                473    634
3-6 months     CMC-V-BCS-2002   INDIA                          1                  6      6
3-6 months     CMC-V-BCS-2002   INDIA                          0                  0      6
3-6 months     EE               PAKISTAN                       1                  3      7
3-6 months     EE               PAKISTAN                       0                  4      7
3-6 months     GMS-Nepal        NEPAL                          1                366    460
3-6 months     GMS-Nepal        NEPAL                          0                 94    460
3-6 months     IRC              INDIA                          1                  0      4
3-6 months     IRC              INDIA                          0                  4      4
3-6 months     Keneba           GAMBIA                         1                337   1266
3-6 months     Keneba           GAMBIA                         0                929   1266
3-6 months     MAL-ED           BANGLADESH                     1                 30    230
3-6 months     MAL-ED           BANGLADESH                     0                200    230
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
3-6 months     PROVIDE          BANGLADESH                     1                143    597
3-6 months     PROVIDE          BANGLADESH                     0                454    597
6-9 months     CMC-V-BCS-2002   INDIA                          1                  9      9
6-9 months     CMC-V-BCS-2002   INDIA                          0                  0      9
6-9 months     EE               PAKISTAN                       1                  4      9
6-9 months     EE               PAKISTAN                       0                  5      9
6-9 months     GMS-Nepal        NEPAL                          1                377    470
6-9 months     GMS-Nepal        NEPAL                          0                 93    470
6-9 months     IRC              INDIA                          1                  0      4
6-9 months     IRC              INDIA                          0                  4      4
6-9 months     Keneba           GAMBIA                         1                220    774
6-9 months     Keneba           GAMBIA                         0                554    774
6-9 months     LCNI-5           MALAWI                         1                 23    145
6-9 months     LCNI-5           MALAWI                         0                122    145
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
6-9 months     PROVIDE          BANGLADESH                     1                129    565
6-9 months     PROVIDE          BANGLADESH                     0                436    565
6-9 months     SAS-FoodSuppl    INDIA                          1                  0    142
6-9 months     SAS-FoodSuppl    INDIA                          0                142    142
9-12 months    CMC-V-BCS-2002   INDIA                          1                  9      9
9-12 months    CMC-V-BCS-2002   INDIA                          0                  0      9
9-12 months    EE               PAKISTAN                       1                  3      8
9-12 months    EE               PAKISTAN                       0                  5      8
9-12 months    GMS-Nepal        NEPAL                          1                352    434
9-12 months    GMS-Nepal        NEPAL                          0                 82    434
9-12 months    IRC              INDIA                          1                  0      4
9-12 months    IRC              INDIA                          0                  4      4
9-12 months    Keneba           GAMBIA                         1                222    740
9-12 months    Keneba           GAMBIA                         0                518    740
9-12 months    LCNI-5           MALAWI                         1                 10     32
9-12 months    LCNI-5           MALAWI                         0                 22     32
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
9-12 months    PROVIDE          BANGLADESH                     1                134    565
9-12 months    PROVIDE          BANGLADESH                     0                431    565
9-12 months    SAS-FoodSuppl    INDIA                          1                  0    144
9-12 months    SAS-FoodSuppl    INDIA                          0                144    144
12-15 months   CMC-V-BCS-2002   INDIA                          1                  9      9
12-15 months   CMC-V-BCS-2002   INDIA                          0                  0      9
12-15 months   EE               PAKISTAN                       1                  3      8
12-15 months   EE               PAKISTAN                       0                  5      8
12-15 months   GMS-Nepal        NEPAL                          1                347    433
12-15 months   GMS-Nepal        NEPAL                          0                 86    433
12-15 months   IRC              INDIA                          1                  0      4
12-15 months   IRC              INDIA                          0                  4      4
12-15 months   Keneba           GAMBIA                         1                350   1148
12-15 months   Keneba           GAMBIA                         0                798   1148
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
12-15 months   PROVIDE          BANGLADESH                     1                130    531
12-15 months   PROVIDE          BANGLADESH                     0                401    531
12-15 months   SAS-FoodSuppl    INDIA                          1                  0    137
12-15 months   SAS-FoodSuppl    INDIA                          0                137    137
15-18 months   CMC-V-BCS-2002   INDIA                          1                  6      6
15-18 months   CMC-V-BCS-2002   INDIA                          0                  0      6
15-18 months   EE               PAKISTAN                       1                  3      8
15-18 months   EE               PAKISTAN                       0                  5      8
15-18 months   GMS-Nepal        NEPAL                          1                353    441
15-18 months   GMS-Nepal        NEPAL                          0                 88    441
15-18 months   IRC              INDIA                          1                  0      4
15-18 months   IRC              INDIA                          0                  4      4
15-18 months   Keneba           GAMBIA                         1                364   1157
15-18 months   Keneba           GAMBIA                         0                793   1157
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
15-18 months   MAL-ED           PERU                           1                  5    213
15-18 months   MAL-ED           PERU                           0                208    213
15-18 months   MAL-ED           SOUTH AFRICA                   1                  1    224
15-18 months   MAL-ED           SOUTH AFRICA                   0                223    224
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3    216
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                213    216
15-18 months   PROVIDE          BANGLADESH                     1                133    527
15-18 months   PROVIDE          BANGLADESH                     0                394    527
15-18 months   SAS-FoodSuppl    INDIA                          1                  0    129
15-18 months   SAS-FoodSuppl    INDIA                          0                129    129
18-21 months   CMC-V-BCS-2002   INDIA                          1                  5      5
18-21 months   CMC-V-BCS-2002   INDIA                          0                  0      5
18-21 months   EE               PAKISTAN                       1                  2      7
18-21 months   EE               PAKISTAN                       0                  5      7
18-21 months   GMS-Nepal        NEPAL                          1                333    411
18-21 months   GMS-Nepal        NEPAL                          0                 78    411
18-21 months   IRC              INDIA                          1                  0      4
18-21 months   IRC              INDIA                          0                  4      4
18-21 months   Keneba           GAMBIA                         1                358   1144
18-21 months   Keneba           GAMBIA                         0                786   1144
18-21 months   LCNI-5           MALAWI                         1                 29    170
18-21 months   LCNI-5           MALAWI                         0                141    170
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3    203
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                200    203
18-21 months   PROVIDE          BANGLADESH                     1                130    540
18-21 months   PROVIDE          BANGLADESH                     0                410    540
21-24 months   CMC-V-BCS-2002   INDIA                          1                  6      6
21-24 months   CMC-V-BCS-2002   INDIA                          0                  0      6
21-24 months   EE               PAKISTAN                       1                  0      2
21-24 months   EE               PAKISTAN                       0                  2      2
21-24 months   GMS-Nepal        NEPAL                          1                259    315
21-24 months   GMS-Nepal        NEPAL                          0                 56    315
21-24 months   IRC              INDIA                          1                  0      4
21-24 months   IRC              INDIA                          0                  4      4
21-24 months   Keneba           GAMBIA                         1                313   1043
21-24 months   Keneba           GAMBIA                         0                730   1043
21-24 months   LCNI-5           MALAWI                         1                 25    141
21-24 months   LCNI-5           MALAWI                         0                116    141
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3    203
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                200    203
21-24 months   PROVIDE          BANGLADESH                     1                115    470
21-24 months   PROVIDE          BANGLADESH                     0                355    470


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
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
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/214d38a8-c676-4344-94a2-8b95f8a1ec20/17a8150c-2d52-4c99-a5a3-6a5582a7f0ae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/214d38a8-c676-4344-94a2-8b95f8a1ec20/17a8150c-2d52-4c99-a5a3-6a5582a7f0ae/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/214d38a8-c676-4344-94a2-8b95f8a1ec20/17a8150c-2d52-4c99-a5a3-6a5582a7f0ae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                -0.0213499   -0.0498784    0.0071787
0-3 months     GMS-Nepal   NEPAL        0                    NA                -0.0367826   -0.1006988    0.0271337
0-3 months     Keneba      GAMBIA       1                    NA                -0.2664371   -0.3129614   -0.2199127
0-3 months     Keneba      GAMBIA       0                    NA                -0.2875181   -0.3186899   -0.2563463
0-3 months     MAL-ED      BANGLADESH   1                    NA                -0.1065461   -0.1856059   -0.0274863
0-3 months     MAL-ED      BANGLADESH   0                    NA                -0.1243445   -0.1614658   -0.0872233
0-3 months     MAL-ED      BRAZIL       1                    NA                 0.3460294    0.1166038    0.5754549
0-3 months     MAL-ED      BRAZIL       0                    NA                 0.1287992    0.0709434    0.1866551
0-3 months     MAL-ED      PERU         1                    NA                -0.0942168   -0.2126675    0.0242339
0-3 months     MAL-ED      PERU         0                    NA                -0.2685187   -0.3031690   -0.2338684
0-3 months     PROVIDE     BANGLADESH   1                    NA                -0.1869916   -0.2183233   -0.1556598
0-3 months     PROVIDE     BANGLADESH   0                    NA                -0.1885395   -0.2091829   -0.1678961
3-6 months     GMS-Nepal   NEPAL        1                    NA                -0.1580077   -0.1785321   -0.1374833
3-6 months     GMS-Nepal   NEPAL        0                    NA                -0.1771258   -0.2230868   -0.1311648
3-6 months     Keneba      GAMBIA       1                    NA                -0.0257329   -0.0612069    0.0097410
3-6 months     Keneba      GAMBIA       0                    NA                -0.0154665   -0.0387954    0.0078624
3-6 months     MAL-ED      BANGLADESH   1                    NA                -0.0122896   -0.0949128    0.0703336
3-6 months     MAL-ED      BANGLADESH   0                    NA                -0.0248706   -0.0490632   -0.0006780
3-6 months     MAL-ED      BRAZIL       1                    NA                 0.0998742   -0.0463871    0.2461354
3-6 months     MAL-ED      BRAZIL       0                    NA                 0.0572713    0.0195834    0.0949592
3-6 months     MAL-ED      INDIA        1                    NA                 0.0473608   -0.0695552    0.1642768
3-6 months     MAL-ED      INDIA        0                    NA                -0.0431444   -0.0731638   -0.0131251
3-6 months     MAL-ED      PERU         1                    NA                 0.0822238   -0.1223318    0.2867794
3-6 months     MAL-ED      PERU         0                    NA                 0.0244477   -0.0071690    0.0560644
3-6 months     PROVIDE     BANGLADESH   1                    NA                -0.0024277   -0.0333079    0.0284524
3-6 months     PROVIDE     BANGLADESH   0                    NA                -0.0333741   -0.0516882   -0.0150600
6-9 months     GMS-Nepal   NEPAL        1                    NA                -0.0466441   -0.0640489   -0.0292392
6-9 months     GMS-Nepal   NEPAL        0                    NA                -0.0394839   -0.0952644    0.0162966
6-9 months     Keneba      GAMBIA       1                    NA                 0.0193082   -0.0304903    0.0691067
6-9 months     Keneba      GAMBIA       0                    NA                -0.0233850   -0.0513447    0.0045746
6-9 months     LCNI-5      MALAWI       1                    NA                 0.0130077   -0.0680361    0.0940515
6-9 months     LCNI-5      MALAWI       0                    NA                 0.0089411   -0.0193006    0.0371829
6-9 months     MAL-ED      BANGLADESH   1                    NA                -0.0651771   -0.1028609   -0.0274933
6-9 months     MAL-ED      BANGLADESH   0                    NA                -0.0707154   -0.0896881   -0.0517428
6-9 months     MAL-ED      BRAZIL       1                    NA                 0.0257823   -0.0895430    0.1411076
6-9 months     MAL-ED      BRAZIL       0                    NA                 0.0076867   -0.0286666    0.0440400
6-9 months     MAL-ED      INDIA        1                    NA                -0.1362328   -0.2469863   -0.0254793
6-9 months     MAL-ED      INDIA        0                    NA                -0.0704645   -0.0935655   -0.0473635
6-9 months     MAL-ED      PERU         1                    NA                 0.0214886   -0.0959815    0.1389587
6-9 months     MAL-ED      PERU         0                    NA                -0.0349609   -0.0594829   -0.0104389
6-9 months     PROVIDE     BANGLADESH   1                    NA                -0.0746918   -0.0968112   -0.0525724
6-9 months     PROVIDE     BANGLADESH   0                    NA                -0.0575015   -0.0699110   -0.0450921
9-12 months    GMS-Nepal   NEPAL        1                    NA                -0.0818618   -0.0958611   -0.0678625
9-12 months    GMS-Nepal   NEPAL        0                    NA                -0.0721457   -0.1186956   -0.0255957
9-12 months    Keneba      GAMBIA       1                    NA                -0.0967955   -0.1280212   -0.0655698
9-12 months    Keneba      GAMBIA       0                    NA                -0.0996560   -0.1226707   -0.0766414
9-12 months    LCNI-5      MALAWI       1                    NA                -0.0518243   -0.1272823    0.0236337
9-12 months    LCNI-5      MALAWI       0                    NA                -0.1295742   -0.2051770   -0.0539714
9-12 months    MAL-ED      BANGLADESH   1                    NA                -0.1219524   -0.1587554   -0.0851495
9-12 months    MAL-ED      BANGLADESH   0                    NA                -0.0824671   -0.1000307   -0.0649036
9-12 months    MAL-ED      BRAZIL       1                    NA                -0.0228867   -0.1113376    0.0655643
9-12 months    MAL-ED      BRAZIL       0                    NA                 0.0102266   -0.0220811    0.0425344
9-12 months    MAL-ED      INDIA        1                    NA                -0.1678098   -0.2739659   -0.0616537
9-12 months    MAL-ED      INDIA        0                    NA                -0.0890818   -0.1050928   -0.0730709
9-12 months    MAL-ED      PERU         1                    NA                -0.0218809   -0.1178650    0.0741032
9-12 months    MAL-ED      PERU         0                    NA                -0.0424513   -0.0643253   -0.0205772
9-12 months    PROVIDE     BANGLADESH   1                    NA                -0.0731595   -0.0956819   -0.0506371
9-12 months    PROVIDE     BANGLADESH   0                    NA                -0.0596693   -0.0722374   -0.0471012
12-15 months   GMS-Nepal   NEPAL        1                    NA                -0.0707528   -0.0813439   -0.0601616
12-15 months   GMS-Nepal   NEPAL        0                    NA                -0.0708165   -0.0951026   -0.0465305
12-15 months   Keneba      GAMBIA       1                    NA                -0.0549179   -0.0739727   -0.0358631
12-15 months   Keneba      GAMBIA       0                    NA                -0.0497791   -0.0656735   -0.0338848
12-15 months   MAL-ED      BANGLADESH   1                    NA                -0.0707053   -0.1055650   -0.0358457
12-15 months   MAL-ED      BANGLADESH   0                    NA                -0.0537983   -0.0707248   -0.0368719
12-15 months   MAL-ED      BRAZIL       1                    NA                 0.0214656   -0.0766727    0.1196039
12-15 months   MAL-ED      BRAZIL       0                    NA                -0.0047529   -0.0278898    0.0183839
12-15 months   MAL-ED      INDIA        1                    NA                -0.1506199   -0.2213948   -0.0798451
12-15 months   MAL-ED      INDIA        0                    NA                -0.0541428   -0.0696335   -0.0386521
12-15 months   MAL-ED      PERU         1                    NA                -0.1225323   -0.1828783   -0.0621862
12-15 months   MAL-ED      PERU         0                    NA                -0.0640477   -0.0822818   -0.0458137
12-15 months   PROVIDE     BANGLADESH   1                    NA                -0.0370884   -0.0548681   -0.0193087
12-15 months   PROVIDE     BANGLADESH   0                    NA                -0.0420685   -0.0541535   -0.0299835
15-18 months   GMS-Nepal   NEPAL        1                    NA                -0.0618289   -0.0760523   -0.0476056
15-18 months   GMS-Nepal   NEPAL        0                    NA                -0.0907557   -0.1095990   -0.0719125
15-18 months   Keneba      GAMBIA       1                    NA                -0.0329383   -0.0569719   -0.0089046
15-18 months   Keneba      GAMBIA       0                    NA                -0.0329443   -0.0474647   -0.0184240
15-18 months   MAL-ED      BANGLADESH   1                    NA                -0.0340120   -0.0712493    0.0032252
15-18 months   MAL-ED      BANGLADESH   0                    NA                -0.0473695   -0.0617991   -0.0329399
15-18 months   MAL-ED      BRAZIL       1                    NA                 0.0216588   -0.0558536    0.0991712
15-18 months   MAL-ED      BRAZIL       0                    NA                -0.0234343   -0.0452641   -0.0016046
15-18 months   MAL-ED      INDIA        1                    NA                 0.0024882   -0.0611624    0.0661388
15-18 months   MAL-ED      INDIA        0                    NA                -0.0383954   -0.0514317   -0.0253592
15-18 months   MAL-ED      PERU         1                    NA                -0.1075471   -0.1893089   -0.0257852
15-18 months   MAL-ED      PERU         0                    NA                -0.0343380   -0.0500133   -0.0186626
15-18 months   PROVIDE     BANGLADESH   1                    NA                -0.0482953   -0.0660317   -0.0305590
15-18 months   PROVIDE     BANGLADESH   0                    NA                -0.0339362   -0.0439821   -0.0238902
18-21 months   GMS-Nepal   NEPAL        1                    NA                 0.0141602   -0.0006345    0.0289549
18-21 months   GMS-Nepal   NEPAL        0                    NA                 0.0228326    0.0040265    0.0416388
18-21 months   Keneba      GAMBIA       1                    NA                -0.0180082   -0.0431082    0.0070917
18-21 months   Keneba      GAMBIA       0                    NA                -0.0231055   -0.0384772   -0.0077339
18-21 months   LCNI-5      MALAWI       1                    NA                -0.0578036   -0.1993216    0.0837143
18-21 months   LCNI-5      MALAWI       0                    NA                 0.0007623   -0.0262457    0.0277704
18-21 months   MAL-ED      BANGLADESH   1                    NA                -0.0313753   -0.0694060    0.0066554
18-21 months   MAL-ED      BANGLADESH   0                    NA                -0.0134652   -0.0256059   -0.0013245
18-21 months   MAL-ED      BRAZIL       1                    NA                -0.0630688   -0.1114310   -0.0147066
18-21 months   MAL-ED      BRAZIL       0                    NA                -0.0173474   -0.0433442    0.0086495
18-21 months   MAL-ED      INDIA        1                    NA                -0.0531254   -0.1157660    0.0095152
18-21 months   MAL-ED      INDIA        0                    NA                 0.0072155   -0.0042956    0.0187266
18-21 months   PROVIDE     BANGLADESH   1                    NA                -0.0224893   -0.0392193   -0.0057594
18-21 months   PROVIDE     BANGLADESH   0                    NA                -0.0072304   -0.0165693    0.0021086
21-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0398969    0.0234770    0.0563168
21-24 months   GMS-Nepal   NEPAL        0                    NA                 0.0682499    0.0179408    0.1185590
21-24 months   Keneba      GAMBIA       1                    NA                 0.0133192   -0.0105674    0.0372059
21-24 months   Keneba      GAMBIA       0                    NA                 0.0207706    0.0066088    0.0349324
21-24 months   LCNI-5      MALAWI       1                    NA                -0.0119023   -0.0556287    0.0318242
21-24 months   LCNI-5      MALAWI       0                    NA                -0.0115650   -0.0365774    0.0134475
21-24 months   MAL-ED      BANGLADESH   1                    NA                 0.0339208   -0.0017076    0.0695491
21-24 months   MAL-ED      BANGLADESH   0                    NA                 0.0245293    0.0116003    0.0374584
21-24 months   MAL-ED      BRAZIL       1                    NA                 0.0213018   -0.0340572    0.0766608
21-24 months   MAL-ED      BRAZIL       0                    NA                 0.0161431   -0.0005370    0.0328232
21-24 months   MAL-ED      INDIA        1                    NA                 0.0391862    0.0000150    0.0783574
21-24 months   MAL-ED      INDIA        0                    NA                 0.0298022    0.0185786    0.0410258
21-24 months   PROVIDE     BANGLADESH   1                    NA                 0.0395315    0.0221867    0.0568763
21-24 months   PROVIDE     BANGLADESH   0                    NA                 0.0485872    0.0386020    0.0585723


### Parameter: E(Y)


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        NA                   NA                -0.0244364   -0.0506014    0.0017286
0-3 months     Keneba      GAMBIA       NA                   NA                -0.2813600   -0.3072816   -0.2554385
0-3 months     MAL-ED      BANGLADESH   NA                   NA                -0.1219910   -0.1558661   -0.0881159
0-3 months     MAL-ED      BRAZIL       NA                   NA                 0.1392055    0.0825938    0.1958172
0-3 months     MAL-ED      PERU         NA                   NA                -0.2652050   -0.2992408   -0.2311692
0-3 months     PROVIDE     BANGLADESH   NA                   NA                -0.1881464   -0.2054815   -0.1708113
3-6 months     GMS-Nepal   NEPAL        NA                   NA                -0.1619144   -0.1807661   -0.1430628
3-6 months     Keneba      GAMBIA       NA                   NA                -0.0181994   -0.0377516    0.0013528
3-6 months     MAL-ED      BANGLADESH   NA                   NA                -0.0232296   -0.0468728    0.0004136
3-6 months     MAL-ED      BRAZIL       NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     MAL-ED      INDIA        NA                   NA                -0.0395718   -0.0688631   -0.0102806
3-6 months     MAL-ED      PERU         NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     PROVIDE     BANGLADESH   NA                   NA                -0.0259615   -0.0417668   -0.0101562
6-9 months     GMS-Nepal   NEPAL        NA                   NA                -0.0452273   -0.0630261   -0.0274285
6-9 months     Keneba      GAMBIA       NA                   NA                -0.0112500   -0.0357999    0.0132998
6-9 months     LCNI-5      MALAWI       NA                   NA                 0.0095862   -0.0174314    0.0366037
6-9 months     MAL-ED      BANGLADESH   NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     MAL-ED      BRAZIL       NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     MAL-ED      INDIA        NA                   NA                -0.0730606   -0.0957376   -0.0503836
6-9 months     MAL-ED      PERU         NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     PROVIDE     BANGLADESH   NA                   NA                -0.0614264   -0.0722690   -0.0505838
9-12 months    GMS-Nepal   NEPAL        NA                   NA                -0.0800260   -0.0943928   -0.0656593
9-12 months    Keneba      GAMBIA       NA                   NA                -0.0987979   -0.1174339   -0.0801618
9-12 months    LCNI-5      MALAWI       NA                   NA                -0.1052774   -0.1637460   -0.0468087
9-12 months    MAL-ED      BANGLADESH   NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED      BRAZIL       NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    MAL-ED      INDIA        NA                   NA                -0.0918936   -0.1079066   -0.0758806
9-12 months    MAL-ED      PERU         NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    PROVIDE     BANGLADESH   NA                   NA                -0.0628687   -0.0738539   -0.0518835
12-15 months   GMS-Nepal   NEPAL        NA                   NA                -0.0707654   -0.0805279   -0.0610030
12-15 months   Keneba      GAMBIA       NA                   NA                -0.0513458   -0.0638293   -0.0388624
12-15 months   MAL-ED      BANGLADESH   NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED      BRAZIL       NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   MAL-ED      INDIA        NA                   NA                -0.0576039   -0.0729359   -0.0422719
12-15 months   MAL-ED      PERU         NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   PROVIDE     BANGLADESH   NA                   NA                -0.0408493   -0.0509622   -0.0307364
15-18 months   GMS-Nepal   NEPAL        NA                   NA                -0.0676012   -0.0796397   -0.0555626
15-18 months   Keneba      GAMBIA       NA                   NA                -0.0329424   -0.0454411   -0.0204438
15-18 months   MAL-ED      BANGLADESH   NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   MAL-ED      BRAZIL       NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   MAL-ED      INDIA        NA                   NA                -0.0367528   -0.0495674   -0.0239382
15-18 months   MAL-ED      PERU         NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   PROVIDE     BANGLADESH   NA                   NA                -0.0375600   -0.0463196   -0.0288004
18-21 months   GMS-Nepal   NEPAL        NA                   NA                 0.0158061    0.0032947    0.0283174
18-21 months   Keneba      GAMBIA       NA                   NA                -0.0215104   -0.0346731   -0.0083477
18-21 months   LCNI-5      MALAWI       NA                   NA                -0.0092283   -0.0423286    0.0238719
18-21 months   MAL-ED      BANGLADESH   NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   MAL-ED      BRAZIL       NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   MAL-ED      INDIA        NA                   NA                 0.0047911   -0.0066468    0.0162289
18-21 months   PROVIDE     BANGLADESH   NA                   NA                -0.0109038   -0.0190771   -0.0027305
21-24 months   GMS-Nepal   NEPAL        NA                   NA                 0.0449374    0.0286985    0.0611763
21-24 months   Keneba      GAMBIA       NA                   NA                 0.0185345    0.0063004    0.0307686
21-24 months   LCNI-5      MALAWI       NA                   NA                -0.0116248   -0.0336145    0.0103649
21-24 months   MAL-ED      BANGLADESH   NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   MAL-ED      BRAZIL       NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   MAL-ED      INDIA        NA                   NA                 0.0301809    0.0192922    0.0410697
21-24 months   PROVIDE     BANGLADESH   NA                   NA                 0.0463714    0.0377102    0.0550326


### Parameter: ATE


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal   NEPAL        0                    1                 -0.0154327   -0.0854268    0.0545613
0-3 months     Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba      GAMBIA       0                    1                 -0.0210810   -0.0770828    0.0349207
0-3 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH   0                    1                 -0.0177984   -0.1051393    0.0695425
0-3 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL       0                    1                 -0.2172301   -0.4538382    0.0193780
0-3 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU         0                    1                 -0.1743019   -0.2977168   -0.0508871
0-3 months     PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE     BANGLADESH   0                    1                 -0.0015479   -0.0390690    0.0359731
3-6 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL        0                    1                 -0.0191181   -0.0694536    0.0312175
3-6 months     Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba      GAMBIA       0                    1                  0.0102664   -0.0321911    0.0527239
3-6 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH   0                    1                 -0.0125810   -0.0986733    0.0735112
3-6 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL       0                    1                 -0.0426029   -0.1936417    0.1084360
3-6 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA        0                    1                 -0.0905052   -0.2112135    0.0302032
3-6 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU         0                    1                 -0.0577760   -0.2647606    0.1492085
3-6 months     PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE     BANGLADESH   0                    1                 -0.0309464   -0.0668489    0.0049561
6-9 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL        0                    1                  0.0071601   -0.0512727    0.0655929
6-9 months     Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba      GAMBIA       0                    1                 -0.0426932   -0.0998039    0.0144175
6-9 months     LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5      MALAWI       0                    1                 -0.0040666   -0.0898902    0.0817570
6-9 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH   0                    1                 -0.0055383   -0.0477288    0.0366521
6-9 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL       0                    1                 -0.0180956   -0.1390149    0.1028237
6-9 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA        0                    1                  0.0657683   -0.0473687    0.1789053
6-9 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU         0                    1                 -0.0564494   -0.1764517    0.0635529
6-9 months     PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE     BANGLADESH   0                    1                  0.0171902   -0.0081724    0.0425528
9-12 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL        0                    1                  0.0097161   -0.0388933    0.0583256
9-12 months    Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba      GAMBIA       0                    1                 -0.0028605   -0.0416513    0.0359302
9-12 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5      MALAWI       0                    1                 -0.0777499   -0.1845661    0.0290663
9-12 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH   0                    1                  0.0394853   -0.0012938    0.0802644
9-12 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL       0                    1                  0.0331133   -0.0610533    0.1272799
9-12 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA        0                    1                  0.0787279   -0.0286288    0.1860847
9-12 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU         0                    1                 -0.0205704   -0.1190154    0.0778746
9-12 months    PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE     BANGLADESH   0                    1                  0.0134902   -0.0123016    0.0392820
12-15 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL        0                    1                 -0.0000638   -0.0265588    0.0264312
12-15 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba      GAMBIA       0                    1                  0.0051388   -0.0196748    0.0299524
12-15 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH   0                    1                  0.0169070   -0.0218447    0.0556588
12-15 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL       0                    1                 -0.0262186   -0.1270473    0.0746102
12-15 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA        0                    1                  0.0964772    0.0240269    0.1689274
12-15 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU         0                    1                  0.0584845   -0.0045561    0.1215252
12-15 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE     BANGLADESH   0                    1                 -0.0049801   -0.0264782    0.0165179
15-18 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL        0                    1                 -0.0289268   -0.0525355   -0.0053181
15-18 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba      GAMBIA       0                    1                 -0.0000061   -0.0280855    0.0280734
15-18 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH   0                    1                 -0.0133574   -0.0532927    0.0265779
15-18 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL       0                    1                 -0.0450931   -0.1256208    0.0354345
15-18 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA        0                    1                 -0.0408837   -0.1058556    0.0240882
15-18 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU         0                    1                  0.0732091   -0.0100418    0.1564600
15-18 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE     BANGLADESH   0                    1                  0.0143592   -0.0060246    0.0347430
18-21 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL        0                    1                  0.0086724   -0.0152557    0.0326005
18-21 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba      GAMBIA       0                    1                 -0.0050973   -0.0345302    0.0243356
18-21 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5      MALAWI       0                    1                  0.0585660   -0.0855061    0.2026380
18-21 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH   0                    1                  0.0179101   -0.0220114    0.0578317
18-21 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL       0                    1                  0.0457215   -0.0091852    0.1006281
18-21 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA        0                    1                  0.0603408   -0.0033487    0.1240303
18-21 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE     BANGLADESH   0                    1                  0.0152590   -0.0039011    0.0344191
21-24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL        0                    1                  0.0283531   -0.0245678    0.0812739
21-24 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba      GAMBIA       0                    1                  0.0074514   -0.0203178    0.0352206
21-24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5      MALAWI       0                    1                  0.0003373   -0.0500376    0.0507121
21-24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH   0                    1                 -0.0093914   -0.0472932    0.0285103
21-24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL       0                    1                 -0.0051587   -0.0629760    0.0526586
21-24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA        0                    1                 -0.0093840   -0.0501314    0.0313634
21-24 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE     BANGLADESH   0                    1                  0.0090557   -0.0109579    0.0290693


### Parameter: PAR


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                -0.0030865   -0.0170966    0.0109235
0-3 months     Keneba      GAMBIA       1                    NA                -0.0149230   -0.0545698    0.0247238
0-3 months     MAL-ED      BANGLADESH   1                    NA                -0.0154449   -0.0912404    0.0603506
0-3 months     MAL-ED      BRAZIL       1                    NA                -0.2068239   -0.4322080    0.0185602
0-3 months     MAL-ED      PERU         1                    NA                -0.1709882   -0.2913522   -0.0506243
0-3 months     PROVIDE     BANGLADESH   1                    NA                -0.0011548   -0.0291477    0.0268381
3-6 months     GMS-Nepal   NEPAL        1                    NA                -0.0039067   -0.0142168    0.0064034
3-6 months     Keneba      GAMBIA       1                    NA                 0.0075336   -0.0236231    0.0386902
3-6 months     MAL-ED      BANGLADESH   1                    NA                -0.0109400   -0.0858048    0.0639248
3-6 months     MAL-ED      BRAZIL       1                    NA                -0.0401450   -0.1824765    0.1021865
3-6 months     MAL-ED      INDIA        1                    NA                -0.0869326   -0.2028988    0.0290336
3-6 months     MAL-ED      PERU         1                    NA                -0.0564777   -0.2582903    0.1453349
3-6 months     PROVIDE     BANGLADESH   1                    NA                -0.0235338   -0.0508571    0.0037896
6-9 months     GMS-Nepal   NEPAL        1                    NA                 0.0014168   -0.0101483    0.0129819
6-9 months     Keneba      GAMBIA       1                    NA                -0.0305582   -0.0714584    0.0103421
6-9 months     LCNI-5      MALAWI       1                    NA                -0.0034215   -0.0756321    0.0687891
6-9 months     MAL-ED      BANGLADESH   1                    NA                -0.0048460   -0.0417634    0.0320714
6-9 months     MAL-ED      BRAZIL       1                    NA                -0.0169989   -0.1305914    0.0965935
6-9 months     MAL-ED      INDIA        1                    NA                 0.0631722   -0.0455117    0.1718560
6-9 months     MAL-ED      PERU         1                    NA                -0.0550670   -0.1720744    0.0619404
6-9 months     PROVIDE     BANGLADESH   1                    NA                 0.0132654   -0.0063155    0.0328463
9-12 months    GMS-Nepal   NEPAL        1                    NA                 0.0018358   -0.0073555    0.0110270
9-12 months    Keneba      GAMBIA       1                    NA                -0.0020024   -0.0291560    0.0251513
9-12 months    LCNI-5      MALAWI       1                    NA                -0.0534531   -0.1279769    0.0210708
9-12 months    MAL-ED      BANGLADESH   1                    NA                 0.0347471   -0.0011779    0.0706720
9-12 months    MAL-ED      BRAZIL       1                    NA                 0.0310651   -0.0572840    0.1194141
9-12 months    MAL-ED      INDIA        1                    NA                 0.0759162   -0.0276241    0.1794566
9-12 months    MAL-ED      PERU         1                    NA                -0.0200452   -0.1159776    0.0758873
9-12 months    PROVIDE     BANGLADESH   1                    NA                 0.0102908   -0.0093897    0.0299713
12-15 months   GMS-Nepal   NEPAL        1                    NA                -0.0000127   -0.0052749    0.0052496
12-15 months   Keneba      GAMBIA       1                    NA                 0.0035721   -0.0136769    0.0208211
12-15 months   MAL-ED      BANGLADESH   1                    NA                 0.0149930   -0.0193793    0.0493654
12-15 months   MAL-ED      BRAZIL       1                    NA                -0.0245087   -0.1187663    0.0697490
12-15 months   MAL-ED      INDIA        1                    NA                 0.0930161    0.0231251    0.1629071
12-15 months   MAL-ED      PERU         1                    NA                 0.0571791   -0.0042960    0.1186542
12-15 months   PROVIDE     BANGLADESH   1                    NA                -0.0037609   -0.0199968    0.0124750
15-18 months   GMS-Nepal   NEPAL        1                    NA                -0.0057722   -0.0106055   -0.0009389
15-18 months   Keneba      GAMBIA       1                    NA                -0.0000042   -0.0192496    0.0192413
15-18 months   MAL-ED      BANGLADESH   1                    NA                -0.0117823   -0.0470130    0.0234485
15-18 months   MAL-ED      BRAZIL       1                    NA                -0.0420010   -0.1170259    0.0330238
15-18 months   MAL-ED      INDIA        1                    NA                -0.0392410   -0.1016113    0.0231293
15-18 months   MAL-ED      PERU         1                    NA                 0.0714906   -0.0096928    0.1526739
15-18 months   PROVIDE     BANGLADESH   1                    NA                 0.0107353   -0.0045135    0.0259841
18-21 months   GMS-Nepal   NEPAL        1                    NA                 0.0016459   -0.0029072    0.0061989
18-21 months   Keneba      GAMBIA       1                    NA                -0.0035022   -0.0237249    0.0167205
18-21 months   LCNI-5      MALAWI       1                    NA                 0.0485753   -0.0709659    0.1681165
18-21 months   MAL-ED      BANGLADESH   1                    NA                 0.0158535   -0.0194923    0.0511992
18-21 months   MAL-ED      BRAZIL       1                    NA                 0.0427099   -0.0086092    0.0940289
18-21 months   MAL-ED      INDIA        1                    NA                 0.0579164   -0.0032339    0.1190667
18-21 months   PROVIDE     BANGLADESH   1                    NA                 0.0115855   -0.0029724    0.0261434
21-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0050405   -0.0044437    0.0145248
21-24 months   Keneba      GAMBIA       1                    NA                 0.0052152   -0.0142216    0.0246521
21-24 months   LCNI-5      MALAWI       1                    NA                 0.0002775   -0.0411657    0.0417206
21-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0083026   -0.0418124    0.0252073
21-24 months   MAL-ED      BRAZIL       1                    NA                -0.0048148   -0.0587780    0.0491484
21-24 months   MAL-ED      INDIA        1                    NA                -0.0090053   -0.0481089    0.0300984
21-24 months   PROVIDE     BANGLADESH   1                    NA                 0.0068399   -0.0082809    0.0219607
