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

* arm
* sex
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
* W_nrooms
* month
* W_parity
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
* delta_W_nrooms
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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




# Results Detail

## Results Plots
![](/tmp/ba2fc207-1128-4baf-a0a7-674c6107cbf8/f8b278b1-bb5b-4638-817b-9904a6d9d361/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ba2fc207-1128-4baf-a0a7-674c6107cbf8/f8b278b1-bb5b-4638-817b-9904a6d9d361/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ba2fc207-1128-4baf-a0a7-674c6107cbf8/f8b278b1-bb5b-4638-817b-9904a6d9d361/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                3.6261393   3.5682771   3.6840015
0-3 months     GMS-Nepal   NEPAL        0                    NA                3.6036317   3.4739435   3.7333198
0-3 months     JiVitA-3    BANGLADESH   1                    NA                3.7032442   3.6891208   3.7173676
0-3 months     JiVitA-3    BANGLADESH   0                    NA                3.7104051   3.6852349   3.7355753
0-3 months     JiVitA-4    BANGLADESH   1                    NA                3.6507858   3.6173992   3.6841724
0-3 months     JiVitA-4    BANGLADESH   0                    NA                3.5095123   3.4246008   3.5944238
0-3 months     Keneba      GAMBIA       1                    NA                3.1386112   3.0480528   3.2291695
0-3 months     Keneba      GAMBIA       0                    NA                3.1010537   3.0401110   3.1619963
0-3 months     MAL-ED      BANGLADESH   1                    NA                3.3120354   3.1567374   3.4673334
0-3 months     MAL-ED      BANGLADESH   0                    NA                3.3386175   3.2665808   3.4106541
0-3 months     MAL-ED      BRAZIL       1                    NA                4.2459722   3.7916926   4.7002519
0-3 months     MAL-ED      BRAZIL       0                    NA                3.7865574   3.6750596   3.8980552
0-3 months     MAL-ED      PERU         1                    NA                3.4234571   3.1291622   3.7177520
0-3 months     MAL-ED      PERU         0                    NA                3.0417843   2.9741800   3.1093886
0-3 months     PROVIDE     BANGLADESH   1                    NA                3.2397936   3.1742078   3.3053795
0-3 months     PROVIDE     BANGLADESH   0                    NA                3.2594767   3.2153456   3.3036078
3-6 months     GMS-Nepal   NEPAL        1                    NA                1.7222587   1.6786049   1.7659125
3-6 months     GMS-Nepal   NEPAL        0                    NA                1.7068447   1.6124654   1.8012239
3-6 months     JiVitA-3    BANGLADESH   1                    NA                1.9102748   1.8940726   1.9264770
3-6 months     JiVitA-3    BANGLADESH   0                    NA                1.9106347   1.8830467   1.9382228
3-6 months     JiVitA-4    BANGLADESH   1                    NA                1.8831613   1.8500741   1.9162485
3-6 months     JiVitA-4    BANGLADESH   0                    NA                1.9573701   1.8809729   2.0337673
3-6 months     Keneba      GAMBIA       1                    NA                1.9604661   1.8831867   2.0377455
3-6 months     Keneba      GAMBIA       0                    NA                2.0022803   1.9526977   2.0518629
3-6 months     MAL-ED      BANGLADESH   1                    NA                1.9442823   1.7502021   2.1383624
3-6 months     MAL-ED      BANGLADESH   0                    NA                1.9190714   1.8667233   1.9714196
3-6 months     MAL-ED      BRAZIL       1                    NA                2.2815318   1.9534135   2.6096502
3-6 months     MAL-ED      BRAZIL       0                    NA                2.1397423   2.0578193   2.2216653
3-6 months     MAL-ED      INDIA        1                    NA                2.0750209   1.8360347   2.3140071
3-6 months     MAL-ED      INDIA        0                    NA                1.8770379   1.8121355   1.9419403
3-6 months     MAL-ED      PERU         1                    NA                2.1589526   1.7407037   2.5772015
3-6 months     MAL-ED      PERU         0                    NA                2.0123885   1.9453808   2.0793963
3-6 months     PROVIDE     BANGLADESH   1                    NA                2.0077912   1.9422240   2.0733585
3-6 months     PROVIDE     BANGLADESH   0                    NA                1.9552485   1.9162020   1.9942951
6-9 months     GMS-Nepal   NEPAL        1                    NA                1.3135950   1.2736729   1.3535170
6-9 months     GMS-Nepal   NEPAL        0                    NA                1.3336195   1.2037717   1.4634673
6-9 months     JiVitA-4    BANGLADESH   1                    NA                1.3239445   1.3001150   1.3477740
6-9 months     JiVitA-4    BANGLADESH   0                    NA                1.3357398   1.2905802   1.3808993
6-9 months     Keneba      GAMBIA       1                    NA                1.4909410   1.3691179   1.6127640
6-9 months     Keneba      GAMBIA       0                    NA                1.3790416   1.3155564   1.4425268
6-9 months     LCNI-5      MALAWI       1                    NA                1.4664874   1.2305411   1.7024336
6-9 months     LCNI-5      MALAWI       0                    NA                1.4340914   1.3659680   1.5022147
6-9 months     MAL-ED      BANGLADESH   1                    NA                1.2621752   1.1639323   1.3604181
6-9 months     MAL-ED      BANGLADESH   0                    NA                1.2457620   1.2021330   1.2893910
6-9 months     MAL-ED      BRAZIL       1                    NA                1.5545068   1.2670470   1.8419666
6-9 months     MAL-ED      BRAZIL       0                    NA                1.4776440   1.3934981   1.5617898
6-9 months     MAL-ED      INDIA        1                    NA                1.0969307   0.8462554   1.3476061
6-9 months     MAL-ED      INDIA        0                    NA                1.2462279   1.1938286   1.2986272
6-9 months     MAL-ED      PERU         1                    NA                1.4504574   1.1805383   1.7203764
6-9 months     MAL-ED      PERU         0                    NA                1.3167214   1.2614882   1.3719545
6-9 months     PROVIDE     BANGLADESH   1                    NA                1.2498262   1.1983062   1.3013462
6-9 months     PROVIDE     BANGLADESH   0                    NA                1.2907770   1.2620121   1.3195419
9-12 months    GMS-Nepal   NEPAL        1                    NA                0.9967132   0.9628178   1.0306086
9-12 months    GMS-Nepal   NEPAL        0                    NA                1.0096171   0.8882410   1.1309932
9-12 months    JiVitA-4    BANGLADESH   1                    NA                1.0685226   1.0463705   1.0906747
9-12 months    JiVitA-4    BANGLADESH   0                    NA                1.0728034   1.0339404   1.1116664
9-12 months    Keneba      GAMBIA       1                    NA                0.9852122   0.9086831   1.0617413
9-12 months    Keneba      GAMBIA       0                    NA                0.9858213   0.9307251   1.0409175
9-12 months    LCNI-5      MALAWI       1                    NA                1.1192497   0.9110964   1.3274029
9-12 months    LCNI-5      MALAWI       0                    NA                0.8997121   0.7123639   1.0870602
9-12 months    MAL-ED      BANGLADESH   1                    NA                0.9048044   0.8052426   1.0043661
9-12 months    MAL-ED      BANGLADESH   0                    NA                1.0016124   0.9598399   1.0433848
9-12 months    MAL-ED      BRAZIL       1                    NA                0.9736926   0.7604315   1.1869537
9-12 months    MAL-ED      BRAZIL       0                    NA                1.3010525   1.2232834   1.3788215
9-12 months    MAL-ED      INDIA        1                    NA                0.8103055   0.5375762   1.0830348
9-12 months    MAL-ED      INDIA        0                    NA                0.9861488   0.9475910   1.0247065
9-12 months    MAL-ED      PERU         1                    NA                1.1491277   0.9349665   1.3632890
9-12 months    MAL-ED      PERU         0                    NA                1.0971862   1.0452490   1.1491235
9-12 months    PROVIDE     BANGLADESH   1                    NA                1.0278738   0.9720896   1.0836579
9-12 months    PROVIDE     BANGLADESH   0                    NA                1.0575485   1.0269768   1.0881203
12-15 months   GMS-Nepal   NEPAL        1                    NA                0.8741057   0.8458929   0.9023185
12-15 months   GMS-Nepal   NEPAL        0                    NA                0.8506285   0.7829288   0.9183282
12-15 months   JiVitA-4    BANGLADESH   1                    NA                0.9282823   0.9089703   0.9475944
12-15 months   JiVitA-4    BANGLADESH   0                    NA                0.9703981   0.9300494   1.0107469
12-15 months   Keneba      GAMBIA       1                    NA                0.9390833   0.8899856   0.9881809
12-15 months   Keneba      GAMBIA       0                    NA                0.9414432   0.9013360   0.9815504
12-15 months   MAL-ED      BANGLADESH   1                    NA                0.8841078   0.7927439   0.9754718
12-15 months   MAL-ED      BANGLADESH   0                    NA                0.9182949   0.8743182   0.9622715
12-15 months   MAL-ED      BRAZIL       1                    NA                1.2119698   0.9522852   1.4716544
12-15 months   MAL-ED      BRAZIL       0                    NA                1.1370093   1.0761158   1.1979028
12-15 months   MAL-ED      INDIA        1                    NA                0.6552685   0.5104859   0.8000510
12-15 months   MAL-ED      INDIA        0                    NA                0.9169730   0.8769943   0.9569518
12-15 months   MAL-ED      PERU         1                    NA                0.7580945   0.5892181   0.9269710
12-15 months   MAL-ED      PERU         0                    NA                0.8947789   0.8475771   0.9419808
12-15 months   PROVIDE     BANGLADESH   1                    NA                0.9658419   0.9195429   1.0121408
12-15 months   PROVIDE     BANGLADESH   0                    NA                0.9574337   0.9263293   0.9885380
15-18 months   GMS-Nepal   NEPAL        1                    NA                0.7745107   0.7358457   0.8131757
15-18 months   GMS-Nepal   NEPAL        0                    NA                0.6936453   0.6389088   0.7483817
15-18 months   JiVitA-4    BANGLADESH   1                    NA                0.8564614   0.8363808   0.8765420
15-18 months   JiVitA-4    BANGLADESH   0                    NA                0.8541231   0.8150112   0.8932350
15-18 months   Keneba      GAMBIA       1                    NA                0.8835562   0.8160243   0.9510881
15-18 months   Keneba      GAMBIA       0                    NA                0.8760245   0.8363147   0.9157343
15-18 months   MAL-ED      BANGLADESH   1                    NA                0.8668678   0.7541150   0.9796205
15-18 months   MAL-ED      BANGLADESH   0                    NA                0.8200746   0.7806575   0.8594918
15-18 months   MAL-ED      BRAZIL       1                    NA                1.3340077   1.1204141   1.5476013
15-18 months   MAL-ED      BRAZIL       0                    NA                0.9965609   0.9355228   1.0575990
15-18 months   MAL-ED      INDIA        1                    NA                0.9453862   0.7546115   1.1361609
15-18 months   MAL-ED      INDIA        0                    NA                0.8435906   0.8067297   0.8804515
15-18 months   MAL-ED      PERU         1                    NA                0.6696045   0.4234132   0.9157958
15-18 months   MAL-ED      PERU         0                    NA                0.8578496   0.8151178   0.9005815
15-18 months   PROVIDE     BANGLADESH   1                    NA                0.8241219   0.7730948   0.8751490
15-18 months   PROVIDE     BANGLADESH   0                    NA                0.8656081   0.8383533   0.8928628
18-21 months   GMS-Nepal   NEPAL        1                    NA                0.8995107   0.8570717   0.9419497
18-21 months   GMS-Nepal   NEPAL        0                    NA                0.9194415   0.8609118   0.9779712
18-21 months   Keneba      GAMBIA       1                    NA                0.8303018   0.7523603   0.9082433
18-21 months   Keneba      GAMBIA       0                    NA                0.8141117   0.7683843   0.8598390
18-21 months   LCNI-5      MALAWI       1                    NA                0.6351404   0.2750084   0.9952723
18-21 months   LCNI-5      MALAWI       0                    NA                0.8760744   0.7971991   0.9549497
18-21 months   MAL-ED      BANGLADESH   1                    NA                0.7084270   0.5841243   0.8327298
18-21 months   MAL-ED      BANGLADESH   0                    NA                0.8175066   0.7818820   0.8531312
18-21 months   MAL-ED      BRAZIL       1                    NA                0.8866251   0.7324039   1.0408464
18-21 months   MAL-ED      BRAZIL       0                    NA                0.9245706   0.8495330   0.9996081
18-21 months   MAL-ED      INDIA        1                    NA                0.6960205   0.4987013   0.8933396
18-21 months   MAL-ED      INDIA        0                    NA                0.8834947   0.8479866   0.9190029
18-21 months   PROVIDE     BANGLADESH   1                    NA                0.7916773   0.7429655   0.8403892
18-21 months   PROVIDE     BANGLADESH   0                    NA                0.8503826   0.8229441   0.8778211
21-24 months   GMS-Nepal   NEPAL        1                    NA                0.7686053   0.7202542   0.8169564
21-24 months   GMS-Nepal   NEPAL        0                    NA                0.8912531   0.7271022   1.0554040
21-24 months   Keneba      GAMBIA       1                    NA                0.7142983   0.6382259   0.7903708
21-24 months   Keneba      GAMBIA       0                    NA                0.7240865   0.6816255   0.7665474
21-24 months   LCNI-5      MALAWI       1                    NA                0.7510813   0.5911773   0.9109854
21-24 months   LCNI-5      MALAWI       0                    NA                0.7346166   0.6559397   0.8132934
21-24 months   MAL-ED      BANGLADESH   1                    NA                0.7482320   0.6294891   0.8669750
21-24 months   MAL-ED      BANGLADESH   0                    NA                0.7655480   0.7281156   0.8029805
21-24 months   MAL-ED      BRAZIL       1                    NA                0.8328446   0.6735919   0.9920972
21-24 months   MAL-ED      BRAZIL       0                    NA                0.7932434   0.7471889   0.8392979
21-24 months   MAL-ED      INDIA        1                    NA                0.8434976   0.7525078   0.9344874
21-24 months   MAL-ED      INDIA        0                    NA                0.8262246   0.7943916   0.8580576
21-24 months   PROVIDE     BANGLADESH   1                    NA                0.7432103   0.6933546   0.7930661
21-24 months   PROVIDE     BANGLADESH   0                    NA                0.7696179   0.7400416   0.7991943


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
0-3 months     GMS-Nepal   NEPAL        0                    1                 -0.0225076   -0.1647762    0.1197610
0-3 months     JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH   0                    1                  0.0071609   -0.0195297    0.0338515
0-3 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH   0                    1                 -0.1412735   -0.2320977   -0.0504493
0-3 months     Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba      GAMBIA       0                    1                 -0.0375575   -0.1458211    0.0707061
0-3 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH   0                    1                  0.0265821   -0.1441164    0.1972806
0-3 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL       0                    1                 -0.4594149   -0.9271773    0.0083476
0-3 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU         0                    1                 -0.3816728   -0.6836328   -0.0797128
0-3 months     PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE     BANGLADESH   0                    1                  0.0196830   -0.0593192    0.0986853
3-6 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL        0                    1                 -0.0154140   -0.1199143    0.0890863
3-6 months     JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH   0                    1                  0.0003599   -0.0305560    0.0312759
3-6 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4    BANGLADESH   0                    1                  0.0742088   -0.0088387    0.1572563
3-6 months     Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba      GAMBIA       0                    1                  0.0418143   -0.0499056    0.1335342
3-6 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH   0                    1                 -0.0252108   -0.2286538    0.1782322
3-6 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL       0                    1                 -0.1417895   -0.4801932    0.1966142
3-6 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA        0                    1                 -0.1979830   -0.4456254    0.0496593
3-6 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU         0                    1                 -0.1465641   -0.5701466    0.2770185
3-6 months     PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE     BANGLADESH   0                    1                 -0.0525427   -0.1287254    0.0236399
6-9 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL        0                    1                  0.0200246   -0.1151651    0.1552142
6-9 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4    BANGLADESH   0                    1                  0.0117953   -0.0384352    0.0620257
6-9 months     Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba      GAMBIA       0                    1                 -0.1118993   -0.2498258    0.0260271
6-9 months     LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5      MALAWI       0                    1                 -0.0323960   -0.2872689    0.2224769
6-9 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH   0                    1                 -0.0164132   -0.1241966    0.0913703
6-9 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL       0                    1                 -0.0768628   -0.3770014    0.2232758
6-9 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA        0                    1                  0.1492972   -0.1067962    0.4053906
6-9 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU         0                    1                 -0.1337360   -0.4092482    0.1417762
6-9 months     PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE     BANGLADESH   0                    1                  0.0409508   -0.0177975    0.0996992
9-12 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL        0                    1                  0.0129039   -0.1128339    0.1386418
9-12 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH   0                    1                  0.0042808   -0.0404276    0.0489892
9-12 months    Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba      GAMBIA       0                    1                  0.0006091   -0.0943412    0.0955595
9-12 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5      MALAWI       0                    1                 -0.2195376   -0.5032856    0.0642104
9-12 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH   0                    1                  0.0968080   -0.0115549    0.2051708
9-12 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL       0                    1                  0.3273598    0.0990384    0.5556812
9-12 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA        0                    1                  0.1758432   -0.0995982    0.4512847
9-12 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU         0                    1                 -0.0519415   -0.2723105    0.1684276
9-12 months    PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE     BANGLADESH   0                    1                  0.0296748   -0.0335189    0.0928685
12-15 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL        0                    1                 -0.0234773   -0.0967588    0.0498043
12-15 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH   0                    1                  0.0421158   -0.0022226    0.0864542
12-15 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba      GAMBIA       0                    1                  0.0023600   -0.0612304    0.0659503
12-15 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH   0                    1                  0.0341870   -0.0668961    0.1352702
12-15 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL       0                    1                 -0.0749605   -0.3413454    0.1914244
12-15 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA        0                    1                  0.2617046    0.1115038    0.4119054
12-15 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU         0                    1                  0.1366844   -0.0386646    0.3120334
12-15 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE     BANGLADESH   0                    1                 -0.0084082   -0.0638035    0.0469872
15-18 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL        0                    1                 -0.0808654   -0.1482294   -0.0135014
15-18 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH   0                    1                 -0.0023383   -0.0452797    0.0406031
15-18 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba      GAMBIA       0                    1                 -0.0075317   -0.0857024    0.0706390
15-18 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH   0                    1                 -0.0467931   -0.1665100    0.0729237
15-18 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL       0                    1                 -0.3374468   -0.5589543   -0.1159393
15-18 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA        0                    1                 -0.1017956   -0.2960988    0.0925076
15-18 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU         0                    1                  0.1882452   -0.0616271    0.4381175
15-18 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE     BANGLADESH   0                    1                  0.0414862   -0.0163094    0.0992818
18-21 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL        0                    1                  0.0199307   -0.0527185    0.0925800
18-21 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba      GAMBIA       0                    1                 -0.0161901   -0.1070208    0.0746406
18-21 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5      MALAWI       0                    1                  0.2409340   -0.1292817    0.6111497
18-21 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH   0                    1                  0.1090796   -0.0201177    0.2382769
18-21 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL       0                    1                  0.0379454   -0.1351479    0.2110388
18-21 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA        0                    1                  0.1874743   -0.0130143    0.3879629
18-21 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE     BANGLADESH   0                    1                  0.0587053    0.0028650    0.1145455
21-24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL        0                    1                  0.1226478   -0.0492355    0.2945311
21-24 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba      GAMBIA       0                    1                  0.0097881   -0.0777069    0.0972832
21-24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5      MALAWI       0                    1                 -0.0164648   -0.1992686    0.1663391
21-24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH   0                    1                  0.0173160   -0.1076814    0.1423134
21-24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL       0                    1                 -0.0396012   -0.2054457    0.1262434
21-24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA        0                    1                 -0.0172730   -0.1136705    0.0791245
21-24 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE     BANGLADESH   0                    1                  0.0264076   -0.0315098    0.0843250


### Parameter: PAR


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                -0.0087580   -0.0372941    0.0197781
0-3 months     JiVitA-3    BANGLADESH   1                    NA                 0.0016792   -0.0042279    0.0075863
0-3 months     JiVitA-4    BANGLADESH   1                    NA                -0.0235738   -0.0390781   -0.0080695
0-3 months     Keneba      GAMBIA       1                    NA                -0.0268652   -0.1036879    0.0499575
0-3 months     MAL-ED      BANGLADESH   1                    NA                 0.0281817   -0.1203208    0.1766842
0-3 months     MAL-ED      BRAZIL       1                    NA                -0.4374070   -0.8830117    0.0081977
0-3 months     MAL-ED      PERU         1                    NA                -0.3744167   -0.6688953   -0.0799380
0-3 months     PROVIDE     BANGLADESH   1                    NA                 0.0170821   -0.0420370    0.0762013
3-6 months     GMS-Nepal   NEPAL        1                    NA                -0.0136981   -0.0359130    0.0085167
3-6 months     JiVitA-3    BANGLADESH   1                    NA                 0.0000685   -0.0070844    0.0072213
3-6 months     JiVitA-4    BANGLADESH   1                    NA                 0.0114395   -0.0014848    0.0243638
3-6 months     Keneba      GAMBIA       1                    NA                 0.0312589   -0.0364387    0.0989565
3-6 months     MAL-ED      BANGLADESH   1                    NA                -0.0181790   -0.1967914    0.1604334
3-6 months     MAL-ED      BRAZIL       1                    NA                -0.1354503   -0.4553725    0.1844719
3-6 months     MAL-ED      INDIA        1                    NA                -0.1901679   -0.4280878    0.0477520
3-6 months     MAL-ED      PERU         1                    NA                -0.1432705   -0.5562717    0.2697308
3-6 months     PROVIDE     BANGLADESH   1                    NA                -0.0397718   -0.0978228    0.0182792
6-9 months     GMS-Nepal   NEPAL        1                    NA                 0.0008826   -0.0257449    0.0275100
6-9 months     JiVitA-4    BANGLADESH   1                    NA                 0.0012663   -0.0092696    0.0118023
6-9 months     Keneba      GAMBIA       1                    NA                -0.0822683   -0.1829929    0.0184563
6-9 months     LCNI-5      MALAWI       1                    NA                -0.0292270   -0.2467218    0.1882679
6-9 months     MAL-ED      BANGLADESH   1                    NA                -0.0141301   -0.1094088    0.0811487
6-9 months     MAL-ED      BRAZIL       1                    NA                -0.0713909   -0.3549860    0.2122043
6-9 months     MAL-ED      INDIA        1                    NA                 0.1434039   -0.1026096    0.3894174
6-9 months     MAL-ED      PERU         1                    NA                -0.1304608   -0.3990978    0.1381761
6-9 months     PROVIDE     BANGLADESH   1                    NA                 0.0325923   -0.0128336    0.0780182
9-12 months    GMS-Nepal   NEPAL        1                    NA                 0.0017020   -0.0195376    0.0229416
9-12 months    JiVitA-4    BANGLADESH   1                    NA                 0.0007344   -0.0092156    0.0106845
9-12 months    Keneba      GAMBIA       1                    NA                 0.0006883   -0.0662428    0.0676193
9-12 months    LCNI-5      MALAWI       1                    NA                -0.1486152   -0.3508086    0.0535782
9-12 months    MAL-ED      BANGLADESH   1                    NA                 0.0848402   -0.0118667    0.1815470
9-12 months    MAL-ED      BRAZIL       1                    NA                 0.3245633    0.1078337    0.5412928
9-12 months    MAL-ED      INDIA        1                    NA                 0.1695631   -0.0960756    0.4352019
9-12 months    MAL-ED      PERU         1                    NA                -0.0506153   -0.2653605    0.1641298
9-12 months    PROVIDE     BANGLADESH   1                    NA                 0.0224806   -0.0257848    0.0707460
12-15 months   GMS-Nepal   NEPAL        1                    NA                -0.0038583   -0.0179941    0.0102775
12-15 months   JiVitA-4    BANGLADESH   1                    NA                 0.0090594   -0.0008885    0.0190074
12-15 months   Keneba      GAMBIA       1                    NA                 0.0020947   -0.0421518    0.0463412
12-15 months   MAL-ED      BANGLADESH   1                    NA                 0.0299926   -0.0601072    0.1200924
12-15 months   MAL-ED      BRAZIL       1                    NA                -0.0697924   -0.3203646    0.1807798
12-15 months   MAL-ED      INDIA        1                    NA                 0.2523161    0.1073622    0.3972700
12-15 months   MAL-ED      PERU         1                    NA                 0.1336334   -0.0373524    0.3046192
12-15 months   PROVIDE     BANGLADESH   1                    NA                -0.0059839   -0.0478756    0.0359077
15-18 months   GMS-Nepal   NEPAL        1                    NA                -0.0148298   -0.0283668   -0.0012928
15-18 months   JiVitA-4    BANGLADESH   1                    NA                 0.0011852   -0.0080037    0.0103741
15-18 months   Keneba      GAMBIA       1                    NA                -0.0067237   -0.0610572    0.0476099
15-18 months   MAL-ED      BANGLADESH   1                    NA                -0.0427452   -0.1489307    0.0634403
15-18 months   MAL-ED      BRAZIL       1                    NA                -0.3318963   -0.5408101   -0.1229825
15-18 months   MAL-ED      INDIA        1                    NA                -0.0977056   -0.2842204    0.0888092
15-18 months   MAL-ED      PERU         1                    NA                 0.1838263   -0.0598294    0.4274820
15-18 months   PROVIDE     BANGLADESH   1                    NA                 0.0321750   -0.0111117    0.0754617
18-21 months   GMS-Nepal   NEPAL        1                    NA                 0.0050235   -0.0085899    0.0186370
18-21 months   Keneba      GAMBIA       1                    NA                -0.0138555   -0.0775505    0.0498395
18-21 months   LCNI-5      MALAWI       1                    NA                 0.2068370   -0.0973238    0.5109978
18-21 months   MAL-ED      BANGLADESH   1                    NA                 0.1049577   -0.0105650    0.2204805
18-21 months   MAL-ED      BRAZIL       1                    NA                 0.0294507   -0.1335457    0.1924471
18-21 months   MAL-ED      INDIA        1                    NA                 0.1799418   -0.0125521    0.3724358
18-21 months   PROVIDE     BANGLADESH   1                    NA                 0.0477126    0.0052108    0.0902145
21-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0234307   -0.0054143    0.0522757
21-24 months   Keneba      GAMBIA       1                    NA                 0.0081882   -0.0536202    0.0699965
21-24 months   LCNI-5      MALAWI       1                    NA                -0.0168244   -0.1690828    0.1354339
21-24 months   MAL-ED      BANGLADESH   1                    NA                 0.0211862   -0.0902602    0.1326327
21-24 months   MAL-ED      BRAZIL       1                    NA                -0.0366927   -0.1926183    0.1192330
21-24 months   MAL-ED      INDIA        1                    NA                -0.0165759   -0.1090840    0.0759322
21-24 months   PROVIDE     BANGLADESH   1                    NA                 0.0203875   -0.0234563    0.0642313
