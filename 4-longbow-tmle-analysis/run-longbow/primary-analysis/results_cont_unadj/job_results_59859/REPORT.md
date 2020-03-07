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
0-3 months     JiVitA-3         BANGLADESH                     1               7572   9726
0-3 months     JiVitA-3         BANGLADESH                     0               2154   9726
0-3 months     JiVitA-4         BANGLADESH                     1               1399   1685
0-3 months     JiVitA-4         BANGLADESH                     0                286   1685
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
3-6 months     JiVitA-3         BANGLADESH                     1               5067   6591
3-6 months     JiVitA-3         BANGLADESH                     0               1524   6591
3-6 months     JiVitA-4         BANGLADESH                     1               1494   1777
3-6 months     JiVitA-4         BANGLADESH                     0                283   1777
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
6-9 months     JiVitA-4         BANGLADESH                     1               2175   2752
6-9 months     JiVitA-4         BANGLADESH                     0                577   2752
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
9-12 months    JiVitA-4         BANGLADESH                     1               2358   3039
9-12 months    JiVitA-4         BANGLADESH                     0                681   3039
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
12-15 months   JiVitA-4         BANGLADESH                     1               2351   3039
12-15 months   JiVitA-4         BANGLADESH                     0                688   3039
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
15-18 months   JiVitA-4         BANGLADESH                     1               2362   3039
15-18 months   JiVitA-4         BANGLADESH                     0                677   3039
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/02e73cf7-b9f3-4e3d-a57e-9a85f4f718bc/bbc98a02-af4e-477a-9bed-66fd022ed620/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/02e73cf7-b9f3-4e3d-a57e-9a85f4f718bc/bbc98a02-af4e-477a-9bed-66fd022ed620/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/02e73cf7-b9f3-4e3d-a57e-9a85f4f718bc/bbc98a02-af4e-477a-9bed-66fd022ed620/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                3.6253644   3.5675080   3.6832209
0-3 months     GMS-Nepal   NEPAL        0                    NA                3.5854484   3.4559271   3.7149698
0-3 months     JiVitA-3    BANGLADESH   1                    NA                3.7027520   3.6883070   3.7171971
0-3 months     JiVitA-3    BANGLADESH   0                    NA                3.7125564   3.6847392   3.7403737
0-3 months     JiVitA-4    BANGLADESH   1                    NA                3.6503139   3.6168063   3.6838216
0-3 months     JiVitA-4    BANGLADESH   0                    NA                3.5142065   3.4300108   3.5984021
0-3 months     Keneba      GAMBIA       1                    NA                3.1364740   3.0449330   3.2280149
0-3 months     Keneba      GAMBIA       0                    NA                3.1015418   3.0402940   3.1627895
0-3 months     MAL-ED      BANGLADESH   1                    NA                3.3402762   3.1845940   3.4959583
0-3 months     MAL-ED      BANGLADESH   0                    NA                3.3402081   3.2680749   3.4123413
0-3 months     MAL-ED      BRAZIL       1                    NA                4.2459722   3.7916926   4.7002519
0-3 months     MAL-ED      BRAZIL       0                    NA                3.7865574   3.6750596   3.8980552
0-3 months     MAL-ED      PERU         1                    NA                3.4234571   3.1291622   3.7177520
0-3 months     MAL-ED      PERU         0                    NA                3.0417843   2.9741800   3.1093886
0-3 months     PROVIDE     BANGLADESH   1                    NA                3.2473402   3.1820286   3.3126519
0-3 months     PROVIDE     BANGLADESH   0                    NA                3.2601215   3.2159568   3.3042863
3-6 months     GMS-Nepal   NEPAL        1                    NA                1.7180444   1.6744326   1.7616562
3-6 months     GMS-Nepal   NEPAL        0                    NA                1.6716342   1.5771432   1.7661253
3-6 months     JiVitA-3    BANGLADESH   1                    NA                1.9105026   1.8941594   1.9268457
3-6 months     JiVitA-3    BANGLADESH   0                    NA                1.9098135   1.8815646   1.9380623
3-6 months     JiVitA-4    BANGLADESH   1                    NA                1.8814381   1.8482559   1.9146203
3-6 months     JiVitA-4    BANGLADESH   0                    NA                1.9640888   1.8886133   2.0395642
3-6 months     Keneba      GAMBIA       1                    NA                1.9676653   1.8912882   2.0440424
3-6 months     Keneba      GAMBIA       0                    NA                2.0004527   1.9507829   2.0501225
3-6 months     MAL-ED      BANGLADESH   1                    NA                1.9329001   1.7541150   2.1116852
3-6 months     MAL-ED      BANGLADESH   0                    NA                1.9250838   1.8737516   1.9764159
3-6 months     MAL-ED      BRAZIL       1                    NA                2.2510346   1.9355488   2.5665204
3-6 months     MAL-ED      BRAZIL       0                    NA                2.1396558   2.0579278   2.2213839
3-6 months     MAL-ED      INDIA        1                    NA                2.0750209   1.8360347   2.3140071
3-6 months     MAL-ED      INDIA        0                    NA                1.8770379   1.8121355   1.9419403
3-6 months     MAL-ED      PERU         1                    NA                2.1589526   1.7407037   2.5772015
3-6 months     MAL-ED      PERU         0                    NA                2.0123885   1.9453808   2.0793963
3-6 months     PROVIDE     BANGLADESH   1                    NA                2.0077702   1.9424627   2.0730776
3-6 months     PROVIDE     BANGLADESH   0                    NA                1.9554988   1.9164052   1.9945925
6-9 months     GMS-Nepal   NEPAL        1                    NA                1.3130344   1.2731058   1.3529631
6-9 months     GMS-Nepal   NEPAL        0                    NA                1.3203276   1.1881506   1.4525046
6-9 months     JiVitA-4    BANGLADESH   1                    NA                1.3228475   1.2989654   1.3467296
6-9 months     JiVitA-4    BANGLADESH   0                    NA                1.3341195   1.2878194   1.3804196
6-9 months     Keneba      GAMBIA       1                    NA                1.4788762   1.3648251   1.5929274
6-9 months     Keneba      GAMBIA       0                    NA                1.3807940   1.3176010   1.4439870
6-9 months     LCNI-5      MALAWI       1                    NA                1.4504298   1.2732863   1.6275734
6-9 months     LCNI-5      MALAWI       0                    NA                1.4347776   1.3694403   1.5001149
6-9 months     MAL-ED      BANGLADESH   1                    NA                1.2572420   1.1674206   1.3470633
6-9 months     MAL-ED      BANGLADESH   0                    NA                1.2467313   1.2031863   1.2902762
6-9 months     MAL-ED      BRAZIL       1                    NA                1.5307937   1.2703267   1.7912608
6-9 months     MAL-ED      BRAZIL       0                    NA                1.4800399   1.3960752   1.5640047
6-9 months     MAL-ED      INDIA        1                    NA                1.0969307   0.8462554   1.3476061
6-9 months     MAL-ED      INDIA        0                    NA                1.2462279   1.1938286   1.2986272
6-9 months     MAL-ED      PERU         1                    NA                1.4504574   1.1805383   1.7203764
6-9 months     MAL-ED      PERU         0                    NA                1.3167214   1.2614882   1.3719545
6-9 months     PROVIDE     BANGLADESH   1                    NA                1.2520484   1.2003667   1.3037301
6-9 months     PROVIDE     BANGLADESH   0                    NA                1.2914041   1.2625511   1.3202572
9-12 months    GMS-Nepal   NEPAL        1                    NA                0.9954710   0.9614953   1.0294466
9-12 months    GMS-Nepal   NEPAL        0                    NA                1.0110540   0.9026203   1.1194877
9-12 months    JiVitA-4    BANGLADESH   1                    NA                1.0697591   1.0472767   1.0922414
9-12 months    JiVitA-4    BANGLADESH   0                    NA                1.0675186   1.0279670   1.1070703
9-12 months    Keneba      GAMBIA       1                    NA                0.9942378   0.9193796   1.0690960
9-12 months    Keneba      GAMBIA       0                    NA                0.9823273   0.9277682   1.0368864
9-12 months    LCNI-5      MALAWI       1                    NA                1.1282752   0.9389981   1.3175524
9-12 months    LCNI-5      MALAWI       0                    NA                0.8989795   0.7125644   1.0853947
9-12 months    MAL-ED      BANGLADESH   1                    NA                0.9066193   0.8141866   0.9990520
9-12 months    MAL-ED      BANGLADESH   0                    NA                1.0009662   0.9591182   1.0428142
9-12 months    MAL-ED      BRAZIL       1                    NA                1.2335493   1.0103835   1.4567152
9-12 months    MAL-ED      BRAZIL       0                    NA                1.3025223   1.2248655   1.3801790
9-12 months    MAL-ED      INDIA        1                    NA                0.8103055   0.5375762   1.0830348
9-12 months    MAL-ED      INDIA        0                    NA                0.9861488   0.9475910   1.0247065
9-12 months    MAL-ED      PERU         1                    NA                1.1491277   0.9349665   1.3632890
9-12 months    MAL-ED      PERU         0                    NA                1.0971862   1.0452490   1.1491235
9-12 months    PROVIDE     BANGLADESH   1                    NA                1.0242396   0.9684950   1.0799842
9-12 months    PROVIDE     BANGLADESH   0                    NA                1.0584736   1.0276537   1.0892935
12-15 months   GMS-Nepal   NEPAL        1                    NA                0.8729529   0.8447350   0.9011709
12-15 months   GMS-Nepal   NEPAL        0                    NA                0.8593311   0.7936951   0.9249671
12-15 months   JiVitA-4    BANGLADESH   1                    NA                0.9267900   0.9072965   0.9462835
12-15 months   JiVitA-4    BANGLADESH   0                    NA                0.9733987   0.9336273   1.0131700
12-15 months   Keneba      GAMBIA       1                    NA                0.9366334   0.8878590   0.9854077
12-15 months   Keneba      GAMBIA       0                    NA                0.9431712   0.9029255   0.9834169
12-15 months   MAL-ED      BANGLADESH   1                    NA                0.8711512   0.7811996   0.9611029
12-15 months   MAL-ED      BANGLADESH   0                    NA                0.9195833   0.8756118   0.9635549
12-15 months   MAL-ED      BRAZIL       1                    NA                1.2152278   0.9734092   1.4570464
12-15 months   MAL-ED      BRAZIL       0                    NA                1.1370808   1.0762985   1.1978632
12-15 months   MAL-ED      INDIA        1                    NA                0.6552685   0.5104859   0.8000510
12-15 months   MAL-ED      INDIA        0                    NA                0.9169730   0.8769943   0.9569518
12-15 months   MAL-ED      PERU         1                    NA                0.7580945   0.5892181   0.9269710
12-15 months   MAL-ED      PERU         0                    NA                0.8947789   0.8475771   0.9419808
12-15 months   PROVIDE     BANGLADESH   1                    NA                0.9707836   0.9247133   1.0168539
12-15 months   PROVIDE     BANGLADESH   0                    NA                0.9563159   0.9249968   0.9876350
15-18 months   GMS-Nepal   NEPAL        1                    NA                0.7775949   0.7385185   0.8166714
15-18 months   GMS-Nepal   NEPAL        0                    NA                0.6878211   0.6352113   0.7404308
15-18 months   JiVitA-4    BANGLADESH   1                    NA                0.8579896   0.8377461   0.8782330
15-18 months   JiVitA-4    BANGLADESH   0                    NA                0.8564500   0.8191520   0.8937481
15-18 months   Keneba      GAMBIA       1                    NA                0.8788986   0.8133535   0.9444437
15-18 months   Keneba      GAMBIA       0                    NA                0.8758841   0.8365989   0.9151694
15-18 months   MAL-ED      BANGLADESH   1                    NA                0.8555454   0.7496555   0.9614352
15-18 months   MAL-ED      BANGLADESH   0                    NA                0.8199217   0.7805574   0.8592859
15-18 months   MAL-ED      BRAZIL       1                    NA                1.1296014   0.9024748   1.3567280
15-18 months   MAL-ED      BRAZIL       0                    NA                0.9927256   0.9317536   1.0536977
15-18 months   MAL-ED      INDIA        1                    NA                0.9453862   0.7546115   1.1361609
15-18 months   MAL-ED      INDIA        0                    NA                0.8435906   0.8067297   0.8804515
15-18 months   MAL-ED      PERU         1                    NA                0.6696045   0.4234132   0.9157958
15-18 months   MAL-ED      PERU         0                    NA                0.8578496   0.8151178   0.9005815
15-18 months   PROVIDE     BANGLADESH   1                    NA                0.8270566   0.7762122   0.8779010
15-18 months   PROVIDE     BANGLADESH   0                    NA                0.8661673   0.8389060   0.8934287
18-21 months   GMS-Nepal   NEPAL        1                    NA                0.9014153   0.8587553   0.9440752
18-21 months   GMS-Nepal   NEPAL        0                    NA                0.9178500   0.8616736   0.9740265
18-21 months   Keneba      GAMBIA       1                    NA                0.8322209   0.7601899   0.9042520
18-21 months   Keneba      GAMBIA       0                    NA                0.8092613   0.7649768   0.8535458
18-21 months   LCNI-5      MALAWI       1                    NA                0.6988372   0.3078257   1.0898487
18-21 months   LCNI-5      MALAWI       0                    NA                0.8714175   0.7927107   0.9501243
18-21 months   MAL-ED      BANGLADESH   1                    NA                0.7684486   0.6492728   0.8876243
18-21 months   MAL-ED      BANGLADESH   0                    NA                0.8192143   0.7836742   0.8547544
18-21 months   MAL-ED      BRAZIL       1                    NA                0.7990736   0.6682091   0.9299381
18-21 months   MAL-ED      BRAZIL       0                    NA                0.9243260   0.8492567   0.9993953
18-21 months   MAL-ED      INDIA        1                    NA                0.6960205   0.4987013   0.8933396
18-21 months   MAL-ED      INDIA        0                    NA                0.8834947   0.8479866   0.9190029
18-21 months   PROVIDE     BANGLADESH   1                    NA                0.8017241   0.7525253   0.8509229
18-21 months   PROVIDE     BANGLADESH   0                    NA                0.8513328   0.8238910   0.8787746
21-24 months   GMS-Nepal   NEPAL        1                    NA                0.7725648   0.7246152   0.8205144
21-24 months   GMS-Nepal   NEPAL        0                    NA                0.8820903   0.7351887   1.0289920
21-24 months   Keneba      GAMBIA       1                    NA                0.7070640   0.6340257   0.7801023
21-24 months   Keneba      GAMBIA       0                    NA                0.7290992   0.6870505   0.7711478
21-24 months   LCNI-5      MALAWI       1                    NA                0.7347572   0.5989843   0.8705300
21-24 months   LCNI-5      MALAWI       0                    NA                0.7341491   0.6568139   0.8114842
21-24 months   MAL-ED      BANGLADESH   1                    NA                0.7931009   0.6815808   0.9046211
21-24 months   MAL-ED      BANGLADESH   0                    NA                0.7663123   0.7289705   0.8036542
21-24 months   MAL-ED      BRAZIL       1                    NA                0.8297100   0.6882452   0.9711749
21-24 months   MAL-ED      BRAZIL       0                    NA                0.7937549   0.7476788   0.8398310
21-24 months   MAL-ED      INDIA        1                    NA                0.8434976   0.7525078   0.9344874
21-24 months   MAL-ED      INDIA        0                    NA                0.8262246   0.7943916   0.8580576
21-24 months   PROVIDE     BANGLADESH   1                    NA                0.7437170   0.6942267   0.7932074
21-24 months   PROVIDE     BANGLADESH   0                    NA                0.7700381   0.7404606   0.7996157


