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

unadjusted

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/8ddeaba7-7158-41d2-9956-42452cc31f25/0dae873e-dad8-4969-8867-02c30510c1de/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8ddeaba7-7158-41d2-9956-42452cc31f25/0dae873e-dad8-4969-8867-02c30510c1de/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8ddeaba7-7158-41d2-9956-42452cc31f25/0dae873e-dad8-4969-8867-02c30510c1de/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                3.3958045   3.1710366   3.6205723
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                4.0253278   3.3785106   4.6721450
0-3 months     EE               PAKISTAN                       0                    NA                3.0785647   2.9924082   3.1647211
0-3 months     EE               PAKISTAN                       1                    NA                3.0631580   2.7801340   3.3461820
0-3 months     GMS-Nepal        NEPAL                          0                    NA                3.6184113   3.5661013   3.6707213
0-3 months     GMS-Nepal        NEPAL                          1                    NA                3.4506744   3.2683289   3.6330199
0-3 months     IRC              INDIA                          0                    NA                3.1087411   2.9942066   3.2232757
0-3 months     IRC              INDIA                          1                    NA                3.2762856   2.9457273   3.6068440
0-3 months     Keneba           GAMBIA                         0                    NA                3.1190684   3.0716901   3.1664467
0-3 months     Keneba           GAMBIA                         1                    NA                2.6020227   2.2515277   2.9525177
0-3 months     MAL-ED           BANGLADESH                     0                    NA                3.3481181   3.2823621   3.4138742
0-3 months     MAL-ED           BANGLADESH                     1                    NA                3.0358618   2.5584441   3.5132795
0-3 months     MAL-ED           INDIA                          0                    NA                3.3562201   3.2537360   3.4587043
0-3 months     MAL-ED           INDIA                          1                    NA                3.2436736   2.9285267   3.5588205
0-3 months     PROVIDE          BANGLADESH                     0                    NA                3.2613632   3.2241344   3.2985919
0-3 months     PROVIDE          BANGLADESH                     1                    NA                3.1042582   2.8262704   3.3822460
0-3 months     ResPak           PAKISTAN                       0                    NA                2.9384679   2.6492438   3.2276920
0-3 months     ResPak           PAKISTAN                       1                    NA                3.8074994   3.0403193   4.5746795
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.8042856   1.6950585   1.9135128
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.8008134   1.5392723   2.0623545
3-6 months     CMIN             BANGLADESH                     0                    NA                1.9623847   1.8930298   2.0317395
3-6 months     CMIN             BANGLADESH                     1                    NA                1.6934503   1.2562597   2.1306410
3-6 months     EE               PAKISTAN                       0                    NA                2.1076096   2.0496892   2.1655299
3-6 months     EE               PAKISTAN                       1                    NA                1.9071628   1.5948871   2.2194386
3-6 months     GMS-Nepal        NEPAL                          0                    NA                1.7296832   1.6878472   1.7715192
3-6 months     GMS-Nepal        NEPAL                          1                    NA                1.5516870   1.4457360   1.6576381
3-6 months     IRC              INDIA                          0                    NA                1.8684459   1.8000470   1.9368448
3-6 months     IRC              INDIA                          1                    NA                1.9321769   1.7600663   2.1042874
3-6 months     Keneba           GAMBIA                         0                    NA                1.9988507   1.9592555   2.0384458
3-6 months     Keneba           GAMBIA                         1                    NA                1.8057108   1.5146602   2.0967614
3-6 months     MAL-ED           BANGLADESH                     0                    NA                1.9258693   1.8745912   1.9771473
3-6 months     MAL-ED           BANGLADESH                     1                    NA                2.0077108   1.8222389   2.1931827
3-6 months     MAL-ED           INDIA                          0                    NA                1.9079160   1.8438830   1.9719489
3-6 months     MAL-ED           INDIA                          1                    NA                1.7083532   1.4181668   1.9985395
3-6 months     MAL-ED           NEPAL                          0                    NA                1.9628173   1.9056515   2.0199830
3-6 months     MAL-ED           NEPAL                          1                    NA                2.0393725   1.7738108   2.3049343
3-6 months     PROVIDE          BANGLADESH                     0                    NA                1.9723086   1.9385215   2.0060956
3-6 months     PROVIDE          BANGLADESH                     1                    NA                1.6919819   1.4061214   1.9778424
3-6 months     ResPak           PAKISTAN                       0                    NA                2.0495941   1.9069676   2.1922205
3-6 months     ResPak           PAKISTAN                       1                    NA                2.0348983   1.5692258   2.5005708
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8044044   1.7682048   1.8406040
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.4713558   1.2415098   1.7012018
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.2499674   1.1646736   1.3352611
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.0073643   0.8369874   1.1777411
6-9 months     EE               PAKISTAN                       0                    NA                1.1774749   1.1288512   1.2260986
6-9 months     EE               PAKISTAN                       1                    NA                1.1842230   1.0009158   1.3675302
6-9 months     GMS-Nepal        NEPAL                          0                    NA                1.3214371   1.2803800   1.3624942
6-9 months     GMS-Nepal        NEPAL                          1                    NA                1.2809229   1.1097963   1.4520496
6-9 months     IRC              INDIA                          0                    NA                1.3925050   1.3384835   1.4465265
6-9 months     IRC              INDIA                          1                    NA                1.2769585   1.1676592   1.3862577
6-9 months     Keneba           GAMBIA                         0                    NA                1.4167619   1.3662421   1.4672817
6-9 months     Keneba           GAMBIA                         1                    NA                1.1965306   0.6352115   1.7578498
6-9 months     MAL-ED           INDIA                          0                    NA                1.2345440   1.1815778   1.2875103
6-9 months     MAL-ED           INDIA                          1                    NA                1.3837835   1.1706032   1.5969638
6-9 months     MAL-ED           NEPAL                          0                    NA                1.3504290   1.3055507   1.3953074
6-9 months     MAL-ED           NEPAL                          1                    NA                1.6077145   1.4808136   1.7346155
6-9 months     PROVIDE          BANGLADESH                     0                    NA                1.2816927   1.2560297   1.3073556
6-9 months     PROVIDE          BANGLADESH                     1                    NA                1.3158668   1.1855918   1.4461418
6-9 months     ResPak           PAKISTAN                       0                    NA                1.4314909   1.3214116   1.5415702
6-9 months     ResPak           PAKISTAN                       1                    NA                1.4828080   1.1581352   1.8074808
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.3277019   1.2905631   1.3648406
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1743147   0.9853564   1.3632731
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.9085525   0.8339266   0.9831784
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.8525158   0.6832897   1.0217418
9-12 months    EE               PAKISTAN                       0                    NA                0.9108132   0.8747745   0.9468519
9-12 months    EE               PAKISTAN                       1                    NA                0.9710986   0.8162630   1.1259341
9-12 months    GMS-Nepal        NEPAL                          0                    NA                1.0114856   0.9789589   1.0440124
9-12 months    GMS-Nepal        NEPAL                          1                    NA                0.8984900   0.7639982   1.0329817
9-12 months    IRC              INDIA                          0                    NA                1.1268670   1.0851419   1.1685922
9-12 months    IRC              INDIA                          1                    NA                1.1066420   0.9954747   1.2178094
9-12 months    Keneba           GAMBIA                         0                    NA                0.9784681   0.9368855   1.0200507
9-12 months    Keneba           GAMBIA                         1                    NA                1.2174553   0.9053063   1.5296042
9-12 months    MAL-ED           BANGLADESH                     0                    NA                0.9893714   0.9498882   1.0288545
9-12 months    MAL-ED           BANGLADESH                     1                    NA                1.0016649   0.8556986   1.1476312
9-12 months    MAL-ED           INDIA                          0                    NA                0.9745473   0.9341741   1.0149206
9-12 months    MAL-ED           INDIA                          1                    NA                1.0618527   0.9567720   1.1669333
9-12 months    MAL-ED           NEPAL                          0                    NA                1.0895292   1.0481352   1.1309233
9-12 months    MAL-ED           NEPAL                          1                    NA                1.0783815   0.8478400   1.3089231
9-12 months    PROVIDE          BANGLADESH                     0                    NA                1.0480638   1.0208425   1.0752851
9-12 months    PROVIDE          BANGLADESH                     1                    NA                1.1312745   0.9458731   1.3166760
9-12 months    ResPak           PAKISTAN                       0                    NA                1.2313491   1.0935991   1.3690991
9-12 months    ResPak           PAKISTAN                       1                    NA                0.9880048   0.7039386   1.2720711
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0864269   1.0519152   1.1209386
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0381283   0.8279165   1.2483401
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.8194412   0.7478772   0.8910052
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                1.0435720   0.8157094   1.2714345
12-15 months   CMIN             BANGLADESH                     0                    NA                0.8742243   0.8173728   0.9310758
12-15 months   CMIN             BANGLADESH                     1                    NA                0.8669886   0.6624487   1.0715286
12-15 months   EE               PAKISTAN                       0                    NA                1.0059062   0.9724519   1.0393604
12-15 months   EE               PAKISTAN                       1                    NA                1.0619737   0.9239797   1.1999677
12-15 months   GMS-Nepal        NEPAL                          0                    NA                0.8719643   0.8448957   0.8990328
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.8639950   0.7939755   0.9340144
12-15 months   IRC              INDIA                          0                    NA                0.9692075   0.9233579   1.0150572
12-15 months   IRC              INDIA                          1                    NA                0.8885671   0.7915601   0.9855741
12-15 months   Keneba           GAMBIA                         0                    NA                0.9472001   0.9158404   0.9785599
12-15 months   Keneba           GAMBIA                         1                    NA                0.8366425   0.6539789   1.0193060
12-15 months   MAL-ED           BANGLADESH                     0                    NA                0.9133935   0.8720783   0.9547086
12-15 months   MAL-ED           BANGLADESH                     1                    NA                0.9383731   0.7949101   1.0818360
12-15 months   MAL-ED           INDIA                          0                    NA                0.9011520   0.8604931   0.9418110
12-15 months   MAL-ED           INDIA                          1                    NA                1.0184409   0.8828830   1.1539987
12-15 months   MAL-ED           NEPAL                          0                    NA                0.9516538   0.9117652   0.9915424
12-15 months   MAL-ED           NEPAL                          1                    NA                0.9424017   0.6922109   1.1925924
12-15 months   PROVIDE          BANGLADESH                     0                    NA                0.9612891   0.9346097   0.9879684
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.8930593   0.7874821   0.9986366
12-15 months   ResPak           PAKISTAN                       0                    NA                1.2932180   1.1100973   1.4763387
12-15 months   ResPak           PAKISTAN                       1                    NA                1.2507827   0.8803110   1.6212543
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9310166   0.8940959   0.9679373
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9411934   0.6232647   1.2591220
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7487202   0.6772781   0.8201623
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6667540   0.5442192   0.7892887
15-18 months   CMIN             BANGLADESH                     0                    NA                0.7540762   0.7008788   0.8072737
15-18 months   CMIN             BANGLADESH                     1                    NA                0.6304419   0.3933498   0.8675339
15-18 months   EE               PAKISTAN                       0                    NA                0.8368683   0.8055537   0.8681829
15-18 months   EE               PAKISTAN                       1                    NA                0.8472640   0.6599461   1.0345820
15-18 months   GMS-Nepal        NEPAL                          0                    NA                0.7590648   0.7250052   0.7931244
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.7778881   0.7008316   0.8549446
15-18 months   IRC              INDIA                          0                    NA                0.8778151   0.8353838   0.9202465
15-18 months   IRC              INDIA                          1                    NA                0.7607505   0.6598686   0.8616324
15-18 months   Keneba           GAMBIA                         0                    NA                0.8780698   0.8442392   0.9119003
15-18 months   Keneba           GAMBIA                         1                    NA                0.7331047   0.5592212   0.9069882
15-18 months   MAL-ED           BANGLADESH                     0                    NA                0.8272099   0.7896248   0.8647951
15-18 months   MAL-ED           BANGLADESH                     1                    NA                0.7181236   0.5443402   0.8919070
15-18 months   MAL-ED           INDIA                          0                    NA                0.8416835   0.8031682   0.8801987
15-18 months   MAL-ED           INDIA                          1                    NA                0.8756459   0.7773443   0.9739476
15-18 months   MAL-ED           NEPAL                          0                    NA                0.8462673   0.8040433   0.8884914
15-18 months   MAL-ED           NEPAL                          1                    NA                0.6407881   0.5309745   0.7506018
15-18 months   PROVIDE          BANGLADESH                     0                    NA                0.8538744   0.8294991   0.8782497
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.9517932   0.8035661   1.1000203
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9375853   0.8949515   0.9802192
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9818529   0.7130750   1.2506309
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7143740   0.6446369   0.7841111
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6574863   0.4960542   0.8189183
18-21 months   CMIN             BANGLADESH                     0                    NA                0.8040507   0.7539569   0.8541445
18-21 months   CMIN             BANGLADESH                     1                    NA                0.7711692   0.5775906   0.9647478
18-21 months   EE               PAKISTAN                       0                    NA                0.7293340   0.6983431   0.7603248
18-21 months   EE               PAKISTAN                       1                    NA                0.5737898   0.3208202   0.8267593
18-21 months   GMS-Nepal        NEPAL                          0                    NA                0.9150579   0.8773379   0.9527780
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.8453873   0.7819214   0.9088532
18-21 months   IRC              INDIA                          0                    NA                0.7726354   0.7311158   0.8141550
18-21 months   IRC              INDIA                          1                    NA                0.7022794   0.6044812   0.8000776
18-21 months   Keneba           GAMBIA                         0                    NA                0.8105719   0.7729872   0.8481565
18-21 months   Keneba           GAMBIA                         1                    NA                0.9585203   0.7786316   1.1384089
18-21 months   MAL-ED           BANGLADESH                     0                    NA                0.8099559   0.7749197   0.8449921
18-21 months   MAL-ED           BANGLADESH                     1                    NA                0.9293939   0.7884432   1.0703447
18-21 months   MAL-ED           INDIA                          0                    NA                0.8754625   0.8386131   0.9123119
18-21 months   MAL-ED           INDIA                          1                    NA                0.9162376   0.7959268   1.0365484
18-21 months   MAL-ED           NEPAL                          0                    NA                0.8138453   0.7757939   0.8518967
18-21 months   MAL-ED           NEPAL                          1                    NA                0.9816172   0.6708271   1.2924072
18-21 months   PROVIDE          BANGLADESH                     0                    NA                0.8369348   0.8125880   0.8612815
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.9369337   0.8084674   1.0653999
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7260012   0.6572241   0.7947783
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6170556   0.4853894   0.7487217
21-24 months   EE               PAKISTAN                       0                    NA                0.6598489   0.6223106   0.6973871
21-24 months   EE               PAKISTAN                       1                    NA                0.5007293   0.3082807   0.6931779
21-24 months   GMS-Nepal        NEPAL                          0                    NA                0.7961087   0.7499501   0.8422673
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.8388264   0.6433259   1.0343270
21-24 months   IRC              INDIA                          0                    NA                0.7015867   0.6569594   0.7462139
21-24 months   IRC              INDIA                          1                    NA                0.7535172   0.6519918   0.8550425
21-24 months   Keneba           GAMBIA                         0                    NA                0.7176242   0.6813495   0.7538989
21-24 months   Keneba           GAMBIA                         1                    NA                0.6425428   0.4602116   0.8248740
21-24 months   MAL-ED           BANGLADESH                     0                    NA                0.7615910   0.7263430   0.7968390
21-24 months   MAL-ED           BANGLADESH                     1                    NA                1.0316325   0.7909859   1.2722792
21-24 months   MAL-ED           INDIA                          0                    NA                0.8277589   0.7954042   0.8601137
21-24 months   MAL-ED           INDIA                          1                    NA                0.8000410   0.6993544   0.9007277
21-24 months   MAL-ED           NEPAL                          0                    NA                0.7865269   0.7449992   0.8280545
21-24 months   MAL-ED           NEPAL                          1                    NA                0.6665817   0.4984236   0.8347398
21-24 months   PROVIDE          BANGLADESH                     0                    NA                0.7609684   0.7352324   0.7867044
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.8539130   0.7064239   1.0014020


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
0-3 months     EE               PAKISTAN                       1                    0                 -0.0154067   -0.3112538    0.2804404
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                 -0.1677369   -0.3574372    0.0219635
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                  0.1675445   -0.1822940    0.5173830
0-3 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         1                    0                 -0.5170457   -0.8707284   -0.1633630
0-3 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    0                 -0.3122563   -0.7941811    0.1696685
0-3 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          1                    0                 -0.1125465   -0.4439384    0.2188453
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                 -0.1571050   -0.4375745    0.1233646
0-3 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       1                    0                  0.8690315    0.0491438    1.6889192
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.0034723   -0.2869054    0.2799608
3-6 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMIN             BANGLADESH                     1                    0                 -0.2689343   -0.7115919    0.1737233
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                 -0.2004468   -0.5180486    0.1171551
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                 -0.1779962   -0.2919079   -0.0640845
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                  0.0637310   -0.1214728    0.2489348
3-6 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         1                    0                 -0.1931399   -0.4868715    0.1005917
3-6 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    0                  0.0818415   -0.1105884    0.2742715
3-6 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          1                    0                 -0.1995628   -0.4967300    0.0976043
3-6 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          1                    0                  0.0765553   -0.1950896    0.3482002
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                 -0.2803267   -0.5681770    0.0075236
3-6 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       1                    0                 -0.0146958   -0.5017206    0.4723291
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.3330486   -0.5657278   -0.1003695
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.2426031   -0.4331373   -0.0520689
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                  0.0067481   -0.1828984    0.1963946
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                 -0.0405142   -0.2164971    0.1354688
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                 -0.1155465   -0.2374671    0.0063741
6-9 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         1                    0                 -0.2202313   -0.7838193    0.3433568
6-9 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          1                    0                  0.1492395   -0.0704223    0.3689012
6-9 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          1                    0                  0.2572855    0.1226827    0.3918883
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                  0.0341741   -0.0986045    0.1669527
6-9 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ResPak           PAKISTAN                       1                    0                  0.0513171   -0.2915092    0.3941434
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1533871   -0.3459606    0.0391864
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.0560367   -0.2409867    0.1289132
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                  0.0602854   -0.0986890    0.2192597
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                 -0.1129957   -0.2513648    0.0253735
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                 -0.0202250   -0.1389649    0.0985149
9-12 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         1                    0                  0.2389872   -0.0759192    0.5538937
9-12 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    0                  0.0122935   -0.1389185    0.1635056
9-12 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          1                    0                  0.0873053   -0.0252644    0.1998751
9-12 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          1                    0                 -0.0111477   -0.2453760    0.2230805
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                  0.0832108   -0.1041784    0.2705999
9-12 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       1                    0                 -0.2433442   -0.5590477    0.0723593
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0482986   -0.2613246    0.1647274
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.2241308   -0.0147055    0.4629670
12-15 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMIN             BANGLADESH                     1                    0                 -0.0072357   -0.2195295    0.2050581
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                  0.0560676   -0.0859237    0.1980589
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                 -0.0079693   -0.0830388    0.0671002
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                 -0.0806404   -0.1879370    0.0266561
12-15 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         1                    0                 -0.1105576   -0.2958936    0.0747783
12-15 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    0                  0.0249796   -0.1243139    0.1742731
12-15 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          1                    0                  0.1172888   -0.0242353    0.2588129
12-15 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          1                    0                 -0.0092521   -0.2626027    0.2440984
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.0682297   -0.1771258    0.0406663
12-15 months   ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ResPak           PAKISTAN                       1                    0                 -0.0424354   -0.4556937    0.3708229
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0101767   -0.3098885    0.3302420
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0819662   -0.2238068    0.0598743
15-18 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMIN             BANGLADESH                     1                    0                 -0.1236344   -0.3666212    0.1193524
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                  0.0103958   -0.1795216    0.2003132
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                  0.0188233   -0.0654250    0.1030715
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                 -0.1170646   -0.2265068   -0.0076225
15-18 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         1                    0                 -0.1449651   -0.3221090    0.0321789
15-18 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    0                 -0.1090863   -0.2868877    0.0687150
15-18 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          1                    0                  0.0339625   -0.0716152    0.1395401
15-18 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          1                    0                 -0.2054792   -0.3231309   -0.0878276
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                  0.0979188   -0.0522992    0.2481368
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0442676   -0.2278707    0.3164059
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0568878   -0.2327387    0.1189632
18-21 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMIN             BANGLADESH                     1                    0                 -0.0328815   -0.2328367    0.1670737
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                 -0.1555442   -0.4104050    0.0993166
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                 -0.0696706   -0.1434996    0.0041583
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0703560   -0.1766028    0.0358907
18-21 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         1                    0                  0.1479484   -0.0358246    0.3317214
18-21 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    0                  0.1194380   -0.0258020    0.2646780
18-21 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          1                    0                  0.0407751   -0.0850524    0.1666027
18-21 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          1                    0                  0.1677719   -0.1453389    0.4808827
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                  0.0999989   -0.0307541    0.2307519
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.1089456   -0.2574928    0.0396015
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                 -0.1591196   -0.3551950    0.0369559
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                  0.0427177   -0.1581580    0.2435935
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                  0.0519305   -0.0589703    0.1628313
21-24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         1                    0                 -0.0750814   -0.2609859    0.1108232
21-24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    0                  0.2700416    0.0268272    0.5132559
21-24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          1                    0                 -0.0277179   -0.1334753    0.0780395
21-24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          1                    0                 -0.1199451   -0.2931551    0.0532649
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                  0.0929446   -0.0567730    0.2426622


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0643831   -0.0163082    0.1450743
0-3 months     EE               PAKISTAN                       0                    NA                -0.0009661   -0.0195223    0.0175902
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0194430   -0.0419221    0.0030362
0-3 months     IRC              INDIA                          0                    NA                 0.0294094   -0.0323363    0.0911551
0-3 months     Keneba           GAMBIA                         0                    NA                -0.0164533   -0.0287765   -0.0041301
0-3 months     MAL-ED           BANGLADESH                     0                    NA                -0.0089950   -0.0243582    0.0063682
0-3 months     MAL-ED           INDIA                          0                    NA                -0.0079951   -0.0319084    0.0159182
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.0036821   -0.0109320    0.0035677
0-3 months     ResPak           PAKISTAN                       0                    NA                 0.0779900   -0.0141609    0.1701409
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0004977   -0.0411202    0.0401249
3-6 months     CMIN             BANGLADESH                     0                    NA                -0.0145370   -0.0400268    0.0109528
3-6 months     EE               PAKISTAN                       0                    NA                -0.0128859   -0.0341024    0.0083307
3-6 months     GMS-Nepal        NEPAL                          0                    NA                -0.0201147   -0.0339630   -0.0062664
3-6 months     IRC              INDIA                          0                    NA                 0.0107828   -0.0206407    0.0422062
3-6 months     Keneba           GAMBIA                         0                    NA                -0.0064194   -0.0163512    0.0035124
3-6 months     MAL-ED           BANGLADESH                     0                    NA                 0.0017715   -0.0032795    0.0068224
3-6 months     MAL-ED           INDIA                          0                    NA                -0.0156180   -0.0398885    0.0086526
3-6 months     MAL-ED           NEPAL                          0                    NA                 0.0016428   -0.0052967    0.0085823
3-6 months     PROVIDE          BANGLADESH                     0                    NA                -0.0065628   -0.0145219    0.0013962
3-6 months     ResPak           PAKISTAN                       0                    NA                -0.0013447   -0.0459142    0.0432247
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0092291   -0.0161928   -0.0022653
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0357684   -0.0654419   -0.0060949
6-9 months     EE               PAKISTAN                       0                    NA                 0.0004662   -0.0126358    0.0135681
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0042379   -0.0226797    0.0142040
6-9 months     IRC              INDIA                          0                    NA                -0.0196372   -0.0407844    0.0015100
6-9 months     Keneba           GAMBIA                         0                    NA                -0.0063577   -0.0228121    0.0100967
6-9 months     MAL-ED           INDIA                          0                    NA                 0.0116796   -0.0062781    0.0296373
6-9 months     MAL-ED           NEPAL                          0                    NA                 0.0067118    0.0003445    0.0130790
6-9 months     PROVIDE          BANGLADESH                     0                    NA                 0.0007258   -0.0026185    0.0040701
6-9 months     ResPak           PAKISTAN                       0                    NA                 0.0059498   -0.0338933    0.0457929
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0040256   -0.0092313    0.0011800
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0080564   -0.0347360    0.0186232
9-12 months    EE               PAKISTAN                       0                    NA                 0.0040683   -0.0067853    0.0149219
9-12 months    GMS-Nepal        NEPAL                          0                    NA                -0.0129347   -0.0291101    0.0032407
9-12 months    IRC              INDIA                          0                    NA                -0.0034469   -0.0236970    0.0168033
9-12 months    Keneba           GAMBIA                         0                    NA                 0.0066385   -0.0025092    0.0157863
9-12 months    MAL-ED           BANGLADESH                     0                    NA                 0.0002732   -0.0035146    0.0040609
9-12 months    MAL-ED           INDIA                          0                    NA                 0.0069229   -0.0025183    0.0163641
9-12 months    MAL-ED           NEPAL                          0                    NA                -0.0002921   -0.0064334    0.0058493
9-12 months    PROVIDE          BANGLADESH                     0                    NA                 0.0019112   -0.0028850    0.0067074
9-12 months    ResPak           PAKISTAN                       0                    NA                -0.0254240   -0.0607506    0.0099025
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0012993   -0.0070490    0.0044504
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0345881   -0.0033123    0.0724885
12-15 months   CMIN             BANGLADESH                     0                    NA                -0.0002713   -0.0082352    0.0076925
12-15 months   EE               PAKISTAN                       0                    NA                 0.0041532   -0.0064969    0.0148032
12-15 months   GMS-Nepal        NEPAL                          0                    NA                -0.0009103   -0.0094881    0.0076676
12-15 months   IRC              INDIA                          0                    NA                -0.0138536   -0.0325328    0.0048256
12-15 months   Keneba           GAMBIA                         0                    NA                -0.0032097   -0.0086888    0.0022694
12-15 months   MAL-ED           BANGLADESH                     0                    NA                 0.0007070   -0.0035551    0.0049691
12-15 months   MAL-ED           INDIA                          0                    NA                 0.0093416   -0.0026697    0.0213529
12-15 months   MAL-ED           NEPAL                          0                    NA                -0.0002414   -0.0068533    0.0063705
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0015390   -0.0043945    0.0013165
12-15 months   ResPak           PAKISTAN                       0                    NA                -0.0029954   -0.0322591    0.0262682
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002198   -0.0077825    0.0082221
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0129284   -0.0355419    0.0096851
15-18 months   CMIN             BANGLADESH                     0                    NA                -0.0060679   -0.0186830    0.0065471
15-18 months   EE               PAKISTAN                       0                    NA                 0.0007853   -0.0135646    0.0151352
15-18 months   GMS-Nepal        NEPAL                          0                    NA                 0.0019814   -0.0069021    0.0108649
15-18 months   IRC              INDIA                          0                    NA                -0.0186936   -0.0366926   -0.0006946
15-18 months   Keneba           GAMBIA                         0                    NA                -0.0042672   -0.0096595    0.0011252
15-18 months   MAL-ED           BANGLADESH                     0                    NA                -0.0030873   -0.0086802    0.0025055
15-18 months   MAL-ED           INDIA                          0                    NA                 0.0027050   -0.0057893    0.0111992
15-18 months   MAL-ED           NEPAL                          0                    NA                -0.0054312   -0.0107357   -0.0001266
15-18 months   PROVIDE          BANGLADESH                     0                    NA                 0.0022254   -0.0017313    0.0061822
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0009362   -0.0058846    0.0077569
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0086650   -0.0355496    0.0182196
18-21 months   CMIN             BANGLADESH                     0                    NA                -0.0011957   -0.0085276    0.0061362
18-21 months   EE               PAKISTAN                       0                    NA                -0.0110228   -0.0297415    0.0076958
18-21 months   GMS-Nepal        NEPAL                          0                    NA                -0.0079352   -0.0165956    0.0007253
18-21 months   IRC              INDIA                          0                    NA                -0.0113538   -0.0286973    0.0059898
18-21 months   Keneba           GAMBIA                         0                    NA                 0.0039784   -0.0011472    0.0091041
18-21 months   MAL-ED           BANGLADESH                     0                    NA                 0.0034288   -0.0015443    0.0084019
18-21 months   MAL-ED           INDIA                          0                    NA                 0.0032476   -0.0068774    0.0133725
18-21 months   MAL-ED           NEPAL                          0                    NA                 0.0044345   -0.0045547    0.0134236
18-21 months   PROVIDE          BANGLADESH                     0                    NA                 0.0024029   -0.0011118    0.0059177
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0168436   -0.0402340    0.0065469
21-24 months   EE               PAKISTAN                       0                    NA                -0.0105079   -0.0255010    0.0044852
21-24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0040443   -0.0150204    0.0231089
21-24 months   IRC              INDIA                          0                    NA                 0.0085659   -0.0098276    0.0269593
21-24 months   Keneba           GAMBIA                         0                    NA                -0.0020198   -0.0070733    0.0030337
21-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0078273   -0.0015520    0.0172066
21-24 months   MAL-ED           INDIA                          0                    NA                -0.0022076   -0.0106877    0.0062724
21-24 months   MAL-ED           NEPAL                          0                    NA                -0.0031704   -0.0083908    0.0020501
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0021707   -0.0017815    0.0061229
