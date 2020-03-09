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
![](/tmp/c9fd84db-ba85-4fa9-ad2f-be81346effc6/d1d866b7-c39c-4e6d-86f0-13c1e4bd2d23/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c9fd84db-ba85-4fa9-ad2f-be81346effc6/d1d866b7-c39c-4e6d-86f0-13c1e4bd2d23/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c9fd84db-ba85-4fa9-ad2f-be81346effc6/d1d866b7-c39c-4e6d-86f0-13c1e4bd2d23/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.1194682   -0.2286263   -0.0103101
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                 0.1897993   -0.1537516    0.5333502
0-3 months     EE               PAKISTAN                       0                    NA                -0.2145088   -0.2590027   -0.1700150
0-3 months     EE               PAKISTAN                       1                    NA                -0.2396530   -0.3945985   -0.0847075
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0215111   -0.0472984    0.0042762
0-3 months     GMS-Nepal        NEPAL                          1                    NA                -0.1041111   -0.1977987   -0.0104235
0-3 months     IRC              INDIA                          0                    NA                -0.2676211   -0.3252289   -0.2100133
0-3 months     IRC              INDIA                          1                    NA                -0.1945542   -0.3528737   -0.0362347
0-3 months     Keneba           GAMBIA                         0                    NA                -0.2772001   -0.3011769   -0.2532234
0-3 months     Keneba           GAMBIA                         1                    NA                -0.4411293   -0.6501926   -0.2320660
0-3 months     MAL-ED           BANGLADESH                     0                    NA                -0.1178059   -0.1515052   -0.0841065
0-3 months     MAL-ED           BANGLADESH                     1                    NA                -0.2718283   -0.5330637   -0.0105929
0-3 months     MAL-ED           INDIA                          0                    NA                -0.0558372   -0.1086644   -0.0030099
0-3 months     MAL-ED           INDIA                          1                    NA                -0.0995629   -0.2687981    0.0696724
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.1849761   -0.2025526   -0.1673996
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.3272796   -0.4446713   -0.2098879
0-3 months     ResPak           PAKISTAN                       0                    NA                -0.2582215   -0.4069143   -0.1095286
0-3 months     ResPak           PAKISTAN                       1                    NA                 0.1325506   -0.2449397    0.5100409
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0985467   -0.1501976   -0.0468959
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.1689469   -0.2945785   -0.0433152
3-6 months     CMIN             BANGLADESH                     0                    NA                -0.0020214   -0.0341879    0.0301450
3-6 months     CMIN             BANGLADESH                     1                    NA                -0.0021665   -0.2055539    0.2012209
3-6 months     EE               PAKISTAN                       0                    NA                 0.0728443    0.0457904    0.0998982
3-6 months     EE               PAKISTAN                       1                    NA                -0.0529575   -0.2327116    0.1267967
3-6 months     GMS-Nepal        NEPAL                          0                    NA                -0.1523834   -0.1723043   -0.1324625
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.2221019   -0.2732427   -0.1709610
3-6 months     IRC              INDIA                          0                    NA                -0.0550726   -0.0873845   -0.0227606
3-6 months     IRC              INDIA                          1                    NA                -0.0447718   -0.1269691    0.0374255
3-6 months     Keneba           GAMBIA                         0                    NA                -0.0151816   -0.0337367    0.0033735
3-6 months     Keneba           GAMBIA                         1                    NA                -0.1360670   -0.2510234   -0.0211106
3-6 months     MAL-ED           BANGLADESH                     0                    NA                -0.0232953   -0.0473710    0.0007805
3-6 months     MAL-ED           BANGLADESH                     1                    NA                 0.0161823   -0.0730783    0.1054429
3-6 months     MAL-ED           INDIA                          0                    NA                -0.0298788   -0.0596535   -0.0001040
3-6 months     MAL-ED           INDIA                          1                    NA                -0.1789831   -0.3136435   -0.0443227
3-6 months     MAL-ED           NEPAL                          0                    NA                -0.0236803   -0.0507395    0.0033790
3-6 months     MAL-ED           NEPAL                          1                    NA                 0.0043642   -0.1297227    0.1384511
3-6 months     PROVIDE          BANGLADESH                     0                    NA                -0.0240854   -0.0400582   -0.0081125
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0702102   -0.1920285    0.0516081
3-6 months     ResPak           PAKISTAN                       0                    NA                 0.0311800   -0.0355967    0.0979566
3-6 months     ResPak           PAKISTAN                       1                    NA                 0.0223074   -0.2184010    0.2630159
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0800699   -0.0968540   -0.0632859
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2233804   -0.3362093   -0.1105516
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0707017   -0.1081656   -0.0332378
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.1781454   -0.2558835   -0.1004072
6-9 months     EE               PAKISTAN                       0                    NA                -0.0857439   -0.1069464   -0.0645413
6-9 months     EE               PAKISTAN                       1                    NA                -0.0623614   -0.1594627    0.0347400
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0429754   -0.0607247   -0.0252262
6-9 months     GMS-Nepal        NEPAL                          1                    NA                -0.0508128   -0.1252176    0.0235921
6-9 months     IRC              INDIA                          0                    NA                -0.0052807   -0.0292765    0.0187151
6-9 months     IRC              INDIA                          1                    NA                -0.0759366   -0.1254492   -0.0264240
6-9 months     Keneba           GAMBIA                         0                    NA                -0.0075169   -0.0296455    0.0146116
6-9 months     Keneba           GAMBIA                         1                    NA                -0.0647860   -0.3499164    0.2203445
6-9 months     MAL-ED           INDIA                          0                    NA                -0.0747276   -0.0981800   -0.0512751
6-9 months     MAL-ED           INDIA                          1                    NA                -0.0034119   -0.1062272    0.0994034
6-9 months     MAL-ED           NEPAL                          0                    NA                -0.0377759   -0.0573362   -0.0182156
6-9 months     MAL-ED           NEPAL                          1                    NA                 0.0855168    0.0291943    0.1418393
6-9 months     PROVIDE          BANGLADESH                     0                    NA                -0.0616875   -0.0727895   -0.0505856
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0369708   -0.0903749    0.0164334
6-9 months     ResPak           PAKISTAN                       0                    NA                 0.0121464   -0.0373611    0.0616539
6-9 months     ResPak           PAKISTAN                       1                    NA                 0.0393724   -0.1477243    0.2264691
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0506232   -0.0669927   -0.0342537
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1087146   -0.1843804   -0.0330489
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.1169051   -0.1482575   -0.0855527
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.1320116   -0.2088006   -0.0552227
9-12 months    EE               PAKISTAN                       0                    NA                -0.1036277   -0.1186563   -0.0885991
9-12 months    EE               PAKISTAN                       1                    NA                -0.0523994   -0.1116863    0.0068874
9-12 months    GMS-Nepal        NEPAL                          0                    NA                -0.0748993   -0.0885957   -0.0612028
9-12 months    GMS-Nepal        NEPAL                          1                    NA                -0.1130069   -0.1686264   -0.0573874
9-12 months    IRC              INDIA                          0                    NA                -0.0330722   -0.0509292   -0.0152153
9-12 months    IRC              INDIA                          1                    NA                -0.0507691   -0.0996384   -0.0018999
9-12 months    Keneba           GAMBIA                         0                    NA                -0.1024786   -0.1199371   -0.0850201
9-12 months    Keneba           GAMBIA                         1                    NA                 0.1144888   -0.0122092    0.2411868
9-12 months    MAL-ED           BANGLADESH                     0                    NA                -0.0870179   -0.1035249   -0.0705110
9-12 months    MAL-ED           BANGLADESH                     1                    NA                -0.0954527   -0.1542657   -0.0366396
9-12 months    MAL-ED           INDIA                          0                    NA                -0.0938388   -0.1105767   -0.0771009
9-12 months    MAL-ED           INDIA                          1                    NA                -0.0749039   -0.1243266   -0.0254811
9-12 months    MAL-ED           NEPAL                          0                    NA                -0.0623088   -0.0794386   -0.0451790
9-12 months    MAL-ED           NEPAL                          1                    NA                -0.0618386   -0.1642341    0.0405569
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0641447   -0.0753250   -0.0529644
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0423328   -0.0990634    0.0143978
9-12 months    ResPak           PAKISTAN                       0                    NA                 0.0070549   -0.0514150    0.0655248
9-12 months    ResPak           PAKISTAN                       1                    NA                -0.1647375   -0.2873443   -0.0421307
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0665582   -0.0810757   -0.0520407
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0588621   -0.1487938    0.0310696
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0870693   -0.1161736   -0.0579650
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                 0.0287273   -0.0705546    0.1280093
12-15 months   CMIN             BANGLADESH                     0                    NA                -0.0608037   -0.0829329   -0.0386744
12-15 months   CMIN             BANGLADESH                     1                    NA                -0.0628352   -0.1453822    0.0197118
12-15 months   EE               PAKISTAN                       0                    NA                -0.0029278   -0.0161134    0.0102578
12-15 months   EE               PAKISTAN                       1                    NA                 0.0294628   -0.0298406    0.0887663
12-15 months   GMS-Nepal        NEPAL                          0                    NA                -0.0707480   -0.0809078   -0.0605883
12-15 months   GMS-Nepal        NEPAL                          1                    NA                -0.0552868   -0.0828319   -0.0277417
12-15 months   IRC              INDIA                          0                    NA                -0.0407908   -0.0592713   -0.0223103
12-15 months   IRC              INDIA                          1                    NA                -0.0711086   -0.1100728   -0.0321443
12-15 months   Keneba           GAMBIA                         0                    NA                -0.0495304   -0.0618770   -0.0371838
12-15 months   Keneba           GAMBIA                         1                    NA                -0.0958132   -0.1736492   -0.0179773
12-15 months   MAL-ED           BANGLADESH                     0                    NA                -0.0554893   -0.0714144   -0.0395641
12-15 months   MAL-ED           BANGLADESH                     1                    NA                -0.0633703   -0.1122762   -0.0144645
12-15 months   MAL-ED           INDIA                          0                    NA                -0.0597748   -0.0755650   -0.0439846
12-15 months   MAL-ED           INDIA                          1                    NA                -0.0256757   -0.0829824    0.0316311
12-15 months   MAL-ED           NEPAL                          0                    NA                -0.0575599   -0.0731836   -0.0419363
12-15 months   MAL-ED           NEPAL                          1                    NA                -0.0535358   -0.1559149    0.0488432
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0407665   -0.0511737   -0.0303593
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0533861   -0.0840601   -0.0227121
12-15 months   ResPak           PAKISTAN                       0                    NA                 0.0838368    0.0090320    0.1586416
12-15 months   ResPak           PAKISTAN                       1                    NA                 0.0486386   -0.0894493    0.1867265
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0650433   -0.0796143   -0.0504723
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0256204   -0.1228797    0.0716388
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0646722   -0.0911938   -0.0381507
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0830662   -0.1297521   -0.0363804
15-18 months   CMIN             BANGLADESH                     0                    NA                -0.0605823   -0.0804222   -0.0407423
15-18 months   CMIN             BANGLADESH                     1                    NA                -0.1044114   -0.1897699   -0.0190529
15-18 months   EE               PAKISTAN                       0                    NA                -0.0263019   -0.0372594   -0.0153445
15-18 months   EE               PAKISTAN                       1                    NA                -0.0185353   -0.0894397    0.0523690
15-18 months   GMS-Nepal        NEPAL                          0                    NA                -0.0683932   -0.0807293   -0.0560571
15-18 months   GMS-Nepal        NEPAL                          1                    NA                -0.0520276   -0.0794263   -0.0246289
15-18 months   IRC              INDIA                          0                    NA                -0.0298986   -0.0457471   -0.0140500
15-18 months   IRC              INDIA                          1                    NA                -0.0815390   -0.1171732   -0.0459047
15-18 months   Keneba           GAMBIA                         0                    NA                -0.0335863   -0.0460912   -0.0210814
15-18 months   Keneba           GAMBIA                         1                    NA                -0.0479305   -0.1193732    0.0235123
15-18 months   MAL-ED           BANGLADESH                     0                    NA                -0.0444012   -0.0581073   -0.0306951
15-18 months   MAL-ED           BANGLADESH                     1                    NA                -0.0936249   -0.1551780   -0.0320718
15-18 months   MAL-ED           INDIA                          0                    NA                -0.0383993   -0.0520493   -0.0247494
15-18 months   MAL-ED           INDIA                          1                    NA                -0.0272800   -0.0623359    0.0077759
15-18 months   MAL-ED           NEPAL                          0                    NA                -0.0531354   -0.0684867   -0.0377841
15-18 months   MAL-ED           NEPAL                          1                    NA                -0.1212035   -0.1653618   -0.0770453
15-18 months   PROVIDE          BANGLADESH                     0                    NA                -0.0387424   -0.0476479   -0.0298370
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0300877   -0.0548289   -0.0053465
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0192872   -0.0348017   -0.0037727
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0705059   -0.1672890    0.0262771
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0412071   -0.0654805   -0.0169337
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0484666   -0.1088311    0.0118978
18-21 months   CMIN             BANGLADESH                     0                    NA                -0.0064569   -0.0238353    0.0109215
18-21 months   CMIN             BANGLADESH                     1                    NA                -0.0074865   -0.0758629    0.0608899
18-21 months   EE               PAKISTAN                       0                    NA                -0.0324583   -0.0426181   -0.0222984
18-21 months   EE               PAKISTAN                       1                    NA                -0.0509551   -0.1480895    0.0461793
18-21 months   GMS-Nepal        NEPAL                          0                    NA                 0.0182436    0.0052040    0.0312832
18-21 months   GMS-Nepal        NEPAL                          1                    NA                 0.0046759   -0.0173571    0.0267089
18-21 months   IRC              INDIA                          0                    NA                -0.0348076   -0.0491312   -0.0204840
18-21 months   IRC              INDIA                          1                    NA                -0.0578259   -0.0924071   -0.0232446
18-21 months   Keneba           GAMBIA                         0                    NA                -0.0236806   -0.0367632   -0.0105980
18-21 months   Keneba           GAMBIA                         1                    NA                 0.0417824   -0.0286294    0.1121942
18-21 months   MAL-ED           BANGLADESH                     0                    NA                -0.0163034   -0.0281659   -0.0044408
18-21 months   MAL-ED           BANGLADESH                     1                    NA                 0.0109187   -0.0386464    0.0604839
18-21 months   MAL-ED           INDIA                          0                    NA                 0.0051352   -0.0068303    0.0171007
18-21 months   MAL-ED           INDIA                          1                    NA                -0.0315103   -0.0645012    0.0014805
18-21 months   MAL-ED           NEPAL                          0                    NA                -0.0299867   -0.0429796   -0.0169937
18-21 months   MAL-ED           NEPAL                          1                    NA                 0.0411934   -0.0619026    0.1442895
18-21 months   PROVIDE          BANGLADESH                     0                    NA                -0.0115604   -0.0199193   -0.0032016
18-21 months   PROVIDE          BANGLADESH                     1                    NA                 0.0134587   -0.0182284    0.0451458
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0209074   -0.0030182    0.0448329
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0020701   -0.0492657    0.0451256
21-24 months   EE               PAKISTAN                       0                    NA                -0.0034485   -0.0159546    0.0090576
21-24 months   EE               PAKISTAN                       1                    NA                -0.0499535   -0.1108024    0.0108953
21-24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0474312    0.0315674    0.0632951
21-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0481958   -0.0227840    0.1191756
21-24 months   IRC              INDIA                          0                    NA                -0.0172425   -0.0320044   -0.0024806
21-24 months   IRC              INDIA                          1                    NA                 0.0203484   -0.0132488    0.0539456
21-24 months   Keneba           GAMBIA                         0                    NA                 0.0160984    0.0039412    0.0282557
21-24 months   Keneba           GAMBIA                         1                    NA                -0.0206642   -0.0842192    0.0428909
21-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0234628    0.0113338    0.0355917
21-24 months   MAL-ED           BANGLADESH                     1                    NA                 0.0978252    0.0114454    0.1842050
21-24 months   MAL-ED           INDIA                          0                    NA                 0.0315462    0.0201237    0.0429688
21-24 months   MAL-ED           INDIA                          1                    NA                -0.0165325   -0.0538788    0.0208138
21-24 months   MAL-ED           NEPAL                          0                    NA                 0.0065536   -0.0074394    0.0205466
21-24 months   MAL-ED           NEPAL                          1                    NA                -0.0350176   -0.0763308    0.0062956
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0450745    0.0361979    0.0539511
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.1281739    0.0958885    0.1604593


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     EE               PAKISTAN                       NA                   NA                -0.2160892   -0.2586792   -0.1734992
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     IRC              INDIA                          NA                   NA                -0.2555919   -0.3110566   -0.2001272
0-3 months     Keneba           GAMBIA                         NA                   NA                -0.2849311   -0.3090047   -0.2608575
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     MAL-ED           INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ResPak           PAKISTAN                       NA                   NA                -0.2231522   -0.3648888   -0.0814156
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     CMIN             BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
3-6 months     EE               PAKISTAN                       NA                   NA                 0.0663303    0.0389725    0.0936881
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     IRC              INDIA                          NA                   NA                -0.0524688   -0.0826167   -0.0223210
3-6 months     Keneba           GAMBIA                         NA                   NA                -0.0171122   -0.0356078    0.0013835
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     MAL-ED           INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     MAL-ED           NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ResPak           PAKISTAN                       NA                   NA                 0.0281515   -0.0356303    0.0919334
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0847522   -0.1013980   -0.0681065
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0832899   -0.1175028   -0.0490769
6-9 months     EE               PAKISTAN                       NA                   NA                -0.0848755   -0.1055404   -0.0642105
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0438207   -0.0614260   -0.0262155
6-9 months     IRC              INDIA                          NA                   NA                -0.0159998   -0.0376393    0.0056398
6-9 months     Keneba           GAMBIA                         NA                   NA                -0.0102456   -0.0329805    0.0124893
6-9 months     MAL-ED           INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     MAL-ED           NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ResPak           PAKISTAN                       NA                   NA                 0.0119244   -0.0346261    0.0584748
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0522228   -0.0682679   -0.0361776
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1184890   -0.1472404   -0.0897376
9-12 months    EE               PAKISTAN                       NA                   NA                -0.1011889   -0.1159053   -0.0864725
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                -0.0797218   -0.0934629   -0.0659807
9-12 months    IRC              INDIA                          NA                   NA                -0.0360825   -0.0530606   -0.0191044
9-12 months    Keneba           GAMBIA                         NA                   NA                -0.0993813   -0.1167422   -0.0820204
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED           INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    MAL-ED           NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ResPak           PAKISTAN                       NA                   NA                -0.0042570   -0.0582999    0.0497860
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0661472   -0.0804252   -0.0518691
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0709565   -0.0992698   -0.0426432
12-15 months   CMIN             BANGLADESH                     NA                   NA                -0.0608799   -0.0824031   -0.0393566
12-15 months   EE               PAKISTAN                       NA                   NA                -0.0004721   -0.0133950    0.0124507
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0699693   -0.0794782   -0.0604605
12-15 months   IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   Keneba           GAMBIA                         NA                   NA                -0.0503955   -0.0625675   -0.0382235
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED           INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   MAL-ED           NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ResPak           PAKISTAN                       NA                   NA                 0.0813522    0.0111213    0.1515831
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0647181   -0.0791954   -0.0502407
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0674551   -0.0910572   -0.0438530
15-18 months   CMIN             BANGLADESH                     NA                   NA                -0.0627334   -0.0821141   -0.0433527
15-18 months   EE               PAKISTAN                       NA                   NA                -0.0256550   -0.0369587   -0.0143512
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0665567   -0.0780107   -0.0551027
15-18 months   IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   Keneba           GAMBIA                         NA                   NA                -0.0341589   -0.0464167   -0.0219011
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   MAL-ED           INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   MAL-ED           NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0190863   -0.0344142   -0.0037583
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0420349   -0.0645042   -0.0195656
18-21 months   CMIN             BANGLADESH                     NA                   NA                -0.0064943   -0.0234244    0.0104357
18-21 months   EE               PAKISTAN                       NA                   NA                -0.0357223   -0.0470222   -0.0244224
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0167223    0.0048758    0.0285689
18-21 months   IRC              INDIA                          NA                   NA                -0.0394980   -0.0527459   -0.0262500
18-21 months   Keneba           GAMBIA                         NA                   NA                -0.0221083   -0.0349414   -0.0092752
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   MAL-ED           INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   MAL-ED           NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0184186   -0.0026901    0.0395272
21-24 months   EE               PAKISTAN                       NA                   NA                -0.0065196   -0.0190677    0.0060285
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0484956    0.0328354    0.0641558
21-24 months   IRC              INDIA                          NA                   NA                -0.0132634   -0.0268096    0.0002828
21-24 months   Keneba           GAMBIA                         NA                   NA                 0.0154561    0.0035146    0.0273976
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   MAL-ED           INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   MAL-ED           NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.3092675   -0.0512081    0.6697432
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       1                    0                 -0.0251442   -0.1864471    0.1361587
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                 -0.0826000   -0.1797124    0.0145124
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                  0.0730668   -0.0941271    0.2402608
0-3 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         1                    0                 -0.1639292   -0.3744436    0.0465852
0-3 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    0                 -0.1540224   -0.4174225    0.1093776
0-3 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          1                    0                 -0.0437257   -0.2213266    0.1338752
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                 -0.1423035   -0.2608171   -0.0237899
0-3 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       1                    0                  0.3907721   -0.0149476    0.7964918
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.0704001   -0.2067069    0.0659067
3-6 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMIN             BANGLADESH                     1                    0                 -0.0001451   -0.2058670    0.2055768
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                 -0.1258018   -0.3077578    0.0561543
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                 -0.0697185   -0.1247710   -0.0146660
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                  0.0103008   -0.0780551    0.0986567
3-6 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         1                    0                 -0.1208854   -0.2373303   -0.0044406
3-6 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    0                  0.0394776   -0.0529729    0.1319280
3-6 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          1                    0                 -0.1491043   -0.2872296   -0.0109790
3-6 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          1                    0                  0.0280445   -0.1087455    0.1648344
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                 -0.0461248   -0.1694979    0.0772482
3-6 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       1                    0                 -0.0088725   -0.2586975    0.2409525
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1433105   -0.2573947   -0.0292262
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.1074437   -0.1939560   -0.0209314
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                  0.0233825   -0.0759141    0.1226791
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                 -0.0078373   -0.0842326    0.0685579
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                 -0.0706559   -0.1257651   -0.0155467
6-9 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         1                    0                 -0.0572690   -0.3433539    0.2288158
6-9 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          1                    0                  0.0713157   -0.0339364    0.1765677
6-9 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          1                    0                  0.1232927    0.0636703    0.1829151
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                  0.0247167   -0.0298474    0.0792808
6-9 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ResPak           PAKISTAN                       1                    0                  0.0272259   -0.1689929    0.2234448
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0580914   -0.1355159    0.0193331
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.0151065   -0.0979936    0.0677806
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                  0.0512283   -0.0099369    0.1123934
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                 -0.0381077   -0.0957070    0.0194916
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                 -0.0176969   -0.0696436    0.0342497
9-12 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         1                    0                  0.2169674    0.0889818    0.3449529
9-12 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    0                 -0.0084347   -0.0695204    0.0526509
9-12 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          1                    0                  0.0189350   -0.0332519    0.0711218
9-12 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          1                    0                  0.0004702   -0.1033482    0.1042887
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                  0.0218119   -0.0359722    0.0795961
9-12 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       1                    0                 -0.1717924   -0.3086444   -0.0349404
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0076961   -0.0834115    0.0988036
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.1157966    0.0125533    0.2190400
12-15 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMIN             BANGLADESH                     1                    0                 -0.0020315   -0.0874933    0.0834302
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                  0.0323907   -0.0284073    0.0931886
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                  0.0154612   -0.0139039    0.0448264
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                 -0.0303177   -0.0732855    0.0126500
12-15 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         1                    0                 -0.0462829   -0.1251942    0.0326285
12-15 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    0                 -0.0078811   -0.0593145    0.0435523
12-15 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          1                    0                  0.0340991   -0.0252637    0.0934620
12-15 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          1                    0                  0.0040241   -0.0995403    0.1075885
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.0126196   -0.0448436    0.0196044
12-15 months   ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ResPak           PAKISTAN                       1                    0                 -0.0351982   -0.1922460    0.1218497
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0394229   -0.0588134    0.1376592
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0183940   -0.0719544    0.0351664
15-18 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMIN             BANGLADESH                     1                    0                 -0.0438291   -0.1314630    0.0438047
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                  0.0077666   -0.0639828    0.0795160
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                  0.0163656   -0.0134963    0.0462276
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                 -0.0516404   -0.0903801   -0.0129007
15-18 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         1                    0                 -0.0143442   -0.0870396    0.0583513
15-18 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    0                 -0.0492238   -0.1122844    0.0138368
15-18 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          1                    0                  0.0111193   -0.0265505    0.0487891
15-18 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          1                    0                 -0.0680681   -0.1148187   -0.0213176
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                  0.0086547   -0.0175727    0.0348821
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0512188   -0.1493104    0.0468729
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0072596   -0.0721305    0.0576114
18-21 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMIN             BANGLADESH                     1                    0                 -0.0010296   -0.0715799    0.0695206
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                 -0.0184968   -0.1162601    0.0792665
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                 -0.0135677   -0.0391677    0.0120324
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0230183   -0.0603827    0.0143462
18-21 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         1                    0                  0.0654630   -0.0062104    0.1371364
18-21 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    0                  0.0272221   -0.0237428    0.0781870
18-21 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          1                    0                 -0.0366455   -0.0716955   -0.0015956
18-21 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          1                    0                  0.0711801   -0.0327314    0.1750917
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                  0.0250191   -0.0077256    0.0577638
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0229774   -0.0762221    0.0302673
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                 -0.0465050   -0.1086258    0.0156157
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                  0.0007646   -0.0721183    0.0736476
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                  0.0375909    0.0010664    0.0741154
21-24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         1                    0                 -0.0367626   -0.1015377    0.0280125
21-24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    0                  0.0743624   -0.0128648    0.1615897
21-24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          1                    0                 -0.0480787   -0.0872040   -0.0089535
21-24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          1                    0                 -0.0415712   -0.0851898    0.0020474
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                  0.0830994    0.0496257    0.1165730


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0316296   -0.0101664    0.0734257
0-3 months     EE               PAKISTAN                       0                    NA                -0.0015804   -0.0112609    0.0081001
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0102569   -0.0214051    0.0008913
0-3 months     IRC              INDIA                          0                    NA                 0.0120292   -0.0171738    0.0412322
0-3 months     Keneba           GAMBIA                         0                    NA                -0.0077310   -0.0141364   -0.0013255
0-3 months     MAL-ED           BANGLADESH                     0                    NA                -0.0044369   -0.0126896    0.0038159
0-3 months     MAL-ED           INDIA                          0                    NA                -0.0032011   -0.0147583    0.0083561
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.0030641   -0.0064313    0.0003030
0-3 months     ResPak           PAKISTAN                       0                    NA                 0.0350693   -0.0090677    0.0792062
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0005853   -0.0188580    0.0200286
3-6 months     CMIN             BANGLADESH                     0                    NA                -0.0065592   -0.0183979    0.0052795
3-6 months     EE               PAKISTAN                       0                    NA                -0.0065139   -0.0172080    0.0041801
3-6 months     GMS-Nepal        NEPAL                          0                    NA                -0.0090143   -0.0154620   -0.0025667
3-6 months     IRC              INDIA                          0                    NA                 0.0026037   -0.0122749    0.0174823
3-6 months     Keneba           GAMBIA                         0                    NA                -0.0019306   -0.0063983    0.0025372
3-6 months     MAL-ED           BANGLADESH                     0                    NA                 0.0008545   -0.0015731    0.0032821
3-6 months     MAL-ED           INDIA                          0                    NA                -0.0061614   -0.0172663    0.0049435
3-6 months     MAL-ED           NEPAL                          0                    NA                 0.0006018   -0.0028577    0.0040613
3-6 months     PROVIDE          BANGLADESH                     0                    NA                -0.0028771   -0.0065804    0.0008262
3-6 months     ResPak           PAKISTAN                       0                    NA                -0.0030285   -0.0242458    0.0181889
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0046823   -0.0080804   -0.0012842
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0125882   -0.0260544    0.0008780
6-9 months     EE               PAKISTAN                       0                    NA                 0.0008684   -0.0052300    0.0069668
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0008453   -0.0084985    0.0068079
6-9 months     IRC              INDIA                          0                    NA                -0.0107191   -0.0203528   -0.0010853
6-9 months     Keneba           GAMBIA                         0                    NA                -0.0027287   -0.0102461    0.0047888
6-9 months     MAL-ED           INDIA                          0                    NA                 0.0043920   -0.0032669    0.0120509
6-9 months     MAL-ED           NEPAL                          0                    NA                 0.0032163    0.0002334    0.0061992
6-9 months     PROVIDE          BANGLADESH                     0                    NA                 0.0002611   -0.0012581    0.0017804
6-9 months     ResPak           PAKISTAN                       0                    NA                -0.0002221   -0.0203785    0.0199344
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0015996   -0.0039395    0.0007404
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0015839   -0.0126604    0.0094926
9-12 months    EE               PAKISTAN                       0                    NA                 0.0024388   -0.0023364    0.0072140
9-12 months    GMS-Nepal        NEPAL                          0                    NA                -0.0048225   -0.0117352    0.0020902
9-12 months    IRC              INDIA                          0                    NA                -0.0030103   -0.0117735    0.0057529
9-12 months    Keneba           GAMBIA                         0                    NA                 0.0030973   -0.0008981    0.0070928
9-12 months    MAL-ED           BANGLADESH                     0                    NA                -0.0001874   -0.0017232    0.0013484
9-12 months    MAL-ED           INDIA                          0                    NA                 0.0025989   -0.0013303    0.0065281
9-12 months    MAL-ED           NEPAL                          0                    NA                 0.0000123   -0.0027078    0.0027325
9-12 months    PROVIDE          BANGLADESH                     0                    NA                 0.0010977   -0.0009456    0.0031410
9-12 months    ResPak           PAKISTAN                       0                    NA                -0.0113119   -0.0253941    0.0027704
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004110   -0.0020500    0.0028720
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0161128    0.0009513    0.0312742
12-15 months   CMIN             BANGLADESH                     0                    NA                -0.0000762   -0.0032816    0.0031292
12-15 months   EE               PAKISTAN                       0                    NA                 0.0024557   -0.0019937    0.0069051
12-15 months   GMS-Nepal        NEPAL                          0                    NA                 0.0007787   -0.0025224    0.0040798
12-15 months   IRC              INDIA                          0                    NA                -0.0046611   -0.0120304    0.0027082
12-15 months   Keneba           GAMBIA                         0                    NA                -0.0008651   -0.0030888    0.0013586
12-15 months   MAL-ED           BANGLADESH                     0                    NA                -0.0002230   -0.0016894    0.0012433
12-15 months   MAL-ED           INDIA                          0                    NA                 0.0032524   -0.0013776    0.0078825
12-15 months   MAL-ED           NEPAL                          0                    NA                 0.0001050   -0.0025980    0.0028079
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0001442   -0.0012453    0.0009569
12-15 months   ResPak           PAKISTAN                       0                    NA                -0.0024846   -0.0137367    0.0087676
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0003253   -0.0026900    0.0033406
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0027829   -0.0111318    0.0055660
15-18 months   CMIN             BANGLADESH                     0                    NA                -0.0021511   -0.0066926    0.0023903
15-18 months   EE               PAKISTAN                       0                    NA                 0.0006470   -0.0044333    0.0057272
15-18 months   GMS-Nepal        NEPAL                          0                    NA                 0.0018365   -0.0012837    0.0049567
15-18 months   IRC              INDIA                          0                    NA                -0.0086181   -0.0151692   -0.0020669
15-18 months   Keneba           GAMBIA                         0                    NA                -0.0005726   -0.0026245    0.0014793
15-18 months   MAL-ED           BANGLADESH                     0                    NA                -0.0013931   -0.0034904    0.0007041
15-18 months   MAL-ED           INDIA                          0                    NA                 0.0003959   -0.0025516    0.0033434
15-18 months   MAL-ED           NEPAL                          0                    NA                -0.0017992   -0.0036842    0.0000859
15-18 months   PROVIDE          BANGLADESH                     0                    NA                 0.0010987   -0.0005281    0.0027255
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002009   -0.0022433    0.0026451
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0008278   -0.0106608    0.0090052
18-21 months   CMIN             BANGLADESH                     0                    NA                -0.0000374   -0.0026031    0.0025282
18-21 months   EE               PAKISTAN                       0                    NA                -0.0032640   -0.0095931    0.0030650
18-21 months   GMS-Nepal        NEPAL                          0                    NA                -0.0015212   -0.0042951    0.0012527
18-21 months   IRC              INDIA                          0                    NA                -0.0046904   -0.0106575    0.0012768
18-21 months   Keneba           GAMBIA                         0                    NA                 0.0015723   -0.0003142    0.0034588
18-21 months   MAL-ED           BANGLADESH                     0                    NA                 0.0007815   -0.0008067    0.0023697
18-21 months   MAL-ED           INDIA                          0                    NA                 0.0006388   -0.0026825    0.0039602
18-21 months   MAL-ED           NEPAL                          0                    NA                 0.0018814   -0.0012426    0.0050055
18-21 months   PROVIDE          BANGLADESH                     0                    NA                 0.0006205   -0.0005926    0.0018337
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0024888   -0.0103337    0.0053562
21-24 months   EE               PAKISTAN                       0                    NA                -0.0030711   -0.0077304    0.0015882
21-24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0010643   -0.0054393    0.0075679
21-24 months   IRC              INDIA                          0                    NA                 0.0039790   -0.0018838    0.0098419
21-24 months   Keneba           GAMBIA                         0                    NA                -0.0006423   -0.0023637    0.0010790
21-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0021554   -0.0008933    0.0052042
21-24 months   MAL-ED           INDIA                          0                    NA                -0.0017576   -0.0049484    0.0014331
21-24 months   MAL-ED           NEPAL                          0                    NA                -0.0010988   -0.0025428    0.0003452
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0011597   -0.0002382    0.0025576
