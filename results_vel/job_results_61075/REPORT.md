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

**Intervention Variable:** pers_wast

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

agecat         studyid          country                        pers_wast    n_cell      n
-------------  ---------------  -----------------------------  ----------  -------  -----
0-3 months     CMC-V-BCS-2002   INDIA                          0                79     88
0-3 months     CMC-V-BCS-2002   INDIA                          1                 9     88
0-3 months     CMIN             BANGLADESH                     0                41     43
0-3 months     CMIN             BANGLADESH                     1                 2     43
0-3 months     CONTENT          PERU                           0                29     29
0-3 months     CONTENT          PERU                           1                 0     29
0-3 months     EE               PAKISTAN                       0               284    303
0-3 months     EE               PAKISTAN                       1                19    303
0-3 months     GMS-Nepal        NEPAL                          0               450    509
0-3 months     GMS-Nepal        NEPAL                          1                59    509
0-3 months     IRC              INDIA                          0               310    376
0-3 months     IRC              INDIA                          1                66    376
0-3 months     Keneba           GAMBIA                         0              1217   1257
0-3 months     Keneba           GAMBIA                         1                40   1257
0-3 months     MAL-ED           BANGLADESH                     0               236    243
0-3 months     MAL-ED           BANGLADESH                     1                 7    243
0-3 months     MAL-ED           BRAZIL                         0               168    168
0-3 months     MAL-ED           BRAZIL                         1                 0    168
0-3 months     MAL-ED           INDIA                          0               170    183
0-3 months     MAL-ED           INDIA                          1                13    183
0-3 months     MAL-ED           NEPAL                          0               154    156
0-3 months     MAL-ED           NEPAL                          1                 2    156
0-3 months     MAL-ED           PERU                           0               265    265
0-3 months     MAL-ED           PERU                           1                 0    265
0-3 months     MAL-ED           SOUTH AFRICA                   0               209    211
0-3 months     MAL-ED           SOUTH AFRICA                   1                 2    211
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               228    228
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    228
0-3 months     PROVIDE          BANGLADESH                     0               625    640
0-3 months     PROVIDE          BANGLADESH                     1                15    640
0-3 months     ResPak           PAKISTAN                       0                71     78
0-3 months     ResPak           PAKISTAN                       1                 7     78
3-6 months     CMC-V-BCS-2002   INDIA                          0               263    307
3-6 months     CMC-V-BCS-2002   INDIA                          1                44    307
3-6 months     CMIN             BANGLADESH                     0               175    185
3-6 months     CMIN             BANGLADESH                     1                10    185
3-6 months     CONTENT          PERU                           0               214    214
3-6 months     CONTENT          PERU                           1                 0    214
3-6 months     EE               PAKISTAN                       0               262    280
3-6 months     EE               PAKISTAN                       1                18    280
3-6 months     GMS-Nepal        NEPAL                          0               416    469
3-6 months     GMS-Nepal        NEPAL                          1                53    469
3-6 months     IRC              INDIA                          0               329    396
3-6 months     IRC              INDIA                          1                67    396
3-6 months     Keneba           GAMBIA                         0              1338   1384
3-6 months     Keneba           GAMBIA                         1                46   1384
3-6 months     MAL-ED           BANGLADESH                     0               226    231
3-6 months     MAL-ED           BANGLADESH                     1                 5    231
3-6 months     MAL-ED           BRAZIL                         0               207    208
3-6 months     MAL-ED           BRAZIL                         1                 1    208
3-6 months     MAL-ED           INDIA                          0               212    230
3-6 months     MAL-ED           INDIA                          1                18    230
3-6 months     MAL-ED           NEPAL                          0               228    233
3-6 months     MAL-ED           NEPAL                          1                 5    233
3-6 months     MAL-ED           PERU                           0               267    267
3-6 months     MAL-ED           PERU                           1                 0    267
3-6 months     MAL-ED           SOUTH AFRICA                   0               241    243
3-6 months     MAL-ED           SOUTH AFRICA                   1                 2    243
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               239    239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    239
3-6 months     PROVIDE          BANGLADESH                     0               584    598
3-6 months     PROVIDE          BANGLADESH                     1                14    598
3-6 months     ResPak           PAKISTAN                       0               139    153
3-6 months     ResPak           PAKISTAN                       1                14    153
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1614   1660
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                46   1660
6-9 months     CMC-V-BCS-2002   INDIA                          0               266    312
6-9 months     CMC-V-BCS-2002   INDIA                          1                46    312
6-9 months     CMIN             BANGLADESH                     0               173    177
6-9 months     CMIN             BANGLADESH                     1                 4    177
6-9 months     CONTENT          PERU                           0               214    214
6-9 months     CONTENT          PERU                           1                 0    214
6-9 months     EE               PAKISTAN                       0               283    304
6-9 months     EE               PAKISTAN                       1                21    304
6-9 months     GMS-Nepal        NEPAL                          0               428    478
6-9 months     GMS-Nepal        NEPAL                          1                50    478
6-9 months     Guatemala BSC    GUATEMALA                      0               195    198
6-9 months     Guatemala BSC    GUATEMALA                      1                 3    198
6-9 months     IRC              INDIA                          0               337    406
6-9 months     IRC              INDIA                          1                69    406
6-9 months     Keneba           GAMBIA                         0               841    866
6-9 months     Keneba           GAMBIA                         1                25    866
6-9 months     MAL-ED           BANGLADESH                     0               220    224
6-9 months     MAL-ED           BANGLADESH                     1                 4    224
6-9 months     MAL-ED           BRAZIL                         0               197    198
6-9 months     MAL-ED           BRAZIL                         1                 1    198
6-9 months     MAL-ED           INDIA                          0               212    230
6-9 months     MAL-ED           INDIA                          1                18    230
6-9 months     MAL-ED           NEPAL                          0               224    230
6-9 months     MAL-ED           NEPAL                          1                 6    230
6-9 months     MAL-ED           PERU                           0               245    245
6-9 months     MAL-ED           PERU                           1                 0    245
6-9 months     MAL-ED           SOUTH AFRICA                   0               229    231
6-9 months     MAL-ED           SOUTH AFRICA                   1                 2    231
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               225    225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    225
6-9 months     PROVIDE          BANGLADESH                     0               553    565
6-9 months     PROVIDE          BANGLADESH                     1                12    565
6-9 months     ResPak           PAKISTAN                       0               122    138
6-9 months     ResPak           PAKISTAN                       1                16    138
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1447   1486
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                39   1486
9-12 months    CMC-V-BCS-2002   INDIA                          0               268    313
9-12 months    CMC-V-BCS-2002   INDIA                          1                45    313
9-12 months    CMIN             BANGLADESH                     0               157    160
9-12 months    CMIN             BANGLADESH                     1                 3    160
9-12 months    CONTENT          PERU                           0               212    212
9-12 months    CONTENT          PERU                           1                 0    212
9-12 months    EE               PAKISTAN                       0               304    326
9-12 months    EE               PAKISTAN                       1                22    326
9-12 months    GMS-Nepal        NEPAL                          0               410    463
9-12 months    GMS-Nepal        NEPAL                          1                53    463
9-12 months    Guatemala BSC    GUATEMALA                      0               169    173
9-12 months    Guatemala BSC    GUATEMALA                      1                 4    173
9-12 months    IRC              INDIA                          0               331    399
9-12 months    IRC              INDIA                          1                68    399
9-12 months    Keneba           GAMBIA                         0               805    828
9-12 months    Keneba           GAMBIA                         1                23    828
9-12 months    MAL-ED           BANGLADESH                     0               220    225
9-12 months    MAL-ED           BANGLADESH                     1                 5    225
9-12 months    MAL-ED           BRAZIL                         0               193    194
9-12 months    MAL-ED           BRAZIL                         1                 1    194
9-12 months    MAL-ED           INDIA                          0               209    227
9-12 months    MAL-ED           INDIA                          1                18    227
9-12 months    MAL-ED           NEPAL                          0               223    229
9-12 months    MAL-ED           NEPAL                          1                 6    229
9-12 months    MAL-ED           PERU                           0               235    235
9-12 months    MAL-ED           PERU                           1                 0    235
9-12 months    MAL-ED           SOUTH AFRICA                   0               231    233
9-12 months    MAL-ED           SOUTH AFRICA                   1                 2    233
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               224    224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    224
9-12 months    PROVIDE          BANGLADESH                     0               553    566
9-12 months    PROVIDE          BANGLADESH                     1                13    566
9-12 months    ResPak           PAKISTAN                       0               120    134
9-12 months    ResPak           PAKISTAN                       1                14    134
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1049   1078
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                29   1078
12-15 months   CMC-V-BCS-2002   INDIA                          0               274    324
12-15 months   CMC-V-BCS-2002   INDIA                          1                50    324
12-15 months   CMIN             BANGLADESH                     0               154    160
12-15 months   CMIN             BANGLADESH                     1                 6    160
12-15 months   CONTENT          PERU                           0               199    199
12-15 months   CONTENT          PERU                           1                 0    199
12-15 months   EE               PAKISTAN                       0               275    297
12-15 months   EE               PAKISTAN                       1                22    297
12-15 months   GMS-Nepal        NEPAL                          0               411    464
12-15 months   GMS-Nepal        NEPAL                          1                53    464
12-15 months   Guatemala BSC    GUATEMALA                      0                83     86
12-15 months   Guatemala BSC    GUATEMALA                      1                 3     86
12-15 months   IRC              INDIA                          0               323    390
12-15 months   IRC              INDIA                          1                67    390
12-15 months   Keneba           GAMBIA                         0              1204   1240
12-15 months   Keneba           GAMBIA                         1                36   1240
12-15 months   MAL-ED           BANGLADESH                     0               206    212
12-15 months   MAL-ED           BANGLADESH                     1                 6    212
12-15 months   MAL-ED           BRAZIL                         0               183    184
12-15 months   MAL-ED           BRAZIL                         1                 1    184
12-15 months   MAL-ED           INDIA                          0               208    226
12-15 months   MAL-ED           INDIA                          1                18    226
12-15 months   MAL-ED           NEPAL                          0               224    230
12-15 months   MAL-ED           NEPAL                          1                 6    230
12-15 months   MAL-ED           PERU                           0               224    224
12-15 months   MAL-ED           PERU                           1                 0    224
12-15 months   MAL-ED           SOUTH AFRICA                   0               227    228
12-15 months   MAL-ED           SOUTH AFRICA                   1                 1    228
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               226    226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    226
12-15 months   PROVIDE          BANGLADESH                     0               520    532
12-15 months   PROVIDE          BANGLADESH                     1                12    532
12-15 months   ResPak           PAKISTAN                       0                79     85
12-15 months   ResPak           PAKISTAN                       1                 6     85
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               770    787
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                17    787
15-18 months   CMC-V-BCS-2002   INDIA                          0               267    317
15-18 months   CMC-V-BCS-2002   INDIA                          1                50    317
15-18 months   CMIN             BANGLADESH                     0               155    163
15-18 months   CMIN             BANGLADESH                     1                 8    163
15-18 months   CONTENT          PERU                           0               189    189
15-18 months   CONTENT          PERU                           1                 0    189
15-18 months   EE               PAKISTAN                       0               257    278
15-18 months   EE               PAKISTAN                       1                21    278
15-18 months   GMS-Nepal        NEPAL                          0               425    475
15-18 months   GMS-Nepal        NEPAL                          1                50    475
15-18 months   IRC              INDIA                          0               321    382
15-18 months   IRC              INDIA                          1                61    382
15-18 months   Keneba           GAMBIA                         0              1187   1223
15-18 months   Keneba           GAMBIA                         1                36   1223
15-18 months   MAL-ED           BANGLADESH                     0               206    212
15-18 months   MAL-ED           BANGLADESH                     1                 6    212
15-18 months   MAL-ED           BRAZIL                         0               174    175
15-18 months   MAL-ED           BRAZIL                         1                 1    175
15-18 months   MAL-ED           INDIA                          0               208    226
15-18 months   MAL-ED           INDIA                          1                18    226
15-18 months   MAL-ED           NEPAL                          0               221    227
15-18 months   MAL-ED           NEPAL                          1                 6    227
15-18 months   MAL-ED           PERU                           0               213    213
15-18 months   MAL-ED           PERU                           1                 0    213
15-18 months   MAL-ED           SOUTH AFRICA                   0               224    225
15-18 months   MAL-ED           SOUTH AFRICA                   1                 1    225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               217    217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    217
15-18 months   PROVIDE          BANGLADESH                     0               516    528
15-18 months   PROVIDE          BANGLADESH                     1                12    528
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               648    662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                14    662
18-21 months   CMC-V-BCS-2002   INDIA                          0               256    302
18-21 months   CMC-V-BCS-2002   INDIA                          1                46    302
18-21 months   CMIN             BANGLADESH                     0               159    165
18-21 months   CMIN             BANGLADESH                     1                 6    165
18-21 months   CONTENT          PERU                           0               183    183
18-21 months   CONTENT          PERU                           1                 0    183
18-21 months   EE               PAKISTAN                       0               236    254
18-21 months   EE               PAKISTAN                       1                18    254
18-21 months   GMS-Nepal        NEPAL                          0               389    439
18-21 months   GMS-Nepal        NEPAL                          1                50    439
18-21 months   IRC              INDIA                          0               317    378
18-21 months   IRC              INDIA                          1                61    378
18-21 months   Keneba           GAMBIA                         0              1158   1190
18-21 months   Keneba           GAMBIA                         1                32   1190
18-21 months   MAL-ED           BANGLADESH                     0               203    209
18-21 months   MAL-ED           BANGLADESH                     1                 6    209
18-21 months   MAL-ED           BRAZIL                         0               166    167
18-21 months   MAL-ED           BRAZIL                         1                 1    167
18-21 months   MAL-ED           INDIA                          0               208    226
18-21 months   MAL-ED           INDIA                          1                18    226
18-21 months   MAL-ED           NEPAL                          0               221    227
18-21 months   MAL-ED           NEPAL                          1                 6    227
18-21 months   MAL-ED           PERU                           0               202    202
18-21 months   MAL-ED           PERU                           1                 0    202
18-21 months   MAL-ED           SOUTH AFRICA                   0               231    233
18-21 months   MAL-ED           SOUTH AFRICA                   1                 2    233
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               204    204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    204
18-21 months   PROVIDE          BANGLADESH                     0               528    541
18-21 months   PROVIDE          BANGLADESH                     1                13    541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 9      9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      9
21-24 months   CMC-V-BCS-2002   INDIA                          0               257    304
21-24 months   CMC-V-BCS-2002   INDIA                          1                47    304
21-24 months   CMIN             BANGLADESH                     0               129    133
21-24 months   CMIN             BANGLADESH                     1                 4    133
21-24 months   CONTENT          PERU                           0                38     38
21-24 months   CONTENT          PERU                           1                 0     38
21-24 months   EE               PAKISTAN                       0                99    106
21-24 months   EE               PAKISTAN                       1                 7    106
21-24 months   GMS-Nepal        NEPAL                          0               306    338
21-24 months   GMS-Nepal        NEPAL                          1                32    338
21-24 months   IRC              INDIA                          0               324    388
21-24 months   IRC              INDIA                          1                64    388
21-24 months   Keneba           GAMBIA                         0              1049   1078
21-24 months   Keneba           GAMBIA                         1                29   1078
21-24 months   MAL-ED           BANGLADESH                     0               201    207
21-24 months   MAL-ED           BANGLADESH                     1                 6    207
21-24 months   MAL-ED           BRAZIL                         0               164    165
21-24 months   MAL-ED           BRAZIL                         1                 1    165
21-24 months   MAL-ED           INDIA                          0               208    226
21-24 months   MAL-ED           INDIA                          1                18    226
21-24 months   MAL-ED           NEPAL                          0               221    227
21-24 months   MAL-ED           NEPAL                          1                 6    227
21-24 months   MAL-ED           PERU                           0               189    189
21-24 months   MAL-ED           PERU                           1                 0    189
21-24 months   MAL-ED           SOUTH AFRICA                   0               233    235
21-24 months   MAL-ED           SOUTH AFRICA                   1                 2    235
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               204    204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    204
21-24 months   PROVIDE          BANGLADESH                     0               460    471
21-24 months   PROVIDE          BANGLADESH                     1                11    471


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