### Parameter: E(Y)


agecat         studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL        NA                   NA                3.6173812   3.5643204   3.6704421
0-3 months     JiVitA-3    BANGLADESH   NA                   NA                3.7049234   3.6917779   3.7180688
0-3 months     JiVitA-4    BANGLADESH   NA                   NA                3.6272120   3.5957777   3.6586463
0-3 months     Keneba      GAMBIA       NA                   NA                3.1117460   3.0607980   3.1626940
0-3 months     MAL-ED      BANGLADESH   NA                   NA                3.3402171   3.2743239   3.4061103
0-3 months     MAL-ED      BRAZIL       NA                   NA                3.8085653   3.6991781   3.9179525
0-3 months     MAL-ED      PERU         NA                   NA                3.0490404   2.9824173   3.1156636
0-3 months     PROVIDE     BANGLADESH   NA                   NA                3.2568758   3.2199850   3.2937666
3-6 months     GMS-Nepal   NEPAL        NA                   NA                1.7085606   1.6688133   1.7483079
3-6 months     JiVitA-3    BANGLADESH   NA                   NA                1.9103432   1.8959278   1.9247587
3-6 months     JiVitA-4    BANGLADESH   NA                   NA                1.8946008   1.8642204   1.9249811
3-6 months     Keneba      GAMBIA       NA                   NA                1.9917249   1.9499823   2.0334676
3-6 months     MAL-ED      BANGLADESH   NA                   NA                1.9261033   1.8757410   1.9764655
3-6 months     MAL-ED      BRAZIL       NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     MAL-ED      INDIA        NA                   NA                1.8848530   1.8216037   1.9481024
3-6 months     MAL-ED      PERU         NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     PROVIDE     BANGLADESH   NA                   NA                1.9680194   1.9343778   2.0016611
6-9 months     GMS-Nepal   NEPAL        NA                   NA                1.3144775   1.2731267   1.3558284
6-9 months     JiVitA-4    BANGLADESH   NA                   NA                1.3252108   1.3036943   1.3467274
6-9 months     Keneba      GAMBIA       NA                   NA                1.4086727   1.3529368   1.4644086
6-9 months     LCNI-5      MALAWI       NA                   NA                1.4372604   1.3755150   1.4990057
6-9 months     MAL-ED      BANGLADESH   NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     MAL-ED      BRAZIL       NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     MAL-ED      INDIA        NA                   NA                1.2403346   1.1889010   1.2917682
6-9 months     MAL-ED      PERU         NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     PROVIDE     BANGLADESH   NA                   NA                1.2824185   1.2571827   1.3076542
9-12 months    GMS-Nepal   NEPAL        NA                   NA                0.9984152   0.9640726   1.0327578
9-12 months    JiVitA-4    BANGLADESH   NA                   NA                1.0692570   1.0496985   1.0888155
9-12 months    Keneba      GAMBIA       NA                   NA                0.9859004   0.9415938   1.0302070
9-12 months    LCNI-5      MALAWI       NA                   NA                0.9706344   0.8246089   1.1166600
9-12 months    MAL-ED      BANGLADESH   NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    MAL-ED      BRAZIL       NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    MAL-ED      INDIA        NA                   NA                0.9798686   0.9411954   1.0185419
9-12 months    MAL-ED      PERU         NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    PROVIDE     BANGLADESH   NA                   NA                1.0503544   1.0233548   1.0773539
12-15 months   GMS-Nepal   NEPAL        NA                   NA                0.8702474   0.8441404   0.8963544
12-15 months   JiVitA-4    BANGLADESH   NA                   NA                0.9373418   0.9196982   0.9549854
12-15 months   Keneba      GAMBIA       NA                   NA                0.9411780   0.9094953   0.9728606
12-15 months   MAL-ED      BANGLADESH   NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   MAL-ED      BRAZIL       NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   MAL-ED      INDIA        NA                   NA                0.9075845   0.8681682   0.9470009
12-15 months   MAL-ED      PERU         NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   PROVIDE     BANGLADESH   NA                   NA                0.9598579   0.9336493   0.9860665
15-18 months   GMS-Nepal   NEPAL        NA                   NA                0.7596809   0.7265174   0.7928444
15-18 months   JiVitA-4    BANGLADESH   NA                   NA                0.8576466   0.8394619   0.8758313
15-18 months   Keneba      GAMBIA       NA                   NA                0.8768325   0.8429175   0.9107475
15-18 months   MAL-ED      BANGLADESH   NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   MAL-ED      BRAZIL       NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   MAL-ED      INDIA        NA                   NA                0.8476806   0.8113849   0.8839763
15-18 months   MAL-ED      PERU         NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   PROVIDE     BANGLADESH   NA                   NA                0.8562969   0.8321689   0.8804249
18-21 months   GMS-Nepal   NEPAL        NA                   NA                0.9045343   0.8683581   0.9407104
18-21 months   Keneba      GAMBIA       NA                   NA                0.8164462   0.7785749   0.8543176
18-21 months   LCNI-5      MALAWI       NA                   NA                0.8419773   0.7481346   0.9358201
18-21 months   MAL-ED      BANGLADESH   NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   MAL-ED      BRAZIL       NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   MAL-ED      INDIA        NA                   NA                0.8759623   0.8406388   0.9112858
18-21 months   PROVIDE     BANGLADESH   NA                   NA                0.8393900   0.8153565   0.8634234
21-24 months   GMS-Nepal   NEPAL        NA                   NA                0.7920360   0.7445193   0.8395527
21-24 months   Keneba      GAMBIA       NA                   NA                0.7224865   0.6857861   0.7591869
21-24 months   LCNI-5      MALAWI       NA                   NA                0.7342569   0.6662316   0.8022822
21-24 months   MAL-ED      BANGLADESH   NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   MAL-ED      BRAZIL       NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   MAL-ED      INDIA        NA                   NA                0.8269217   0.7961503   0.8576932
21-24 months   PROVIDE     BANGLADESH   NA                   NA                0.7635979   0.7381659   0.7890298


