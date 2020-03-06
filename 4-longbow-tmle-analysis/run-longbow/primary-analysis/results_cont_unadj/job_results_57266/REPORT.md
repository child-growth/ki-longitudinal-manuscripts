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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        exclfeed3    n_cell      n
-------------  ---------------  -----------------------------  ----------  -------  -----
0-3 months     CMC-V-BCS-2002   INDIA                          1                 4      4
0-3 months     CMC-V-BCS-2002   INDIA                          0                 0      4
0-3 months     EE               PAKISTAN                       1                31     31
0-3 months     EE               PAKISTAN                       0                 0     31
0-3 months     GMS-Nepal        NEPAL                          1               378    456
0-3 months     GMS-Nepal        NEPAL                          0                78    456
0-3 months     IRC              INDIA                          1                 0     10
0-3 months     IRC              INDIA                          0                10     10
0-3 months     Keneba           GAMBIA                         1              1024   1175
0-3 months     Keneba           GAMBIA                         0               151   1175
0-3 months     MAL-ED           BANGLADESH                     1               153    237
0-3 months     MAL-ED           BANGLADESH                     0                84    237
0-3 months     MAL-ED           BRAZIL                         1                46    147
0-3 months     MAL-ED           BRAZIL                         0               101    147
0-3 months     MAL-ED           INDIA                          1                84    164
0-3 months     MAL-ED           INDIA                          0                80    164
0-3 months     MAL-ED           NEPAL                          1                53    153
0-3 months     MAL-ED           NEPAL                          0               100    153
0-3 months     MAL-ED           PERU                           1                57    262
0-3 months     MAL-ED           PERU                           0               205    262
0-3 months     MAL-ED           SOUTH AFRICA                   1                20    203
0-3 months     MAL-ED           SOUTH AFRICA                   0               183    203
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                43    197
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               154    197
0-3 months     PROVIDE          BANGLADESH                     1               449    640
0-3 months     PROVIDE          BANGLADESH                     0               191    640
0-3 months     SAS-CompFeed     INDIA                          1               411    432
0-3 months     SAS-CompFeed     INDIA                          0                21    432
3-6 months     CMC-V-BCS-2002   INDIA                          1                10     10
3-6 months     CMC-V-BCS-2002   INDIA                          0                 0     10
3-6 months     EE               PAKISTAN                       1                31     31
3-6 months     EE               PAKISTAN                       0                 0     31
3-6 months     GMS-Nepal        NEPAL                          1               350    420
3-6 months     GMS-Nepal        NEPAL                          0                70    420
3-6 months     IRC              INDIA                          1                 0     10
3-6 months     IRC              INDIA                          0                10     10
3-6 months     Keneba           GAMBIA                         1              1128   1279
3-6 months     Keneba           GAMBIA                         0               151   1279
3-6 months     MAL-ED           BANGLADESH                     1               147    225
3-6 months     MAL-ED           BANGLADESH                     0                78    225
3-6 months     MAL-ED           BRAZIL                         1                60    186
3-6 months     MAL-ED           BRAZIL                         0               126    186
3-6 months     MAL-ED           INDIA                          1               109    206
3-6 months     MAL-ED           INDIA                          0                97    206
3-6 months     MAL-ED           NEPAL                          1                69    226
3-6 months     MAL-ED           NEPAL                          0               157    226
3-6 months     MAL-ED           PERU                           1                61    264
3-6 months     MAL-ED           PERU                           0               203    264
3-6 months     MAL-ED           SOUTH AFRICA                   1                22    234
3-6 months     MAL-ED           SOUTH AFRICA                   0               212    234
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                45    208
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               163    208
3-6 months     PROVIDE          BANGLADESH                     1               423    598
3-6 months     PROVIDE          BANGLADESH                     0               175    598
3-6 months     SAS-CompFeed     INDIA                          1               361    379
3-6 months     SAS-CompFeed     INDIA                          0                18    379
6-9 months     CMC-V-BCS-2002   INDIA                          1                 9      9
6-9 months     CMC-V-BCS-2002   INDIA                          0                 0      9
6-9 months     EE               PAKISTAN                       1                36     36
6-9 months     EE               PAKISTAN                       0                 0     36
6-9 months     GMS-Nepal        NEPAL                          1               314    378
6-9 months     GMS-Nepal        NEPAL                          0                64    378
6-9 months     IRC              INDIA                          1                 0     10
6-9 months     IRC              INDIA                          0                10     10
6-9 months     Keneba           GAMBIA                         1               687    770
6-9 months     Keneba           GAMBIA                         0                83    770
6-9 months     MAL-ED           BANGLADESH                     1               140    217
6-9 months     MAL-ED           BANGLADESH                     0                77    217
6-9 months     MAL-ED           BRAZIL                         1                58    177
6-9 months     MAL-ED           BRAZIL                         0               119    177
6-9 months     MAL-ED           INDIA                          1               106    205
6-9 months     MAL-ED           INDIA                          0                99    205
6-9 months     MAL-ED           NEPAL                          1                68    222
6-9 months     MAL-ED           NEPAL                          0               154    222
6-9 months     MAL-ED           PERU                           1                57    242
6-9 months     MAL-ED           PERU                           0               185    242
6-9 months     MAL-ED           SOUTH AFRICA                   1                22    222
6-9 months     MAL-ED           SOUTH AFRICA                   0               200    222
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                42    193
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               151    193
6-9 months     PROVIDE          BANGLADESH                     1               399    565
6-9 months     PROVIDE          BANGLADESH                     0               166    565
6-9 months     SAS-CompFeed     INDIA                          1               326    341
6-9 months     SAS-CompFeed     INDIA                          0                15    341
9-12 months    CMC-V-BCS-2002   INDIA                          1                 8      8
9-12 months    CMC-V-BCS-2002   INDIA                          0                 0      8
9-12 months    EE               PAKISTAN                       1                36     36
9-12 months    EE               PAKISTAN                       0                 0     36
9-12 months    GMS-Nepal        NEPAL                          1               302    362
9-12 months    GMS-Nepal        NEPAL                          0                60    362
9-12 months    IRC              INDIA                          1                 0     10
9-12 months    IRC              INDIA                          0                10     10
9-12 months    Keneba           GAMBIA                         1               664    746
9-12 months    Keneba           GAMBIA                         0                82    746
9-12 months    MAL-ED           BANGLADESH                     1               142    218
9-12 months    MAL-ED           BANGLADESH                     0                76    218
9-12 months    MAL-ED           BRAZIL                         1                58    175
9-12 months    MAL-ED           BRAZIL                         0               117    175
9-12 months    MAL-ED           INDIA                          1               102    201
9-12 months    MAL-ED           INDIA                          0                99    201
9-12 months    MAL-ED           NEPAL                          1                67    221
9-12 months    MAL-ED           NEPAL                          0               154    221
9-12 months    MAL-ED           PERU                           1                55    233
9-12 months    MAL-ED           PERU                           0               178    233
9-12 months    MAL-ED           SOUTH AFRICA                   1                23    223
9-12 months    MAL-ED           SOUTH AFRICA                   0               200    223
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                39    192
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               153    192
9-12 months    PROVIDE          BANGLADESH                     1               400    566
9-12 months    PROVIDE          BANGLADESH                     0               166    566
9-12 months    SAS-CompFeed     INDIA                          1               348    361
9-12 months    SAS-CompFeed     INDIA                          0                13    361
12-15 months   CMC-V-BCS-2002   INDIA                          1                 8      8
12-15 months   CMC-V-BCS-2002   INDIA                          0                 0      8
12-15 months   EE               PAKISTAN                       1                29     29
12-15 months   EE               PAKISTAN                       0                 0     29
12-15 months   GMS-Nepal        NEPAL                          1               313    371
12-15 months   GMS-Nepal        NEPAL                          0                58    371
12-15 months   IRC              INDIA                          1                 0     10
12-15 months   IRC              INDIA                          0                10     10
12-15 months   Keneba           GAMBIA                         1              1029   1158
12-15 months   Keneba           GAMBIA                         0               129   1158
12-15 months   MAL-ED           BANGLADESH                     1               136    206
12-15 months   MAL-ED           BANGLADESH                     0                70    206
12-15 months   MAL-ED           BRAZIL                         1                55    165
12-15 months   MAL-ED           BRAZIL                         0               110    165
12-15 months   MAL-ED           INDIA                          1               101    200
12-15 months   MAL-ED           INDIA                          0                99    200
12-15 months   MAL-ED           NEPAL                          1                67    222
12-15 months   MAL-ED           NEPAL                          0               155    222
12-15 months   MAL-ED           PERU                           1                51    222
12-15 months   MAL-ED           PERU                           0               171    222
12-15 months   MAL-ED           SOUTH AFRICA                   1                21    219
12-15 months   MAL-ED           SOUTH AFRICA                   0               198    219
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                40    195
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               155    195
12-15 months   PROVIDE          BANGLADESH                     1               377    532
12-15 months   PROVIDE          BANGLADESH                     0               155    532
12-15 months   SAS-CompFeed     INDIA                          1               346    357
12-15 months   SAS-CompFeed     INDIA                          0                11    357
15-18 months   CMC-V-BCS-2002   INDIA                          1                 8      8
15-18 months   CMC-V-BCS-2002   INDIA                          0                 0      8
15-18 months   EE               PAKISTAN                       1                25     25
15-18 months   EE               PAKISTAN                       0                 0     25
15-18 months   GMS-Nepal        NEPAL                          1               319    379
15-18 months   GMS-Nepal        NEPAL                          0                60    379
15-18 months   IRC              INDIA                          1                 0     10
15-18 months   IRC              INDIA                          0                10     10
15-18 months   Keneba           GAMBIA                         1              1031   1160
15-18 months   Keneba           GAMBIA                         0               129   1160
15-18 months   MAL-ED           BANGLADESH                     1               136    206
15-18 months   MAL-ED           BANGLADESH                     0                70    206
15-18 months   MAL-ED           BRAZIL                         1                53    157
15-18 months   MAL-ED           BRAZIL                         0               104    157
15-18 months   MAL-ED           INDIA                          1               101    201
15-18 months   MAL-ED           INDIA                          0               100    201
15-18 months   MAL-ED           NEPAL                          1                66    219
15-18 months   MAL-ED           NEPAL                          0               153    219
15-18 months   MAL-ED           PERU                           1                50    210
15-18 months   MAL-ED           PERU                           0               160    210
15-18 months   MAL-ED           SOUTH AFRICA                   1                20    218
15-18 months   MAL-ED           SOUTH AFRICA                   0               198    218
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                38    188
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               150    188
15-18 months   PROVIDE          BANGLADESH                     1               376    528
15-18 months   PROVIDE          BANGLADESH                     0               152    528
15-18 months   SAS-CompFeed     INDIA                          1               338    350
15-18 months   SAS-CompFeed     INDIA                          0                12    350
18-21 months   CMC-V-BCS-2002   INDIA                          1                 7      7
18-21 months   CMC-V-BCS-2002   INDIA                          0                 0      7
18-21 months   EE               PAKISTAN                       1                26     26
18-21 months   EE               PAKISTAN                       0                 0     26
18-21 months   GMS-Nepal        NEPAL                          1               295    347
18-21 months   GMS-Nepal        NEPAL                          0                52    347
18-21 months   IRC              INDIA                          1                 0      8
18-21 months   IRC              INDIA                          0                 8      8
18-21 months   Keneba           GAMBIA                         1              1014   1139
18-21 months   Keneba           GAMBIA                         0               125   1139
18-21 months   MAL-ED           BANGLADESH                     1               132    203
18-21 months   MAL-ED           BANGLADESH                     0                71    203
18-21 months   MAL-ED           BRAZIL                         1                52    150
18-21 months   MAL-ED           BRAZIL                         0                98    150
18-21 months   MAL-ED           INDIA                          1               101    201
18-21 months   MAL-ED           INDIA                          0               100    201
18-21 months   MAL-ED           NEPAL                          1                66    219
18-21 months   MAL-ED           NEPAL                          0               153    219
18-21 months   MAL-ED           PERU                           1                47    199
18-21 months   MAL-ED           PERU                           0               152    199
18-21 months   MAL-ED           SOUTH AFRICA                   1                19    225
18-21 months   MAL-ED           SOUTH AFRICA                   0               206    225
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                36    176
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               140    176
18-21 months   PROVIDE          BANGLADESH                     1               383    541
18-21 months   PROVIDE          BANGLADESH                     0               158    541
21-24 months   CMC-V-BCS-2002   INDIA                          1                 9      9
21-24 months   CMC-V-BCS-2002   INDIA                          0                 0      9
21-24 months   EE               PAKISTAN                       1                16     16
21-24 months   EE               PAKISTAN                       0                 0     16
21-24 months   GMS-Nepal        NEPAL                          1               237    279
21-24 months   GMS-Nepal        NEPAL                          0                42    279
21-24 months   IRC              INDIA                          1                 0      8
21-24 months   IRC              INDIA                          0                 8      8
21-24 months   Keneba           GAMBIA                         1               944   1050
21-24 months   Keneba           GAMBIA                         0               106   1050
21-24 months   MAL-ED           BANGLADESH                     1               131    201
21-24 months   MAL-ED           BANGLADESH                     0                70    201
21-24 months   MAL-ED           BRAZIL                         1                52    149
21-24 months   MAL-ED           BRAZIL                         0                97    149
21-24 months   MAL-ED           INDIA                          1               101    201
21-24 months   MAL-ED           INDIA                          0               100    201
21-24 months   MAL-ED           NEPAL                          1                67    219
21-24 months   MAL-ED           NEPAL                          0               152    219
21-24 months   MAL-ED           PERU                           1                42    187
21-24 months   MAL-ED           PERU                           0               145    187
21-24 months   MAL-ED           SOUTH AFRICA                   1                18    226
21-24 months   MAL-ED           SOUTH AFRICA                   0               208    226
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                38    175
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               137    175
21-24 months   PROVIDE          BANGLADESH                     1               334    471
21-24 months   PROVIDE          BANGLADESH                     0               137    471


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
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: IRC, country: INDIA

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/d58ada3e-8bf0-48d2-9709-361a1383d0d5/54732abe-6d41-49f9-9393-32588bbeb3e3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d58ada3e-8bf0-48d2-9709-361a1383d0d5/54732abe-6d41-49f9-9393-32588bbeb3e3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d58ada3e-8bf0-48d2-9709-361a1383d0d5/54732abe-6d41-49f9-9393-32588bbeb3e3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal      NEPAL                          1                    NA                3.5854097   3.5267502   3.6440691
0-3 months     GMS-Nepal      NEPAL                          0                    NA                3.5730108   3.4337806   3.7122411
0-3 months     Keneba         GAMBIA                         1                    NA                3.1066254   3.0528606   3.1603902
0-3 months     Keneba         GAMBIA                         0                    NA                3.0733467   2.9415082   3.2051851
0-3 months     MAL-ED         BANGLADESH                     1                    NA                3.3700492   3.2876306   3.4524678
0-3 months     MAL-ED         BANGLADESH                     0                    NA                3.2570815   3.1449416   3.3692214
0-3 months     MAL-ED         BRAZIL                         1                    NA                3.8984194   3.7000917   4.0967470
0-3 months     MAL-ED         BRAZIL                         0                    NA                3.8036542   3.6612398   3.9460686
0-3 months     MAL-ED         INDIA                          1                    NA                3.4660700   3.3057484   3.6263917
0-3 months     MAL-ED         INDIA                          0                    NA                3.2447845   3.1085322   3.3810368
0-3 months     MAL-ED         NEPAL                          1                    NA                3.4186301   3.2975935   3.5396667
0-3 months     MAL-ED         NEPAL                          0                    NA                3.7189429   3.5966636   3.8412222
0-3 months     MAL-ED         PERU                           1                    NA                3.0410017   2.9045890   3.1774143
0-3 months     MAL-ED         PERU                           0                    NA                3.0543717   2.9773003   3.1314431
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                3.2371404   3.0405692   3.4337115
0-3 months     MAL-ED         SOUTH AFRICA                   0                    NA                3.1919565   3.0845096   3.2994035
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4446944   3.2705667   3.6188222
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                3.1905265   3.0976907   3.2833623
0-3 months     PROVIDE        BANGLADESH                     1                    NA                3.2545100   3.2127692   3.2962508
0-3 months     PROVIDE        BANGLADESH                     0                    NA                3.2651354   3.1893483   3.3409225
0-3 months     SAS-CompFeed   INDIA                          1                    NA                3.3690067   3.3102385   3.4277750
0-3 months     SAS-CompFeed   INDIA                          0                    NA                3.0241617   2.8789993   3.1693241
3-6 months     GMS-Nepal      NEPAL                          1                    NA                1.7251375   1.6796800   1.7705949
3-6 months     GMS-Nepal      NEPAL                          0                    NA                1.6795957   1.5808179   1.7783735
3-6 months     Keneba         GAMBIA                         1                    NA                1.9997225   1.9556318   2.0438131
3-6 months     Keneba         GAMBIA                         0                    NA                1.9454199   1.8331490   2.0576909
3-6 months     MAL-ED         BANGLADESH                     1                    NA                1.9130587   1.8538980   1.9722195
3-6 months     MAL-ED         BANGLADESH                     0                    NA                1.9792989   1.8902849   2.0683129
3-6 months     MAL-ED         BRAZIL                         1                    NA                2.0872867   1.9459983   2.2285751
3-6 months     MAL-ED         BRAZIL                         0                    NA                2.1961102   2.0921833   2.3000371
3-6 months     MAL-ED         INDIA                          1                    NA                1.8904148   1.7928299   1.9879997
3-6 months     MAL-ED         INDIA                          0                    NA                1.8627874   1.7682746   1.9573001
3-6 months     MAL-ED         NEPAL                          1                    NA                1.8533742   1.7559274   1.9508211
3-6 months     MAL-ED         NEPAL                          0                    NA                2.0075643   1.9392592   2.0758694
3-6 months     MAL-ED         PERU                           1                    NA                2.0626339   1.9352349   2.1900328
3-6 months     MAL-ED         PERU                           0                    NA                2.0002862   1.9226281   2.0779443
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                2.0793319   1.8767299   2.2819339
3-6 months     MAL-ED         SOUTH AFRICA                   0                    NA                1.9557039   1.8671051   2.0443027
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8048408   1.6420674   1.9676142
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8476747   1.7696859   1.9256635
3-6 months     PROVIDE        BANGLADESH                     1                    NA                1.9748490   1.9361396   2.0135584
3-6 months     PROVIDE        BANGLADESH                     0                    NA                1.9437417   1.8756723   2.0118111
3-6 months     SAS-CompFeed   INDIA                          1                    NA                1.8960011   1.8158961   1.9761060
3-6 months     SAS-CompFeed   INDIA                          0                    NA                2.0877888   1.7145949   2.4609828
6-9 months     GMS-Nepal      NEPAL                          1                    NA                1.3168430   1.2614480   1.3722379
6-9 months     GMS-Nepal      NEPAL                          0                    NA                1.3054642   1.2196621   1.3912664
6-9 months     Keneba         GAMBIA                         1                    NA                1.4009144   1.3423591   1.4594696
6-9 months     Keneba         GAMBIA                         0                    NA                1.3739648   1.2190262   1.5289034
6-9 months     MAL-ED         BANGLADESH                     1                    NA                1.2488487   1.1977045   1.2999929
6-9 months     MAL-ED         BANGLADESH                     0                    NA                1.2315068   1.1651692   1.2978443
6-9 months     MAL-ED         BRAZIL                         1                    NA                1.5026704   1.3129895   1.6923513
6-9 months     MAL-ED         BRAZIL                         0                    NA                1.4680008   1.3794950   1.5565066
6-9 months     MAL-ED         INDIA                          1                    NA                1.2212967   1.1424672   1.3001261
6-9 months     MAL-ED         INDIA                          0                    NA                1.2622909   1.1891681   1.3354137
6-9 months     MAL-ED         NEPAL                          1                    NA                1.3656213   1.2872083   1.4440342
6-9 months     MAL-ED         NEPAL                          0                    NA                1.3566497   1.3019910   1.4113084
6-9 months     MAL-ED         PERU                           1                    NA                1.3476263   1.2412164   1.4540361
6-9 months     MAL-ED         PERU                           0                    NA                1.3090869   1.2454461   1.3727276
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                1.2020908   1.0332728   1.3709088
6-9 months     MAL-ED         SOUTH AFRICA                   0                    NA                1.4069239   1.3363998   1.4774479
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2379413   1.0613619   1.4145207
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1719024   1.0867672   1.2570376
6-9 months     PROVIDE        BANGLADESH                     1                    NA                1.2734212   1.2438165   1.3030258
6-9 months     PROVIDE        BANGLADESH                     0                    NA                1.3040446   1.2560995   1.3519896
6-9 months     SAS-CompFeed   INDIA                          1                    NA                1.2102272   1.1275127   1.2929417
6-9 months     SAS-CompFeed   INDIA                          0                    NA                1.2065455   0.8980285   1.5150624
9-12 months    GMS-Nepal      NEPAL                          1                    NA                0.9814453   0.9365108   1.0263799
9-12 months    GMS-Nepal      NEPAL                          0                    NA                1.0822767   1.0128175   1.1517359
9-12 months    Keneba         GAMBIA                         1                    NA                0.9804200   0.9332203   1.0276196
9-12 months    Keneba         GAMBIA                         0                    NA                0.9921147   0.8884764   1.0957530
9-12 months    MAL-ED         BANGLADESH                     1                    NA                0.9937258   0.9441704   1.0432812
9-12 months    MAL-ED         BANGLADESH                     0                    NA                0.9908417   0.9267937   1.0548898
9-12 months    MAL-ED         BRAZIL                         1                    NA                1.2954796   1.1699904   1.4209688
9-12 months    MAL-ED         BRAZIL                         0                    NA                1.2830201   1.1805191   1.3855211
9-12 months    MAL-ED         INDIA                          1                    NA                0.9118899   0.8587288   0.9650510
9-12 months    MAL-ED         INDIA                          0                    NA                1.0226778   0.9670728   1.0782829
9-12 months    MAL-ED         NEPAL                          1                    NA                1.0427247   0.9659916   1.1194577
9-12 months    MAL-ED         NEPAL                          0                    NA                1.1052981   1.0555238   1.1550725
9-12 months    MAL-ED         PERU                           1                    NA                1.0735041   0.9670046   1.1800036
9-12 months    MAL-ED         PERU                           0                    NA                1.1077361   1.0493252   1.1661471
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                1.1230721   0.8916246   1.3545197
9-12 months    MAL-ED         SOUTH AFRICA                   0                    NA                0.9829958   0.9155211   1.0504704
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7452010   0.6018564   0.8885456
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8310050   0.7302642   0.9317459
9-12 months    PROVIDE        BANGLADESH                     1                    NA                1.0325791   1.0009905   1.0641678
9-12 months    PROVIDE        BANGLADESH                     0                    NA                1.0918927   1.0409045   1.1428809
9-12 months    SAS-CompFeed   INDIA                          1                    NA                0.9737894   0.9007528   1.0468260
9-12 months    SAS-CompFeed   INDIA                          0                    NA                1.2192187   0.9749390   1.4634984
12-15 months   GMS-Nepal      NEPAL                          1                    NA                0.8744126   0.8441716   0.9046536
12-15 months   GMS-Nepal      NEPAL                          0                    NA                0.8482484   0.7675866   0.9289101
12-15 months   Keneba         GAMBIA                         1                    NA                0.9554729   0.9212395   0.9897063
12-15 months   Keneba         GAMBIA                         0                    NA                0.8769182   0.7941032   0.9597331
12-15 months   MAL-ED         BANGLADESH                     1                    NA                0.8824876   0.8348447   0.9301306
12-15 months   MAL-ED         BANGLADESH                     0                    NA                0.9835282   0.9077134   1.0593429
12-15 months   MAL-ED         BRAZIL                         1                    NA                1.1526812   1.0608364   1.2445261
12-15 months   MAL-ED         BRAZIL                         0                    NA                1.1456548   1.0683859   1.2229237
12-15 months   MAL-ED         INDIA                          1                    NA                0.8787104   0.8182611   0.9391598
12-15 months   MAL-ED         INDIA                          0                    NA                0.9272720   0.8689069   0.9856371
12-15 months   MAL-ED         NEPAL                          1                    NA                0.9475343   0.8764496   1.0186191
12-15 months   MAL-ED         NEPAL                          0                    NA                0.9526130   0.9038314   1.0013946
12-15 months   MAL-ED         PERU                           1                    NA                0.8893666   0.8068610   0.9718721
12-15 months   MAL-ED         PERU                           0                    NA                0.8901012   0.8352165   0.9449859
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.9242513   0.7517263   1.0967763
12-15 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.9195803   0.8565269   0.9826337
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7537477   0.6322217   0.8752738
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8878046   0.8070214   0.9685879
12-15 months   PROVIDE        BANGLADESH                     1                    NA                0.9466870   0.9161162   0.9772579
12-15 months   PROVIDE        BANGLADESH                     0                    NA                0.9915226   0.9415453   1.0415000
12-15 months   SAS-CompFeed   INDIA                          1                    NA                0.8468877   0.7712286   0.9225469
12-15 months   SAS-CompFeed   INDIA                          0                    NA                0.6441206   0.3660282   0.9222130
15-18 months   GMS-Nepal      NEPAL                          1                    NA                0.7857707   0.7436395   0.8279020
15-18 months   GMS-Nepal      NEPAL                          0                    NA                0.6955459   0.6386142   0.7524777
15-18 months   Keneba         GAMBIA                         1                    NA                0.8864785   0.8504200   0.9225371
15-18 months   Keneba         GAMBIA                         0                    NA                0.8681245   0.7574406   0.9788085
15-18 months   MAL-ED         BANGLADESH                     1                    NA                0.8380309   0.7895435   0.8865184
15-18 months   MAL-ED         BANGLADESH                     0                    NA                0.7936720   0.7370918   0.8502523
15-18 months   MAL-ED         BRAZIL                         1                    NA                0.9769332   0.8727328   1.0811336
15-18 months   MAL-ED         BRAZIL                         0                    NA                0.9844136   0.9081525   1.0606747
15-18 months   MAL-ED         INDIA                          1                    NA                0.8219019   0.7705766   0.8732271
15-18 months   MAL-ED         INDIA                          0                    NA                0.8833658   0.8269944   0.9397372
15-18 months   MAL-ED         NEPAL                          1                    NA                0.7988032   0.7224653   0.8751411
15-18 months   MAL-ED         NEPAL                          0                    NA                0.8548613   0.8035319   0.9061908
15-18 months   MAL-ED         PERU                           1                    NA                0.7989779   0.7143871   0.8835688
15-18 months   MAL-ED         PERU                           0                    NA                0.8691199   0.8204268   0.9178130
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.8414964   0.6763557   1.0066372
15-18 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.8866414   0.8303639   0.9429189
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7154012   0.5640595   0.8667429
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6667293   0.5943221   0.7391365
15-18 months   PROVIDE        BANGLADESH                     1                    NA                0.8646195   0.8357089   0.8935301
15-18 months   PROVIDE        BANGLADESH                     0                    NA                0.8350248   0.7917866   0.8782630
15-18 months   SAS-CompFeed   INDIA                          1                    NA                0.8872527   0.8309028   0.9436025
15-18 months   SAS-CompFeed   INDIA                          0                    NA                0.9941699   0.4944769   1.4938630
18-21 months   GMS-Nepal      NEPAL                          1                    NA                0.9113896   0.8651505   0.9576288
18-21 months   GMS-Nepal      NEPAL                          0                    NA                0.9452313   0.8771007   1.0133619
18-21 months   Keneba         GAMBIA                         1                    NA                0.8124394   0.7728086   0.8520702
18-21 months   Keneba         GAMBIA                         0                    NA                0.8440163   0.7251864   0.9628463
18-21 months   MAL-ED         BANGLADESH                     1                    NA                0.8042315   0.7577826   0.8506803
18-21 months   MAL-ED         BANGLADESH                     0                    NA                0.8262246   0.7753877   0.8770614
18-21 months   MAL-ED         BRAZIL                         1                    NA                0.8970228   0.7637242   1.0303213
18-21 months   MAL-ED         BRAZIL                         0                    NA                0.9350111   0.8508672   1.0191551
18-21 months   MAL-ED         INDIA                          1                    NA                0.8423926   0.7910254   0.8937599
18-21 months   MAL-ED         INDIA                          0                    NA                0.9015273   0.8461727   0.9568818
18-21 months   MAL-ED         NEPAL                          1                    NA                0.8199515   0.7525088   0.8873941
18-21 months   MAL-ED         NEPAL                          0                    NA                0.8184318   0.7704241   0.8664395
18-21 months   MAL-ED         PERU                           1                    NA                0.8695821   0.7808510   0.9583132
18-21 months   MAL-ED         PERU                           0                    NA                0.8356137   0.7838471   0.8873803
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.8645564   0.7120453   1.0170675
18-21 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.7749381   0.7145851   0.8352910
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7688078   0.6071584   0.9304573
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7360260   0.6542227   0.8178293
18-21 months   PROVIDE        BANGLADESH                     1                    NA                0.8316247   0.8026896   0.8605597
18-21 months   PROVIDE        BANGLADESH                     0                    NA                0.8580344   0.8154274   0.9006415
21-24 months   GMS-Nepal      NEPAL                          1                    NA                0.8050680   0.7473302   0.8628058
21-24 months   GMS-Nepal      NEPAL                          0                    NA                0.6985969   0.5952960   0.8018978
21-24 months   Keneba         GAMBIA                         1                    NA                0.7145351   0.6759873   0.7530828
21-24 months   Keneba         GAMBIA                         0                    NA                0.6879477   0.6090070   0.7668885
21-24 months   MAL-ED         BANGLADESH                     1                    NA                0.7891485   0.7416388   0.8366582
21-24 months   MAL-ED         BANGLADESH                     0                    NA                0.7198326   0.6694189   0.7702463
21-24 months   MAL-ED         BRAZIL                         1                    NA                0.7684827   0.6891686   0.8477969
21-24 months   MAL-ED         BRAZIL                         0                    NA                0.8031103   0.7468761   0.8593446
21-24 months   MAL-ED         INDIA                          1                    NA                0.8259064   0.7804048   0.8714080
21-24 months   MAL-ED         INDIA                          0                    NA                0.8296882   0.7816614   0.8777149
21-24 months   MAL-ED         NEPAL                          1                    NA                0.8003888   0.7291250   0.8716526
21-24 months   MAL-ED         NEPAL                          0                    NA                0.7817912   0.7306124   0.8329700
21-24 months   MAL-ED         PERU                           1                    NA                0.7296739   0.6384702   0.8208775
21-24 months   MAL-ED         PERU                           0                    NA                0.7731119   0.7182760   0.8279478
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.8259969   0.7072363   0.9447574
21-24 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.8433180   0.7864419   0.9001942
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7650287   0.6399828   0.8900746
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7069056   0.6228523   0.7909590
21-24 months   PROVIDE        BANGLADESH                     1                    NA                0.7609878   0.7306162   0.7913594
21-24 months   PROVIDE        BANGLADESH                     0                    NA                0.7683836   0.7221443   0.8146230