* agecat: 0-3 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: CONTENT, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/1e44945a-d364-4ee0-8951-8721ab074ebb/65af0ba4-1aca-49d1-9c92-d349a24efdd4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1e44945a-d364-4ee0-8951-8721ab074ebb/65af0ba4-1aca-49d1-9c92-d349a24efdd4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1e44945a-d364-4ee0-8951-8721ab074ebb/65af0ba4-1aca-49d1-9c92-d349a24efdd4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                3.3958045   3.1710366   3.6205723
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                4.0253278   3.3785106   4.6721450
0-3 months     EE               PAKISTAN                       0                    NA                3.0797871   2.9936466   3.1659276
0-3 months     EE               PAKISTAN                       1                    NA                2.8987731   2.5896309   3.2079153
0-3 months     GMS-Nepal        NEPAL                          0                    NA                3.6180101   3.5657112   3.6703091
0-3 months     GMS-Nepal        NEPAL                          1                    NA                3.4523185   3.2727261   3.6319110
0-3 months     IRC              INDIA                          0                    NA                3.1066393   2.9924773   3.2208014
0-3 months     IRC              INDIA                          1                    NA                3.2810195   2.9500179   3.6120211
0-3 months     Keneba           GAMBIA                         0                    NA                3.1183165   3.0709805   3.1656526
0-3 months     Keneba           GAMBIA                         1                    NA                2.7492360   2.3285853   3.1698866
0-3 months     MAL-ED           BANGLADESH                     0                    NA                3.3481181   3.2823621   3.4138742
0-3 months     MAL-ED           BANGLADESH                     1                    NA                3.0358618   2.5584441   3.5132795
0-3 months     MAL-ED           INDIA                          0                    NA                3.3534484   3.2507360   3.4561608
0-3 months     MAL-ED           INDIA                          1                    NA                3.2844685   2.9409025   3.6280345
0-3 months     PROVIDE          BANGLADESH                     0                    NA                3.2613842   3.2240101   3.2987584
0-3 months     PROVIDE          BANGLADESH                     1                    NA                3.1908137   2.9490210   3.4326064
0-3 months     ResPak           PAKISTAN                       0                    NA                2.9384679   2.6492438   3.2276920
0-3 months     ResPak           PAKISTAN                       1                    NA                3.8074994   3.0403193   4.5746795
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.8039511   1.6946859   1.9132163
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.7760438   1.5027936   2.0492939
3-6 months     CMIN             BANGLADESH                     0                    NA                1.9645780   1.8951581   2.0339980
3-6 months     CMIN             BANGLADESH                     1                    NA                1.6989273   1.3031375   2.0947171
3-6 months     EE               PAKISTAN                       0                    NA                2.1066643   2.0487287   2.1646000
3-6 months     EE               PAKISTAN                       1                    NA                1.9724687   1.6409007   2.3040366
3-6 months     GMS-Nepal        NEPAL                          0                    NA                1.7294117   1.6875193   1.7713040
3-6 months     GMS-Nepal        NEPAL                          1                    NA                1.5550732   1.4465538   1.6635926
3-6 months     IRC              INDIA                          0                    NA                1.8698643   1.8014597   1.9382690
3-6 months     IRC              INDIA                          1                    NA                1.9562464   1.7828269   2.1296658
3-6 months     Keneba           GAMBIA                         0                    NA                1.9973323   1.9577633   2.0369013
3-6 months     Keneba           GAMBIA                         1                    NA                1.7537562   1.4832913   2.0242211
3-6 months     MAL-ED           BANGLADESH                     0                    NA                1.9258693   1.8745912   1.9771473
3-6 months     MAL-ED           BANGLADESH                     1                    NA                2.0077108   1.8222389   2.1931827
3-6 months     MAL-ED           INDIA                          0                    NA                1.9091998   1.8450844   1.9733152
3-6 months     MAL-ED           INDIA                          1                    NA                1.8099661   1.4945894   2.1253428
3-6 months     MAL-ED           NEPAL                          0                    NA                1.9628173   1.9056515   2.0199830
3-6 months     MAL-ED           NEPAL                          1                    NA                2.0393725   1.7738108   2.3049343
3-6 months     PROVIDE          BANGLADESH                     0                    NA                1.9723983   1.9385283   2.0062682
3-6 months     PROVIDE          BANGLADESH                     1                    NA                1.7806478   1.4736623   2.0876332
3-6 months     ResPak           PAKISTAN                       0                    NA                2.0500000   1.9071654   2.1928346
3-6 months     ResPak           PAKISTAN                       1                    NA                1.8474404   1.3493489   2.3455320
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8051834   1.7689741   1.8413928
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.4035634   1.1738991   1.6332277
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.2514281   1.1657517   1.3371045
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.0025644   0.8223525   1.1827762
6-9 months     EE               PAKISTAN                       0                    NA                1.1778427   1.1291592   1.2265262
6-9 months     EE               PAKISTAN                       1                    NA                1.2268276   1.0382681   1.4153870
6-9 months     GMS-Nepal        NEPAL                          0                    NA                1.3185693   1.2776630   1.3594756
6-9 months     GMS-Nepal        NEPAL                          1                    NA                1.3033059   1.1143009   1.4923109
6-9 months     IRC              INDIA                          0                    NA                1.3946104   1.3404987   1.4487222
6-9 months     IRC              INDIA                          1                    NA                1.3062031   1.1970805   1.4153256
6-9 months     Keneba           GAMBIA                         0                    NA                1.4155860   1.3649768   1.4661952
6-9 months     Keneba           GAMBIA                         1                    NA                1.3114155   0.5502385   2.0725924
6-9 months     MAL-ED           INDIA                          0                    NA                1.2339991   1.1809532   1.2870450
6-9 months     MAL-ED           INDIA                          1                    NA                1.3657748   1.1362846   1.5952650
6-9 months     MAL-ED           NEPAL                          0                    NA                1.3504290   1.3055507   1.3953074
6-9 months     MAL-ED           NEPAL                          1                    NA                1.6077145   1.4808136   1.7346155
6-9 months     PROVIDE          BANGLADESH                     0                    NA                1.2816763   1.2560113   1.3073412
6-9 months     PROVIDE          BANGLADESH                     1                    NA                1.3189373   1.1485308   1.4893439
6-9 months     ResPak           PAKISTAN                       0                    NA                1.4300170   1.3197351   1.5402990
6-9 months     ResPak           PAKISTAN                       1                    NA                1.4239540   1.0791221   1.7687859
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.3283799   1.2910846   1.3656752
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1144649   0.9262737   1.3026561
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.9049673   0.8302212   0.9797133
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.8651134   0.6895536   1.0406733
9-12 months    EE               PAKISTAN                       0                    NA                0.9103688   0.8744104   0.9463271
9-12 months    EE               PAKISTAN                       1                    NA                0.9747188   0.8062287   1.1432089
9-12 months    GMS-Nepal        NEPAL                          0                    NA                1.0109188   0.9782988   1.0435388
9-12 months    GMS-Nepal        NEPAL                          1                    NA                0.8589786   0.6964021   1.0215551
9-12 months    IRC              INDIA                          0                    NA                1.1284227   1.0867448   1.1701006
9-12 months    IRC              INDIA                          1                    NA                1.1175336   1.0014293   1.2336378
9-12 months    Keneba           GAMBIA                         0                    NA                0.9782942   0.9365537   1.0200347
9-12 months    Keneba           GAMBIA                         1                    NA                1.4306187   1.1123187   1.7489187
9-12 months    MAL-ED           BANGLADESH                     0                    NA                0.9893714   0.9498882   1.0288545
9-12 months    MAL-ED           BANGLADESH                     1                    NA                1.0016649   0.8556986   1.1476312
9-12 months    MAL-ED           INDIA                          0                    NA                0.9747687   0.9343646   1.0151727
9-12 months    MAL-ED           INDIA                          1                    NA                1.0608766   0.9532481   1.1685051
9-12 months    MAL-ED           NEPAL                          0                    NA                1.0895292   1.0481352   1.1309233
9-12 months    MAL-ED           NEPAL                          1                    NA                1.0783815   0.8478400   1.3089231
9-12 months    PROVIDE          BANGLADESH                     0                    NA                1.0478598   1.0203608   1.0753588
9-12 months    PROVIDE          BANGLADESH                     1                    NA                1.0738373   0.9317315   1.2159430
9-12 months    ResPak           PAKISTAN                       0                    NA                1.2307712   1.0918147   1.3697278
9-12 months    ResPak           PAKISTAN                       1                    NA                1.1070603   0.7990941   1.4150265
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0856851   1.0511363   1.1202339
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0426212   0.8284425   1.2567998
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.8161801   0.7439202   0.8884400
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                1.0461965   0.8290135   1.2633796
12-15 months   CMIN             BANGLADESH                     0                    NA                0.8742243   0.8173728   0.9310758
12-15 months   CMIN             BANGLADESH                     1                    NA                0.8669886   0.6624487   1.0715286
12-15 months   EE               PAKISTAN                       0                    NA                1.0066226   0.9730343   1.0402110
12-15 months   EE               PAKISTAN                       1                    NA                1.0681972   0.9158548   1.2205396
12-15 months   GMS-Nepal        NEPAL                          0                    NA                0.8728203   0.8457929   0.8998478
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.8520194   0.7851874   0.9188513
12-15 months   IRC              INDIA                          0                    NA                0.9657471   0.9196919   1.0118022
12-15 months   IRC              INDIA                          1                    NA                0.9058313   0.8083998   1.0032628
12-15 months   Keneba           GAMBIA                         0                    NA                0.9470149   0.9156622   0.9783677
12-15 months   Keneba           GAMBIA                         1                    NA                0.7806010   0.5898803   0.9713217
12-15 months   MAL-ED           BANGLADESH                     0                    NA                0.9133935   0.8720783   0.9547086
12-15 months   MAL-ED           BANGLADESH                     1                    NA                0.9383731   0.7949101   1.0818360
12-15 months   MAL-ED           INDIA                          0                    NA                0.9001587   0.8595461   0.9407712
12-15 months   MAL-ED           INDIA                          1                    NA                1.0539299   0.8681410   1.2397189
12-15 months   MAL-ED           NEPAL                          0                    NA                0.9516538   0.9117652   0.9915424
12-15 months   MAL-ED           NEPAL                          1                    NA                0.9424017   0.6922109   1.1925924
12-15 months   PROVIDE          BANGLADESH                     0                    NA                0.9614386   0.9347525   0.9881247
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.8564903   0.7450508   0.9679298
12-15 months   ResPak           PAKISTAN                       0                    NA                1.2932180   1.1100973   1.4763387
12-15 months   ResPak           PAKISTAN                       1                    NA                1.2507827   0.8803110   1.6212543
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9311268   0.8942113   0.9680423
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9383597   0.6214727   1.2552467
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7485342   0.6775002   0.8195683
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6703887   0.5522106   0.7885667
15-18 months   CMIN             BANGLADESH                     0                    NA                0.7540762   0.7008788   0.8072737
15-18 months   CMIN             BANGLADESH                     1                    NA                0.6304419   0.3933498   0.8675339
15-18 months   EE               PAKISTAN                       0                    NA                0.8364751   0.8054728   0.8674773
15-18 months   EE               PAKISTAN                       1                    NA                0.8671959   0.6806382   1.0537537
15-18 months   GMS-Nepal        NEPAL                          0                    NA                0.7580533   0.7240556   0.7920510
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.7831684   0.7088436   0.8574933
15-18 months   IRC              INDIA                          0                    NA                0.8794972   0.8369778   0.9220165
15-18 months   IRC              INDIA                          1                    NA                0.7321597   0.6325403   0.8317790
15-18 months   Keneba           GAMBIA                         0                    NA                0.8768462   0.8429754   0.9107169
15-18 months   Keneba           GAMBIA                         1                    NA                0.7382692   0.5447474   0.9317911
15-18 months   MAL-ED           BANGLADESH                     0                    NA                0.8272099   0.7896248   0.8647951
15-18 months   MAL-ED           BANGLADESH                     1                    NA                0.7181236   0.5443402   0.8919070
15-18 months   MAL-ED           INDIA                          0                    NA                0.8432303   0.8046035   0.8818571
15-18 months   MAL-ED           INDIA                          1                    NA                0.8822563   0.7808478   0.9836648
15-18 months   MAL-ED           NEPAL                          0                    NA                0.8462673   0.8040433   0.8884914
15-18 months   MAL-ED           NEPAL                          1                    NA                0.6407881   0.5309745   0.7506018
15-18 months   PROVIDE          BANGLADESH                     0                    NA                0.8536888   0.8293128   0.8780648
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.7555104   0.5770957   0.9339250
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9372333   0.8945726   0.9798940
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9403437   0.6628624   1.2178249
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7196838   0.6488804   0.7904871
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6209417   0.4460291   0.7958543
18-21 months   CMIN             BANGLADESH                     0                    NA                0.8040507   0.7539569   0.8541445
18-21 months   CMIN             BANGLADESH                     1                    NA                0.7711692   0.5775906   0.9647478
18-21 months   EE               PAKISTAN                       0                    NA                0.7296050   0.6986257   0.7605844
18-21 months   EE               PAKISTAN                       1                    NA                0.5995054   0.3708947   0.8281160
18-21 months   GMS-Nepal        NEPAL                          0                    NA                0.9133042   0.8757901   0.9508183
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.8507891   0.7832698   0.9183085
18-21 months   IRC              INDIA                          0                    NA                0.7730963   0.7316047   0.8145879
18-21 months   IRC              INDIA                          1                    NA                0.7060721   0.6071422   0.8050019
18-21 months   Keneba           GAMBIA                         0                    NA                0.8103539   0.7726606   0.8480473
18-21 months   Keneba           GAMBIA                         1                    NA                0.9702452   0.7886186   1.1518718
18-21 months   MAL-ED           BANGLADESH                     0                    NA                0.8099559   0.7749197   0.8449921
18-21 months   MAL-ED           BANGLADESH                     1                    NA                0.9293939   0.7884432   1.0703447
18-21 months   MAL-ED           INDIA                          0                    NA                0.8751553   0.8382676   0.9120430
18-21 months   MAL-ED           INDIA                          1                    NA                0.9024778   0.7730398   1.0319158
18-21 months   MAL-ED           NEPAL                          0                    NA                0.8138453   0.7757939   0.8518967
18-21 months   MAL-ED           NEPAL                          1                    NA                0.9816172   0.6708271   1.2924072
18-21 months   PROVIDE          BANGLADESH                     0                    NA                0.8380586   0.8134379   0.8626793
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.8943879   0.7987730   0.9900028
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7207289   0.6513765   0.7900813
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6284128   0.4986858   0.7581398
21-24 months   EE               PAKISTAN                       0                    NA                0.6598489   0.6223106   0.6973871
21-24 months   EE               PAKISTAN                       1                    NA                0.5007293   0.3082807   0.6931779
21-24 months   GMS-Nepal        NEPAL                          0                    NA                0.7960166   0.7498086   0.8422246
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.7958814   0.5900874   1.0016754
21-24 months   IRC              INDIA                          0                    NA                0.7013570   0.6567256   0.7459883
21-24 months   IRC              INDIA                          1                    NA                0.7511767   0.6481640   0.8541894
21-24 months   Keneba           GAMBIA                         0                    NA                0.7173241   0.6809905   0.7536578
21-24 months   Keneba           GAMBIA                         1                    NA                0.6623083   0.4940868   0.8305298
21-24 months   MAL-ED           BANGLADESH                     0                    NA                0.7615910   0.7263430   0.7968390
21-24 months   MAL-ED           BANGLADESH                     1                    NA                1.0316325   0.7909859   1.2722792
21-24 months   MAL-ED           INDIA                          0                    NA                0.8284215   0.7959921   0.8608509
21-24 months   MAL-ED           INDIA                          1                    NA                0.8296877   0.7186782   0.9406971
21-24 months   MAL-ED           NEPAL                          0                    NA                0.7865269   0.7449992   0.8280545
21-24 months   MAL-ED           NEPAL                          1                    NA                0.6665817   0.4984236   0.8347398
21-24 months   PROVIDE          BANGLADESH                     0                    NA                0.7614847   0.7354141   0.7875553
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.9486671   0.8346612   1.0626729


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     EE               PAKISTAN                       NA                   NA                3.0775986   2.9949164   3.1602807
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     IRC              INDIA                          NA                   NA                3.1381505   3.0271308   3.2491703
0-3 months     Keneba           GAMBIA                         NA                   NA                3.1026151   3.0551419   3.1500882
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     MAL-ED           INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ResPak           PAKISTAN                       NA                   NA                3.0164579   2.7387383   3.2941775
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     CMIN             BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
3-6 months     EE               PAKISTAN                       NA                   NA                2.0947237   2.0366412   2.1528063
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     IRC              INDIA                          NA                   NA                1.8792287   1.8153323   1.9431250
3-6 months     Keneba           GAMBIA                         NA                   NA                1.9924313   1.9529066   2.0319559
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     MAL-ED           INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     MAL-ED           NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ResPak           PAKISTAN                       NA                   NA                2.0482494   1.9118457   2.1846530
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7951754   1.7593106   1.8310401
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.2141990   1.1366726   1.2917254
6-9 months     EE               PAKISTAN                       NA                   NA                1.1779411   1.1309380   1.2249441
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                1.3171992   1.2762953   1.3581032
6-9 months     IRC              INDIA                          NA                   NA                1.3728678   1.3241483   1.4215872
6-9 months     Keneba           GAMBIA                         NA                   NA                1.4104042   1.3586776   1.4621308
6-9 months     MAL-ED           INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     MAL-ED           NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ResPak           PAKISTAN                       NA                   NA                1.4374407   1.3330612   1.5418202
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3236762   1.2871524   1.3602000
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.9004961   0.8320891   0.9689030
9-12 months    EE               PAKISTAN                       NA                   NA                0.9148816   0.8796496   0.9501135
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.9985509   0.9657269   1.0313750
9-12 months    IRC              INDIA                          NA                   NA                1.1234202   1.0839533   1.1628871
9-12 months    Keneba           GAMBIA                         NA                   NA                0.9851066   0.9436732   1.0265401
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    MAL-ED           INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    MAL-ED           NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ResPak           PAKISTAN                       NA                   NA                1.2059250   1.0784178   1.3334322
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0851276   1.0510683   1.1191869
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8540293   0.7834803   0.9245783
12-15 months   CMIN             BANGLADESH                     NA                   NA                0.8739530   0.8186981   0.9292079
12-15 months   EE               PAKISTAN                       NA                   NA                1.0100593   0.9773974   1.0427213
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.8710540   0.8457775   0.8963305
12-15 months   IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   Keneba           GAMBIA                         NA                   NA                0.9439904   0.9130655   0.9749153
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   MAL-ED           INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ResPak           PAKISTAN                       NA                   NA                1.2902226   1.1180150   1.4624302
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9312365   0.8943716   0.9681013
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7357918   0.6725047   0.7990788
15-18 months   CMIN             BANGLADESH                     NA                   NA                0.7480083   0.6959380   0.8000786
15-18 months   EE               PAKISTAN                       NA                   NA                0.8376536   0.8054297   0.8698774
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.7610462   0.7295065   0.7925859
15-18 months   IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   Keneba           GAMBIA                         NA                   NA                0.8738026   0.8405430   0.9070622
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   MAL-ED           INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9385215   0.8964111   0.9806319
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7057090   0.6416425   0.7697756
18-21 months   CMIN             BANGLADESH                     NA                   NA                0.8028550   0.7540631   0.8516469
18-21 months   EE               PAKISTAN                       NA                   NA                0.7183112   0.6840373   0.7525850
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.9071228   0.8728634   0.9413822
18-21 months   IRC              INDIA                          NA                   NA                0.7612817   0.7229633   0.7996000
18-21 months   Keneba           GAMBIA                         NA                   NA                0.8145503   0.7776328   0.8514678
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   MAL-ED           INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7091576   0.6473940   0.7709213
21-24 months   EE               PAKISTAN                       NA                   NA                0.6493410   0.6112910   0.6873909
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.8001530   0.7544294   0.8458765
21-24 months   IRC              INDIA                          NA                   NA                0.7101525   0.6692515   0.7510535
21-24 months   Keneba           GAMBIA                         NA                   NA                0.7156044   0.6799590   0.7512498
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   MAL-ED           INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.6295233   -0.0552344    1.3142810
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       1                    0                 -0.1810140   -0.5017918    0.1397638
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                 -0.1656916   -0.3530700    0.0216868
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                  0.1743801   -0.1740362    0.5227965
0-3 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         1                    0                 -0.3690806   -0.7924641    0.0543030
0-3 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    0                 -0.3122563   -0.7941811    0.1696685
0-3 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          1                    0                 -0.0689800   -0.4283344    0.2903745
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                 -0.0705705   -0.3154516    0.1743105
0-3 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       1                    0                  0.8690315    0.0491438    1.6889192
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.0279073   -0.3223426    0.2665279
3-6 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMIN             BANGLADESH                     1                    0                 -0.2656507   -0.6678288    0.1365274
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                 -0.1341957   -0.4703792    0.2019879
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                 -0.1743385   -0.2908875   -0.0577895
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                  0.0863820   -0.1001526    0.2729167
3-6 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         1                    0                 -0.2435761   -0.5167018    0.0295496
3-6 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    0                  0.0818415   -0.1105884    0.2742715
3-6 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          1                    0                 -0.0992337   -0.4210932    0.2226257
3-6 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          1                    0                  0.0765553   -0.1950896    0.3482002
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                 -0.1917505   -0.5007136    0.1172126
3-6 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       1                    0                 -0.2025595   -0.7231798    0.3180608
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.4016201   -0.6341149   -0.1691252
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.2488637   -0.4492513   -0.0484762
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                  0.0489849   -0.1456543    0.2436240
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                 -0.0152634   -0.2084212    0.1778944
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                 -0.0884074   -0.2105001    0.0336853
6-9 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         1                    0                 -0.1041705   -0.8673438    0.6590028
6-9 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          1                    0                  0.1317757   -0.1039775    0.3675289
6-9 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          1                    0                  0.2572855    0.1226827    0.3918883
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                  0.0372611   -0.1351393    0.2096615
6-9 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ResPak           PAKISTAN                       1                    0                 -0.0060630   -0.3731821    0.3610560
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.2139150   -0.4060204   -0.0218096
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.0398538   -0.2304328    0.1507251
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                  0.0643500   -0.1080612    0.2367612
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                 -0.1519402   -0.3185235    0.0146432
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                 -0.0108891   -0.1347329    0.1129547
9-12 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         1                    0                  0.4523245    0.1307602    0.7738889
9-12 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    0                  0.0122935   -0.1389185    0.1635056
9-12 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          1                    0                  0.0861079   -0.0288325    0.2010483
9-12 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          1                    0                 -0.0111477   -0.2453760    0.2230805
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                  0.0259775   -0.1185829    0.1705379
9-12 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       1                    0                 -0.1237109   -0.4635172    0.2160953
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0430639   -0.2599862    0.1738584
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.2300164    0.0005434    0.4594894
12-15 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMIN             BANGLADESH                     1                    0                 -0.0072357   -0.2195295    0.2050581
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                  0.0615746   -0.0947003    0.2178495
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                 -0.0208010   -0.0926346    0.0510327
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                 -0.0599157   -0.1675443    0.0477128
12-15 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         1                    0                 -0.1664140   -0.3599472    0.0271193
12-15 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    0                  0.0249796   -0.1243139    0.1742731
12-15 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          1                    0                  0.1537713   -0.0365243    0.3440668
12-15 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          1                    0                 -0.0092521   -0.2626027    0.2440984
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.1049483   -0.2195616    0.0096650
12-15 months   ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ResPak           PAKISTAN                       1                    0                 -0.0424354   -0.4556937    0.3708229
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0072329   -0.3120423    0.3265081
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0781456   -0.2156028    0.0593117
15-18 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMIN             BANGLADESH                     1                    0                 -0.1236344   -0.3666212    0.1193524
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                  0.0307209   -0.1583636    0.2198053
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                  0.0251151   -0.0563677    0.1065980
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                 -0.1473375   -0.2549813   -0.0396937
15-18 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         1                    0                 -0.1385769   -0.3353215    0.0581676
15-18 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    0                 -0.1090863   -0.2868877    0.0687150
15-18 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          1                    0                  0.0390260   -0.0703242    0.1483762
15-18 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          1                    0                 -0.2054792   -0.3231309   -0.0878276
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                 -0.0981785   -0.2783095    0.0819526
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0031103   -0.2777328    0.2839535
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0987421   -0.2886320    0.0911479
18-21 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMIN             BANGLADESH                     1                    0                 -0.0328815   -0.2328367    0.1670737
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                 -0.1300997   -0.3609014    0.1007020
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                 -0.0625150   -0.1401400    0.0151099
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0670242   -0.1740965    0.0400481
18-21 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         1                    0                  0.1598913   -0.0258980    0.3456806
18-21 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    0                  0.1194380   -0.0258020    0.2646780
18-21 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          1                    0                  0.0273225   -0.1074894    0.1621344
18-21 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          1                    0                  0.1677719   -0.1453389    0.4808827
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                  0.0563293   -0.0424711    0.1551296
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0923161   -0.2421714    0.0575392
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                 -0.1591196   -0.3551950    0.0369559
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0001352   -0.2116244    0.2113540
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                  0.0498197   -0.0625387    0.1621782
21-24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         1                    0                 -0.0550158   -0.2271797    0.1171480
21-24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    0                  0.2700416    0.0268272    0.5132559
21-24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          1                    0                  0.0012662   -0.1144488    0.1169812
21-24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          1                    0                 -0.1199451   -0.2931551    0.0532649
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                  0.1871824    0.0704047    0.3039600


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0643831   -0.0163082    0.1450743
0-3 months     EE               PAKISTAN                       0                    NA                -0.0021886   -0.0208852    0.0165081
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0190418   -0.0416996    0.0036160
0-3 months     IRC              INDIA                          0                    NA                 0.0315112   -0.0289738    0.0919962
0-3 months     Keneba           GAMBIA                         0                    NA                -0.0157015   -0.0280923   -0.0033107
0-3 months     MAL-ED           BANGLADESH                     0                    NA                -0.0089950   -0.0243582    0.0063682
0-3 months     MAL-ED           INDIA                          0                    NA                -0.0052234   -0.0292108    0.0187640
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.0037032   -0.0111356    0.0037292
0-3 months     ResPak           PAKISTAN                       0                    NA                 0.0779900   -0.0141609    0.1701409
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0001631   -0.0409758    0.0406496
3-6 months     CMIN             BANGLADESH                     0                    NA                -0.0167304   -0.0425603    0.0090995
3-6 months     EE               PAKISTAN                       0                    NA                -0.0119406   -0.0326974    0.0088163
3-6 months     GMS-Nepal        NEPAL                          0                    NA                -0.0198432   -0.0338547   -0.0058316
3-6 months     IRC              INDIA                          0                    NA                 0.0093643   -0.0222570    0.0409857
3-6 months     Keneba           GAMBIA                         0                    NA                -0.0049010   -0.0145912    0.0047891
3-6 months     MAL-ED           BANGLADESH                     0                    NA                 0.0017715   -0.0032795    0.0068224
3-6 months     MAL-ED           INDIA                          0                    NA                -0.0169018   -0.0415081    0.0077045
3-6 months     MAL-ED           NEPAL                          0                    NA                 0.0016428   -0.0052967    0.0085823
3-6 months     PROVIDE          BANGLADESH                     0                    NA                -0.0066525   -0.0147243    0.0014193
3-6 months     ResPak           PAKISTAN                       0                    NA                -0.0017506   -0.0466476    0.0431463
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0100081   -0.0169834   -0.0030327
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0372291   -0.0680449   -0.0064133
6-9 months     EE               PAKISTAN                       0                    NA                 0.0000984   -0.0130391    0.0132359
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0013701   -0.0195506    0.0168104
6-9 months     IRC              INDIA                          0                    NA                -0.0217427   -0.0432188   -0.0002666
6-9 months     Keneba           GAMBIA                         0                    NA                -0.0051818   -0.0219826    0.0116190
6-9 months     MAL-ED           INDIA                          0                    NA                 0.0122245   -0.0059980    0.0304471
6-9 months     MAL-ED           NEPAL                          0                    NA                 0.0067118    0.0003445    0.0130790
6-9 months     PROVIDE          BANGLADESH                     0                    NA                 0.0007422   -0.0026268    0.0041112
6-9 months     ResPak           PAKISTAN                       0                    NA                 0.0074237   -0.0384333    0.0532806
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0047036   -0.0102090    0.0008018
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0044712   -0.0311605    0.0222182
9-12 months    EE               PAKISTAN                       0                    NA                 0.0045128   -0.0064053    0.0154308
9-12 months    GMS-Nepal        NEPAL                          0                    NA                -0.0123678   -0.0289823    0.0042466
9-12 months    IRC              INDIA                          0                    NA                -0.0050025   -0.0256490    0.0156439
9-12 months    Keneba           GAMBIA                         0                    NA                 0.0068124   -0.0028863    0.0165112
9-12 months    MAL-ED           BANGLADESH                     0                    NA                 0.0002732   -0.0035146    0.0040609
9-12 months    MAL-ED           INDIA                          0                    NA                 0.0067016   -0.0027065    0.0161096
9-12 months    MAL-ED           NEPAL                          0                    NA                -0.0002921   -0.0064334    0.0058493
9-12 months    PROVIDE          BANGLADESH                     0                    NA                 0.0021152   -0.0026423    0.0068726
9-12 months    ResPak           PAKISTAN                       0                    NA                -0.0248462   -0.0609665    0.0112741
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0005575   -0.0062950    0.0051801
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0378492   -0.0009579    0.0766564
12-15 months   CMIN             BANGLADESH                     0                    NA                -0.0002713   -0.0082352    0.0076925
12-15 months   EE               PAKISTAN                       0                    NA                 0.0034367   -0.0075248    0.0143982
12-15 months   GMS-Nepal        NEPAL                          0                    NA                -0.0017664   -0.0102877    0.0067550
12-15 months   IRC              INDIA                          0                    NA                -0.0103931   -0.0289291    0.0081429
12-15 months   Keneba           GAMBIA                         0                    NA                -0.0030246   -0.0087509    0.0027018
12-15 months   MAL-ED           BANGLADESH                     0                    NA                 0.0007070   -0.0035551    0.0049691
12-15 months   MAL-ED           INDIA                          0                    NA                 0.0103350   -0.0016563    0.0223262
12-15 months   MAL-ED           NEPAL                          0                    NA                -0.0002414   -0.0068533    0.0063705
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0016885   -0.0045958    0.0012187
12-15 months   ResPak           PAKISTAN                       0                    NA                -0.0029954   -0.0322591    0.0262682
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0001097   -0.0079821    0.0082014
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0127425   -0.0353056    0.0098207
15-18 months   CMIN             BANGLADESH                     0                    NA                -0.0060679   -0.0186830    0.0065471
15-18 months   EE               PAKISTAN                       0                    NA                 0.0011785   -0.0131603    0.0155173
15-18 months   GMS-Nepal        NEPAL                          0                    NA                 0.0029929   -0.0056286    0.0116144
15-18 months   IRC              INDIA                          0                    NA                -0.0203756   -0.0379378   -0.0028134
15-18 months   Keneba           GAMBIA                         0                    NA                -0.0030435   -0.0086493    0.0025622
15-18 months   MAL-ED           BANGLADESH                     0                    NA                -0.0030873   -0.0086802    0.0025055
15-18 months   MAL-ED           INDIA                          0                    NA                 0.0011581   -0.0077760    0.0100922
15-18 months   MAL-ED           NEPAL                          0                    NA                -0.0054312   -0.0107357   -0.0001266
15-18 months   PROVIDE          BANGLADESH                     0                    NA                 0.0024110   -0.0015569    0.0063789
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012882   -0.0056859    0.0082623
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0139748   -0.0431389    0.0151894
18-21 months   CMIN             BANGLADESH                     0                    NA                -0.0011957   -0.0085276    0.0061362
18-21 months   EE               PAKISTAN                       0                    NA                -0.0112939   -0.0301843    0.0075965
18-21 months   GMS-Nepal        NEPAL                          0                    NA                -0.0061814   -0.0146905    0.0023276
18-21 months   IRC              INDIA                          0                    NA                -0.0118146   -0.0289562    0.0053269
18-21 months   Keneba           GAMBIA                         0                    NA                 0.0041964   -0.0011458    0.0095385
18-21 months   MAL-ED           BANGLADESH                     0                    NA                 0.0034288   -0.0015443    0.0084019
18-21 months   MAL-ED           INDIA                          0                    NA                 0.0035548   -0.0067825    0.0138921
18-21 months   MAL-ED           NEPAL                          0                    NA                 0.0044345   -0.0045547    0.0134236
18-21 months   PROVIDE          BANGLADESH                     0                    NA                 0.0012791   -0.0022388    0.0047969
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0115713   -0.0351006    0.0119580
21-24 months   EE               PAKISTAN                       0                    NA                -0.0105079   -0.0255010    0.0044852
21-24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0041363   -0.0153706    0.0236433
21-24 months   IRC              INDIA                          0                    NA                 0.0087956   -0.0096842    0.0272753
21-24 months   Keneba           GAMBIA                         0                    NA                -0.0017197   -0.0068002    0.0033608
21-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0078273   -0.0015520    0.0172066
21-24 months   MAL-ED           INDIA                          0                    NA                -0.0028702   -0.0113922    0.0056519
21-24 months   MAL-ED           NEPAL                          0                    NA                -0.0031704   -0.0083908    0.0020501
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0016544   -0.0023437    0.0056524