### Parameter: ATE


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal   NEPAL        0                    1                 -0.0399160   -0.1817721    0.1019400
0-3 months     JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH   0                    1                  0.0098044   -0.0207551    0.0403640
0-3 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH   0                    1                 -0.1361075   -0.2266802   -0.0455347
0-3 months     Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba      GAMBIA       0                    1                 -0.0349322   -0.1450732    0.0752088
0-3 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH   0                    1                 -0.0000681   -0.1716493    0.1715132
0-3 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL       0                    1                 -0.4594149   -0.9271773    0.0083476
0-3 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU         0                    1                 -0.3816728   -0.6836328   -0.0797128
0-3 months     PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE     BANGLADESH   0                    1                  0.0127813   -0.0660612    0.0916238
3-6 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL        0                    1                 -0.0464102   -0.1504800    0.0576597
3-6 months     JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH   0                    1                 -0.0006891   -0.0326893    0.0313110
3-6 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4    BANGLADESH   0                    1                  0.0826507    0.0000637    0.1652377
3-6 months     Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba      GAMBIA       0                    1                  0.0327874   -0.0583200    0.1238948
3-6 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH   0                    1                 -0.0078163   -0.1938246    0.1781920
3-6 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL       0                    1                 -0.1113788   -0.4372787    0.2145212
3-6 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA        0                    1                 -0.1979830   -0.4456254    0.0496593
3-6 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU         0                    1                 -0.1465641   -0.5701466    0.2770185
3-6 months     PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE     BANGLADESH   0                    1                 -0.0522713   -0.1283856    0.0238429
6-9 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL        0                    1                  0.0072932   -0.1307831    0.1453694
6-9 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4    BANGLADESH   0                    1                  0.0112720   -0.0401255    0.0626694
6-9 months     Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba      GAMBIA       0                    1                 -0.0980822   -0.2284702    0.0323057
6-9 months     LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5      MALAWI       0                    1                 -0.0156522   -0.2044611    0.1731567
6-9 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH   0                    1                 -0.0105107   -0.1103307    0.0893093
6-9 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL       0                    1                 -0.0507538   -0.3244199    0.2229124
6-9 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA        0                    1                  0.1492972   -0.1067962    0.4053906
6-9 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU         0                    1                 -0.1337360   -0.4092482    0.1417762
6-9 months     PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE     BANGLADESH   0                    1                  0.0393557   -0.0198346    0.0985461
9-12 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL        0                    1                  0.0155830   -0.0980489    0.1292149
9-12 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH   0                    1                 -0.0022404   -0.0477482    0.0432673
9-12 months    Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba      GAMBIA       0                    1                 -0.0119105   -0.1045412    0.0807202
9-12 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5      MALAWI       0                    1                 -0.2292957   -0.4949580    0.0363666
9-12 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH   0                    1                  0.0943469   -0.0071177    0.1958115
9-12 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL       0                    1                  0.0689730   -0.1673183    0.3052643
9-12 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA        0                    1                  0.1758432   -0.0995982    0.4512847
9-12 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU         0                    1                 -0.0519415   -0.2723105    0.1684276
9-12 months    PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE     BANGLADESH   0                    1                  0.0342340   -0.0294631    0.0979312
12-15 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL        0                    1                 -0.0136218   -0.0850665    0.0578229
12-15 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH   0                    1                  0.0466086    0.0022678    0.0909494
12-15 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba      GAMBIA       0                    1                  0.0065378   -0.0566970    0.0697727
12-15 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH   0                    1                  0.0484321   -0.0516918    0.1485560
12-15 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL       0                    1                 -0.0781470   -0.3274875    0.1711936
12-15 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA        0                    1                  0.2617046    0.1115038    0.4119054
12-15 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU         0                    1                  0.1366844   -0.0386646    0.3120334
12-15 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE     BANGLADESH   0                    1                 -0.0144677   -0.0701755    0.0412401
15-18 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL        0                    1                 -0.0897739   -0.1553082   -0.0242395
15-18 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH   0                    1                 -0.0015395   -0.0430102    0.0399311
15-18 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba      GAMBIA       0                    1                 -0.0030145   -0.0794310    0.0734021
15-18 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH   0                    1                 -0.0356237   -0.1485936    0.0773463
15-18 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL       0                    1                 -0.1368758   -0.3720439    0.0982924
15-18 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA        0                    1                 -0.1017956   -0.2960988    0.0925076
15-18 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU         0                    1                  0.1882452   -0.0616271    0.4381175
15-18 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE     BANGLADESH   0                    1                  0.0391107   -0.0185810    0.0968025
18-21 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL        0                    1                  0.0164348   -0.0541036    0.0869732
18-21 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba      GAMBIA       0                    1                 -0.0229596   -0.1075149    0.0615956
18-21 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5      MALAWI       0                    1                  0.1725803   -0.2262740    0.5714346
18-21 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH   0                    1                  0.0507657   -0.0735965    0.1751279
18-21 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL       0                    1                  0.1252524   -0.0256149    0.2761196
18-21 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA        0                    1                  0.1874743   -0.0130143    0.3879629
18-21 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE     BANGLADESH   0                    1                  0.0496087   -0.0067258    0.1059432
21-24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL        0                    1                  0.1095256   -0.0450036    0.2640547
21-24 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba      GAMBIA       0                    1                  0.0220351   -0.0622423    0.1063125
21-24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5      MALAWI       0                    1                 -0.0006081   -0.1568611    0.1556449
21-24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH   0                    1                 -0.0267886   -0.1443945    0.0908173
21-24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL       0                    1                 -0.0359551   -0.1847345    0.1128243
21-24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA        0                    1                 -0.0172730   -0.1136705    0.0791245
21-24 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE     BANGLADESH   0                    1                  0.0263211   -0.0313342    0.0839763


