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
![](/tmp/712bae14-b68b-4a6b-a2e7-7bf37a074ca9/901956f9-3abb-451e-8348-77c77b17e6cb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/712bae14-b68b-4a6b-a2e7-7bf37a074ca9/901956f9-3abb-451e-8348-77c77b17e6cb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/712bae14-b68b-4a6b-a2e7-7bf37a074ca9/901956f9-3abb-451e-8348-77c77b17e6cb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                -0.0208882   -0.0492042    0.0074277
0-3 months     GMS-Nepal   NEPAL        0                    NA                -0.0515553   -0.1152777    0.0121671
0-3 months     JiVitA-3    BANGLADESH   1                    NA                 0.0687539    0.0618853    0.0756226
0-3 months     JiVitA-3    BANGLADESH   0                    NA                 0.0719816    0.0595822    0.0843810
0-3 months     JiVitA-4    BANGLADESH   1                    NA                 0.0759770    0.0600635    0.0918905
0-3 months     JiVitA-4    BANGLADESH   0                    NA                 0.0067890   -0.0340558    0.0476339
0-3 months     Keneba      GAMBIA       1                    NA                -0.2645667   -0.3113563   -0.2177771
0-3 months     Keneba      GAMBIA       0                    NA                -0.2876413   -0.3187194   -0.2565633
0-3 months     MAL-ED      BANGLADESH   1                    NA                -0.1010153   -0.1880628   -0.0139678
0-3 months     MAL-ED      BANGLADESH   0                    NA                -0.1253362   -0.1625914   -0.0880811
0-3 months     MAL-ED      BRAZIL       1                    NA                 0.3460294    0.1166038    0.5754549
0-3 months     MAL-ED      BRAZIL       0                    NA                 0.1287992    0.0709434    0.1866551
0-3 months     MAL-ED      PERU         1                    NA                -0.0942168   -0.2126675    0.0242339
0-3 months     MAL-ED      PERU         0                    NA                -0.2685187   -0.3031690   -0.2338684
0-3 months     PROVIDE     BANGLADESH   1                    NA                -0.1792009   -0.2105920   -0.1478098
0-3 months     PROVIDE     BANGLADESH   0                    NA                -0.1876509   -0.2083004   -0.1670014
3-6 months     GMS-Nepal   NEPAL        1                    NA                -0.1585484   -0.1790635   -0.1380334
3-6 months     GMS-Nepal   NEPAL        0                    NA                -0.1878621   -0.2337423   -0.1419819
3-6 months     JiVitA-3    BANGLADESH   1                    NA                -0.0062784   -0.0136917    0.0011349
3-6 months     JiVitA-3    BANGLADESH   0                    NA                -0.0061181   -0.0187305    0.0064942
3-6 months     JiVitA-4    BANGLADESH   1                    NA                -0.0165115   -0.0317845   -0.0012385
3-6 months     JiVitA-4    BANGLADESH   0                    NA                 0.0206257   -0.0141974    0.0554488
3-6 months     Keneba      GAMBIA       1                    NA                -0.0310830   -0.0671341    0.0049681
3-6 months     Keneba      GAMBIA       0                    NA                -0.0160418   -0.0394013    0.0073177
3-6 months     MAL-ED      BANGLADESH   1                    NA                -0.0111176   -0.0972581    0.0750229
3-6 months     MAL-ED      BANGLADESH   0                    NA                -0.0261470   -0.0504637   -0.0018303
3-6 months     MAL-ED      BRAZIL       1                    NA                 0.1534702    0.0054346    0.3015057
3-6 months     MAL-ED      BRAZIL       0                    NA                 0.0579233    0.0202079    0.0956388
3-6 months     MAL-ED      INDIA        1                    NA                 0.0473608   -0.0695552    0.1642768
3-6 months     MAL-ED      INDIA        0                    NA                -0.0431444   -0.0731638   -0.0131251
3-6 months     MAL-ED      PERU         1                    NA                 0.0822238   -0.1223318    0.2867794
3-6 months     MAL-ED      PERU         0                    NA                 0.0244477   -0.0071690    0.0560644
3-6 months     PROVIDE     BANGLADESH   1                    NA                 0.0026149   -0.0277263    0.0329561
3-6 months     PROVIDE     BANGLADESH   0                    NA                -0.0327937   -0.0510323   -0.0145551
6-9 months     GMS-Nepal   NEPAL        1                    NA                -0.0478634   -0.0652823   -0.0304444
6-9 months     GMS-Nepal   NEPAL        0                    NA                -0.0329666   -0.0876195    0.0216863
6-9 months     JiVitA-4    BANGLADESH   1                    NA                -0.0295261   -0.0398575   -0.0191948
6-9 months     JiVitA-4    BANGLADESH   0                    NA                -0.0231062   -0.0436489   -0.0025635
6-9 months     Keneba      GAMBIA       1                    NA                 0.0213715   -0.0310609    0.0738038
6-9 months     Keneba      GAMBIA       0                    NA                -0.0233268   -0.0512253    0.0045718
6-9 months     LCNI-5      MALAWI       1                    NA                -0.0012059   -0.0828155    0.0804038
6-9 months     LCNI-5      MALAWI       0                    NA                 0.0083290   -0.0198454    0.0365034
6-9 months     MAL-ED      BANGLADESH   1                    NA                -0.0704639   -0.1172091   -0.0237187
6-9 months     MAL-ED      BANGLADESH   0                    NA                -0.0703796   -0.0893561   -0.0514031
6-9 months     MAL-ED      BRAZIL       1                    NA                 0.0553499   -0.1129817    0.2236815
6-9 months     MAL-ED      BRAZIL       0                    NA                 0.0079902   -0.0283108    0.0442912
6-9 months     MAL-ED      INDIA        1                    NA                -0.1362328   -0.2469863   -0.0254793
6-9 months     MAL-ED      INDIA        0                    NA                -0.0704645   -0.0935655   -0.0473635
6-9 months     MAL-ED      PERU         1                    NA                 0.0214886   -0.0959815    0.1389587
6-9 months     MAL-ED      PERU         0                    NA                -0.0349609   -0.0594829   -0.0104389
6-9 months     PROVIDE     BANGLADESH   1                    NA                -0.0726131   -0.0944797   -0.0507465
6-9 months     PROVIDE     BANGLADESH   0                    NA                -0.0569782   -0.0693175   -0.0446389
9-12 months    GMS-Nepal   NEPAL        1                    NA                -0.0810550   -0.0950476   -0.0670625
9-12 months    GMS-Nepal   NEPAL        0                    NA                -0.0750432   -0.1239750   -0.0261114
9-12 months    JiVitA-4    BANGLADESH   1                    NA                -0.0538362   -0.0630148   -0.0446577
9-12 months    JiVitA-4    BANGLADESH   0                    NA                -0.0513338   -0.0677586   -0.0349090
9-12 months    Keneba      GAMBIA       1                    NA                -0.0982603   -0.1300962   -0.0664245
9-12 months    Keneba      GAMBIA       0                    NA                -0.0981176   -0.1213647   -0.0748705
9-12 months    LCNI-5      MALAWI       1                    NA                -0.0320208   -0.1165268    0.0524851
9-12 months    LCNI-5      MALAWI       0                    NA                -0.1228992   -0.2019726   -0.0438258
9-12 months    MAL-ED      BANGLADESH   1                    NA                -0.1178160   -0.1596197   -0.0760122
9-12 months    MAL-ED      BANGLADESH   0                    NA                -0.0827370   -0.1002731   -0.0652009
9-12 months    MAL-ED      BRAZIL       1                    NA                -0.0407004   -0.1328075    0.0514067
9-12 months    MAL-ED      BRAZIL       0                    NA                 0.0099188   -0.0224478    0.0422854
9-12 months    MAL-ED      INDIA        1                    NA                -0.1678098   -0.2739659   -0.0616537
9-12 months    MAL-ED      INDIA        0                    NA                -0.0890818   -0.1050928   -0.0730709
9-12 months    MAL-ED      PERU         1                    NA                -0.0218809   -0.1178650    0.0741032
9-12 months    MAL-ED      PERU         0                    NA                -0.0424513   -0.0643253   -0.0205772
9-12 months    PROVIDE     BANGLADESH   1                    NA                -0.0731441   -0.0956831   -0.0506050
9-12 months    PROVIDE     BANGLADESH   0                    NA                -0.0601238   -0.0725996   -0.0476480
12-15 months   GMS-Nepal   NEPAL        1                    NA                -0.0706882   -0.0813105   -0.0600659
12-15 months   GMS-Nepal   NEPAL        0                    NA                -0.0701318   -0.0941777   -0.0460860
12-15 months   JiVitA-4    BANGLADESH   1                    NA                -0.0502481   -0.0575574   -0.0429387
12-15 months   JiVitA-4    BANGLADESH   0                    NA                -0.0332080   -0.0498061   -0.0166100
12-15 months   Keneba      GAMBIA       1                    NA                -0.0533149   -0.0724676   -0.0341623
12-15 months   Keneba      GAMBIA       0                    NA                -0.0509418   -0.0667795   -0.0351040
12-15 months   MAL-ED      BANGLADESH   1                    NA                -0.0563473   -0.0892339   -0.0234607
12-15 months   MAL-ED      BANGLADESH   0                    NA                -0.0534916   -0.0704893   -0.0364939
12-15 months   MAL-ED      BRAZIL       1                    NA                 0.0327755   -0.0948720    0.1604231
12-15 months   MAL-ED      BRAZIL       0                    NA                -0.0047545   -0.0278555    0.0183465
12-15 months   MAL-ED      INDIA        1                    NA                -0.1506199   -0.2213948   -0.0798451
12-15 months   MAL-ED      INDIA        0                    NA                -0.0541428   -0.0696335   -0.0386521
12-15 months   MAL-ED      PERU         1                    NA                -0.1225323   -0.1828783   -0.0621862
12-15 months   MAL-ED      PERU         0                    NA                -0.0640477   -0.0822818   -0.0458137
12-15 months   PROVIDE     BANGLADESH   1                    NA                -0.0387519   -0.0566421   -0.0208617
12-15 months   PROVIDE     BANGLADESH   0                    NA                -0.0420061   -0.0540272   -0.0299850
15-18 months   GMS-Nepal   NEPAL        1                    NA                -0.0623478   -0.0765250   -0.0481705
15-18 months   GMS-Nepal   NEPAL        0                    NA                -0.0894950   -0.1083461   -0.0706440
15-18 months   JiVitA-4    BANGLADESH   1                    NA                -0.0338686   -0.0412428   -0.0264945
15-18 months   JiVitA-4    BANGLADESH   0                    NA                -0.0332512   -0.0479825   -0.0185199
15-18 months   Keneba      GAMBIA       1                    NA                -0.0316316   -0.0558219   -0.0074413
15-18 months   Keneba      GAMBIA       0                    NA                -0.0328425   -0.0474607   -0.0182244
15-18 months   MAL-ED      BANGLADESH   1                    NA                -0.0421637   -0.0958076    0.0114803
15-18 months   MAL-ED      BANGLADESH   0                    NA                -0.0475821   -0.0621174   -0.0330467
15-18 months   MAL-ED      BRAZIL       1                    NA                 0.0491231   -0.0316417    0.1298879
15-18 months   MAL-ED      BRAZIL       0                    NA                -0.0237005   -0.0455632   -0.0018377
15-18 months   MAL-ED      INDIA        1                    NA                 0.0024882   -0.0611624    0.0661388
15-18 months   MAL-ED      INDIA        0                    NA                -0.0383954   -0.0514317   -0.0253592
15-18 months   MAL-ED      PERU         1                    NA                -0.1075471   -0.1893089   -0.0257852
15-18 months   MAL-ED      PERU         0                    NA                -0.0343380   -0.0500133   -0.0186626
15-18 months   PROVIDE     BANGLADESH   1                    NA                -0.0477917   -0.0656652   -0.0299182
15-18 months   PROVIDE     BANGLADESH   0                    NA                -0.0338787   -0.0439378   -0.0238197
18-21 months   GMS-Nepal   NEPAL        1                    NA                 0.0143569   -0.0007162    0.0294300
18-21 months   GMS-Nepal   NEPAL        0                    NA                 0.0176073   -0.0073934    0.0426079
18-21 months   Keneba      GAMBIA       1                    NA                -0.0161449   -0.0432348    0.0109451
18-21 months   Keneba      GAMBIA       0                    NA                -0.0233746   -0.0393984   -0.0073507
18-21 months   LCNI-5      MALAWI       1                    NA                -0.0335261   -0.1629305    0.0958782
18-21 months   LCNI-5      MALAWI       0                    NA                -0.0002542   -0.0274219    0.0269135
18-21 months   MAL-ED      BANGLADESH   1                    NA                -0.0243994   -0.0765345    0.0277358
18-21 months   MAL-ED      BANGLADESH   0                    NA                -0.0135443   -0.0257559   -0.0013328
18-21 months   MAL-ED      BRAZIL       1                    NA                -0.0447764   -0.1084171    0.0188644
18-21 months   MAL-ED      BRAZIL       0                    NA                -0.0177460   -0.0435938    0.0081019
18-21 months   MAL-ED      INDIA        1                    NA                -0.0531254   -0.1157660    0.0095152
18-21 months   MAL-ED      INDIA        0                    NA                 0.0072155   -0.0042956    0.0187266
18-21 months   PROVIDE     BANGLADESH   1                    NA                -0.0246746   -0.0414167   -0.0079326
18-21 months   PROVIDE     BANGLADESH   0                    NA                -0.0071172   -0.0164508    0.0022165
21-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0399094    0.0235714    0.0562475
21-24 months   GMS-Nepal   NEPAL        0                    NA                 0.0687358    0.0150642    0.1224074
21-24 months   Keneba      GAMBIA       1                    NA                 0.0140371   -0.0102415    0.0383157
21-24 months   Keneba      GAMBIA       0                    NA                 0.0198730    0.0058700    0.0338760
21-24 months   LCNI-5      MALAWI       1                    NA                -0.0094314   -0.0552945    0.0364317
21-24 months   LCNI-5      MALAWI       0                    NA                -0.0122351   -0.0372573    0.0127871
21-24 months   MAL-ED      BANGLADESH   1                    NA                 0.0378733   -0.0072811    0.0830278
21-24 months   MAL-ED      BANGLADESH   0                    NA                 0.0251570    0.0121192    0.0381949
21-24 months   MAL-ED      BRAZIL       1                    NA                 0.0014945   -0.0601083    0.0630974
21-24 months   MAL-ED      BRAZIL       0                    NA                 0.0161654   -0.0004994    0.0328302
21-24 months   MAL-ED      INDIA        1                    NA                 0.0391862    0.0000150    0.0783574
21-24 months   MAL-ED      INDIA        0                    NA                 0.0298022    0.0185786    0.0410258
21-24 months   PROVIDE     BANGLADESH   1                    NA                 0.0424122    0.0251867    0.0596377
21-24 months   PROVIDE     BANGLADESH   0                    NA                 0.0490886    0.0390823    0.0590949


### Parameter: E(Y)


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        NA                   NA                -0.0244364   -0.0506014    0.0017286
0-3 months     JiVitA-3    BANGLADESH   NA                   NA                 0.0694017    0.0630146    0.0757888
0-3 months     JiVitA-4    BANGLADESH   NA                   NA                 0.0642202    0.0489852    0.0794552
0-3 months     Keneba      GAMBIA       NA                   NA                -0.2813600   -0.3072816   -0.2554385
0-3 months     MAL-ED      BANGLADESH   NA                   NA                -0.1219910   -0.1558661   -0.0881159
0-3 months     MAL-ED      BRAZIL       NA                   NA                 0.1392055    0.0825938    0.1958172
0-3 months     MAL-ED      PERU         NA                   NA                -0.2652050   -0.2992408   -0.2311692
0-3 months     PROVIDE     BANGLADESH   NA                   NA                -0.1881464   -0.2054815   -0.1708113
3-6 months     GMS-Nepal   NEPAL        NA                   NA                -0.1619144   -0.1807661   -0.1430628
3-6 months     JiVitA-3    BANGLADESH   NA                   NA                -0.0062187   -0.0128267    0.0003893
3-6 months     JiVitA-4    BANGLADESH   NA                   NA                -0.0104148   -0.0243612    0.0035317
3-6 months     Keneba      GAMBIA       NA                   NA                -0.0181994   -0.0377516    0.0013528
3-6 months     MAL-ED      BANGLADESH   NA                   NA                -0.0232296   -0.0468728    0.0004136
3-6 months     MAL-ED      BRAZIL       NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     MAL-ED      INDIA        NA                   NA                -0.0395718   -0.0688631   -0.0102806
3-6 months     MAL-ED      PERU         NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     PROVIDE     BANGLADESH   NA                   NA                -0.0259615   -0.0417668   -0.0101562
6-9 months     GMS-Nepal   NEPAL        NA                   NA                -0.0452273   -0.0630261   -0.0274285
6-9 months     JiVitA-4    BANGLADESH   NA                   NA                -0.0285349   -0.0378750   -0.0191949
6-9 months     Keneba      GAMBIA       NA                   NA                -0.0112500   -0.0357999    0.0132998
6-9 months     LCNI-5      MALAWI       NA                   NA                 0.0095862   -0.0174314    0.0366037
6-9 months     MAL-ED      BANGLADESH   NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     MAL-ED      BRAZIL       NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     MAL-ED      INDIA        NA                   NA                -0.0730606   -0.0957376   -0.0503836
6-9 months     MAL-ED      PERU         NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     PROVIDE     BANGLADESH   NA                   NA                -0.0614264   -0.0722690   -0.0505838
9-12 months    GMS-Nepal   NEPAL        NA                   NA                -0.0800260   -0.0943928   -0.0656593
9-12 months    JiVitA-4    BANGLADESH   NA                   NA                -0.0531058   -0.0612606   -0.0449509
9-12 months    Keneba      GAMBIA       NA                   NA                -0.0987979   -0.1174339   -0.0801618
9-12 months    LCNI-5      MALAWI       NA                   NA                -0.1052774   -0.1637460   -0.0468087
9-12 months    MAL-ED      BANGLADESH   NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED      BRAZIL       NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    MAL-ED      INDIA        NA                   NA                -0.0918936   -0.1079066   -0.0758806
9-12 months    MAL-ED      PERU         NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    PROVIDE     BANGLADESH   NA                   NA                -0.0628687   -0.0738539   -0.0518835
12-15 months   GMS-Nepal   NEPAL        NA                   NA                -0.0707654   -0.0805279   -0.0610030
12-15 months   JiVitA-4    BANGLADESH   NA                   NA                -0.0465550   -0.0533118   -0.0397982
12-15 months   Keneba      GAMBIA       NA                   NA                -0.0513458   -0.0638293   -0.0388624
12-15 months   MAL-ED      BANGLADESH   NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED      BRAZIL       NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   MAL-ED      INDIA        NA                   NA                -0.0576039   -0.0729359   -0.0422719
12-15 months   MAL-ED      PERU         NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   PROVIDE     BANGLADESH   NA                   NA                -0.0408493   -0.0509622   -0.0307364
15-18 months   GMS-Nepal   NEPAL        NA                   NA                -0.0676012   -0.0796397   -0.0555626
15-18 months   JiVitA-4    BANGLADESH   NA                   NA                -0.0333707   -0.0399958   -0.0267456
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
0-3 months     GMS-Nepal   NEPAL        0                    1                 -0.0306671   -0.0999788    0.0386447
0-3 months     JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH   0                    1                  0.0032277   -0.0099534    0.0164087
0-3 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH   0                    1                 -0.0691880   -0.1125327   -0.0258432
0-3 months     Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba      GAMBIA       0                    1                 -0.0230747   -0.0792681    0.0331188
0-3 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH   0                    1                 -0.0243209   -0.1199351    0.0712932
0-3 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL       0                    1                 -0.2172301   -0.4538382    0.0193780
0-3 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU         0                    1                 -0.1743019   -0.2977168   -0.0508871
0-3 months     PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE     BANGLADESH   0                    1                 -0.0084501   -0.0461102    0.0292100
3-6 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL        0                    1                 -0.0293137   -0.0796513    0.0210240
3-6 months     JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH   0                    1                  0.0001603   -0.0139315    0.0142520
3-6 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4    BANGLADESH   0                    1                  0.0371372   -0.0008265    0.0751010
3-6 months     Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba      GAMBIA       0                    1                  0.0150412   -0.0278786    0.0579610
3-6 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH   0                    1                 -0.0150294   -0.1045671    0.0745083
3-6 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL       0                    1                 -0.0955468   -0.2481419    0.0570483
3-6 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA        0                    1                 -0.0905052   -0.2112135    0.0302032
3-6 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU         0                    1                 -0.0577760   -0.2647606    0.1492085
3-6 months     PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE     BANGLADESH   0                    1                 -0.0354086   -0.0706094   -0.0002077
6-9 months     GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL        0                    1                  0.0148968   -0.0421683    0.0719619
6-9 months     JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4    BANGLADESH   0                    1                  0.0064199   -0.0162822    0.0291221
6-9 months     Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba      GAMBIA       0                    1                 -0.0446982   -0.1044049    0.0150084
6-9 months     LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5      MALAWI       0                    1                  0.0095349   -0.0768692    0.0959389
6-9 months     MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH   0                    1                  0.0000843   -0.0503847    0.0505533
6-9 months     MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL       0                    1                 -0.0473597   -0.2202167    0.1254974
6-9 months     MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA        0                    1                  0.0657683   -0.0473687    0.1789053
6-9 months     MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU         0                    1                 -0.0564494   -0.1764517    0.0635529
6-9 months     PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE     BANGLADESH   0                    1                  0.0156349   -0.0092857    0.0405554
9-12 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL        0                    1                  0.0060119   -0.0445188    0.0565425
9-12 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH   0                    1                  0.0025025   -0.0162436    0.0212485
9-12 months    Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba      GAMBIA       0                    1                  0.0001427   -0.0396178    0.0399032
9-12 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5      MALAWI       0                    1                 -0.0908784   -0.2092460    0.0274893
9-12 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH   0                    1                  0.0350790   -0.0100508    0.0802088
9-12 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL       0                    1                  0.0506192   -0.0468903    0.1481287
9-12 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA        0                    1                  0.0787279   -0.0286288    0.1860847
9-12 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU         0                    1                 -0.0205704   -0.1190154    0.0778746
9-12 months    PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE     BANGLADESH   0                    1                  0.0130203   -0.0125272    0.0385678
12-15 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL        0                    1                  0.0005564   -0.0256918    0.0268045
12-15 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH   0                    1                  0.0170400   -0.0010246    0.0351047
12-15 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba      GAMBIA       0                    1                  0.0023732   -0.0223575    0.0271039
12-15 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH   0                    1                  0.0028557   -0.0342552    0.0399665
12-15 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL       0                    1                 -0.0375300   -0.1672901    0.0922300
12-15 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA        0                    1                  0.0964772    0.0240269    0.1689274
12-15 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU         0                    1                  0.0584845   -0.0045561    0.1215252
12-15 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE     BANGLADESH   0                    1                 -0.0032541   -0.0247427    0.0182344
15-18 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL        0                    1                 -0.0271473   -0.0508156   -0.0034789
15-18 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH   0                    1                  0.0006174   -0.0155638    0.0167986
15-18 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba      GAMBIA       0                    1                 -0.0012109   -0.0295167    0.0270949
15-18 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH   0                    1                 -0.0054184   -0.0611061    0.0502693
15-18 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL       0                    1                 -0.0728236   -0.1565422    0.0108951
15-18 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA        0                    1                 -0.0408837   -0.1058556    0.0240882
15-18 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU         0                    1                  0.0732091   -0.0100418    0.1564600
15-18 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE     BANGLADESH   0                    1                  0.0139130   -0.0066060    0.0344319
18-21 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL        0                    1                  0.0032504   -0.0274771    0.0339778
18-21 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba      GAMBIA       0                    1                 -0.0072297   -0.0388745    0.0244151
18-21 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5      MALAWI       0                    1                  0.0332719   -0.0991885    0.1657322
18-21 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH   0                    1                  0.0108550   -0.0427364    0.0644465
18-21 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL       0                    1                  0.0270304   -0.0414498    0.0955106
18-21 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA        0                    1                  0.0603408   -0.0033487    0.1240303
18-21 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE     BANGLADESH   0                    1                  0.0175575   -0.0015830    0.0366979
21-24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL        0                    1                  0.0288264   -0.0273317    0.0849845
21-24 months   Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba      GAMBIA       0                    1                  0.0058359   -0.0222943    0.0339662
21-24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5      MALAWI       0                    1                 -0.0028037   -0.0550950    0.0494876
21-24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH   0                    1                 -0.0127163   -0.0597852    0.0343525
21-24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL       0                    1                  0.0146709   -0.0492935    0.0786353
21-24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA        0                    1                 -0.0093840   -0.0501314    0.0313634
21-24 months   PROVIDE     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE     BANGLADESH   0                    1                  0.0066764   -0.0132543    0.0266072


### Parameter: PAR


agecat         studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL        1                    NA                -0.0035482   -0.0173665    0.0102701
0-3 months     JiVitA-3    BANGLADESH   1                    NA                 0.0006478   -0.0022680    0.0035635
0-3 months     JiVitA-4    BANGLADESH   1                    NA                -0.0117568   -0.0192070   -0.0043067
0-3 months     Keneba      GAMBIA       1                    NA                -0.0167934   -0.0567401    0.0231533
0-3 months     MAL-ED      BANGLADESH   1                    NA                -0.0209757   -0.1049372    0.0629858
0-3 months     MAL-ED      BRAZIL       1                    NA                -0.2068239   -0.4322080    0.0185602
0-3 months     MAL-ED      PERU         1                    NA                -0.1709882   -0.2913522   -0.0506243
0-3 months     PROVIDE     BANGLADESH   1                    NA                -0.0089456   -0.0371348    0.0192437
3-6 months     GMS-Nepal   NEPAL        1                    NA                -0.0033660   -0.0137574    0.0070254
3-6 months     JiVitA-3    BANGLADESH   1                    NA                 0.0000597   -0.0031947    0.0033141
3-6 months     JiVitA-4    BANGLADESH   1                    NA                 0.0060968    0.0001209    0.0120726
3-6 months     Keneba      GAMBIA       1                    NA                 0.0128836   -0.0189229    0.0446901
3-6 months     MAL-ED      BANGLADESH   1                    NA                -0.0121120   -0.0913645    0.0671405
3-6 months     MAL-ED      BRAZIL       1                    NA                -0.0937410   -0.2377949    0.0503129
3-6 months     MAL-ED      INDIA        1                    NA                -0.0869326   -0.2028988    0.0290336
3-6 months     MAL-ED      PERU         1                    NA                -0.0564777   -0.2582903    0.1453349
3-6 months     PROVIDE     BANGLADESH   1                    NA                -0.0285764   -0.0554552   -0.0016975
6-9 months     GMS-Nepal   NEPAL        1                    NA                 0.0026361   -0.0086740    0.0139462
6-9 months     JiVitA-4    BANGLADESH   1                    NA                 0.0009912   -0.0037880    0.0057704
6-9 months     Keneba      GAMBIA       1                    NA                -0.0326215   -0.0759050    0.0106620
6-9 months     LCNI-5      MALAWI       1                    NA                 0.0107920   -0.0621052    0.0836893
6-9 months     MAL-ED      BANGLADESH   1                    NA                 0.0004408   -0.0451433    0.0460248
6-9 months     MAL-ED      BRAZIL       1                    NA                -0.0465665   -0.2117413    0.1186082
6-9 months     MAL-ED      INDIA        1                    NA                 0.0631722   -0.0455117    0.1718560
6-9 months     MAL-ED      PERU         1                    NA                -0.0550670   -0.1720744    0.0619404
6-9 months     PROVIDE     BANGLADESH   1                    NA                 0.0111867   -0.0080919    0.0304653
9-12 months    GMS-Nepal   NEPAL        1                    NA                 0.0010290   -0.0078467    0.0099047
9-12 months    JiVitA-4    BANGLADESH   1                    NA                 0.0007305   -0.0034532    0.0049142
9-12 months    Keneba      GAMBIA       1                    NA                -0.0005375   -0.0284394    0.0273643
9-12 months    LCNI-5      MALAWI       1                    NA                -0.0732565   -0.1567847    0.0102716
9-12 months    MAL-ED      BANGLADESH   1                    NA                 0.0306106   -0.0101553    0.0713765
9-12 months    MAL-ED      BRAZIL       1                    NA                 0.0488788   -0.0428891    0.1406467
9-12 months    MAL-ED      INDIA        1                    NA                 0.0759162   -0.0276241    0.1794566
9-12 months    MAL-ED      PERU         1                    NA                -0.0200452   -0.1159776    0.0758873
9-12 months    PROVIDE     BANGLADESH   1                    NA                 0.0102754   -0.0092750    0.0298257
12-15 months   GMS-Nepal   NEPAL        1                    NA                -0.0000772   -0.0052951    0.0051406
12-15 months   JiVitA-4    BANGLADESH   1                    NA                 0.0036931   -0.0002535    0.0076397
12-15 months   Keneba      GAMBIA       1                    NA                 0.0019691   -0.0152537    0.0191919
12-15 months   MAL-ED      BANGLADESH   1                    NA                 0.0006350   -0.0325986    0.0338686
12-15 months   MAL-ED      BRAZIL       1                    NA                -0.0358185   -0.1589451    0.0873080
12-15 months   MAL-ED      INDIA        1                    NA                 0.0930161    0.0231251    0.1629071
12-15 months   MAL-ED      PERU         1                    NA                 0.0571791   -0.0042960    0.1186542
12-15 months   PROVIDE     BANGLADESH   1                    NA                -0.0020974   -0.0183385    0.0141438
15-18 months   GMS-Nepal   NEPAL        1                    NA                -0.0052534   -0.0101057   -0.0004011
15-18 months   JiVitA-4    BANGLADESH   1                    NA                 0.0004979   -0.0028792    0.0038751
15-18 months   Keneba      GAMBIA       1                    NA                -0.0013108   -0.0207731    0.0181515
15-18 months   MAL-ED      BANGLADESH   1                    NA                -0.0036306   -0.0549047    0.0476434
15-18 months   MAL-ED      BRAZIL       1                    NA                -0.0694653   -0.1479902    0.0090595
15-18 months   MAL-ED      INDIA        1                    NA                -0.0392410   -0.1016113    0.0231293
15-18 months   MAL-ED      PERU         1                    NA                 0.0714906   -0.0096928    0.1526739
15-18 months   PROVIDE     BANGLADESH   1                    NA                 0.0102317   -0.0051448    0.0256083
18-21 months   GMS-Nepal   NEPAL        1                    NA                 0.0014492   -0.0043113    0.0072097
18-21 months   Keneba      GAMBIA       1                    NA                -0.0053655   -0.0274629    0.0167318
18-21 months   LCNI-5      MALAWI       1                    NA                 0.0242978   -0.0843939    0.1329894
18-21 months   MAL-ED      BANGLADESH   1                    NA                 0.0088775   -0.0407298    0.0584848
18-21 months   MAL-ED      BRAZIL       1                    NA                 0.0244174   -0.0412582    0.0900930
18-21 months   MAL-ED      INDIA        1                    NA                 0.0579164   -0.0032339    0.1190667
18-21 months   PROVIDE     BANGLADESH   1                    NA                 0.0137708   -0.0008170    0.0283586
21-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0050280   -0.0044946    0.0145506
21-24 months   Keneba      GAMBIA       1                    NA                 0.0044974   -0.0153718    0.0243666
21-24 months   LCNI-5      MALAWI       1                    NA                -0.0021934   -0.0458139    0.0414271
21-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0122551   -0.0557349    0.0312246
21-24 months   MAL-ED      BRAZIL       1                    NA                 0.0149925   -0.0451587    0.0751437
21-24 months   MAL-ED      INDIA        1                    NA                -0.0090053   -0.0481089    0.0300984
21-24 months   PROVIDE     BANGLADESH   1                    NA                 0.0039592   -0.0110753    0.0189937
