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
![](/tmp/4e0d7b6a-fabe-46ba-8b24-c8a8bde16672/b9a9a841-0926-4907-a46c-5c77e5d18214/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4e0d7b6a-fabe-46ba-8b24-c8a8bde16672/b9a9a841-0926-4907-a46c-5c77e5d18214/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4e0d7b6a-fabe-46ba-8b24-c8a8bde16672/b9a9a841-0926-4907-a46c-5c77e5d18214/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                3.2266761   2.9060372   3.5473150
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                3.5824661   3.2947188   3.8702135
0-3 months     CMIN             BANGLADESH                     0                    NA                3.3974552   3.2482615   3.5466488
0-3 months     CMIN             BANGLADESH                     1                    NA                3.5344317   3.2018253   3.8670381
0-3 months     EE               PAKISTAN                       0                    NA                3.1405826   3.0505127   3.2306525
0-3 months     EE               PAKISTAN                       1                    NA                2.9394407   2.7748933   3.1039880
0-3 months     GMS-Nepal        NEPAL                          0                    NA                3.6306358   3.5674353   3.6938362
0-3 months     GMS-Nepal        NEPAL                          1                    NA                3.5476189   3.4628041   3.6324337
0-3 months     IRC              INDIA                          0                    NA                3.3136080   3.1606685   3.4665474
0-3 months     IRC              INDIA                          1                    NA                2.9999380   2.8490287   3.1508472
0-3 months     Keneba           GAMBIA                         0                    NA                3.2559811   3.2029939   3.3089683
0-3 months     Keneba           GAMBIA                         1                    NA                2.8755071   2.7909635   2.9600508
0-3 months     MAL-ED           BANGLADESH                     0                    NA                3.3709074   3.2995577   3.4422572
0-3 months     MAL-ED           BANGLADESH                     1                    NA                3.2332248   3.0869645   3.3794850
0-3 months     MAL-ED           BRAZIL                         0                    NA                3.8125680   3.6960476   3.9290884
0-3 months     MAL-ED           BRAZIL                         1                    NA                3.8365462   3.5475336   4.1255589
0-3 months     MAL-ED           INDIA                          0                    NA                3.3407471   3.2319373   3.4495568
0-3 months     MAL-ED           INDIA                          1                    NA                3.3581848   3.1535340   3.5628356
0-3 months     MAL-ED           NEPAL                          0                    NA                3.6119670   3.5082062   3.7157279
0-3 months     MAL-ED           NEPAL                          1                    NA                3.6802542   3.4689875   3.8915210
0-3 months     MAL-ED           PERU                           0                    NA                3.0358182   2.9688474   3.1027891
0-3 months     MAL-ED           PERU                           1                    NA                3.8545210   3.6021773   4.1068647
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                3.1945518   3.0903297   3.2987738
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                3.0317381   2.7666826   3.2967936
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                3.2891572   3.2136137   3.3647008
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                2.9750508   2.4466269   3.5034746
0-3 months     PROVIDE          BANGLADESH                     0                    NA                3.2811730   3.2388914   3.3234547
0-3 months     PROVIDE          BANGLADESH                     1                    NA                3.1930764   3.1179149   3.2682378
0-3 months     ResPak           PAKISTAN                       0                    NA                2.7151564   2.4089606   3.0213521
0-3 months     ResPak           PAKISTAN                       1                    NA                3.5143260   2.9918175   4.0368344
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.8911104   1.7369560   2.0452648
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.7168353   1.5820762   1.8515944
3-6 months     CMIN             BANGLADESH                     0                    NA                1.9619500   1.8858942   2.0380057
3-6 months     CMIN             BANGLADESH                     1                    NA                1.8797550   1.6715437   2.0879663
3-6 months     EE               PAKISTAN                       0                    NA                2.1471080   2.0815676   2.2126483
3-6 months     EE               PAKISTAN                       1                    NA                2.0127078   1.8984492   2.1269665
3-6 months     GMS-Nepal        NEPAL                          0                    NA                1.7378369   1.6913035   1.7843704
3-6 months     GMS-Nepal        NEPAL                          1                    NA                1.6758418   1.6078606   1.7438231
3-6 months     IRC              INDIA                          0                    NA                1.8851408   1.7923251   1.9779565
3-6 months     IRC              INDIA                          1                    NA                1.8902028   1.8022994   1.9781061
3-6 months     Keneba           GAMBIA                         0                    NA                1.9884411   1.9420397   2.0348424
3-6 months     Keneba           GAMBIA                         1                    NA                2.0028953   1.9293054   2.0764851
3-6 months     MAL-ED           BANGLADESH                     0                    NA                1.9364373   1.8815564   1.9913183
3-6 months     MAL-ED           BANGLADESH                     1                    NA                1.8903326   1.7622682   2.0183969
3-6 months     MAL-ED           BRAZIL                         0                    NA                2.1436642   2.0601803   2.2271482
3-6 months     MAL-ED           BRAZIL                         1                    NA                2.0457329   1.7887300   2.3027359
3-6 months     MAL-ED           INDIA                          0                    NA                1.9055413   1.8344621   1.9766204
3-6 months     MAL-ED           INDIA                          1                    NA                1.8714472   1.7416037   2.0012908
3-6 months     MAL-ED           NEPAL                          0                    NA                1.9643903   1.8994738   2.0293068
3-6 months     MAL-ED           NEPAL                          1                    NA                1.9712735   1.8606023   2.0819447
3-6 months     MAL-ED           PERU                           0                    NA                2.0245976   1.9569348   2.0922604
3-6 months     MAL-ED           PERU                           1                    NA                1.7601051   1.5001565   2.0200536
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                1.9829429   1.8987833   2.0671025
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                1.8458654   1.5799461   2.1117846
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8170666   1.7476676   1.8864656
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                2.0877408   1.7251145   2.4503672
3-6 months     PROVIDE          BANGLADESH                     0                    NA                1.9784084   1.9407974   2.0160194
3-6 months     PROVIDE          BANGLADESH                     1                    NA                1.9327684   1.8574153   2.0081215
3-6 months     ResPak           PAKISTAN                       0                    NA                2.0150902   1.8774120   2.1527684
3-6 months     ResPak           PAKISTAN                       1                    NA                2.0488130   1.7297699   2.3678561
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8027306   1.7654621   1.8399991
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7516433   1.6348820   1.8684046
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.2714215   1.1504624   1.3923806
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.1591538   1.0572067   1.2611009
6-9 months     CMIN             BANGLADESH                     0                    NA                1.2588431   1.1963822   1.3213040
6-9 months     CMIN             BANGLADESH                     1                    NA                1.4420147   1.2570560   1.6269734
6-9 months     EE               PAKISTAN                       0                    NA                1.1651904   1.1087169   1.2216639
6-9 months     EE               PAKISTAN                       1                    NA                1.2018423   1.1203424   1.2833421
6-9 months     GMS-Nepal        NEPAL                          0                    NA                1.3457001   1.2924167   1.3989834
6-9 months     GMS-Nepal        NEPAL                          1                    NA                1.2927793   1.2299553   1.3556033
6-9 months     IRC              INDIA                          0                    NA                1.3786560   1.3027181   1.4545939
6-9 months     IRC              INDIA                          1                    NA                1.3589157   1.2942780   1.4235534
6-9 months     Keneba           GAMBIA                         0                    NA                1.4305809   1.3717823   1.4893794
6-9 months     Keneba           GAMBIA                         1                    NA                1.3603891   1.2583301   1.4624480
6-9 months     MAL-ED           BANGLADESH                     0                    NA                1.2541531   1.2100718   1.2982343
6-9 months     MAL-ED           BANGLADESH                     1                    NA                1.2260632   1.1276077   1.3245188
6-9 months     MAL-ED           BRAZIL                         0                    NA                1.4739263   1.3900000   1.5578525
6-9 months     MAL-ED           BRAZIL                         1                    NA                1.5736975   1.2923264   1.8550686
6-9 months     MAL-ED           INDIA                          0                    NA                1.2365509   1.1790949   1.2940069
6-9 months     MAL-ED           INDIA                          1                    NA                1.2907065   1.1881761   1.3932370
6-9 months     MAL-ED           NEPAL                          0                    NA                1.3507556   1.3028085   1.3987027
6-9 months     MAL-ED           NEPAL                          1                    NA                1.3796089   1.2666315   1.4925864
6-9 months     MAL-ED           PERU                           0                    NA                1.3242579   1.2687620   1.3797539
6-9 months     MAL-ED           PERU                           1                    NA                1.2834816   0.9665075   1.6004557
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                1.3687511   1.3017024   1.4357998
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                1.4313317   1.1505958   1.7120676
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2070368   1.1250041   1.2890696
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0123533   0.8174181   1.2072884
6-9 months     PROVIDE          BANGLADESH                     0                    NA                1.2719546   1.2421759   1.3017333
6-9 months     PROVIDE          BANGLADESH                     1                    NA                1.3302396   1.2833814   1.3770977
6-9 months     ResPak           PAKISTAN                       0                    NA                1.4951705   1.3682568   1.6220842
6-9 months     ResPak           PAKISTAN                       1                    NA                1.3866099   1.1975333   1.5756865
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.3299831   1.2900857   1.3698806
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2777761   1.1883160   1.3672363
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.9129262   0.8040003   1.0218521
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.8904415   0.8062423   0.9746406
9-12 months    CMIN             BANGLADESH                     0                    NA                0.9652064   0.8986401   1.0317728
9-12 months    CMIN             BANGLADESH                     1                    NA                0.9578538   0.8263121   1.0893955
9-12 months    EE               PAKISTAN                       0                    NA                0.8972691   0.8562271   0.9383110
9-12 months    EE               PAKISTAN                       1                    NA                0.9509968   0.8886350   1.0133586
9-12 months    GMS-Nepal        NEPAL                          0                    NA                0.9772997   0.9337063   1.0208931
9-12 months    GMS-Nepal        NEPAL                          1                    NA                1.0293611   0.9688977   1.0898246
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                1.0335848   0.9927471   1.0744226
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                1.0119008   0.6840315   1.3397701
9-12 months    IRC              INDIA                          0                    NA                1.1362810   1.0804243   1.1921377
9-12 months    IRC              INDIA                          1                    NA                1.1102476   1.0553113   1.1651839
9-12 months    Keneba           GAMBIA                         0                    NA                0.9793413   0.9287419   1.0299406
9-12 months    Keneba           GAMBIA                         1                    NA                0.9862784   0.9041223   1.0684344
9-12 months    MAL-ED           BANGLADESH                     0                    NA                0.9850311   0.9389642   1.0310980
9-12 months    MAL-ED           BANGLADESH                     1                    NA                0.9846952   0.9103278   1.0590626
9-12 months    MAL-ED           BRAZIL                         0                    NA                1.3080953   1.2302256   1.3859650
9-12 months    MAL-ED           BRAZIL                         1                    NA                1.1336338   0.8930392   1.3742283
9-12 months    MAL-ED           INDIA                          0                    NA                0.9431875   0.8954943   0.9908807
9-12 months    MAL-ED           INDIA                          1                    NA                1.0651066   1.0031316   1.1270816
9-12 months    MAL-ED           NEPAL                          0                    NA                1.0717922   1.0257002   1.1178842
9-12 months    MAL-ED           NEPAL                          1                    NA                1.1675072   1.0821571   1.2528574
9-12 months    MAL-ED           PERU                           0                    NA                1.1002533   1.0481128   1.1523937
9-12 months    MAL-ED           PERU                           1                    NA                1.3932141   1.1480133   1.6384149
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                1.0117795   0.9413807   1.0821783
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                1.0335754   0.8192700   1.2478809
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8175368   0.7324406   0.9026330
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8872112   0.6486938   1.1257285
9-12 months    PROVIDE          BANGLADESH                     0                    NA                1.0523515   1.0206254   1.0840776
9-12 months    PROVIDE          BANGLADESH                     1                    NA                1.0537594   1.0039835   1.1035352
9-12 months    ResPak           PAKISTAN                       0                    NA                1.2623460   1.1141651   1.4105269
9-12 months    ResPak           PAKISTAN                       1                    NA                1.0874728   0.8753044   1.2996413
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0858905   1.0492103   1.1225708
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0900127   0.9945139   1.1855114
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7879395   0.7009213   0.8749576
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.9041318   0.7947663   1.0134973
12-15 months   CMIN             BANGLADESH                     0                    NA                0.8575641   0.7976530   0.9174753
12-15 months   CMIN             BANGLADESH                     1                    NA                0.9805309   0.8608633   1.1001985
12-15 months   EE               PAKISTAN                       0                    NA                1.0392580   0.9990155   1.0795005
12-15 months   EE               PAKISTAN                       1                    NA                0.9582491   0.9027577   1.0137404
12-15 months   GMS-Nepal        NEPAL                          0                    NA                0.8619780   0.8219206   0.9020354
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.9054148   0.8648009   0.9460288
12-15 months   IRC              INDIA                          0                    NA                0.9953949   0.9195459   1.0712439
12-15 months   IRC              INDIA                          1                    NA                0.9251123   0.8793229   0.9709017
12-15 months   Keneba           GAMBIA                         0                    NA                0.9540132   0.9169693   0.9910570
12-15 months   Keneba           GAMBIA                         1                    NA                0.9163923   0.8600658   0.9727187
12-15 months   MAL-ED           BANGLADESH                     0                    NA                0.8953256   0.8486730   0.9419782
12-15 months   MAL-ED           BANGLADESH                     1                    NA                0.9641486   0.8763788   1.0519184
12-15 months   MAL-ED           BRAZIL                         0                    NA                1.1436536   1.0819365   1.2053708
12-15 months   MAL-ED           BRAZIL                         1                    NA                1.1490997   0.8647860   1.4334133
12-15 months   MAL-ED           INDIA                          0                    NA                0.9299486   0.8828948   0.9770024
12-15 months   MAL-ED           INDIA                          1                    NA                0.9036907   0.8322179   0.9751635
12-15 months   MAL-ED           NEPAL                          0                    NA                0.9568269   0.9119929   1.0016609
12-15 months   MAL-ED           NEPAL                          1                    NA                0.9283456   0.8454365   1.0112547
12-15 months   MAL-ED           PERU                           0                    NA                0.8879275   0.8420682   0.9337869
12-15 months   MAL-ED           PERU                           1                    NA                0.9825156   0.6310375   1.3339937
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.9223205   0.8613961   0.9832448
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.9456742   0.7611498   1.1301986
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8611134   0.7946481   0.9275787
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7418829   0.4888956   0.9948703
12-15 months   PROVIDE          BANGLADESH                     0                    NA                0.9690962   0.9388441   0.9993482
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.9332017   0.8824335   0.9839699
12-15 months   ResPak           PAKISTAN                       0                    NA                1.3240397   1.1132103   1.5348691
12-15 months   ResPak           PAKISTAN                       1                    NA                1.2018410   0.9365046   1.4671774
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9297977   0.8905617   0.9690337
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9556555   0.8493432   1.0619677
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.6587460   0.5832374   0.7342546
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7951020   0.6954870   0.8947170
15-18 months   CMIN             BANGLADESH                     0                    NA                0.7537444   0.6962995   0.8111892
15-18 months   CMIN             BANGLADESH                     1                    NA                0.6657116   0.5519314   0.7794919
15-18 months   EE               PAKISTAN                       0                    NA                0.8630018   0.8238165   0.9021871
15-18 months   EE               PAKISTAN                       1                    NA                0.7925268   0.7353427   0.8497109
15-18 months   GMS-Nepal        NEPAL                          0                    NA                0.7456164   0.7029464   0.7882863
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.7708397   0.7145139   0.8271656
15-18 months   IRC              INDIA                          0                    NA                0.9033211   0.8400654   0.9665768
15-18 months   IRC              INDIA                          1                    NA                0.8267317   0.7760886   0.8773748
15-18 months   Keneba           GAMBIA                         0                    NA                0.8725486   0.8330562   0.9120410
15-18 months   Keneba           GAMBIA                         1                    NA                0.8928341   0.8404767   0.9451915
15-18 months   MAL-ED           BANGLADESH                     0                    NA                0.8312602   0.7880667   0.8744537
15-18 months   MAL-ED           BANGLADESH                     1                    NA                0.8070908   0.7189973   0.8951843
15-18 months   MAL-ED           BRAZIL                         0                    NA                1.0107555   0.9498408   1.0716701
15-18 months   MAL-ED           BRAZIL                         1                    NA                0.8229341   0.4792494   1.1666188
15-18 months   MAL-ED           INDIA                          0                    NA                0.8265823   0.7829244   0.8702402
15-18 months   MAL-ED           INDIA                          1                    NA                0.8783365   0.8128301   0.9438428
15-18 months   MAL-ED           NEPAL                          0                    NA                0.8508410   0.8014098   0.9002721
15-18 months   MAL-ED           NEPAL                          1                    NA                0.8086734   0.7384363   0.8789105
15-18 months   MAL-ED           PERU                           0                    NA                0.8536146   0.8099323   0.8972969
15-18 months   MAL-ED           PERU                           1                    NA                0.8492630   0.7031059   0.9954200
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.8715802   0.8152210   0.9279393
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.9982662   0.8575762   1.1389562
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6866166   0.6245994   0.7486338
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7655078   0.4106541   1.1203614
15-18 months   PROVIDE          BANGLADESH                     0                    NA                0.8527588   0.8253985   0.8801191
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.8846771   0.8345514   0.9348028
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9407222   0.8947875   0.9866569
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9301839   0.8228934   1.0374745
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.6549634   0.5735102   0.7364167
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7539023   0.6584222   0.8493823
18-21 months   CMIN             BANGLADESH                     0                    NA                0.8199231   0.7664358   0.8734103
18-21 months   CMIN             BANGLADESH                     1                    NA                0.6752088   0.5611329   0.7892848
18-21 months   EE               PAKISTAN                       0                    NA                0.7296839   0.6916012   0.7677666
18-21 months   EE               PAKISTAN                       1                    NA                0.7151018   0.6424177   0.7877859
18-21 months   GMS-Nepal        NEPAL                          0                    NA                0.9035800   0.8541850   0.9529749
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.9093699   0.8617517   0.9569881
18-21 months   IRC              INDIA                          0                    NA                0.8016423   0.7454897   0.8577950
18-21 months   IRC              INDIA                          1                    NA                0.7317346   0.6796375   0.7838316
18-21 months   Keneba           GAMBIA                         0                    NA                0.8124992   0.7694351   0.8555634
18-21 months   Keneba           GAMBIA                         1                    NA                0.8215326   0.7619738   0.8810913
18-21 months   MAL-ED           BANGLADESH                     0                    NA                0.8105176   0.7715450   0.8494902
18-21 months   MAL-ED           BANGLADESH                     1                    NA                0.8272697   0.7414613   0.9130781
18-21 months   MAL-ED           BRAZIL                         0                    NA                0.9415922   0.8673298   1.0158546
18-21 months   MAL-ED           BRAZIL                         1                    NA                0.7137174   0.5319940   0.8954408
18-21 months   MAL-ED           INDIA                          0                    NA                0.8782890   0.8355961   0.9209819
18-21 months   MAL-ED           INDIA                          1                    NA                0.8780871   0.8177679   0.9384062
18-21 months   MAL-ED           NEPAL                          0                    NA                0.8172911   0.7742048   0.8603773
18-21 months   MAL-ED           NEPAL                          1                    NA                0.8359009   0.7546543   0.9171476
18-21 months   MAL-ED           PERU                           0                    NA                0.8301082   0.7852848   0.8749316
18-21 months   MAL-ED           PERU                           1                    NA                1.1572244   0.9475044   1.3669445
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.7930598   0.7345223   0.8515973
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.7163712   0.5219409   0.9108016
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7329008   0.6650934   0.8007083
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2176767   0.8544204   1.5809331
18-21 months   PROVIDE          BANGLADESH                     0                    NA                0.8331051   0.8057985   0.8604116
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.8437622   0.7937046   0.8938198
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7546923   0.6671292   0.8422553
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6792553   0.5921270   0.7663835
21-24 months   CMIN             BANGLADESH                     0                    NA                0.7776656   0.7163069   0.8390244
21-24 months   CMIN             BANGLADESH                     1                    NA                0.6418748   0.4842405   0.7995091
21-24 months   EE               PAKISTAN                       0                    NA                0.6390430   0.5913169   0.6867690
21-24 months   EE               PAKISTAN                       1                    NA                0.6643940   0.6019415   0.7268465
21-24 months   GMS-Nepal        NEPAL                          0                    NA                0.8009020   0.7423880   0.8594159
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.7754671   0.7029845   0.8479496
21-24 months   IRC              INDIA                          0                    NA                0.6947935   0.6399997   0.7495873
21-24 months   IRC              INDIA                          1                    NA                0.7314375   0.6738977   0.7889773
21-24 months   Keneba           GAMBIA                         0                    NA                0.7253437   0.6850522   0.7656352
21-24 months   Keneba           GAMBIA                         1                    NA                0.6988221   0.6350698   0.7625744
21-24 months   MAL-ED           BANGLADESH                     0                    NA                0.7618349   0.7212038   0.8024661
21-24 months   MAL-ED           BANGLADESH                     1                    NA                0.8032035   0.7130770   0.8933300
21-24 months   MAL-ED           BRAZIL                         0                    NA                0.8128728   0.7706471   0.8550984
21-24 months   MAL-ED           BRAZIL                         1                    NA                0.6885818   0.4445444   0.9326192
21-24 months   MAL-ED           INDIA                          0                    NA                0.8303029   0.7916636   0.8689422
21-24 months   MAL-ED           INDIA                          1                    NA                0.8085218   0.7560249   0.8610188
21-24 months   MAL-ED           NEPAL                          0                    NA                0.7885385   0.7420358   0.8350412
21-24 months   MAL-ED           NEPAL                          1                    NA                0.7561064   0.6716534   0.8405593
21-24 months   MAL-ED           PERU                           0                    NA                0.7574841   0.7104429   0.8045254
21-24 months   MAL-ED           PERU                           1                    NA                0.8698268   0.5301839   1.2094697
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.8159244   0.7682464   0.8636024
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                1.0378514   0.7713277   1.3043752
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7262405   0.6598139   0.7926670
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4681944   0.1957321   0.7406567
21-24 months   PROVIDE          BANGLADESH                     0                    NA                0.7615100   0.7324814   0.7905386
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.7669754   0.7142167   0.8197341


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     CMIN             BANGLADESH                     NA                   NA                3.4261247   3.2881156   3.5641338
0-3 months     EE               PAKISTAN                       NA                   NA                3.0775986   2.9949164   3.1602807
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     Keneba           GAMBIA                         NA                   NA                3.1094185   3.0623536   3.1564834
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     MAL-ED           BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     MAL-ED           INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     MAL-ED           NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     MAL-ED           PERU                           NA                   NA                3.0519536   2.9854854   3.1184219
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                3.1817712   3.0847973   3.2787451
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ResPak           PAKISTAN                       NA                   NA                3.0203213   2.7415636   3.2990789
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     CMIN             BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
3-6 months     EE               PAKISTAN                       NA                   NA                2.0947237   2.0366412   2.1528063
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     Keneba           GAMBIA                         NA                   NA                1.9931660   1.9537919   2.0325400
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     MAL-ED           BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     MAL-ED           INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     MAL-ED           NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     MAL-ED           PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.9704262   1.8897530   2.0510994
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ResPak           PAKISTAN                       NA                   NA                2.0648890   1.9235221   2.2062560
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7956732   1.7598168   1.8315297
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.2141990   1.1366726   1.2917254
6-9 months     CMIN             BANGLADESH                     NA                   NA                1.2658739   1.2051613   1.3265866
6-9 months     EE               PAKISTAN                       NA                   NA                1.1779411   1.1309380   1.2249441
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     Keneba           GAMBIA                         NA                   NA                1.4043728   1.3538817   1.4548638
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     MAL-ED           BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     MAL-ED           INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     MAL-ED           NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     MAL-ED           PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ResPak           PAKISTAN                       NA                   NA                1.4489758   1.3441442   1.5538073
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3229048   1.2864138   1.3593957
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.9004961   0.8320891   0.9689030
9-12 months    CMIN             BANGLADESH                     NA                   NA                0.9627471   0.9031556   1.0223387
9-12 months    EE               PAKISTAN                       NA                   NA                0.9148816   0.8796496   0.9501135
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                1.0329653   0.9921998   1.0737308
9-12 months    IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    Keneba           GAMBIA                         NA                   NA                0.9815948   0.9391870   1.0240026
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    MAL-ED           BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    MAL-ED           INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    MAL-ED           NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    MAL-ED           PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ResPak           PAKISTAN                       NA                   NA                1.1892103   1.0637355   1.3146851
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0864385   1.0523722   1.1205048
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8540293   0.7834803   0.9245783
12-15 months   CMIN             BANGLADESH                     NA                   NA                0.8739530   0.8186981   0.9292079
12-15 months   EE               PAKISTAN                       NA                   NA                1.0100593   0.9773974   1.0427213
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   Keneba           GAMBIA                         NA                   NA                0.9418485   0.9109546   0.9727425
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   MAL-ED           BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   MAL-ED           INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   MAL-ED           PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ResPak           PAKISTAN                       NA                   NA                1.2839425   1.1215190   1.4463660
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9312256   0.8944427   0.9680085
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7357918   0.6725047   0.7990788
15-18 months   CMIN             BANGLADESH                     NA                   NA                0.7480083   0.6959380   0.8000786
15-18 months   EE               PAKISTAN                       NA                   NA                0.8376536   0.8054297   0.8698774
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   Keneba           GAMBIA                         NA                   NA                0.8794445   0.8479366   0.9109524
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   MAL-ED           BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   MAL-ED           INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   MAL-ED           PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9379347   0.8959416   0.9799278
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7057090   0.6416425   0.7697756
18-21 months   CMIN             BANGLADESH                     NA                   NA                0.8028550   0.7540631   0.8516469
18-21 months   EE               PAKISTAN                       NA                   NA                0.7183112   0.6840373   0.7525850
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   Keneba           GAMBIA                         NA                   NA                0.8152626   0.7805875   0.8499376
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   MAL-ED           INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   MAL-ED           PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7091576   0.6473940   0.7709213
21-24 months   CMIN             BANGLADESH                     NA                   NA                0.7554929   0.6980149   0.8129708
21-24 months   EE               PAKISTAN                       NA                   NA                0.6493410   0.6112910   0.6873909
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   Keneba           GAMBIA                         NA                   NA                0.7160839   0.6819411   0.7502266
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   MAL-ED           INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   MAL-ED           PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.3557900   -0.0770646    0.7886446
0-3 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMIN             BANGLADESH                     1                    0                  0.1369765   -0.2275584    0.5015115
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       1                    0                 -0.2011419   -0.3892278   -0.0130561
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                 -0.0830169   -0.1888678    0.0228340
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                 -0.3136700   -0.5256795   -0.1016605
0-3 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         1                    0                 -0.3804740   -0.4794618   -0.2814861
0-3 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    0                 -0.1376826   -0.3006033    0.0252380
0-3 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         1                    0                  0.0239782   -0.2886186    0.3365751
0-3 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          1                    0                  0.0174378   -0.2146629    0.2495385
0-3 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          1                    0                  0.0682872   -0.1675316    0.3041060
0-3 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           1                    0                  0.8187027    0.5573988    1.0800067
0-3 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    0                 -0.1628137   -0.4478282    0.1222008
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.3141065   -0.8478340    0.2196211
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                 -0.0880967   -0.1743488   -0.0018445
0-3 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       1                    0                  0.7991696    0.1935262    1.4048130
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.1742752   -0.3790037    0.0304534
3-6 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMIN             BANGLADESH                     1                    0                 -0.0821950   -0.3039605    0.1395705
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                 -0.1344002   -0.2663125   -0.0024879
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                 -0.0619951   -0.1444372    0.0204470
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                  0.0050620   -0.1231157    0.1332396
3-6 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         1                    0                  0.0144542   -0.0724638    0.1013722
3-6 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    0                 -0.0461048   -0.1867859    0.0945764
3-6 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         1                    0                 -0.0979313   -0.3690394    0.1731768
3-6 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          1                    0                 -0.0340940   -0.1823864    0.1141983
3-6 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          1                    0                  0.0068832   -0.1218627    0.1356290
3-6 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           1                    0                 -0.2644925   -0.5331028    0.0041178
3-6 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    0                 -0.1370775   -0.4163616    0.1422065
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2706742   -0.0979860    0.6393345
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                 -0.0456400   -0.1299291    0.0386490
3-6 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       1                    0                  0.0337228   -0.3144350    0.3818805
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0510873   -0.1738969    0.0717223
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.1122677   -0.2720711    0.0475356
6-9 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMIN             BANGLADESH                     1                    0                  0.1831716   -0.0094489    0.3757920
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                  0.0366519   -0.0622478    0.1355515
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                 -0.0529208   -0.1361499    0.0303084
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                 -0.0197403   -0.1205916    0.0811110
6-9 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         1                    0                 -0.0701918   -0.1889541    0.0485705
6-9 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     1                    0                 -0.0280898   -0.1360743    0.0798947
6-9 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         1                    0                  0.0997712   -0.1912144    0.3907568
6-9 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          1                    0                  0.0541556   -0.0641547    0.1724660
6-9 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          1                    0                  0.0288533   -0.0940466    0.1517532
6-9 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           1                    0                 -0.0407763   -0.3627237    0.2811710
6-9 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.0625806   -0.2274494    0.3526105
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1946836   -0.4067200    0.0173528
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                  0.0582850    0.0028420    0.1137279
6-9 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ResPak           PAKISTAN                       1                    0                 -0.1085606   -0.3389447    0.1218235
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0522070   -0.1502243    0.0458102
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.0224847   -0.1600893    0.1151199
9-12 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMIN             BANGLADESH                     1                    0                 -0.0073526   -0.1537483    0.1390430
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                  0.0537277   -0.0190275    0.1264830
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                  0.0520614   -0.0275133    0.1316361
9-12 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.0216841   -0.3520868    0.3087187
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                 -0.0260334   -0.1040804    0.0520136
9-12 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         1                    0                  0.0069371   -0.0904150    0.1042892
9-12 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    0                 -0.0003359   -0.0876351    0.0869633
9-12 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         1                    0                 -0.1744615   -0.4277214    0.0787983
9-12 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          1                    0                  0.1219191    0.0434905    0.2003477
9-12 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          1                    0                  0.0957150   -0.0014207    0.1928508
9-12 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           1                    0                  0.2929608    0.0424544    0.5434672
9-12 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    0                  0.0217959   -0.2085418    0.2521336
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0696744   -0.1840986    0.3234473
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                  0.0014078   -0.0572103    0.0600260
9-12 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       1                    0                 -0.1748732   -0.4348040    0.0850577
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0041221   -0.0980568    0.1063010
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.1161923   -0.0248386    0.2572233
12-15 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMIN             BANGLADESH                     1                    0                  0.1229668   -0.0118130    0.2577466
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                 -0.0810089   -0.1496349   -0.0123829
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                  0.0434368   -0.0136332    0.1005068
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                 -0.0702826   -0.1590740    0.0185087
12-15 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         1                    0                 -0.0376209   -0.1050103    0.0297685
12-15 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    0                  0.0688230   -0.0308664    0.1685124
12-15 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         1                    0                  0.0054460   -0.2863946    0.2972867
12-15 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          1                    0                 -0.0262579   -0.1122886    0.0597728
12-15 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          1                    0                 -0.0284813   -0.1225393    0.0655767
12-15 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           1                    0                  0.0945880   -0.2598692    0.4490453
12-15 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0233538   -0.1721494    0.2188569
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1192305   -0.3807850    0.1423241
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.0358945   -0.0947325    0.0229435
12-15 months   ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ResPak           PAKISTAN                       1                    0                 -0.1221987   -0.4662884    0.2218911
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0258578   -0.0872545    0.1389701
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.1363560    0.0108992    0.2618127
15-18 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMIN             BANGLADESH                     1                    0                 -0.0880327   -0.2148163    0.0387509
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                 -0.0704750   -0.1396465   -0.0013035
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                  0.0252234   -0.0444805    0.0949273
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                 -0.0765894   -0.1581810    0.0050022
15-18 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         1                    0                  0.0202855   -0.0453466    0.0859176
15-18 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    0                 -0.0241694   -0.1225773    0.0742385
15-18 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         1                    0                 -0.1878213   -0.5370159    0.1613733
15-18 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          1                    0                  0.0517542   -0.0268836    0.1303919
15-18 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          1                    0                 -0.0421675   -0.1284303    0.0440953
15-18 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           1                    0                 -0.0043516   -0.1568968    0.1481935
15-18 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.1266860   -0.0248643    0.2782364
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0788912   -0.2811664    0.4389487
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                  0.0319183   -0.0254682    0.0893048
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0105382   -0.1273917    0.1063152
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0989388   -0.0261119    0.2239895
18-21 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMIN             BANGLADESH                     1                    0                 -0.1447142   -0.2721248   -0.0173036
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                 -0.0145821   -0.0972788    0.0681146
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                  0.0057899   -0.0637476    0.0753275
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0699078   -0.1463690    0.0065534
18-21 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         1                    0                  0.0090333   -0.0649732    0.0830398
18-21 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    0                  0.0167521   -0.0776819    0.1111861
18-21 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         1                    0                 -0.2278748   -0.4262140   -0.0295356
18-21 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          1                    0                 -0.0002019   -0.0743280    0.0739242
18-21 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          1                    0                  0.0186098   -0.0737200    0.1109397
18-21 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           1                    0                  0.3271162    0.1126596    0.5415728
18-21 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0766886   -0.2797579    0.1263808
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.4847759    0.1157968    0.8537550
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                  0.0106571   -0.0465387    0.0678529
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0754370   -0.1993461    0.0484721
21-24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMIN             BANGLADESH                     1                    0                 -0.1357908   -0.3050979    0.0335162
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                  0.0253510   -0.0535494    0.1042514
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0254349   -0.1189103    0.0680404
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                  0.0366440   -0.0412153    0.1145033
21-24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         1                    0                 -0.0265216   -0.1024846    0.0494414
21-24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    0                  0.0413686   -0.0576559    0.1403931
21-24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         1                    0                 -0.1242910   -0.3724981    0.1239162
21-24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          1                    0                 -0.0217811   -0.0871642    0.0436020
21-24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          1                    0                 -0.0324321   -0.1281267    0.0632625
21-24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           1                    0                  0.1123427   -0.2305424    0.4552277
21-24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.2219270   -0.0492008    0.4930549
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2580461   -0.5384201    0.0223279
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                  0.0054654   -0.0546660    0.0655967


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.2335114   -0.0336541    0.5006769
0-3 months     CMIN             BANGLADESH                     0                    NA                 0.0286695   -0.0494675    0.1068065
0-3 months     EE               PAKISTAN                       0                    NA                -0.0629840   -0.1266086    0.0006406
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0316675   -0.0756233    0.0122884
0-3 months     IRC              INDIA                          0                    NA                -0.1753587   -0.2993166   -0.0514008
0-3 months     Keneba           GAMBIA                         0                    NA                -0.1465626   -0.1848288   -0.1082964
0-3 months     MAL-ED           BANGLADESH                     0                    NA                -0.0317843   -0.0728090    0.0092404
0-3 months     MAL-ED           BRAZIL                         0                    NA                -0.0138666   -0.0388514    0.0111181
0-3 months     MAL-ED           INDIA                          0                    NA                 0.0074780   -0.0652614    0.0802173
0-3 months     MAL-ED           NEPAL                          0                    NA                 0.0114505   -0.0266421    0.0495430
0-3 months     MAL-ED           PERU                           0                    NA                 0.0161354   -0.0003607    0.0326315
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0127806   -0.0480722    0.0225110
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0246581   -0.0542659    0.0049497
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.0234920   -0.0461899   -0.0007942
0-3 months     ResPak           PAKISTAN                       0                    NA                 0.3051649    0.0568594    0.5534704
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0873225   -0.1958340    0.0211891
3-6 months     CMIN             BANGLADESH                     0                    NA                -0.0141023   -0.0488787    0.0206742
3-6 months     EE               PAKISTAN                       0                    NA                -0.0523842   -0.0972272   -0.0075413
3-6 months     GMS-Nepal        NEPAL                          0                    NA                -0.0282684   -0.0633699    0.0068330
3-6 months     IRC              INDIA                          0                    NA                -0.0044669   -0.0764360    0.0675021
3-6 months     Keneba           GAMBIA                         0                    NA                 0.0047249   -0.0239071    0.0333570
3-6 months     MAL-ED           BANGLADESH                     0                    NA                -0.0087966   -0.0388415    0.0212483
3-6 months     MAL-ED           BRAZIL                         0                    NA                 0.0024173   -0.0157220    0.0205565
3-6 months     MAL-ED           INDIA                          0                    NA                -0.0132432   -0.0627066    0.0362201
3-6 months     MAL-ED           NEPAL                          0                    NA                 0.0000698   -0.0256467    0.0257863
3-6 months     MAL-ED           PERU                           0                    NA                -0.0089155   -0.0196340    0.0018030
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0125167   -0.0461576    0.0211242
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0130236   -0.0040186    0.0300657
3-6 months     PROVIDE          BANGLADESH                     0                    NA                -0.0126627   -0.0341407    0.0088153
3-6 months     ResPak           PAKISTAN                       0                    NA                 0.0497988   -0.0834033    0.1830010
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0070574   -0.0253243    0.0112096
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0572226   -0.1396959    0.0252508
6-9 months     CMIN             BANGLADESH                     0                    NA                 0.0070308   -0.0206851    0.0347468
6-9 months     EE               PAKISTAN                       0                    NA                 0.0127507   -0.0222422    0.0477436
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0284974   -0.0635934    0.0065986
6-9 months     IRC              INDIA                          0                    NA                -0.0062551   -0.0626904    0.0501802
6-9 months     Keneba           GAMBIA                         0                    NA                -0.0262081   -0.0608879    0.0084718
6-9 months     MAL-ED           BANGLADESH                     0                    NA                -0.0061079   -0.0299656    0.0177497
6-9 months     MAL-ED           BRAZIL                         0                    NA                 0.0091896   -0.0119405    0.0303198
6-9 months     MAL-ED           INDIA                          0                    NA                 0.0096728   -0.0314974    0.0508429
6-9 months     MAL-ED           NEPAL                          0                    NA                 0.0063852   -0.0175482    0.0303186
6-9 months     MAL-ED           PERU                           0                    NA                -0.0042614   -0.0159708    0.0074480
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0081747   -0.0203087    0.0366581
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0162813   -0.0319167   -0.0006458
6-9 months     PROVIDE          BANGLADESH                     0                    NA                 0.0104639   -0.0033398    0.0242676
6-9 months     ResPak           PAKISTAN                       0                    NA                -0.0461947   -0.1339767    0.0415872
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0070784   -0.0213144    0.0071576
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0124301   -0.0837604    0.0589002
9-12 months    CMIN             BANGLADESH                     0                    NA                -0.0024593   -0.0246494    0.0197308
9-12 months    EE               PAKISTAN                       0                    NA                 0.0176125   -0.0076285    0.0428534
9-12 months    GMS-Nepal        NEPAL                          0                    NA                 0.0210764   -0.0113297    0.0534825
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0006195   -0.0100749    0.0088358
9-12 months    IRC              INDIA                          0                    NA                -0.0128076   -0.0561724    0.0305573
9-12 months    Keneba           GAMBIA                         0                    NA                 0.0022535   -0.0256139    0.0301209
9-12 months    MAL-ED           BANGLADESH                     0                    NA                 0.0046135   -0.0180243    0.0272513
9-12 months    MAL-ED           BRAZIL                         0                    NA                -0.0098394   -0.0294686    0.0097899
9-12 months    MAL-ED           INDIA                          0                    NA                 0.0382827    0.0113194    0.0652460
9-12 months    MAL-ED           NEPAL                          0                    NA                 0.0174450   -0.0028581    0.0377480
9-12 months    MAL-ED           PERU                           0                    NA                -0.0017409   -0.0120957    0.0086139
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0025463   -0.0218955    0.0269881
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0044291   -0.0199079    0.0110496
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0023765   -0.0171079    0.0123549
9-12 months    ResPak           PAKISTAN                       0                    NA                -0.0731357   -0.1842175    0.0379460
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005479   -0.0137085    0.0148044
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0660898   -0.0092487    0.1414283
12-15 months   CMIN             BANGLADESH                     0                    NA                 0.0163889   -0.0086685    0.0414462
12-15 months   EE               PAKISTAN                       0                    NA                -0.0291987   -0.0542926   -0.0041048
12-15 months   GMS-Nepal        NEPAL                          0                    NA                 0.0177266   -0.0056791    0.0411324
12-15 months   IRC              INDIA                          0                    NA                -0.0400410   -0.0900369    0.0099550
12-15 months   Keneba           GAMBIA                         0                    NA                -0.0121646   -0.0334395    0.0091103
12-15 months   MAL-ED           BANGLADESH                     0                    NA                 0.0187748   -0.0050446    0.0425942
12-15 months   MAL-ED           BRAZIL                         0                    NA                -0.0014763   -0.0180830    0.0151305
12-15 months   MAL-ED           INDIA                          0                    NA                -0.0194550   -0.0485233    0.0096134
12-15 months   MAL-ED           NEPAL                          0                    NA                -0.0054145   -0.0240867    0.0132578
12-15 months   MAL-ED           PERU                           0                    NA                 0.0038004   -0.0106483    0.0182492
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0026910   -0.0244637    0.0190816
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0047576   -0.0203891    0.0108740
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0093461   -0.0240681    0.0053759
12-15 months   ResPak           PAKISTAN                       0                    NA                -0.0400972   -0.1794852    0.0992909
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0014279   -0.0135260    0.0163818
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0770458    0.0086980    0.1453935
15-18 months   CMIN             BANGLADESH                     0                    NA                -0.0057361   -0.0250912    0.0136191
15-18 months   EE               PAKISTAN                       0                    NA                -0.0253482   -0.0508215    0.0001250
15-18 months   GMS-Nepal        NEPAL                          0                    NA                 0.0093356   -0.0181331    0.0368043
15-18 months   IRC              INDIA                          0                    NA                -0.0441995   -0.0899905    0.0015914
15-18 months   Keneba           GAMBIA                         0                    NA                 0.0068959   -0.0132104    0.0270022
15-18 months   MAL-ED           BANGLADESH                     0                    NA                -0.0071376   -0.0286590    0.0143838
15-18 months   MAL-ED           BRAZIL                         0                    NA                -0.0086441   -0.0287242    0.0114360
15-18 months   MAL-ED           INDIA                          0                    NA                 0.0178062   -0.0083264    0.0439387
15-18 months   MAL-ED           NEPAL                          0                    NA                -0.0100048   -0.0279346    0.0079251
15-18 months   MAL-ED           PERU                           0                    NA                -0.0001839   -0.0066305    0.0062628
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0155701   -0.0012571    0.0323972
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0001314   -0.0174982    0.0177609
15-18 months   PROVIDE          BANGLADESH                     0                    NA                 0.0033411   -0.0112265    0.0179086
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0027875   -0.0181397    0.0125648
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0507456   -0.0170539    0.1185450
18-21 months   CMIN             BANGLADESH                     0                    NA                -0.0170680   -0.0397764    0.0056403
18-21 months   EE               PAKISTAN                       0                    NA                -0.0113727   -0.0421417    0.0193963
18-21 months   GMS-Nepal        NEPAL                          0                    NA                 0.0003156   -0.0290135    0.0296446
18-21 months   IRC              INDIA                          0                    NA                -0.0418402   -0.0843211    0.0006407
18-21 months   Keneba           GAMBIA                         0                    NA                 0.0027633   -0.0197527    0.0252794
18-21 months   MAL-ED           BANGLADESH                     0                    NA                 0.0028671   -0.0181809    0.0239152
18-21 months   MAL-ED           BRAZIL                         0                    NA                -0.0255164   -0.0463328   -0.0046999
18-21 months   MAL-ED           INDIA                          0                    NA                 0.0004211   -0.0246382    0.0254804
18-21 months   MAL-ED           NEPAL                          0                    NA                 0.0009887   -0.0180335    0.0200108
18-21 months   MAL-ED           PERU                           0                    NA                 0.0113357    0.0002163    0.0224552
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0108788   -0.0311578    0.0094002
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0108030   -0.0104227    0.0320287
18-21 months   PROVIDE          BANGLADESH                     0                    NA                 0.0062326   -0.0079948    0.0204600
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0455346   -0.1114649    0.0203957
21-24 months   CMIN             BANGLADESH                     0                    NA                -0.0221728   -0.0513619    0.0070163
21-24 months   EE               PAKISTAN                       0                    NA                 0.0102980   -0.0222532    0.0428492
21-24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0018708   -0.0384111    0.0346695
21-24 months   IRC              INDIA                          0                    NA                 0.0136193   -0.0295726    0.0568112
21-24 months   Keneba           GAMBIA                         0                    NA                -0.0092598   -0.0326705    0.0141508
21-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0075833   -0.0155183    0.0306850
21-24 months   MAL-ED           BRAZIL                         0                    NA                -0.0167209   -0.0380575    0.0046158
21-24 months   MAL-ED           INDIA                          0                    NA                -0.0047516   -0.0263707    0.0168675
21-24 months   MAL-ED           NEPAL                          0                    NA                -0.0051820   -0.0241592    0.0137953
21-24 months   MAL-ED           PERU                           0                    NA                 0.0035664   -0.0076770    0.0148099
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0235706   -0.0063659    0.0535070
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0073077   -0.0207311    0.0061157
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0016290   -0.0132319    0.0164900