### Parameter: E(Y)


agecat         studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal      NEPAL                          NA                   NA                3.5832888   3.5291425   3.6374351
0-3 months     Keneba         GAMBIA                         NA                   NA                3.1023487   3.0525201   3.1521774
0-3 months     MAL-ED         BANGLADESH                     NA                   NA                3.3300100   3.2632400   3.3967800
0-3 months     MAL-ED         BRAZIL                         NA                   NA                3.8333086   3.7172183   3.9493989
0-3 months     MAL-ED         INDIA                          NA                   NA                3.3581259   3.2511263   3.4651254
0-3 months     MAL-ED         NEPAL                          NA                   NA                3.6149130   3.5218465   3.7079794
0-3 months     MAL-ED         PERU                           NA                   NA                3.0514630   2.9842485   3.1186774
0-3 months     MAL-ED         SOUTH AFRICA                   NA                   NA                3.1964081   3.0976125   3.2952037
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2460048   3.1627741   3.3292354
0-3 months     PROVIDE        BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     SAS-CompFeed   INDIA                          NA                   NA                3.3522434   3.2847848   3.4197021
3-6 months     GMS-Nepal      NEPAL                          NA                   NA                1.7175472   1.6762113   1.7588831
3-6 months     Keneba         GAMBIA                         NA                   NA                1.9933115   1.9522179   2.0344050
3-6 months     MAL-ED         BANGLADESH                     NA                   NA                1.9360220   1.8863911   1.9856528
3-6 months     MAL-ED         BRAZIL                         NA                   NA                2.1610058   2.0768189   2.2451928
3-6 months     MAL-ED         INDIA                          NA                   NA                1.8774058   1.8092128   1.9455987
3-6 months     MAL-ED         NEPAL                          NA                   NA                1.9604886   1.9037186   2.0172585
3-6 months     MAL-ED         PERU                           NA                   NA                2.0146923   1.9480408   2.0813438
3-6 months     MAL-ED         SOUTH AFRICA                   NA                   NA                1.9673270   1.8846989   2.0499551
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8384078   1.7678309   1.9089846
3-6 months     PROVIDE        BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     SAS-CompFeed   INDIA                          NA                   NA                1.9051097   1.8384221   1.9717974
6-9 months     GMS-Nepal      NEPAL                          NA                   NA                1.3149164   1.2666599   1.3631729
6-9 months     Keneba         GAMBIA                         NA                   NA                1.3980094   1.3431582   1.4528606
6-9 months     MAL-ED         BANGLADESH                     NA                   NA                1.2426951   1.2021480   1.2832422
6-9 months     MAL-ED         BRAZIL                         NA                   NA                1.4793615   1.3932814   1.5654415
6-9 months     MAL-ED         INDIA                          NA                   NA                1.2410939   1.1870908   1.2950970
6-9 months     MAL-ED         NEPAL                          NA                   NA                1.3593977   1.3145109   1.4042846
6-9 months     MAL-ED         PERU                           NA                   NA                1.3181643   1.2633979   1.3729307
6-9 months     MAL-ED         SOUTH AFRICA                   NA                   NA                1.3866251   1.3204306   1.4528196
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1862735   1.1092792   1.2632679
6-9 months     PROVIDE        BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     SAS-CompFeed   INDIA                          NA                   NA                1.2100652   1.1296030   1.2905275
9-12 months    GMS-Nepal      NEPAL                          NA                   NA                0.9981577   0.9587526   1.0375629
9-12 months    Keneba         GAMBIA                         NA                   NA                0.9817054   0.9381761   1.0252348
9-12 months    MAL-ED         BANGLADESH                     NA                   NA                0.9927203   0.9534705   1.0319702
9-12 months    MAL-ED         BRAZIL                         NA                   NA                1.2871495   1.2069822   1.3673169
9-12 months    MAL-ED         INDIA                          NA                   NA                0.9664571   0.9272553   1.0056589
9-12 months    MAL-ED         NEPAL                          NA                   NA                1.0863279   1.0443920   1.1282637
9-12 months    MAL-ED         PERU                           NA                   NA                1.0996556   1.0484043   1.1509069
9-12 months    MAL-ED         SOUTH AFRICA                   NA                   NA                0.9974431   0.9321487   1.0627375
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8135761   0.7280408   0.8991114
9-12 months    PROVIDE        BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    SAS-CompFeed   INDIA                          NA                   NA                0.9826276   0.9088962   1.0563590
12-15 months   GMS-Nepal      NEPAL                          NA                   NA                0.8703223   0.8418462   0.8987983
12-15 months   Keneba         GAMBIA                         NA                   NA                0.9467220   0.9149021   0.9785418
12-15 months   MAL-ED         BANGLADESH                     NA                   NA                0.9168218   0.8756400   0.9580036
12-15 months   MAL-ED         BRAZIL                         NA                   NA                1.1479969   1.0880713   1.2079226
12-15 months   MAL-ED         INDIA                          NA                   NA                0.9027484   0.8605827   0.9449141
12-15 months   MAL-ED         NEPAL                          NA                   NA                0.9510803   0.9108264   0.9913342
12-15 months   MAL-ED         PERU                           NA                   NA                0.8899324   0.8436019   0.9362629
12-15 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.9200282   0.8606688   0.9793876
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8603058   0.7910045   0.9296071
12-15 months   PROVIDE        BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-CompFeed   INDIA                          NA                   NA                0.8406400   0.7684485   0.9128315
15-18 months   GMS-Nepal      NEPAL                          NA                   NA                0.7714871   0.7347479   0.8082263
15-18 months   Keneba         GAMBIA                         NA                   NA                0.8844374   0.8501048   0.9187701
15-18 months   MAL-ED         BANGLADESH                     NA                   NA                0.8229575   0.7855057   0.8604093
15-18 months   MAL-ED         BRAZIL                         NA                   NA                0.9818884   0.9203285   1.0434482
15-18 months   MAL-ED         INDIA                          NA                   NA                0.8524809   0.8141426   0.8908193
15-18 months   MAL-ED         NEPAL                          NA                   NA                0.8379671   0.7952249   0.8807093
15-18 months   MAL-ED         PERU                           NA                   NA                0.8524194   0.8100116   0.8948273
15-18 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.8824996   0.8291590   0.9358403
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6765672   0.6111365   0.7419980
15-18 months   PROVIDE        BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   SAS-CompFeed   INDIA                          NA                   NA                0.8909184   0.8304593   0.9513775
18-21 months   GMS-Nepal      NEPAL                          NA                   NA                0.9164610   0.8758269   0.9570951
18-21 months   Keneba         GAMBIA                         NA                   NA                0.8159048   0.7782859   0.8535238
18-21 months   MAL-ED         BANGLADESH                     NA                   NA                0.8119236   0.7768456   0.8470016
18-21 months   MAL-ED         BRAZIL                         NA                   NA                0.9218418   0.8499673   0.9937164
18-21 months   MAL-ED         INDIA                          NA                   NA                0.8718128   0.8338464   0.9097793
18-21 months   MAL-ED         NEPAL                          NA                   NA                0.8188898   0.7796721   0.8581075
18-21 months   MAL-ED         PERU                           NA                   NA                0.8436364   0.7988407   0.8884321
18-21 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.7825058   0.7256746   0.8393371
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7427314   0.6697155   0.8157473
18-21 months   PROVIDE        BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   GMS-Nepal      NEPAL                          NA                   NA                0.7890401   0.7373935   0.8406867
21-24 months   Keneba         GAMBIA                         NA                   NA                0.7118510   0.6762870   0.7474150
21-24 months   MAL-ED         BANGLADESH                     NA                   NA                0.7650086   0.7291204   0.8008969
21-24 months   MAL-ED         BRAZIL                         NA                   NA                0.7910255   0.7450530   0.8369980
21-24 months   MAL-ED         INDIA                          NA                   NA                0.8277879   0.7947160   0.8608598
21-24 months   MAL-ED         NEPAL                          NA                   NA                0.7874809   0.7457868   0.8291749
21-24 months   MAL-ED         PERU                           NA                   NA                0.7633557   0.7160871   0.8106244
21-24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.8419384   0.7887410   0.8951359
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7195266   0.6482537   0.7907995
21-24 months   PROVIDE        BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal      NEPAL                          0                    1                 -0.0123988   -0.1634815    0.1386839
0-3 months     Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba         GAMBIA                         0                    1                 -0.0332788   -0.1756586    0.1091011
0-3 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH                     0                    1                 -0.1129677   -0.2521373    0.0262019
0-3 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL                         0                    1                 -0.0947652   -0.3389285    0.1493981
0-3 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         INDIA                          0                    1                 -0.2212855   -0.4316845   -0.0108865
0-3 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         NEPAL                          0                    1                  0.3003128    0.1282603    0.4723654
0-3 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         PERU                           0                    1                  0.0133700   -0.1433093    0.1700494
0-3 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         SOUTH AFRICA                   0                    1                 -0.0451838   -0.2692040    0.1788364
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2541679   -0.4514975   -0.0568384
0-3 months     PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE        BANGLADESH                     0                    1                  0.0106253   -0.0758962    0.0971469
0-3 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA                          0                    1                 -0.3448451   -0.4888470   -0.2008431
3-6 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL                          0                    1                 -0.0455418   -0.1542774    0.0631938
3-6 months     Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba         GAMBIA                         0                    1                 -0.0543025   -0.1749207    0.0663157
3-6 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH                     0                    1                  0.0662401   -0.0406406    0.1731208
3-6 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL                         0                    1                  0.1088235   -0.0665709    0.2842179
3-6 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         INDIA                          0                    1                 -0.0276274   -0.1634783    0.1082235
3-6 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         NEPAL                          0                    1                  0.1541901    0.0351881    0.2731920
3-6 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU                           0                    1                 -0.0623477   -0.2115498    0.0868544
3-6 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         SOUTH AFRICA                   0                    1                 -0.1236280   -0.3447553    0.0974993
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0428339   -0.1376582    0.2233261
3-6 months     PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE        BANGLADESH                     0                    1                 -0.0311073   -0.1094135    0.0471989
3-6 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA                          0                    1                  0.1917877   -0.2223652    0.6059407
6-9 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL                          0                    1                 -0.0113787   -0.1135091    0.0907516
6-9 months     Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba         GAMBIA                         0                    1                 -0.0269496   -0.1925838    0.1386846
6-9 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH                     0                    1                 -0.0173419   -0.1011059    0.0664221
6-9 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL                         0                    1                 -0.0346696   -0.2439830    0.1746438
6-9 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         INDIA                          0                    1                  0.0409942   -0.0665280    0.1485165
6-9 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL                          0                    1                 -0.0089716   -0.1045548    0.0866117
6-9 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU                           0                    1                 -0.0385394   -0.1625281    0.0854493
6-9 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.2048331    0.0218763    0.3877898
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0660389   -0.2620702    0.1299925
6-9 months     PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE        BANGLADESH                     0                    1                  0.0306234   -0.0257252    0.0869720
6-9 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA                          0                    1                 -0.0036818   -0.3214634    0.3140999
9-12 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL                          0                    1                  0.1008313    0.0181047    0.1835580
9-12 months    Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba         GAMBIA                         0                    1                  0.0116948   -0.1021854    0.1255750
9-12 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH                     0                    1                 -0.0028841   -0.0838649    0.0780967
9-12 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL                         0                    1                 -0.0124595   -0.1744903    0.1495713
9-12 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         INDIA                          0                    1                  0.1107879    0.0338592    0.1877167
9-12 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         NEPAL                          0                    1                  0.0625735   -0.0288894    0.1540363
9-12 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU                           0                    1                  0.0342320   -0.0872339    0.1556980
9-12 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         SOUTH AFRICA                   0                    1                 -0.1400763   -0.3811589    0.1010062
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0858040   -0.0893998    0.2610079
9-12 months    PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE        BANGLADESH                     0                    1                  0.0593136   -0.0006667    0.1192939
9-12 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA                          0                    1                  0.2454293    0.0355874    0.4552712
12-15 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL                          0                    1                 -0.0261642   -0.1123085    0.0599800
12-15 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba         GAMBIA                         0                    1                 -0.0785547   -0.1681664    0.0110569
12-15 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH                     0                    1                  0.1010405    0.0114988    0.1905823
12-15 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL                         0                    1                 -0.0070264   -0.1270513    0.1129984
12-15 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         INDIA                          0                    1                  0.0485616   -0.0354659    0.1325890
12-15 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         NEPAL                          0                    1                  0.0050787   -0.0811344    0.0912917
12-15 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         PERU                           0                    1                  0.0007346   -0.0983587    0.0998280
12-15 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.0046710   -0.1883572    0.1790152
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1340569   -0.0118695    0.2799833
12-15 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE        BANGLADESH                     0                    1                  0.0448356   -0.0137503    0.1034215
12-15 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA                          0                    1                 -0.2027671   -0.5054467    0.0999125
15-18 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL                          0                    1                 -0.0902248   -0.1610504   -0.0193992
15-18 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba         GAMBIA                         0                    1                 -0.0183540   -0.1347634    0.0980554
15-18 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH                     0                    1                 -0.0443589   -0.1188730    0.0301553
15-18 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL                         0                    1                  0.0074804   -0.1216454    0.1366063
15-18 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         INDIA                          0                    1                  0.0614639   -0.0147727    0.1377005
15-18 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL                          0                    1                  0.0560582   -0.0359320    0.1480483
15-18 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         PERU                           0                    1                  0.0701419   -0.0274625    0.1677464
15-18 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0451449   -0.1293217    0.2196116
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0486719   -0.2164429    0.1190992
15-18 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE        BANGLADESH                     0                    1                 -0.0295947   -0.0816078    0.0224184
15-18 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed   INDIA                          0                    1                  0.1069173   -0.3834438    0.5972783
18-21 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal      NEPAL                          0                    1                  0.0338417   -0.0484981    0.1161814
18-21 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba         GAMBIA                         0                    1                  0.0315769   -0.0936874    0.1568413
18-21 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BANGLADESH                     0                    1                  0.0219931   -0.0468682    0.0908544
18-21 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL                         0                    1                  0.0379883   -0.1196464    0.1956231
18-21 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         INDIA                          0                    1                  0.0591346   -0.0163817    0.1346510
18-21 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL                          0                    1                 -0.0015196   -0.0843040    0.0812647
18-21 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         PERU                           0                    1                 -0.0339684   -0.1366961    0.0687594
18-21 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.0896183   -0.2536370    0.0744003
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0327819   -0.2139512    0.1483875
18-21 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE        BANGLADESH                     0                    1                  0.0264097   -0.0250936    0.0779131
21-24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL                          0                    1                 -0.1064711   -0.2248126    0.0118704
21-24 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba         GAMBIA                         0                    1                 -0.0265873   -0.1144370    0.0612624
21-24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH                     0                    1                 -0.0693159   -0.1385887   -0.0000432
21-24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL                         0                    1                  0.0346276   -0.0625991    0.1318543
21-24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         INDIA                          0                    1                  0.0037818   -0.0623768    0.0699404
21-24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL                          0                    1                 -0.0185975   -0.1063346    0.0691396
21-24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         PERU                           0                    1                  0.0434380   -0.0629814    0.1498574
21-24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0173211   -0.1143563    0.1489986
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0581231   -0.2087930    0.0925469
21-24 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE        BANGLADESH                     0                    1                  0.0073958   -0.0479260    0.0627177