### Parameter: PAR


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                -0.0079832   -0.0363916    0.0204252
0-3 months     JiVitA-3    BANGLADESH   1                    NA                 0.0021714   -0.0045902    0.0089329
0-3 months     JiVitA-4    BANGLADESH   1                    NA                -0.0231019   -0.0387552   -0.0074487
0-3 months     Keneba      GAMBIA       1                    NA                -0.0247280   -0.1027007    0.0532447
0-3 months     MAL-ED      BANGLADESH   1                    NA                -0.0000591   -0.1489519    0.1488338
0-3 months     MAL-ED      BRAZIL       1                    NA                -0.4374070   -0.8830117    0.0081977
0-3 months     MAL-ED      PERU         1                    NA                -0.3744167   -0.6688953   -0.0799380
0-3 months     PROVIDE     BANGLADESH   1                    NA                 0.0095356   -0.0492870    0.0683581
3-6 months     GMS-Nepal   NEPAL        1                    NA                -0.0094838   -0.0308191    0.0118514
3-6 months     JiVitA-3    BANGLADESH   1                    NA                -0.0001593   -0.0075572    0.0072385
3-6 months     JiVitA-4    BANGLADESH   1                    NA                 0.0131627   -0.0001303    0.0264557
3-6 months     Keneba      GAMBIA       1                    NA                 0.0240596   -0.0428004    0.0909197
3-6 months     MAL-ED      BANGLADESH   1                    NA                -0.0067968   -0.1685435    0.1549499
3-6 months     MAL-ED      BRAZIL       1                    NA                -0.1049531   -0.4120715    0.2021653
3-6 months     MAL-ED      INDIA        1                    NA                -0.1901679   -0.4280878    0.0477520
3-6 months     MAL-ED      PERU         1                    NA                -0.1432705   -0.5562717    0.2697308
3-6 months     PROVIDE     BANGLADESH   1                    NA                -0.0397507   -0.0976610    0.0181595
6-9 months     GMS-Nepal   NEPAL        1                    NA                 0.0014431   -0.0258796    0.0287659
6-9 months     JiVitA-4    BANGLADESH   1                    NA                 0.0023633   -0.0084138    0.0131405
6-9 months     Keneba      GAMBIA       1                    NA                -0.0702036   -0.1635825    0.0231753
6-9 months     LCNI-5      MALAWI       1                    NA                -0.0131694   -0.1720321    0.1456932
6-9 months     MAL-ED      BANGLADESH   1                    NA                -0.0091968   -0.0965405    0.0781468
6-9 months     MAL-ED      BRAZIL       1                    NA                -0.0476778   -0.3047637    0.2094081
6-9 months     MAL-ED      INDIA        1                    NA                 0.1434039   -0.1026096    0.3894174
6-9 months     MAL-ED      PERU         1                    NA                -0.1304608   -0.3990978    0.1381761
6-9 months     PROVIDE     BANGLADESH   1                    NA                 0.0303701   -0.0153263    0.0760665
9-12 months    GMS-Nepal   NEPAL        1                    NA                 0.0029443   -0.0185331    0.0244216
9-12 months    JiVitA-4    BANGLADESH   1                    NA                -0.0005020   -0.0106991    0.0096950
9-12 months    Keneba      GAMBIA       1                    NA                -0.0083374   -0.0731801    0.0565053
9-12 months    LCNI-5      MALAWI       1                    NA                -0.1576408   -0.3440762    0.0287946
9-12 months    MAL-ED      BANGLADESH   1                    NA                 0.0830253   -0.0063538    0.1724043
9-12 months    MAL-ED      BRAZIL       1                    NA                 0.0647066   -0.1569811    0.2863943
9-12 months    MAL-ED      INDIA        1                    NA                 0.1695631   -0.0960756    0.4352019
9-12 months    MAL-ED      PERU         1                    NA                -0.0506153   -0.2653605    0.1641298
9-12 months    PROVIDE     BANGLADESH   1                    NA                 0.0261148   -0.0224903    0.0747199
12-15 months   GMS-Nepal   NEPAL        1                    NA                -0.0027055   -0.0169047    0.0114937
12-15 months   JiVitA-4    BANGLADESH   1                    NA                 0.0105517    0.0004204    0.0206830
12-15 months   Keneba      GAMBIA       1                    NA                 0.0045446   -0.0394117    0.0485009
12-15 months   MAL-ED      BANGLADESH   1                    NA                 0.0429492   -0.0458640    0.1317624
12-15 months   MAL-ED      BRAZIL       1                    NA                -0.0730504   -0.3061464    0.1600456
12-15 months   MAL-ED      INDIA        1                    NA                 0.2523161    0.1073622    0.3972700
12-15 months   MAL-ED      PERU         1                    NA                 0.1336334   -0.0373524    0.3046192
12-15 months   PROVIDE     BANGLADESH   1                    NA                -0.0109257   -0.0529984    0.0311470
15-18 months   GMS-Nepal   NEPAL        1                    NA                -0.0179141   -0.0314141   -0.0044140
15-18 months   JiVitA-4    BANGLADESH   1                    NA                -0.0003430   -0.0095814    0.0088955
15-18 months   Keneba      GAMBIA       1                    NA                -0.0020661   -0.0544415    0.0503094
15-18 months   MAL-ED      BANGLADESH   1                    NA                -0.0314228   -0.1310829    0.0682373
15-18 months   MAL-ED      BRAZIL       1                    NA                -0.1274900   -0.3465926    0.0916127
15-18 months   MAL-ED      INDIA        1                    NA                -0.0977056   -0.2842204    0.0888092
15-18 months   MAL-ED      PERU         1                    NA                 0.1838263   -0.0598294    0.4274820
15-18 months   PROVIDE     BANGLADESH   1                    NA                 0.0292403   -0.0139161    0.0723967
18-21 months   GMS-Nepal   NEPAL        1                    NA                 0.0031190   -0.0102824    0.0165204
18-21 months   Keneba      GAMBIA       1                    NA                -0.0157747   -0.0738728    0.0423234
18-21 months   LCNI-5      MALAWI       1                    NA                 0.1431401   -0.1878191    0.4740993
18-21 months   MAL-ED      BANGLADESH   1                    NA                 0.0449362   -0.0651672    0.1550395
18-21 months   MAL-ED      BRAZIL       1                    NA                 0.1170022   -0.0240069    0.2580113
18-21 months   MAL-ED      INDIA        1                    NA                 0.1799418   -0.0125521    0.3724358
18-21 months   PROVIDE     BANGLADESH   1                    NA                 0.0376659   -0.0051441    0.0804758
21-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0194712   -0.0083883    0.0473308
21-24 months   Keneba      GAMBIA       1                    NA                 0.0154225   -0.0435668    0.0744118
21-24 months   LCNI-5      MALAWI       1                    NA                -0.0005003   -0.1290488    0.1280483
21-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0236827   -0.1276597    0.0802944
21-24 months   MAL-ED      BRAZIL       1                    NA                -0.0335581   -0.1724257    0.1053094
21-24 months   MAL-ED      INDIA        1                    NA                -0.0165759   -0.1090840    0.0759322
21-24 months   PROVIDE     BANGLADESH   1                    NA                 0.0198808   -0.0236793    0.0634410
