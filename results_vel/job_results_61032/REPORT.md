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

**Intervention Variable:** anywast06

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        anywast06    n_cell      n
-------------  ---------------  -----------------------------  ----------  -------  -----
0-3 months     CMC-V-BCS-2002   INDIA                          0                35     88
0-3 months     CMC-V-BCS-2002   INDIA                          1                53     88
0-3 months     CMIN             BANGLADESH                     0                34     43
0-3 months     CMIN             BANGLADESH                     1                 9     43
0-3 months     CONTENT          PERU                           0                29     29
0-3 months     CONTENT          PERU                           1                 0     29
0-3 months     EE               PAKISTAN                       0               203    303
0-3 months     EE               PAKISTAN                       1               100    303
0-3 months     GMS-Nepal        NEPAL                          0               298    509
0-3 months     GMS-Nepal        NEPAL                          1               211    509
0-3 months     IRC              INDIA                          0               158    377
0-3 months     IRC              INDIA                          1               219    377
0-3 months     Keneba           GAMBIA                         0               802   1276
0-3 months     Keneba           GAMBIA                         1               474   1276
0-3 months     MAL-ED           BANGLADESH                     0               187    243
0-3 months     MAL-ED           BANGLADESH                     1                56    243
0-3 months     MAL-ED           BRAZIL                         0               156    168
0-3 months     MAL-ED           BRAZIL                         1                12    168
0-3 months     MAL-ED           INDIA                          0               125    183
0-3 months     MAL-ED           INDIA                          1                58    183
0-3 months     MAL-ED           NEPAL                          0               131    156
0-3 months     MAL-ED           NEPAL                          1                25    156
0-3 months     MAL-ED           PERU                           0               255    265
0-3 months     MAL-ED           PERU                           1                10    265
0-3 months     MAL-ED           SOUTH AFRICA                   0               185    211
0-3 months     MAL-ED           SOUTH AFRICA                   1                26    211
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               215    228
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                13    228
0-3 months     PROVIDE          BANGLADESH                     0               473    640
0-3 months     PROVIDE          BANGLADESH                     1               167    640
0-3 months     ResPak           PAKISTAN                       0                48     80
0-3 months     ResPak           PAKISTAN                       1                32     80
3-6 months     CMC-V-BCS-2002   INDIA                          0               145    307
3-6 months     CMC-V-BCS-2002   INDIA                          1               162    307
3-6 months     CMIN             BANGLADESH                     0               153    185
3-6 months     CMIN             BANGLADESH                     1                32    185
3-6 months     CONTENT          PERU                           0               210    214
3-6 months     CONTENT          PERU                           1                 4    214
3-6 months     EE               PAKISTAN                       0               186    280
3-6 months     EE               PAKISTAN                       1                94    280
3-6 months     GMS-Nepal        NEPAL                          0               270    469
3-6 months     GMS-Nepal        NEPAL                          1               199    469
3-6 months     IRC              INDIA                          0               175    397
3-6 months     IRC              INDIA                          1               222    397
3-6 months     Keneba           GAMBIA                         0               936   1397
3-6 months     Keneba           GAMBIA                         1               461   1397
3-6 months     MAL-ED           BANGLADESH                     0               179    231
3-6 months     MAL-ED           BANGLADESH                     1                52    231
3-6 months     MAL-ED           BRAZIL                         0               193    208
3-6 months     MAL-ED           BRAZIL                         1                15    208
3-6 months     MAL-ED           INDIA                          0               153    230
3-6 months     MAL-ED           INDIA                          1                77    230
3-6 months     MAL-ED           NEPAL                          0               186    233
3-6 months     MAL-ED           NEPAL                          1                47    233
3-6 months     MAL-ED           PERU                           0               258    267
3-6 months     MAL-ED           PERU                           1                 9    267
3-6 months     MAL-ED           SOUTH AFRICA                   0               214    243
3-6 months     MAL-ED           SOUTH AFRICA                   1                29    243
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               226    239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                13    239
3-6 months     PROVIDE          BANGLADESH                     0               445    598
3-6 months     PROVIDE          BANGLADESH                     1               153    598
3-6 months     ResPak           PAKISTAN                       0                93    156
3-6 months     ResPak           PAKISTAN                       1                63    156
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1402   1661
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               259   1661
6-9 months     CMC-V-BCS-2002   INDIA                          0               153    312
6-9 months     CMC-V-BCS-2002   INDIA                          1               159    312
6-9 months     CMIN             BANGLADESH                     0               154    177
6-9 months     CMIN             BANGLADESH                     1                23    177
6-9 months     CONTENT          PERU                           0               210    214
6-9 months     CONTENT          PERU                           1                 4    214
6-9 months     EE               PAKISTAN                       0               197    304
6-9 months     EE               PAKISTAN                       1               107    304
6-9 months     GMS-Nepal        NEPAL                          0               279    481
6-9 months     GMS-Nepal        NEPAL                          1               202    481
6-9 months     Guatemala BSC    GUATEMALA                      0               196    200
6-9 months     Guatemala BSC    GUATEMALA                      1                 4    200
6-9 months     IRC              INDIA                          0               180    407
6-9 months     IRC              INDIA                          1               227    407
6-9 months     Keneba           GAMBIA                         0               637    902
6-9 months     Keneba           GAMBIA                         1               265    902
6-9 months     MAL-ED           BANGLADESH                     0               173    224
6-9 months     MAL-ED           BANGLADESH                     1                51    224
6-9 months     MAL-ED           BRAZIL                         0               183    198
6-9 months     MAL-ED           BRAZIL                         1                15    198
6-9 months     MAL-ED           INDIA                          0               153    230
6-9 months     MAL-ED           INDIA                          1                77    230
6-9 months     MAL-ED           NEPAL                          0               184    230
6-9 months     MAL-ED           NEPAL                          1                46    230
6-9 months     MAL-ED           PERU                           0               235    245
6-9 months     MAL-ED           PERU                           1                10    245
6-9 months     MAL-ED           SOUTH AFRICA                   0               203    231
6-9 months     MAL-ED           SOUTH AFRICA                   1                28    231
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               212    225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                13    225
6-9 months     PROVIDE          BANGLADESH                     0               425    565
6-9 months     PROVIDE          BANGLADESH                     1               140    565
6-9 months     ResPak           PAKISTAN                       0                88    143
6-9 months     ResPak           PAKISTAN                       1                55    143
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1274   1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               214   1488
9-12 months    CMC-V-BCS-2002   INDIA                          0               151    313
9-12 months    CMC-V-BCS-2002   INDIA                          1               162    313
9-12 months    CMIN             BANGLADESH                     0               135    160
9-12 months    CMIN             BANGLADESH                     1                25    160
9-12 months    CONTENT          PERU                           0               208    212
9-12 months    CONTENT          PERU                           1                 4    212
9-12 months    EE               PAKISTAN                       0               214    326
9-12 months    EE               PAKISTAN                       1               112    326
9-12 months    GMS-Nepal        NEPAL                          0               273    469
9-12 months    GMS-Nepal        NEPAL                          1               196    469
9-12 months    Guatemala BSC    GUATEMALA                      0               170    175
9-12 months    Guatemala BSC    GUATEMALA                      1                 5    175
9-12 months    IRC              INDIA                          0               178    400
9-12 months    IRC              INDIA                          1               222    400
9-12 months    Keneba           GAMBIA                         0               622    876
9-12 months    Keneba           GAMBIA                         1               254    876
9-12 months    MAL-ED           BANGLADESH                     0               173    225
9-12 months    MAL-ED           BANGLADESH                     1                52    225
9-12 months    MAL-ED           BRAZIL                         0               179    194
9-12 months    MAL-ED           BRAZIL                         1                15    194
9-12 months    MAL-ED           INDIA                          0               151    227
9-12 months    MAL-ED           INDIA                          1                76    227
9-12 months    MAL-ED           NEPAL                          0               183    229
9-12 months    MAL-ED           NEPAL                          1                46    229
9-12 months    MAL-ED           PERU                           0               225    235
9-12 months    MAL-ED           PERU                           1                10    235
9-12 months    MAL-ED           SOUTH AFRICA                   0               205    233
9-12 months    MAL-ED           SOUTH AFRICA                   1                28    233
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               211    224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                13    224
9-12 months    PROVIDE          BANGLADESH                     0               424    566
9-12 months    PROVIDE          BANGLADESH                     1               142    566
9-12 months    ResPak           PAKISTAN                       0                83    140
9-12 months    ResPak           PAKISTAN                       1                57    140
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               922   1081
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               159   1081
12-15 months   CMC-V-BCS-2002   INDIA                          0               151    324
12-15 months   CMC-V-BCS-2002   INDIA                          1               173    324
12-15 months   CMIN             BANGLADESH                     0               136    160
12-15 months   CMIN             BANGLADESH                     1                24    160
12-15 months   CONTENT          PERU                           0               195    199
12-15 months   CONTENT          PERU                           1                 4    199
12-15 months   EE               PAKISTAN                       0               189    297
12-15 months   EE               PAKISTAN                       1               108    297
12-15 months   GMS-Nepal        NEPAL                          0               276    469
12-15 months   GMS-Nepal        NEPAL                          1               193    469
12-15 months   Guatemala BSC    GUATEMALA                      0                84     88
12-15 months   Guatemala BSC    GUATEMALA                      1                 4     88
12-15 months   IRC              INDIA                          0               173    390
12-15 months   IRC              INDIA                          1               217    390
12-15 months   Keneba           GAMBIA                         0               892   1303
12-15 months   Keneba           GAMBIA                         1               411   1303
12-15 months   MAL-ED           BANGLADESH                     0               161    212
12-15 months   MAL-ED           BANGLADESH                     1                51    212
12-15 months   MAL-ED           BRAZIL                         0               170    184
12-15 months   MAL-ED           BRAZIL                         1                14    184
12-15 months   MAL-ED           INDIA                          0               151    226
12-15 months   MAL-ED           INDIA                          1                75    226
12-15 months   MAL-ED           NEPAL                          0               184    230
12-15 months   MAL-ED           NEPAL                          1                46    230
12-15 months   MAL-ED           PERU                           0               215    224
12-15 months   MAL-ED           PERU                           1                 9    224
12-15 months   MAL-ED           SOUTH AFRICA                   0               201    228
12-15 months   MAL-ED           SOUTH AFRICA                   1                27    228
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               213    226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                13    226
12-15 months   PROVIDE          BANGLADESH                     0               400    532
12-15 months   PROVIDE          BANGLADESH                     1               132    532
12-15 months   ResPak           PAKISTAN                       0                54     91
12-15 months   ResPak           PAKISTAN                       1                37     91
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               685    791
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               106    791
15-18 months   CMC-V-BCS-2002   INDIA                          0               146    317
15-18 months   CMC-V-BCS-2002   INDIA                          1               171    317
15-18 months   CMIN             BANGLADESH                     0               139    163
15-18 months   CMIN             BANGLADESH                     1                24    163
15-18 months   CONTENT          PERU                           0               186    189
15-18 months   CONTENT          PERU                           1                 3    189
15-18 months   EE               PAKISTAN                       0               178    278
15-18 months   EE               PAKISTAN                       1               100    278
15-18 months   GMS-Nepal        NEPAL                          0               287    480
15-18 months   GMS-Nepal        NEPAL                          1               193    480
15-18 months   IRC              INDIA                          0               171    382
15-18 months   IRC              INDIA                          1               211    382
15-18 months   Keneba           GAMBIA                         0               912   1311
15-18 months   Keneba           GAMBIA                         1               399   1311
15-18 months   MAL-ED           BANGLADESH                     0               163    212
15-18 months   MAL-ED           BANGLADESH                     1                49    212
15-18 months   MAL-ED           BRAZIL                         0               162    175
15-18 months   MAL-ED           BRAZIL                         1                13    175
15-18 months   MAL-ED           INDIA                          0               151    226
15-18 months   MAL-ED           INDIA                          1                75    226
15-18 months   MAL-ED           NEPAL                          0               181    227
15-18 months   MAL-ED           NEPAL                          1                46    227
15-18 months   MAL-ED           PERU                           0               204    213
15-18 months   MAL-ED           PERU                           1                 9    213
15-18 months   MAL-ED           SOUTH AFRICA                   0               201    225
15-18 months   MAL-ED           SOUTH AFRICA                   1                24    225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               205    217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                12    217
15-18 months   PROVIDE          BANGLADESH                     0               395    528
15-18 months   PROVIDE          BANGLADESH                     1               133    528
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               574    664
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                90    664
18-21 months   CMC-V-BCS-2002   INDIA                          0               139    302
18-21 months   CMC-V-BCS-2002   INDIA                          1               163    302
18-21 months   CMIN             BANGLADESH                     0               137    165
18-21 months   CMIN             BANGLADESH                     1                28    165
18-21 months   CONTENT          PERU                           0               181    183
18-21 months   CONTENT          PERU                           1                 2    183
18-21 months   EE               PAKISTAN                       0               161    254
18-21 months   EE               PAKISTAN                       1                93    254
18-21 months   GMS-Nepal        NEPAL                          0               260    445
18-21 months   GMS-Nepal        NEPAL                          1               185    445
18-21 months   IRC              INDIA                          0               170    379
18-21 months   IRC              INDIA                          1               209    379
18-21 months   Keneba           GAMBIA                         0               894   1285
18-21 months   Keneba           GAMBIA                         1               391   1285
18-21 months   MAL-ED           BANGLADESH                     0               161    209
18-21 months   MAL-ED           BANGLADESH                     1                48    209
18-21 months   MAL-ED           BRAZIL                         0               154    167
18-21 months   MAL-ED           BRAZIL                         1                13    167
18-21 months   MAL-ED           INDIA                          0               150    226
18-21 months   MAL-ED           INDIA                          1                76    226
18-21 months   MAL-ED           NEPAL                          0               181    227
18-21 months   MAL-ED           NEPAL                          1                46    227
18-21 months   MAL-ED           PERU                           0               195    202
18-21 months   MAL-ED           PERU                           1                 7    202
18-21 months   MAL-ED           SOUTH AFRICA                   0               208    233
18-21 months   MAL-ED           SOUTH AFRICA                   1                25    233
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               193    204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                11    204
18-21 months   PROVIDE          BANGLADESH                     0               407    541
18-21 months   PROVIDE          BANGLADESH                     1               134    541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 8      9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      9
21-24 months   CMC-V-BCS-2002   INDIA                          0               143    304
21-24 months   CMC-V-BCS-2002   INDIA                          1               161    304
21-24 months   CMIN             BANGLADESH                     0               112    133
21-24 months   CMIN             BANGLADESH                     1                21    133
21-24 months   CONTENT          PERU                           0                38     38
21-24 months   CONTENT          PERU                           1                 0     38
21-24 months   EE               PAKISTAN                       0                63    106
21-24 months   EE               PAKISTAN                       1                43    106
21-24 months   GMS-Nepal        NEPAL                          0               210    342
21-24 months   GMS-Nepal        NEPAL                          1               132    342
21-24 months   IRC              INDIA                          0               173    389
21-24 months   IRC              INDIA                          1               216    389
21-24 months   Keneba           GAMBIA                         0               803   1158
21-24 months   Keneba           GAMBIA                         1               355   1158
21-24 months   MAL-ED           BANGLADESH                     0               158    207
21-24 months   MAL-ED           BANGLADESH                     1                49    207
21-24 months   MAL-ED           BRAZIL                         0               152    165
21-24 months   MAL-ED           BRAZIL                         1                13    165
21-24 months   MAL-ED           INDIA                          0               150    226
21-24 months   MAL-ED           INDIA                          1                76    226
21-24 months   MAL-ED           NEPAL                          0               181    227
21-24 months   MAL-ED           NEPAL                          1                46    227
21-24 months   MAL-ED           PERU                           0               183    189
21-24 months   MAL-ED           PERU                           1                 6    189
21-24 months   MAL-ED           SOUTH AFRICA                   0               210    235
21-24 months   MAL-ED           SOUTH AFRICA                   1                25    235
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               193    204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                11    204
21-24 months   PROVIDE          BANGLADESH                     0               354    471
21-24 months   PROVIDE          BANGLADESH                     1               117    471


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: CONTENT, country: PERU
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
* agecat: 0-3 months, studyid: ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: CONTENT, country: PERU
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: CONTENT, country: PERU
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
* agecat: 3-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/02233dd8-cc3d-4db6-9951-094b56778fa3/1cf0805e-bae6-4ab1-90ca-53f3a3400816/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/02233dd8-cc3d-4db6-9951-094b56778fa3/1cf0805e-bae6-4ab1-90ca-53f3a3400816/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/02233dd8-cc3d-4db6-9951-094b56778fa3/1cf0805e-bae6-4ab1-90ca-53f3a3400816/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.1731628   -0.3319376   -0.0143879
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                 0.0126424   -0.1265335    0.1518183
0-3 months     CMIN             BANGLADESH                     0                    NA                -0.0062844   -0.0802554    0.0676866
0-3 months     CMIN             BANGLADESH                     1                    NA                 0.0823104   -0.1062131    0.2708338
0-3 months     EE               PAKISTAN                       0                    NA                -0.1802001   -0.2258403   -0.1345599
0-3 months     EE               PAKISTAN                       1                    NA                -0.2877445   -0.3720423   -0.2034466
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0137739   -0.0452282    0.0176804
0-3 months     GMS-Nepal        NEPAL                          1                    NA                -0.0592768   -0.1002368   -0.0183167
0-3 months     IRC              INDIA                          0                    NA                -0.1537143   -0.2298835   -0.0775450
0-3 months     IRC              INDIA                          1                    NA                -0.3273816   -0.4033952   -0.2513681
0-3 months     Keneba           GAMBIA                         0                    NA                -0.2067104   -0.2338443   -0.1795766
0-3 months     Keneba           GAMBIA                         1                    NA                -0.4108265   -0.4534570   -0.3681960
0-3 months     MAL-ED           BANGLADESH                     0                    NA                -0.1138914   -0.1499820   -0.0778008
0-3 months     MAL-ED           BANGLADESH                     1                    NA                -0.1608811   -0.2369404   -0.0848219
0-3 months     MAL-ED           BRAZIL                         0                    NA                 0.1394483    0.0791613    0.1997352
0-3 months     MAL-ED           BRAZIL                         1                    NA                 0.0810199   -0.1091544    0.2711942
0-3 months     MAL-ED           INDIA                          0                    NA                -0.0720093   -0.1307079   -0.0133108
0-3 months     MAL-ED           INDIA                          1                    NA                -0.0688899   -0.1740545    0.0362748
0-3 months     MAL-ED           NEPAL                          0                    NA                 0.0481385   -0.0007353    0.0970124
0-3 months     MAL-ED           NEPAL                          1                    NA                 0.0977006   -0.0075032    0.2029044
0-3 months     MAL-ED           PERU                           0                    NA                -0.2704203   -0.3046640   -0.2361765
0-3 months     MAL-ED           PERU                           1                    NA                 0.0062199   -0.2294910    0.2419308
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.1682128   -0.2210854   -0.1153401
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                -0.2475763   -0.3897812   -0.1053714
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1290756   -0.1685896   -0.0895616
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2154848   -0.3519058   -0.0790637
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.1775732   -0.1971882   -0.1579582
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.2197534   -0.2563325   -0.1831744
0-3 months     ResPak           PAKISTAN                       0                    NA                -0.3946451   -0.5499230   -0.2393671
0-3 months     ResPak           PAKISTAN                       1                    NA                -0.0282563   -0.3018513    0.2453387
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0604414   -0.1310606    0.0101777
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.1330592   -0.1980695   -0.0680490
3-6 months     CMIN             BANGLADESH                     0                    NA                -0.0019794   -0.0375788    0.0336200
3-6 months     CMIN             BANGLADESH                     1                    NA                -0.0385658   -0.1285100    0.0513784
3-6 months     EE               PAKISTAN                       0                    NA                 0.0902842    0.0592157    0.1213526
3-6 months     EE               PAKISTAN                       1                    NA                 0.0159698   -0.0371946    0.0691342
3-6 months     GMS-Nepal        NEPAL                          0                    NA                -0.1488828   -0.1710699   -0.1266956
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.1805668   -0.2126436   -0.1484900
3-6 months     IRC              INDIA                          0                    NA                -0.0490173   -0.0920494   -0.0059853
3-6 months     IRC              INDIA                          1                    NA                -0.0568696   -0.0988279   -0.0149113
3-6 months     Keneba           GAMBIA                         0                    NA                -0.0183792   -0.0399588    0.0032005
3-6 months     Keneba           GAMBIA                         1                    NA                -0.0163327   -0.0509387    0.0182734
3-6 months     MAL-ED           BANGLADESH                     0                    NA                -0.0174841   -0.0435955    0.0086272
3-6 months     MAL-ED           BANGLADESH                     1                    NA                -0.0098538   -0.0685098    0.0488022
3-6 months     MAL-ED           BRAZIL                         0                    NA                 0.0591021    0.0205571    0.0976472
3-6 months     MAL-ED           BRAZIL                         1                    NA                 0.0005539   -0.1116787    0.1127864
3-6 months     MAL-ED           INDIA                          0                    NA                -0.0293875   -0.0620919    0.0033168
3-6 months     MAL-ED           INDIA                          1                    NA                -0.0505259   -0.1109601    0.0099083
3-6 months     MAL-ED           NEPAL                          0                    NA                -0.0245042   -0.0551949    0.0061864
3-6 months     MAL-ED           NEPAL                          1                    NA                -0.0203339   -0.0753613    0.0346935
3-6 months     MAL-ED           PERU                           0                    NA                 0.0306921   -0.0011647    0.0625488
3-6 months     MAL-ED           PERU                           1                    NA                -0.1160392   -0.2478917    0.0158132
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0004844   -0.0391029    0.0400718
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                -0.0429739   -0.1696683    0.0837205
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0783571   -0.1112739   -0.0454402
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0331369   -0.1716776    0.1054038
3-6 months     PROVIDE          BANGLADESH                     0                    NA                -0.0226273   -0.0401025   -0.0051520
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0391987   -0.0749332   -0.0034641
3-6 months     ResPak           PAKISTAN                       0                    NA                 0.0051311   -0.0585622    0.0688243
3-6 months     ResPak           PAKISTAN                       1                    NA                 0.0351509   -0.1065928    0.1768946
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0804718   -0.0977897   -0.0631538
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1062059   -0.1613494   -0.0510625
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0637067   -0.1166695   -0.0107438
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.1021557   -0.1468603   -0.0574510
6-9 months     CMIN             BANGLADESH                     0                    NA                -0.0551931   -0.0828993   -0.0274868
6-9 months     CMIN             BANGLADESH                     1                    NA                -0.0131671   -0.1045205    0.0781862
6-9 months     EE               PAKISTAN                       0                    NA                -0.0927654   -0.1173839   -0.0681468
6-9 months     EE               PAKISTAN                       1                    NA                -0.0724683   -0.1084428   -0.0364938
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0313264   -0.0539090   -0.0087438
6-9 months     GMS-Nepal        NEPAL                          1                    NA                -0.0567560   -0.0844446   -0.0290674
6-9 months     IRC              INDIA                          0                    NA                -0.0053456   -0.0395788    0.0288875
6-9 months     IRC              INDIA                          1                    NA                -0.0209810   -0.0499306    0.0079686
6-9 months     Keneba           GAMBIA                         0                    NA                -0.0019909   -0.0277964    0.0238146
6-9 months     Keneba           GAMBIA                         1                    NA                -0.0429372   -0.0881769    0.0023024
6-9 months     MAL-ED           BANGLADESH                     0                    NA                -0.0698967   -0.0891445   -0.0506489
6-9 months     MAL-ED           BANGLADESH                     1                    NA                -0.0728445   -0.1153601   -0.0303288
6-9 months     MAL-ED           BRAZIL                         0                    NA                 0.0074745   -0.0289722    0.0439212
6-9 months     MAL-ED           BRAZIL                         1                    NA                 0.1360951    0.0195282    0.2526619
6-9 months     MAL-ED           INDIA                          0                    NA                -0.0759767   -0.1023447   -0.0496088
6-9 months     MAL-ED           INDIA                          1                    NA                -0.0605461   -0.1059342   -0.0151581
6-9 months     MAL-ED           NEPAL                          0                    NA                -0.0379548   -0.0589846   -0.0169250
6-9 months     MAL-ED           NEPAL                          1                    NA                -0.0175514   -0.0663360    0.0312331
6-9 months     MAL-ED           PERU                           0                    NA                -0.0315275   -0.0561061   -0.0069489
6-9 months     MAL-ED           PERU                           1                    NA                -0.0628319   -0.2106336    0.0849699
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0190391   -0.0486131    0.0105349
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                -0.0020338   -0.1014030    0.0973353
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0888696   -0.1237176   -0.0540215
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1192139   -0.2067035   -0.0317242
6-9 months     PROVIDE          BANGLADESH                     0                    NA                -0.0665294   -0.0792575   -0.0538013
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0416054   -0.0614817   -0.0217291
6-9 months     ResPak           PAKISTAN                       0                    NA                 0.0440038   -0.0124739    0.1004815
6-9 months     ResPak           PAKISTAN                       1                    NA                -0.0344600   -0.1155593    0.0466393
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0496599   -0.0671727   -0.0321471
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0687226   -0.1081370   -0.0293081
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.1122112   -0.1592055   -0.0652170
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.1242084   -0.1587562   -0.0896605
9-12 months    CMIN             BANGLADESH                     0                    NA                -0.0886309   -0.1160627   -0.0611991
9-12 months    CMIN             BANGLADESH                     1                    NA                -0.0912185   -0.1455634   -0.0368735
9-12 months    EE               PAKISTAN                       0                    NA                -0.1094000   -0.1268035   -0.0919965
9-12 months    EE               PAKISTAN                       1                    NA                -0.0850682   -0.1116404   -0.0584961
9-12 months    GMS-Nepal        NEPAL                          0                    NA                -0.0879005   -0.1059581   -0.0698430
9-12 months    GMS-Nepal        NEPAL                          1                    NA                -0.0698320   -0.0934964   -0.0461675
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0605030   -0.0770631   -0.0439429
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.0628884   -0.1950609    0.0692841
9-12 months    IRC              INDIA                          0                    NA                -0.0256109   -0.0497079   -0.0015139
9-12 months    IRC              INDIA                          1                    NA                -0.0445116   -0.0683330   -0.0206902
9-12 months    Keneba           GAMBIA                         0                    NA                -0.1009128   -0.1219876   -0.0798381
9-12 months    Keneba           GAMBIA                         1                    NA                -0.1009783   -0.1355557   -0.0664009
9-12 months    MAL-ED           BANGLADESH                     0                    NA                -0.0895248   -0.1090222   -0.0700274
9-12 months    MAL-ED           BANGLADESH                     1                    NA                -0.0871480   -0.1196382   -0.0546578
9-12 months    MAL-ED           BRAZIL                         0                    NA                 0.0133006   -0.0191153    0.0457166
9-12 months    MAL-ED           BRAZIL                         1                    NA                -0.0448002   -0.1380770    0.0484766
9-12 months    MAL-ED           INDIA                          0                    NA                -0.1068349   -0.1265971   -0.0870726
9-12 months    MAL-ED           INDIA                          1                    NA                -0.0606068   -0.0864311   -0.0347825
9-12 months    MAL-ED           NEPAL                          0                    NA                -0.0696211   -0.0888618   -0.0503804
9-12 months    MAL-ED           NEPAL                          1                    NA                -0.0320698   -0.0666655    0.0025259
9-12 months    MAL-ED           PERU                           0                    NA                -0.0414892   -0.0634829   -0.0194955
9-12 months    MAL-ED           PERU                           1                    NA                -0.0186764   -0.1739094    0.1365566
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0870594   -0.1161732   -0.0579456
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                -0.1002451   -0.1749274   -0.0255629
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1537907   -0.1889991   -0.1185822
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1589857   -0.2451697   -0.0728018
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0628693   -0.0757269   -0.0500117
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0613393   -0.0819467   -0.0407318
9-12 months    ResPak           PAKISTAN                       0                    NA                 0.0260404   -0.0353891    0.0874698
9-12 months    ResPak           PAKISTAN                       1                    NA                -0.0652226   -0.1567337    0.0262886
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0676857   -0.0831190   -0.0522525
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0582895   -0.0971216   -0.0194575
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0990629   -0.1344742   -0.0636516
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0489511   -0.0928263   -0.0050759
12-15 months   CMIN             BANGLADESH                     0                    NA                -0.0666787   -0.0900006   -0.0433567
12-15 months   CMIN             BANGLADESH                     1                    NA                -0.0189004   -0.0664732    0.0286725
12-15 months   EE               PAKISTAN                       0                    NA                 0.0113761   -0.0047071    0.0274592
12-15 months   EE               PAKISTAN                       1                    NA                -0.0218294   -0.0440087    0.0003499
12-15 months   GMS-Nepal        NEPAL                          0                    NA                -0.0728314   -0.0877537   -0.0579091
12-15 months   GMS-Nepal        NEPAL                          1                    NA                -0.0590452   -0.0744524   -0.0436379
12-15 months   IRC              INDIA                          0                    NA                -0.0251226   -0.0548726    0.0046273
12-15 months   IRC              INDIA                          1                    NA                -0.0575807   -0.0756732   -0.0394881
12-15 months   Keneba           GAMBIA                         0                    NA                -0.0478689   -0.0625049   -0.0332330
12-15 months   Keneba           GAMBIA                         1                    NA                -0.0591741   -0.0817591   -0.0365891
12-15 months   MAL-ED           BANGLADESH                     0                    NA                -0.0620693   -0.0801314   -0.0440071
12-15 months   MAL-ED           BANGLADESH                     1                    NA                -0.0341871   -0.0679168   -0.0004574
12-15 months   MAL-ED           BRAZIL                         0                    NA                -0.0028059   -0.0263394    0.0207276
12-15 months   MAL-ED           BRAZIL                         1                    NA                 0.0095019   -0.1025331    0.1215369
12-15 months   MAL-ED           INDIA                          0                    NA                -0.0506796   -0.0689218   -0.0324373
12-15 months   MAL-ED           INDIA                          1                    NA                -0.0741013   -0.1019319   -0.0462707
12-15 months   MAL-ED           NEPAL                          0                    NA                -0.0552816   -0.0728293   -0.0377339
12-15 months   MAL-ED           NEPAL                          1                    NA                -0.0667810   -0.0986618   -0.0349003
12-15 months   MAL-ED           PERU                           0                    NA                -0.0666591   -0.0844106   -0.0489077
12-15 months   MAL-ED           PERU                           1                    NA                -0.0341558   -0.1673143    0.0990027
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0595964   -0.0841035   -0.0350893
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0600419   -0.1239212    0.0038375
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0676042   -0.0935062   -0.0417022
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1583501   -0.2685592   -0.0481411
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0381174   -0.0498431   -0.0263918
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0483411   -0.0678262   -0.0288561
12-15 months   ResPak           PAKISTAN                       0                    NA                 0.0983025    0.0096789    0.1869262
12-15 months   ResPak           PAKISTAN                       1                    NA                 0.0516713   -0.0550952    0.1584377
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0652676   -0.0806640   -0.0498712
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0647612   -0.1073627   -0.0221597
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0956760   -0.1247075   -0.0666445
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0396332   -0.0756298   -0.0036366
15-18 months   CMIN             BANGLADESH                     0                    NA                -0.0595613   -0.0810264   -0.0380961
15-18 months   CMIN             BANGLADESH                     1                    NA                -0.0852382   -0.1263523   -0.0441241
15-18 months   EE               PAKISTAN                       0                    NA                -0.0170158   -0.0308116   -0.0032200
15-18 months   EE               PAKISTAN                       1                    NA                -0.0406813   -0.0626753   -0.0186872
15-18 months   GMS-Nepal        NEPAL                          0                    NA                -0.0708866   -0.0867940   -0.0549792
15-18 months   GMS-Nepal        NEPAL                          1                    NA                -0.0647290   -0.0855502   -0.0439078
15-18 months   IRC              INDIA                          0                    NA                -0.0190028   -0.0425809    0.0045754
15-18 months   IRC              INDIA                          1                    NA                -0.0511973   -0.0698339   -0.0325607
15-18 months   Keneba           GAMBIA                         0                    NA                -0.0358853   -0.0505641   -0.0212066
15-18 months   Keneba           GAMBIA                         1                    NA                -0.0246722   -0.0439418   -0.0054025
15-18 months   MAL-ED           BANGLADESH                     0                    NA                -0.0416132   -0.0573567   -0.0258697
15-18 months   MAL-ED           BANGLADESH                     1                    NA                -0.0522491   -0.0858556   -0.0186427
15-18 months   MAL-ED           BRAZIL                         0                    NA                -0.0181001   -0.0396197    0.0034196
15-18 months   MAL-ED           BRAZIL                         1                    NA                -0.1120257   -0.2089280   -0.0151233
15-18 months   MAL-ED           INDIA                          0                    NA                -0.0436698   -0.0593598   -0.0279798
15-18 months   MAL-ED           INDIA                          1                    NA                -0.0269587   -0.0493763   -0.0045411
15-18 months   MAL-ED           NEPAL                          0                    NA                -0.0512011   -0.0691183   -0.0332838
15-18 months   MAL-ED           NEPAL                          1                    NA                -0.0670573   -0.0925838   -0.0415308
15-18 months   MAL-ED           PERU                           0                    NA                -0.0360064   -0.0519177   -0.0200951
15-18 months   MAL-ED           PERU                           1                    NA                -0.0371926   -0.1031254    0.0287402
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0337351   -0.0541042   -0.0133659
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.0108505   -0.0390156    0.0607167
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0861498   -0.1088194   -0.0634802
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0843557   -0.2238307    0.0551193
15-18 months   PROVIDE          BANGLADESH                     0                    NA                -0.0408832   -0.0507951   -0.0309713
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0368290   -0.0551611   -0.0184968
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0184440   -0.0351050   -0.0017829
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0139792   -0.0517034    0.0237450
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0607818   -0.0891388   -0.0324248
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0262956   -0.0600967    0.0075056
18-21 months   CMIN             BANGLADESH                     0                    NA                -0.0000695   -0.0187248    0.0185857
18-21 months   CMIN             BANGLADESH                     1                    NA                -0.0442108   -0.0896069    0.0011853
18-21 months   EE               PAKISTAN                       0                    NA                -0.0340595   -0.0463187   -0.0218004
18-21 months   EE               PAKISTAN                       1                    NA                -0.0370070   -0.0606700   -0.0133440
18-21 months   GMS-Nepal        NEPAL                          0                    NA                 0.0159210   -0.0011685    0.0330105
18-21 months   GMS-Nepal        NEPAL                          1                    NA                 0.0134696   -0.0020489    0.0289881
18-21 months   IRC              INDIA                          0                    NA                -0.0263850   -0.0460335   -0.0067366
18-21 months   IRC              INDIA                          1                    NA                -0.0513905   -0.0693104   -0.0334706
18-21 months   Keneba           GAMBIA                         0                    NA                -0.0240764   -0.0390325   -0.0091203
18-21 months   Keneba           GAMBIA                         1                    NA                -0.0191762   -0.0399604    0.0016080
18-21 months   MAL-ED           BANGLADESH                     0                    NA                -0.0162095   -0.0291442   -0.0032748
18-21 months   MAL-ED           BANGLADESH                     1                    NA                -0.0169909   -0.0439329    0.0099511
18-21 months   MAL-ED           BRAZIL                         0                    NA                -0.0121521   -0.0378893    0.0135850
18-21 months   MAL-ED           BRAZIL                         1                    NA                -0.0836989   -0.1576223   -0.0097754
18-21 months   MAL-ED           INDIA                          0                    NA                 0.0058451   -0.0079842    0.0196744
18-21 months   MAL-ED           INDIA                          1                    NA                 0.0050057   -0.0155246    0.0255361
18-21 months   MAL-ED           NEPAL                          0                    NA                -0.0295500   -0.0444024   -0.0146976
18-21 months   MAL-ED           NEPAL                          1                    NA                -0.0231990   -0.0512663    0.0048683
18-21 months   MAL-ED           PERU                           0                    NA                -0.0119659   -0.0273213    0.0033895
18-21 months   MAL-ED           PERU                           1                    NA                 0.0991854    0.0364689    0.1619019
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0294836   -0.0497376   -0.0092297
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0796564   -0.1453789   -0.0139338
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0317368   -0.0547983   -0.0086753
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0226215   -0.0421202    0.0873632
18-21 months   PROVIDE          BANGLADESH                     0                    NA                -0.0127037   -0.0219739   -0.0034335
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0063840   -0.0235117    0.0107436
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0349814    0.0055056    0.0644572
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                 0.0084385   -0.0216694    0.0385464
21-24 months   CMIN             BANGLADESH                     0                    NA                 0.0251284    0.0046849    0.0455719
21-24 months   CMIN             BANGLADESH                     1                    NA                -0.0266493   -0.0718560    0.0185573
21-24 months   EE               PAKISTAN                       0                    NA                -0.0100290   -0.0252397    0.0051817
21-24 months   EE               PAKISTAN                       1                    NA                 0.0081134   -0.0130599    0.0292866
21-24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0536010    0.0334931    0.0737090
21-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0424425    0.0175144    0.0673706
21-24 months   IRC              INDIA                          0                    NA                -0.0252759   -0.0444902   -0.0060616
21-24 months   IRC              INDIA                          1                    NA                -0.0071347   -0.0260413    0.0117720
21-24 months   Keneba           GAMBIA                         0                    NA                 0.0165542    0.0031186    0.0299899
21-24 months   Keneba           GAMBIA                         1                    NA                 0.0134439   -0.0083448    0.0352327
21-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0225158    0.0084386    0.0365929
21-24 months   MAL-ED           BANGLADESH                     1                    NA                 0.0392491    0.0128927    0.0656055
21-24 months   MAL-ED           BRAZIL                         0                    NA                 0.0212353    0.0055141    0.0369565
21-24 months   MAL-ED           BRAZIL                         1                    NA                -0.0160335   -0.1034851    0.0714180
21-24 months   MAL-ED           INDIA                          0                    NA                 0.0331723    0.0191772    0.0471673
21-24 months   MAL-ED           INDIA                          1                    NA                 0.0167827   -0.0006338    0.0341991
21-24 months   MAL-ED           NEPAL                          0                    NA                 0.0050251   -0.0108968    0.0209470
21-24 months   MAL-ED           NEPAL                          1                    NA                 0.0050398   -0.0214626    0.0315423
21-24 months   MAL-ED           PERU                           0                    NA                 0.0558546    0.0404933    0.0712159
21-24 months   MAL-ED           PERU                           1                    NA                 0.0911279   -0.0199569    0.2022127
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0363950    0.0208747    0.0519154
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.1055576    0.0124669    0.1986483
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0124031   -0.0105395    0.0353456
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0291958   -0.0180045    0.0763961
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0446340    0.0347913    0.0544767
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0512576    0.0329555    0.0695598


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     CMIN             BANGLADESH                     NA                   NA                 0.0122587   -0.0591325    0.0836499
0-3 months     EE               PAKISTAN                       NA                   NA                -0.2160892   -0.2586792   -0.1734992
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     Keneba           GAMBIA                         NA                   NA                -0.2819592   -0.3057954   -0.2581230
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     MAL-ED           BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     MAL-ED           INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     MAL-ED           NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     MAL-ED           PERU                           NA                   NA                -0.2628007   -0.2968934   -0.2287079
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1788096   -0.2278601   -0.1297591
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ResPak           PAKISTAN                       NA                   NA                -0.2215495   -0.3646573   -0.0784416
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     CMIN             BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
3-6 months     EE               PAKISTAN                       NA                   NA                 0.0663303    0.0389725    0.0936881
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     Keneba           GAMBIA                         NA                   NA                -0.0167995   -0.0352345    0.0016355
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     MAL-ED           BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     MAL-ED           INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     MAL-ED           NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     MAL-ED           PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0049345   -0.0429370    0.0330680
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ResPak           PAKISTAN                       NA                   NA                 0.0366027   -0.0294732    0.1026785
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0845402   -0.1011812   -0.0678992
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0832899   -0.1175028   -0.0490769
6-9 months     CMIN             BANGLADESH                     NA                   NA                -0.0518380   -0.0789102   -0.0247658
6-9 months     EE               PAKISTAN                       NA                   NA                -0.0848755   -0.1055404   -0.0642105
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     Keneba           GAMBIA                         NA                   NA                -0.0132203   -0.0354303    0.0089898
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     MAL-ED           BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     MAL-ED           INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     MAL-ED           NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     MAL-ED           PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ResPak           PAKISTAN                       NA                   NA                 0.0176516   -0.0290488    0.0643521
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0525643   -0.0685949   -0.0365337
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1184890   -0.1472404   -0.0897376
9-12 months    CMIN             BANGLADESH                     NA                   NA                -0.0900457   -0.1145732   -0.0655181
9-12 months    EE               PAKISTAN                       NA                   NA                -0.1011889   -0.1159053   -0.0864725
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0605712   -0.0770955   -0.0440468
9-12 months    IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    Keneba           GAMBIA                         NA                   NA                -0.1006730   -0.1184583   -0.0828876
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED           BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    MAL-ED           INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    MAL-ED           NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    MAL-ED           PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ResPak           PAKISTAN                       NA                   NA                -0.0111211   -0.0642819    0.0420397
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0656608   -0.0799392   -0.0513823
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0709565   -0.0992698   -0.0426432
12-15 months   CMIN             BANGLADESH                     NA                   NA                -0.0608799   -0.0824031   -0.0393566
12-15 months   EE               PAKISTAN                       NA                   NA                -0.0004721   -0.0133950    0.0124507
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   Keneba           GAMBIA                         NA                   NA                -0.0514499   -0.0636763   -0.0392235
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED           BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   MAL-ED           INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   MAL-ED           NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   MAL-ED           PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ResPak           PAKISTAN                       NA                   NA                 0.0801932    0.0138774    0.1465091
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0647004   -0.0791352   -0.0502655
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0674551   -0.0910572   -0.0438530
15-18 months   CMIN             BANGLADESH                     NA                   NA                -0.0627334   -0.0821141   -0.0433527
15-18 months   EE               PAKISTAN                       NA                   NA                -0.0256550   -0.0369587   -0.0143512
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   Keneba           GAMBIA                         NA                   NA                -0.0323681   -0.0439942   -0.0207420
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   MAL-ED           BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   MAL-ED           INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   MAL-ED           NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   MAL-ED           PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0192071   -0.0344910   -0.0039232
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0420349   -0.0645042   -0.0195656
18-21 months   CMIN             BANGLADESH                     NA                   NA                -0.0064943   -0.0234244    0.0104357
18-21 months   EE               PAKISTAN                       NA                   NA                -0.0357223   -0.0470222   -0.0244224
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   Keneba           GAMBIA                         NA                   NA                -0.0223318   -0.0343835   -0.0102802
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   MAL-ED           BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   MAL-ED           INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   MAL-ED           NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   MAL-ED           PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0184186   -0.0026901    0.0395272
21-24 months   CMIN             BANGLADESH                     NA                   NA                 0.0156162   -0.0032678    0.0345001
21-24 months   EE               PAKISTAN                       NA                   NA                -0.0065196   -0.0190677    0.0060285
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   Keneba           GAMBIA                         NA                   NA                 0.0152315    0.0038088    0.0266543
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   MAL-ED           INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   MAL-ED           NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   MAL-ED           PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.1858051   -0.0286814    0.4002916
0-3 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMIN             BANGLADESH                     1                    0                  0.0885947   -0.1139215    0.2911109
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       1                    0                 -0.1075444   -0.2035778   -0.0115109
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                 -0.0455029   -0.0970072    0.0060015
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                 -0.1736674   -0.2806937   -0.0666410
0-3 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         1                    0                 -0.2041161   -0.2544642   -0.1537679
0-3 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    0                 -0.0469897   -0.1310079    0.0370284
0-3 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         1                    0                 -0.0584284   -0.2575607    0.1407040
0-3 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          1                    0                  0.0031195   -0.1178267    0.1240657
0-3 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          1                    0                  0.0495621   -0.0668565    0.1659807
0-3 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           1                    0                  0.2766402    0.0376404    0.5156400
0-3 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    0                 -0.0793635   -0.2313431    0.0726161
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0864092   -0.2286587    0.0558403
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                 -0.0421802   -0.0836976   -0.0006628
0-3 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       1                    0                  0.3663888    0.0511944    0.6815831
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.0726178   -0.1681882    0.0229526
3-6 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMIN             BANGLADESH                     1                    0                 -0.0365865   -0.1341182    0.0609452
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                 -0.0743144   -0.1360786   -0.0125502
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                 -0.0316840   -0.0708020    0.0074340
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                 -0.0078523   -0.0680706    0.0523660
3-6 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         1                    0                  0.0020465   -0.0387607    0.0428537
3-6 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    0                  0.0076304   -0.0572293    0.0724900
3-6 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         1                    0                 -0.0585483   -0.1776515    0.0605550
3-6 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          1                    0                 -0.0211384   -0.0900346    0.0477578
3-6 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          1                    0                  0.0041703   -0.0591105    0.0674512
3-6 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           1                    0                 -0.1467313   -0.2823776   -0.0110850
3-6 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    0                 -0.0434583   -0.1763525    0.0894358
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0452201   -0.0972018    0.1876420
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                 -0.0165714   -0.0563279    0.0231851
3-6 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       1                    0                  0.0300198   -0.1246248    0.1846645
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0257342   -0.0836173    0.0321490
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.0384490   -0.1080462    0.0311482
6-9 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMIN             BANGLADESH                     1                    0                  0.0420259   -0.0518446    0.1358965
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                  0.0202971   -0.0231738    0.0637680
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                 -0.0254295   -0.0614000    0.0105409
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                 -0.0156354   -0.0614985    0.0302277
6-9 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         1                    0                 -0.0409463   -0.0935149    0.0116223
6-9 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     1                    0                 -0.0029477   -0.0502490    0.0443535
6-9 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         1                    0                  0.1286205    0.0057921    0.2514490
6-9 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          1                    0                  0.0154306   -0.0382712    0.0691325
6-9 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          1                    0                  0.0204033   -0.0326568    0.0734634
6-9 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           1                    0                 -0.0313043   -0.1812277    0.1186191
6-9 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.0170053   -0.0866575    0.1206680
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0303443   -0.1244395    0.0637509
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                  0.0249240    0.0014327    0.0484153
6-9 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ResPak           PAKISTAN                       1                    0                 -0.0784638   -0.1782087    0.0212810
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0190627   -0.0620926    0.0239672
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.0119971   -0.0703622    0.0463679
9-12 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMIN             BANGLADESH                     1                    0                 -0.0025875   -0.0636324    0.0584574
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                  0.0243318   -0.0068849    0.0555485
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                  0.0180686   -0.0132557    0.0493928
9-12 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.0023854   -0.1355912    0.1308205
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                 -0.0189007   -0.0528220    0.0150205
9-12 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         1                    0                 -0.0000655   -0.0409866    0.0408557
9-12 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    0                  0.0023768   -0.0353919    0.0401455
9-12 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         1                    0                 -0.0581008   -0.1568322    0.0406306
9-12 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          1                    0                  0.0462281    0.0136270    0.0788292
9-12 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          1                    0                  0.0375513   -0.0020649    0.0771675
9-12 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           1                    0                  0.0228128   -0.1346695    0.1802951
9-12 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.0131857   -0.0935928    0.0672214
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0051951   -0.0989829    0.0885928
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                  0.0015300   -0.0226090    0.0256690
9-12 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       1                    0                 -0.0912629   -0.2017576    0.0192318
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0093962   -0.0323138    0.0511062
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0501118   -0.0067157    0.1069393
12-15 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMIN             BANGLADESH                     1                    0                  0.0477783   -0.0054078    0.1009644
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                 -0.0332055   -0.0606222   -0.0057888
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                  0.0137862   -0.0077707    0.0353431
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                 -0.0324580   -0.0672807    0.0023647
12-15 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         1                    0                 -0.0113052   -0.0383443    0.0157340
12-15 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    0                  0.0278822   -0.0107732    0.0665375
12-15 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         1                    0                  0.0123078   -0.1026270    0.1272425
12-15 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          1                    0                 -0.0234218   -0.0567594    0.0099159
12-15 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          1                    0                 -0.0114995   -0.0477611    0.0247622
12-15 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           1                    0                  0.0325033   -0.1018332    0.1668398
12-15 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0004454   -0.0688957    0.0680048
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0907459   -0.2042074    0.0227156
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.0102237   -0.0329063    0.0124590
12-15 months   ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ResPak           PAKISTAN                       1                    0                 -0.0466313   -0.1860824    0.0928199
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0005064   -0.0448522    0.0458651
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0560428    0.0096530    0.1024326
15-18 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMIN             BANGLADESH                     1                    0                 -0.0256769   -0.0715725    0.0202187
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                 -0.0236655   -0.0496284    0.0022975
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                  0.0061576   -0.0199314    0.0322465
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                 -0.0321945   -0.0626151   -0.0017739
15-18 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         1                    0                  0.0112132   -0.0131045    0.0355308
15-18 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    0                 -0.0106359   -0.0477034    0.0264316
15-18 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         1                    0                 -0.0939256   -0.1932712    0.0054199
15-18 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          1                    0                  0.0167111   -0.0107552    0.0441774
15-18 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          1                    0                 -0.0158562   -0.0471235    0.0154110
15-18 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           1                    0                 -0.0011862   -0.0690117    0.0666393
15-18 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0445856   -0.0094430    0.0986142
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0017940   -0.1394298    0.1430179
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                  0.0040542   -0.0168151    0.0249235
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0044648   -0.0367610    0.0456906
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0344863   -0.0093577    0.0783302
18-21 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMIN             BANGLADESH                     1                    0                 -0.0441413   -0.0932716    0.0049890
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                 -0.0029475   -0.0297475    0.0238525
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                 -0.0024514   -0.0257598    0.0208570
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0250055   -0.0515727    0.0015618
18-21 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         1                    0                  0.0049002   -0.0208709    0.0306713
18-21 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    0                 -0.0007814   -0.0308299    0.0292671
18-21 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         1                    0                 -0.0715467   -0.1504996    0.0074062
18-21 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          1                    0                 -0.0008394   -0.0255749    0.0238961
18-21 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          1                    0                  0.0063510   -0.0254043    0.0381063
18-21 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           1                    0                  0.1111513    0.0465824    0.1757203
18-21 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0501727   -0.1193943    0.0190489
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0543583   -0.0139984    0.1227149
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                  0.0063196   -0.0131374    0.0257766
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0265429   -0.0687506    0.0156649
21-24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMIN             BANGLADESH                     1                    0                 -0.0517777   -0.1013160   -0.0022394
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                  0.0181424   -0.0082737    0.0445584
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0111585   -0.0432904    0.0209734
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                  0.0181413   -0.0088111    0.0450936
21-24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         1                    0                 -0.0031103   -0.0287994    0.0225788
21-24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    0                  0.0167333   -0.0132005    0.0466671
21-24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         1                    0                 -0.0372688   -0.1262172    0.0516796
21-24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          1                    0                 -0.0163896   -0.0388894    0.0061102
21-24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          1                    0                  0.0000147   -0.0305233    0.0305527
21-24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           1                    0                  0.0352733   -0.0768686    0.1474152
21-24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0691625   -0.0252285    0.1635536
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0167927   -0.0355331    0.0691186
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                  0.0066237   -0.0141490    0.0273963


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0853242   -0.0472104    0.2178588
0-3 months     CMIN             BANGLADESH                     0                    NA                 0.0185431   -0.0252231    0.0623092
0-3 months     EE               PAKISTAN                       0                    NA                -0.0358891   -0.0695099   -0.0022682
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0179941   -0.0394794    0.0034912
0-3 months     IRC              INDIA                          0                    NA                -0.1021128   -0.1646787   -0.0395469
0-3 months     Keneba           GAMBIA                         0                    NA                -0.0752488   -0.0946765   -0.0558211
0-3 months     MAL-ED           BANGLADESH                     0                    NA                -0.0083513   -0.0292741    0.0125715
0-3 months     MAL-ED           BRAZIL                         0                    NA                -0.0053769   -0.0182908    0.0075370
0-3 months     MAL-ED           INDIA                          0                    NA                 0.0129711   -0.0244428    0.0503849
0-3 months     MAL-ED           NEPAL                          0                    NA                 0.0066241   -0.0135640    0.0268121
0-3 months     MAL-ED           PERU                           0                    NA                 0.0076196   -0.0019126    0.0171518
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0105969   -0.0298589    0.0086652
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0085110   -0.0225028    0.0054808
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.0104670   -0.0213347    0.0004007
0-3 months     ResPak           PAKISTAN                       0                    NA                 0.1730956    0.0413491    0.3048421
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0375201   -0.0878138    0.0127737
3-6 months     CMIN             BANGLADESH                     0                    NA                -0.0066012   -0.0234032    0.0102008
3-6 months     EE               PAKISTAN                       0                    NA                -0.0239538   -0.0450899   -0.0028178
3-6 months     GMS-Nepal        NEPAL                          0                    NA                -0.0125150   -0.0291300    0.0041001
3-6 months     IRC              INDIA                          0                    NA                -0.0028745   -0.0366162    0.0308672
3-6 months     Keneba           GAMBIA                         0                    NA                 0.0015797   -0.0118681    0.0150274
3-6 months     MAL-ED           BANGLADESH                     0                    NA                -0.0049566   -0.0191677    0.0092545
3-6 months     MAL-ED           BRAZIL                         0                    NA                 0.0006270   -0.0076225    0.0088766
3-6 months     MAL-ED           INDIA                          0                    NA                -0.0066527   -0.0296082    0.0163029
3-6 months     MAL-ED           NEPAL                          0                    NA                 0.0014258   -0.0111459    0.0139974
3-6 months     MAL-ED           PERU                           0                    NA                -0.0049460   -0.0105168    0.0006248
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0054189   -0.0215101    0.0106722
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0078122   -0.0006640    0.0162884
3-6 months     PROVIDE          BANGLADESH                     0                    NA                -0.0043352   -0.0144460    0.0057756
3-6 months     ResPak           PAKISTAN                       0                    NA                 0.0314716   -0.0283481    0.0912912
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0040684   -0.0125488    0.0044119
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0195832   -0.0553400    0.0161735
6-9 months     CMIN             BANGLADESH                     0                    NA                 0.0033550   -0.0086405    0.0153506
6-9 months     EE               PAKISTAN                       0                    NA                 0.0078899   -0.0076978    0.0234777
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0125667   -0.0276492    0.0025157
6-9 months     IRC              INDIA                          0                    NA                -0.0109221   -0.0366563    0.0148122
6-9 months     Keneba           GAMBIA                         0                    NA                -0.0112294   -0.0266346    0.0041759
6-9 months     MAL-ED           BANGLADESH                     0                    NA                -0.0001264   -0.0106721    0.0104192
6-9 months     MAL-ED           BRAZIL                         0                    NA                 0.0013088   -0.0092065    0.0118242
6-9 months     MAL-ED           INDIA                          0                    NA                 0.0056412   -0.0126376    0.0239199
6-9 months     MAL-ED           NEPAL                          0                    NA                 0.0033952   -0.0071300    0.0139205
6-9 months     MAL-ED           PERU                           0                    NA                -0.0020509   -0.0073907    0.0032889
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0012563   -0.0103256    0.0128383
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0045403   -0.0103165    0.0012359
6-9 months     PROVIDE          BANGLADESH                     0                    NA                 0.0051030   -0.0007708    0.0109768
6-9 months     ResPak           PAKISTAN                       0                    NA                -0.0263522   -0.0648520    0.0121476
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0029044   -0.0090803    0.0032715
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0062778   -0.0364867    0.0239312
9-12 months    CMIN             BANGLADESH                     0                    NA                -0.0014147   -0.0106067    0.0077772
9-12 months    EE               PAKISTAN                       0                    NA                 0.0082111   -0.0024337    0.0188559
9-12 months    GMS-Nepal        NEPAL                          0                    NA                 0.0080766   -0.0052281    0.0213814
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0000682   -0.0038745    0.0037382
9-12 months    IRC              INDIA                          0                    NA                -0.0105204   -0.0293836    0.0083427
9-12 months    Keneba           GAMBIA                         0                    NA                 0.0002399   -0.0115875    0.0120672
9-12 months    MAL-ED           BANGLADESH                     0                    NA                 0.0023194   -0.0073658    0.0120046
9-12 months    MAL-ED           BRAZIL                         0                    NA                -0.0051222   -0.0130676    0.0028232
9-12 months    MAL-ED           INDIA                          0                    NA                 0.0155950    0.0043485    0.0268414
9-12 months    MAL-ED           NEPAL                          0                    NA                 0.0073246   -0.0008318    0.0154810
9-12 months    MAL-ED           PERU                           0                    NA                -0.0004369   -0.0057320    0.0048582
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0021973   -0.0068504    0.0112450
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0011754   -0.0077243    0.0053735
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0001777   -0.0061699    0.0058145
9-12 months    ResPak           PAKISTAN                       0                    NA                -0.0371614   -0.0830625    0.0087396
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0020249   -0.0039065    0.0079564
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0281064   -0.0023672    0.0585800
12-15 months   CMIN             BANGLADESH                     0                    NA                 0.0057988   -0.0038002    0.0153978
12-15 months   EE               PAKISTAN                       0                    NA                -0.0118482   -0.0219694   -0.0017270
12-15 months   GMS-Nepal        NEPAL                          0                    NA                 0.0061065   -0.0026900    0.0149029
12-15 months   IRC              INDIA                          0                    NA                -0.0203293   -0.0397693   -0.0008892
12-15 months   Keneba           GAMBIA                         0                    NA                -0.0035809   -0.0121272    0.0049653
12-15 months   MAL-ED           BANGLADESH                     0                    NA                 0.0063569   -0.0026949    0.0154088
12-15 months   MAL-ED           BRAZIL                         0                    NA                -0.0002371   -0.0069790    0.0065047
12-15 months   MAL-ED           INDIA                          0                    NA                -0.0058428   -0.0169219    0.0052363
12-15 months   MAL-ED           NEPAL                          0                    NA                -0.0021734   -0.0095817    0.0052349
12-15 months   MAL-ED           PERU                           0                    NA                 0.0013059   -0.0041561    0.0067680
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0004206   -0.0076353    0.0084764
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017521   -0.0077085    0.0042043
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0027933   -0.0084403    0.0028537
12-15 months   ResPak           PAKISTAN                       0                    NA                -0.0181093   -0.0785585    0.0423399
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005673   -0.0054058    0.0065403
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0282209    0.0027071    0.0537347
15-18 months   CMIN             BANGLADESH                     0                    NA                -0.0031721   -0.0102582    0.0039140
15-18 months   EE               PAKISTAN                       0                    NA                -0.0086392   -0.0179554    0.0006771
15-18 months   GMS-Nepal        NEPAL                          0                    NA                 0.0019290   -0.0084770    0.0123350
15-18 months   IRC              INDIA                          0                    NA                -0.0195139   -0.0365141   -0.0025137
15-18 months   Keneba           GAMBIA                         0                    NA                 0.0035173   -0.0039758    0.0110104
15-18 months   MAL-ED           BANGLADESH                     0                    NA                -0.0041811   -0.0121830    0.0038208
15-18 months   MAL-ED           BRAZIL                         0                    NA                -0.0022422   -0.0098501    0.0053657
15-18 months   MAL-ED           INDIA                          0                    NA                 0.0056663   -0.0035459    0.0148785
15-18 months   MAL-ED           NEPAL                          0                    NA                -0.0037335   -0.0101898    0.0027229
15-18 months   MAL-ED           PERU                           0                    NA                -0.0000501   -0.0029162    0.0028159
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0051875   -0.0007973    0.0111722
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005156   -0.0059243    0.0069554
15-18 months   PROVIDE          BANGLADESH                     0                    NA                 0.0032395   -0.0021230    0.0086020
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0007631   -0.0063394    0.0048132
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0187469   -0.0049947    0.0424886
18-21 months   CMIN             BANGLADESH                     0                    NA                -0.0064248   -0.0142951    0.0014455
18-21 months   EE               PAKISTAN                       0                    NA                -0.0016628   -0.0117886    0.0084631
18-21 months   GMS-Nepal        NEPAL                          0                    NA                -0.0003284   -0.0100758    0.0094190
18-21 months   IRC              INDIA                          0                    NA                -0.0136966   -0.0284230    0.0010298
18-21 months   Keneba           GAMBIA                         0                    NA                 0.0017445   -0.0061812    0.0096703
18-21 months   MAL-ED           BANGLADESH                     0                    NA                 0.0006876   -0.0061392    0.0075144
18-21 months   MAL-ED           BRAZIL                         0                    NA                -0.0082068   -0.0155490   -0.0008646
18-21 months   MAL-ED           INDIA                          0                    NA                -0.0000711   -0.0083325    0.0081903
18-21 months   MAL-ED           NEPAL                          0                    NA                 0.0014447   -0.0047811    0.0076705
18-21 months   MAL-ED           PERU                           0                    NA                 0.0038518    0.0002594    0.0074442
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0026828   -0.0096103    0.0042446
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0035335   -0.0039302    0.0109973
18-21 months   PROVIDE          BANGLADESH                     0                    NA                 0.0017638   -0.0030476    0.0065752
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0165628   -0.0390816    0.0059559
21-24 months   CMIN             BANGLADESH                     0                    NA                -0.0095122   -0.0189931   -0.0000314
21-24 months   EE               PAKISTAN                       0                    NA                 0.0035094   -0.0076152    0.0146340
21-24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0054741   -0.0178114    0.0068632
21-24 months   IRC              INDIA                          0                    NA                 0.0113678   -0.0037038    0.0264393
21-24 months   Keneba           GAMBIA                         0                    NA                -0.0013227   -0.0091831    0.0065377
21-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0031024   -0.0038537    0.0100586
21-24 months   MAL-ED           BRAZIL                         0                    NA                -0.0047483   -0.0118177    0.0023212
21-24 months   MAL-ED           INDIA                          0                    NA                -0.0033836   -0.0109541    0.0041868
21-24 months   MAL-ED           NEPAL                          0                    NA                 0.0004297   -0.0057012    0.0065605
21-24 months   MAL-ED           PERU                           0                    NA                 0.0011198   -0.0025484    0.0047880
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0074771   -0.0020286    0.0169828
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0035633   -0.0079499    0.0008232
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0016002   -0.0035429    0.0067433