### Parameter: PAR


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL                          1                    NA                -0.0021209   -0.0279675    0.0237258
0-3 months     Keneba         GAMBIA                         1                    NA                -0.0042767   -0.0225851    0.0140317
0-3 months     MAL-ED         BANGLADESH                     1                    NA                -0.0400392   -0.0898446    0.0097662
0-3 months     MAL-ED         BRAZIL                         1                    NA                -0.0651108   -0.2330206    0.1027991
0-3 months     MAL-ED         INDIA                          1                    NA                -0.1079442   -0.2119730   -0.0039153
0-3 months     MAL-ED         NEPAL                          1                    NA                 0.1962829    0.0815587    0.3110071
0-3 months     MAL-ED         PERU                           1                    NA                 0.0104613   -0.1121332    0.1330557
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.0407322   -0.2426900    0.1612256
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1986897   -0.3536460   -0.0437333
0-3 months     PROVIDE        BANGLADESH                     1                    NA                 0.0031710   -0.0226530    0.0289950
0-3 months     SAS-CompFeed   INDIA                          1                    NA                -0.0167633   -0.0274939   -0.0060327
3-6 months     GMS-Nepal      NEPAL                          1                    NA                -0.0075903   -0.0257856    0.0106050
3-6 months     Keneba         GAMBIA                         1                    NA                -0.0064110   -0.0206837    0.0078617
3-6 months     MAL-ED         BANGLADESH                     1                    NA                 0.0229632   -0.0143180    0.0602445
3-6 months     MAL-ED         BRAZIL                         1                    NA                 0.0737191   -0.0453224    0.1927606
3-6 months     MAL-ED         INDIA                          1                    NA                -0.0130090   -0.0770055    0.0509875
3-6 months     MAL-ED         NEPAL                          1                    NA                 0.1071143    0.0239258    0.1903029
3-6 months     MAL-ED         PERU                           1                    NA                -0.0479416   -0.1627129    0.0668297
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.1120049   -0.3123960    0.0883863
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0335670   -0.1078968    0.1750308
3-6 months     PROVIDE        BANGLADESH                     1                    NA                -0.0091033   -0.0320471    0.0138405
3-6 months     SAS-CompFeed   INDIA                          1                    NA                 0.0091087   -0.0137757    0.0319930
6-9 months     GMS-Nepal      NEPAL                          1                    NA                -0.0019266   -0.0192238    0.0153707
6-9 months     Keneba         GAMBIA                         1                    NA                -0.0029050   -0.0207688    0.0149589
6-9 months     MAL-ED         BANGLADESH                     1                    NA                -0.0061536   -0.0358969    0.0235897
6-9 months     MAL-ED         BRAZIL                         1                    NA                -0.0233089   -0.1640543    0.1174364
6-9 months     MAL-ED         INDIA                          1                    NA                 0.0197972   -0.0322042    0.0717986
6-9 months     MAL-ED         NEPAL                          1                    NA                -0.0062235   -0.0725313    0.0600842
6-9 months     MAL-ED         PERU                           1                    NA                -0.0294619   -0.1242691    0.0653453
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.1845343    0.0195110    0.3495576
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0516677   -0.2050878    0.1017524
6-9 months     PROVIDE        BANGLADESH                     1                    NA                 0.0089973   -0.0075982    0.0255928
6-9 months     SAS-CompFeed   INDIA                          1                    NA                -0.0001620   -0.0141436    0.0138197
9-12 months    GMS-Nepal      NEPAL                          1                    NA                 0.0167124    0.0024657    0.0309590
9-12 months    Keneba         GAMBIA                         1                    NA                 0.0012855   -0.0112349    0.0138059
9-12 months    MAL-ED         BANGLADESH                     1                    NA                -0.0010055   -0.0292379    0.0272270
9-12 months    MAL-ED         BRAZIL                         1                    NA                -0.0083301   -0.1166627    0.1000026
9-12 months    MAL-ED         INDIA                          1                    NA                 0.0545672    0.0159072    0.0932272
9-12 months    MAL-ED         NEPAL                          1                    NA                 0.0436032   -0.0202443    0.1074507
9-12 months    MAL-ED         PERU                           1                    NA                 0.0261515   -0.0666611    0.1189641
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.1256290   -0.3419192    0.0906612
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0683751   -0.0713263    0.2080765
9-12 months    PROVIDE        BANGLADESH                     1                    NA                 0.0173959   -0.0003359    0.0351276
9-12 months    SAS-CompFeed   INDIA                          1                    NA                 0.0088382    0.0007584    0.0169180
12-15 months   GMS-Nepal      NEPAL                          1                    NA                -0.0040904   -0.0175924    0.0094117
12-15 months   Keneba         GAMBIA                         1                    NA                -0.0087509   -0.0188346    0.0013328
12-15 months   MAL-ED         BANGLADESH                     1                    NA                 0.0343342    0.0032101    0.0654582
12-15 months   MAL-ED         BRAZIL                         1                    NA                -0.0046843   -0.0847024    0.0753339
12-15 months   MAL-ED         INDIA                          1                    NA                 0.0240380   -0.0176922    0.0657681
12-15 months   MAL-ED         NEPAL                          1                    NA                 0.0035459   -0.0566486    0.0637405
12-15 months   MAL-ED         PERU                           1                    NA                 0.0005659   -0.0757628    0.0768945
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0042231   -0.1702956    0.1618494
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1065581   -0.0096845    0.2228007
12-15 months   PROVIDE        BANGLADESH                     1                    NA                 0.0130630   -0.0040939    0.0302199
12-15 months   SAS-CompFeed   INDIA                          1                    NA                -0.0062477   -0.0163716    0.0038761
15-18 months   GMS-Nepal      NEPAL                          1                    NA                -0.0142836   -0.0259773   -0.0025899
15-18 months   Keneba         GAMBIA                         1                    NA                -0.0020411   -0.0149909    0.0109087
15-18 months   MAL-ED         BANGLADESH                     1                    NA                -0.0150734   -0.0405566    0.0104098
15-18 months   MAL-ED         BRAZIL                         1                    NA                 0.0049552   -0.0805822    0.0904926
15-18 months   MAL-ED         INDIA                          1                    NA                 0.0305791   -0.0075880    0.0687461
15-18 months   MAL-ED         NEPAL                          1                    NA                 0.0391639   -0.0251938    0.1035217
15-18 months   MAL-ED         PERU                           1                    NA                 0.0534415   -0.0210340    0.1279170
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0410032   -0.1174668    0.1994732
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0388339   -0.1727231    0.0950552
15-18 months   PROVIDE        BANGLADESH                     1                    NA                -0.0085197   -0.0235368    0.0064974
15-18 months   SAS-CompFeed   INDIA                          1                    NA                 0.0036657   -0.0131608    0.0204923
18-21 months   GMS-Nepal      NEPAL                          1                    NA                 0.0050714   -0.0073332    0.0174759
18-21 months   Keneba         GAMBIA                         1                    NA                 0.0034654   -0.0102937    0.0172246
18-21 months   MAL-ED         BANGLADESH                     1                    NA                 0.0076922   -0.0164357    0.0318201
18-21 months   MAL-ED         BRAZIL                         1                    NA                 0.0248190   -0.0782099    0.1278480
18-21 months   MAL-ED         INDIA                          1                    NA                 0.0294202   -0.0083729    0.0672133
18-21 months   MAL-ED         NEPAL                          1                    NA                -0.0010617   -0.0588974    0.0567741
18-21 months   MAL-ED         PERU                           1                    NA                -0.0259457   -0.1044368    0.0525455
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0820506   -0.2322542    0.0681530
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0260765   -0.1702018    0.1180488
18-21 months   PROVIDE        BANGLADESH                     1                    NA                 0.0077130   -0.0073627    0.0227887
21-24 months   GMS-Nepal      NEPAL                          1                    NA                -0.0160279   -0.0343964    0.0023405
21-24 months   Keneba         GAMBIA                         1                    NA                -0.0026841   -0.0115659    0.0061978
21-24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0241399   -0.0486950    0.0004153
21-24 months   MAL-ED         BRAZIL                         1                    NA                 0.0225428   -0.0408083    0.0858938
21-24 months   MAL-ED         INDIA                          1                    NA                 0.0018815   -0.0310343    0.0347973
21-24 months   MAL-ED         NEPAL                          1                    NA                -0.0129079   -0.0738136    0.0479979
21-24 months   MAL-ED         PERU                           1                    NA                 0.0336819   -0.0488769    0.1162407
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0159416   -0.1052499    0.1371330
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0455020   -0.1635089    0.0725048
21-24 months   PROVIDE        BANGLADESH                     1                    NA                 0.0021512   -0.0139431    0.0182456
