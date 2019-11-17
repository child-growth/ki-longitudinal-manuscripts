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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        pers_wast    n_cell      n
-------------  -------------------------  -----------------------------  ----------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               236    243
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                 7    243
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               168    168
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                 0    168
0-3 months     ki0047075b-MAL-ED          INDIA                          0               170    183
0-3 months     ki0047075b-MAL-ED          INDIA                          1                13    183
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               154    156
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                 2    156
0-3 months     ki0047075b-MAL-ED          PERU                           0               265    265
0-3 months     ki0047075b-MAL-ED          PERU                           1                 0    265
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               209    211
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    211
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               228    228
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    228
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                79     88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 9     88
0-3 months     ki1000108-IRC              INDIA                          0               310    376
0-3 months     ki1000108-IRC              INDIA                          1                66    376
0-3 months     ki1000109-EE               PAKISTAN                       0               284    303
0-3 months     ki1000109-EE               PAKISTAN                       1                19    303
0-3 months     ki1000109-ResPak           PAKISTAN                       0                71     78
0-3 months     ki1000109-ResPak           PAKISTAN                       1                 7     78
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               625    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                15    640
0-3 months     ki1101329-Keneba           GAMBIA                         0              1217   1257
0-3 months     ki1101329-Keneba           GAMBIA                         1                40   1257
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0               450    509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                59    509
0-3 months     ki1114097-CMIN             BANGLADESH                     0                41     43
0-3 months     ki1114097-CMIN             BANGLADESH                     1                 2     43
0-3 months     ki1114097-CONTENT          PERU                           0                29     29
0-3 months     ki1114097-CONTENT          PERU                           1                 0     29
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               226    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                 5    231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               207    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                 1    208
3-6 months     ki0047075b-MAL-ED          INDIA                          0               212    230
3-6 months     ki0047075b-MAL-ED          INDIA                          1                18    230
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               228    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                 5    233
3-6 months     ki0047075b-MAL-ED          PERU                           0               267    267
3-6 months     ki0047075b-MAL-ED          PERU                           1                 0    267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               241    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    243
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               239    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0               263    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                44    307
3-6 months     ki1000108-IRC              INDIA                          0               329    396
3-6 months     ki1000108-IRC              INDIA                          1                67    396
3-6 months     ki1000109-EE               PAKISTAN                       0               262    280
3-6 months     ki1000109-EE               PAKISTAN                       1                18    280
3-6 months     ki1000109-ResPak           PAKISTAN                       0               139    153
3-6 months     ki1000109-ResPak           PAKISTAN                       1                14    153
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               584    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                14    598
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1614   1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                46   1660
3-6 months     ki1101329-Keneba           GAMBIA                         0              1338   1384
3-6 months     ki1101329-Keneba           GAMBIA                         1                46   1384
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               416    469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                53    469
3-6 months     ki1114097-CMIN             BANGLADESH                     0               175    185
3-6 months     ki1114097-CMIN             BANGLADESH                     1                10    185
3-6 months     ki1114097-CONTENT          PERU                           0               214    214
3-6 months     ki1114097-CONTENT          PERU                           1                 0    214
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               220    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                 4    224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               197    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                 1    198
6-9 months     ki0047075b-MAL-ED          INDIA                          0               212    230
6-9 months     ki0047075b-MAL-ED          INDIA                          1                18    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               224    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                 6    230
6-9 months     ki0047075b-MAL-ED          PERU                           0               245    245
6-9 months     ki0047075b-MAL-ED          PERU                           1                 0    245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               229    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    231
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               225    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    225
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0               266    312
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                46    312
6-9 months     ki1000108-IRC              INDIA                          0               337    406
6-9 months     ki1000108-IRC              INDIA                          1                69    406
6-9 months     ki1000109-EE               PAKISTAN                       0               283    304
6-9 months     ki1000109-EE               PAKISTAN                       1                21    304
6-9 months     ki1000109-ResPak           PAKISTAN                       0               122    138
6-9 months     ki1000109-ResPak           PAKISTAN                       1                16    138
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               553    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                12    565
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1447   1486
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                39   1486
6-9 months     ki1101329-Keneba           GAMBIA                         0               841    866
6-9 months     ki1101329-Keneba           GAMBIA                         1                25    866
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0               195    198
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                 3    198
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0               428    478
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                50    478
6-9 months     ki1114097-CMIN             BANGLADESH                     0               173    177
6-9 months     ki1114097-CMIN             BANGLADESH                     1                 4    177
6-9 months     ki1114097-CONTENT          PERU                           0               214    214
6-9 months     ki1114097-CONTENT          PERU                           1                 0    214
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               220    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                 5    225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               193    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                 1    194
9-12 months    ki0047075b-MAL-ED          INDIA                          0               209    227
9-12 months    ki0047075b-MAL-ED          INDIA                          1                18    227
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               223    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                 6    229
9-12 months    ki0047075b-MAL-ED          PERU                           0               235    235
9-12 months    ki0047075b-MAL-ED          PERU                           1                 0    235
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               231    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    233
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               224    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    224
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               268    313
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                45    313
9-12 months    ki1000108-IRC              INDIA                          0               331    399
9-12 months    ki1000108-IRC              INDIA                          1                68    399
9-12 months    ki1000109-EE               PAKISTAN                       0               304    326
9-12 months    ki1000109-EE               PAKISTAN                       1                22    326
9-12 months    ki1000109-ResPak           PAKISTAN                       0               120    134
9-12 months    ki1000109-ResPak           PAKISTAN                       1                14    134
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               553    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                13    566
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1049   1078
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                29   1078
9-12 months    ki1101329-Keneba           GAMBIA                         0               805    828
9-12 months    ki1101329-Keneba           GAMBIA                         1                23    828
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0               169    173
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 4    173
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0               410    463
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                53    463
9-12 months    ki1114097-CMIN             BANGLADESH                     0               157    160
9-12 months    ki1114097-CMIN             BANGLADESH                     1                 3    160
9-12 months    ki1114097-CONTENT          PERU                           0               212    212
9-12 months    ki1114097-CONTENT          PERU                           1                 0    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               206    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               183    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    184
12-15 months   ki0047075b-MAL-ED          INDIA                          0               208    226
12-15 months   ki0047075b-MAL-ED          INDIA                          1                18    226
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               224    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                 6    230
12-15 months   ki0047075b-MAL-ED          PERU                           0               224    224
12-15 months   ki0047075b-MAL-ED          PERU                           1                 0    224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               227    228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1    228
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               226    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    226
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               274    324
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                50    324
12-15 months   ki1000108-IRC              INDIA                          0               323    390
12-15 months   ki1000108-IRC              INDIA                          1                67    390
12-15 months   ki1000109-EE               PAKISTAN                       0               275    297
12-15 months   ki1000109-EE               PAKISTAN                       1                22    297
12-15 months   ki1000109-ResPak           PAKISTAN                       0                79     85
12-15 months   ki1000109-ResPak           PAKISTAN                       1                 6     85
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               520    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                12    532
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               770    787
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                17    787
12-15 months   ki1101329-Keneba           GAMBIA                         0              1204   1240
12-15 months   ki1101329-Keneba           GAMBIA                         1                36   1240
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                83     86
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 3     86
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0               411    464
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                53    464
12-15 months   ki1114097-CMIN             BANGLADESH                     0               154    160
12-15 months   ki1114097-CMIN             BANGLADESH                     1                 6    160
12-15 months   ki1114097-CONTENT          PERU                           0               199    199
12-15 months   ki1114097-CONTENT          PERU                           1                 0    199
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               206    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               174    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    175
15-18 months   ki0047075b-MAL-ED          INDIA                          0               208    226
15-18 months   ki0047075b-MAL-ED          INDIA                          1                18    226
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               221    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                 6    227
15-18 months   ki0047075b-MAL-ED          PERU                           0               213    213
15-18 months   ki0047075b-MAL-ED          PERU                           1                 0    213
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               224    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1    225
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               217    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    217
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               267    317
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                50    317
15-18 months   ki1000108-IRC              INDIA                          0               321    382
15-18 months   ki1000108-IRC              INDIA                          1                61    382
15-18 months   ki1000109-EE               PAKISTAN                       0               257    278
15-18 months   ki1000109-EE               PAKISTAN                       1                21    278
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               516    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                12    528
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               648    662
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                14    662
15-18 months   ki1101329-Keneba           GAMBIA                         0              1187   1223
15-18 months   ki1101329-Keneba           GAMBIA                         1                36   1223
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0               425    475
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                50    475
15-18 months   ki1114097-CMIN             BANGLADESH                     0               155    163
15-18 months   ki1114097-CMIN             BANGLADESH                     1                 8    163
15-18 months   ki1114097-CONTENT          PERU                           0               189    189
15-18 months   ki1114097-CONTENT          PERU                           1                 0    189
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               203    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0               166    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    167
18-21 months   ki0047075b-MAL-ED          INDIA                          0               208    226
18-21 months   ki0047075b-MAL-ED          INDIA                          1                18    226
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               221    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                 6    227
18-21 months   ki0047075b-MAL-ED          PERU                           0               202    202
18-21 months   ki0047075b-MAL-ED          PERU                           1                 0    202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               231    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    233
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               204    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    204
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               256    302
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                46    302
18-21 months   ki1000108-IRC              INDIA                          0               317    378
18-21 months   ki1000108-IRC              INDIA                          1                61    378
18-21 months   ki1000109-EE               PAKISTAN                       0               236    254
18-21 months   ki1000109-EE               PAKISTAN                       1                18    254
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               528    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                13    541
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 9      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      9
18-21 months   ki1101329-Keneba           GAMBIA                         0              1158   1190
18-21 months   ki1101329-Keneba           GAMBIA                         1                32   1190
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0               389    439
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                50    439
18-21 months   ki1114097-CMIN             BANGLADESH                     0               159    165
18-21 months   ki1114097-CMIN             BANGLADESH                     1                 6    165
18-21 months   ki1114097-CONTENT          PERU                           0               183    183
18-21 months   ki1114097-CONTENT          PERU                           1                 0    183
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               201    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0               164    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    165
21-24 months   ki0047075b-MAL-ED          INDIA                          0               208    226
21-24 months   ki0047075b-MAL-ED          INDIA                          1                18    226
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               221    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                 6    227
21-24 months   ki0047075b-MAL-ED          PERU                           0               189    189
21-24 months   ki0047075b-MAL-ED          PERU                           1                 0    189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               233    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    235
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               204    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    204
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               257    304
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                47    304
21-24 months   ki1000108-IRC              INDIA                          0               324    388
21-24 months   ki1000108-IRC              INDIA                          1                64    388
21-24 months   ki1000109-EE               PAKISTAN                       0                99    106
21-24 months   ki1000109-EE               PAKISTAN                       1                 7    106
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               460    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                11    471
21-24 months   ki1101329-Keneba           GAMBIA                         0              1049   1078
21-24 months   ki1101329-Keneba           GAMBIA                         1                29   1078
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0               306    338
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                32    338
21-24 months   ki1114097-CMIN             BANGLADESH                     0               129    133
21-24 months   ki1114097-CMIN             BANGLADESH                     1                 4    133
21-24 months   ki1114097-CONTENT          PERU                           0                38     38
21-24 months   ki1114097-CONTENT          PERU                           1                 0     38


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/06ab1816-0edc-4200-9871-4a525810dfb7/234663ba-9485-4514-bc90-17e1ed30b73c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/06ab1816-0edc-4200-9871-4a525810dfb7/234663ba-9485-4514-bc90-17e1ed30b73c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/06ab1816-0edc-4200-9871-4a525810dfb7/234663ba-9485-4514-bc90-17e1ed30b73c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1178059   -0.1515052   -0.0841065
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2718283   -0.5330637   -0.0105929
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0565342   -0.1093258   -0.0037426
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0917842   -0.2378402    0.0542719
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1194682   -0.2286263   -0.0103101
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.1897993   -0.1537516    0.5333502
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.2659114   -0.3235342   -0.2082886
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2071212   -0.3696778   -0.0445646
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.2144808   -0.2588507   -0.1701108
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.2401310   -0.3861859   -0.0940761
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2582215   -0.4069143   -0.1095286
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1325506   -0.2449397    0.5100409
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1858529   -0.2033458   -0.1683600
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2791774   -0.4035699   -0.1547848
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.2764309   -0.3004181   -0.2524437
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.5435503   -0.7253435   -0.3617570
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0219228   -0.0477243    0.0038786
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1068584   -0.1966208   -0.0170960
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0232953   -0.0473710    0.0007805
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0161823   -0.0730783    0.1054429
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0293608   -0.0591340    0.0004125
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.1147088   -0.2473921    0.0179745
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0236803   -0.0507395    0.0033790
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0043642   -0.1297227    0.1384511
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0969043   -0.1485086   -0.0452999
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1042809   -0.2280103    0.0194484
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0552177   -0.0874682   -0.0229672
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0389707   -0.1205722    0.0426307
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0733982    0.0463885    0.1004078
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.0365458   -0.1918651    0.1187736
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0295973   -0.0370682    0.0962627
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0137971   -0.2046200    0.2322143
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0239763   -0.0398574   -0.0080953
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1515279   -0.2821957   -0.0208600
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0801032   -0.0968782   -0.0633282
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2478728   -0.3579543   -0.1377913
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0143765   -0.0329339    0.0041809
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0966834   -0.2299490    0.0365822
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1526049   -0.1725125   -0.1326974
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2304129   -0.2786708   -0.1821550
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0038663   -0.0360392    0.0283067
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0910816   -0.2991485    0.1169852
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0752561   -0.0986836   -0.0518286
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0123824   -0.1056828    0.0809180
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0377759   -0.0573362   -0.0182156
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0855168    0.0291943    0.1418393
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0682621   -0.1058294   -0.0306948
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1701894   -0.2470963   -0.0932826
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0054508   -0.0293015    0.0183998
6-9 months     ki1000108-IRC              INDIA                          1                    NA                -0.0675213   -0.1171650   -0.0178776
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0854461   -0.1066789   -0.0642134
6-9 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.0771848   -0.1643881    0.0100185
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0111250   -0.0381610    0.0604111
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0180191   -0.1232611    0.1592994
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0619539   -0.0729734   -0.0509345
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0371154   -0.0942616    0.0200308
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0505517   -0.0668638   -0.0342395
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1142254   -0.1983569   -0.0300939
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0075337   -0.0296682    0.0146007
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.1014732   -0.3553710    0.1524245
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0423908   -0.0601578   -0.0246237
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0560611   -0.1280608    0.0159386
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0870179   -0.1035249   -0.0705110
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0954527   -0.1542657   -0.0366396
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0937658   -0.1104825   -0.0770491
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0619114   -0.1060981   -0.0177246
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0623088   -0.0794386   -0.0451790
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0618386   -0.1642341    0.0405569
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1165061   -0.1479363   -0.0850759
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1302985   -0.2005892   -0.0600079
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0335061   -0.0513558   -0.0156564
9-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0486234   -0.0972499    0.0000030
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.1038451   -0.1188530   -0.0888371
9-12 months    ki1000109-EE               PAKISTAN                       1                    NA                -0.0644854   -0.1300156    0.0010448
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0069794   -0.0516302    0.0655891
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.1005692   -0.2116064    0.0104680
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0640787   -0.0751406   -0.0530168
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0191610   -0.0964996    0.0581775
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0660302   -0.0804900   -0.0515704
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0703780   -0.1604647    0.0197087
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.1024594   -0.1198812   -0.0850375
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0083519   -0.1212930    0.1379968
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0748767   -0.0885023   -0.0612510
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1172029   -0.1736304   -0.0607755
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0554893   -0.0714144   -0.0395641
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0633703   -0.1122762   -0.0144645
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0598140   -0.0755855   -0.0440425
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0184861   -0.0732724    0.0363003
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0575599   -0.0731836   -0.0419363
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0535358   -0.1559149    0.0488432
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0853826   -0.1142549   -0.0565102
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0080982   -0.0816687    0.0978651
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0393246   -0.0577795   -0.0208696
12-15 months   ki1000108-IRC              INDIA                          1                    NA                -0.0749912   -0.1141408   -0.0358415
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0029154   -0.0160789    0.0102481
12-15 months   ki1000109-EE               PAKISTAN                       1                    NA                 0.0300681   -0.0263635    0.0864997
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0838368    0.0090320    0.1586416
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0486386   -0.0894493    0.1867265
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0405720   -0.0508570   -0.0302871
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0555873   -0.1013228   -0.0098517
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0648729   -0.0793866   -0.0503592
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0577060   -0.1799645    0.0645525
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0494054   -0.0617501   -0.0370606
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0835109   -0.1556299   -0.0113919
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0709205   -0.0810787   -0.0607624
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0625931   -0.0894332   -0.0357529
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0608037   -0.0829329   -0.0386744
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0628352   -0.1453822    0.0197118
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0444012   -0.0581073   -0.0306951
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0936249   -0.1551780   -0.0320718
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0383540   -0.0519883   -0.0247197
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0339531   -0.0678248   -0.0000815
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0531354   -0.0684867   -0.0377841
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.1212035   -0.1653618   -0.0770453
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0634266   -0.0900481   -0.0368050
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0889673   -0.1352256   -0.0427090
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0308894   -0.0467355   -0.0150434
15-18 months   ki1000108-IRC              INDIA                          1                    NA                -0.0786533   -0.1157814   -0.0415252
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0264559   -0.0374235   -0.0154883
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0158526   -0.0818634    0.0501581
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0387178   -0.0475392   -0.0298964
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0085428   -0.0498319    0.0669174
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0194018   -0.0349169   -0.0038867
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0044821   -0.1031672    0.0942030
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0331555   -0.0456299   -0.0206811
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0672418   -0.1313854   -0.0030983
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0682612   -0.0806180   -0.0559044
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0520685   -0.0801835   -0.0239535
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0605823   -0.0804222   -0.0407423
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.1044114   -0.1897699   -0.0190529
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0163034   -0.0281659   -0.0044408
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0109187   -0.0386464    0.0604839
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0053417   -0.0066024    0.0172859
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0107698   -0.0284620    0.0500015
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0299867   -0.0429796   -0.0169937
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0411934   -0.0619026    0.1442895
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0405411   -0.0647778   -0.0163045
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0503481   -0.1100210    0.0093248
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0350153   -0.0493351   -0.0206956
18-21 months   ki1000108-IRC              INDIA                          1                    NA                -0.0627929   -0.0968640   -0.0287217
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0326671   -0.0428236   -0.0225106
18-21 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0757789   -0.1613541    0.0097964
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0119278   -0.0201995   -0.0036562
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0291863   -0.0152980    0.0736705
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0238937   -0.0369455   -0.0108419
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0425014   -0.0219502    0.1069530
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0184114    0.0053201    0.0315027
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0035817   -0.0171558    0.0243192
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0064569   -0.0238353    0.0109215
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0074865   -0.0758629    0.0608899
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0234628    0.0113338    0.0355917
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0978252    0.0114454    0.1842050
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0317168    0.0202973    0.0431363
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0075078   -0.0292127    0.0442283
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0065536   -0.0074394    0.0205466
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0350176   -0.0763308    0.0062956
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0227101   -0.0008907    0.0463109
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0050481   -0.0490200    0.0389237
21-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0175683   -0.0324256   -0.0027110
21-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0085301   -0.0239166    0.0409768
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0034485   -0.0159546    0.0090576
21-24 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0499535   -0.1108024    0.0108953
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0450849    0.0363193    0.0538504
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0942976    0.0490889    0.1395064
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0159922    0.0038393    0.0281451
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0039359   -0.0651154    0.0572437
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0475744    0.0317126    0.0634363
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0573038   -0.0086052    0.1232129


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2555919   -0.3110566   -0.2001272
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.2160892   -0.2586792   -0.1734992
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.2231522   -0.3648888   -0.0814156
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2849311   -0.3090047   -0.2608575
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0524688   -0.0826167   -0.0223210
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0663303    0.0389725    0.0936881
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0281515   -0.0356303    0.0919334
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0847522   -0.1013980   -0.0681065
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0171122   -0.0356078    0.0013835
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0832899   -0.1175028   -0.0490769
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0159998   -0.0376393    0.0056398
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.0848755   -0.1055404   -0.0642105
6-9 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0119244   -0.0346261    0.0584748
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0522228   -0.0682679   -0.0361776
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0102456   -0.0329805    0.0124893
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0438207   -0.0614260   -0.0262155
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1184890   -0.1472404   -0.0897376
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0360825   -0.0530606   -0.0191044
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.1011889   -0.1159053   -0.0864725
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.0042570   -0.0582999    0.0497860
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0661472   -0.0804252   -0.0518691
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0993813   -0.1167422   -0.0820204
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0797218   -0.0934629   -0.0659807
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0709565   -0.0992698   -0.0426432
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0004721   -0.0133950    0.0124507
12-15 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0813522    0.0111213    0.1515831
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0647181   -0.0791954   -0.0502407
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0503955   -0.0625675   -0.0382235
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0699693   -0.0794782   -0.0604605
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0608799   -0.0824031   -0.0393566
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0674551   -0.0910572   -0.0438530
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0256550   -0.0369587   -0.0143512
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0190863   -0.0344142   -0.0037583
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0341589   -0.0464167   -0.0219011
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0665567   -0.0780107   -0.0551027
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0627334   -0.0821141   -0.0433527
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0420349   -0.0645042   -0.0195656
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0394980   -0.0527459   -0.0262500
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0357223   -0.0470222   -0.0244224
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0221083   -0.0349414   -0.0092752
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0167223    0.0048758    0.0285689
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0064943   -0.0234244    0.0104357
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0184186   -0.0026901    0.0395272
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0132634   -0.0268096    0.0002828
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0065196   -0.0190677    0.0060285
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0154561    0.0035146    0.0273976
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0484956    0.0328354    0.0641558


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1540224   -0.4174225    0.1093776
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0352500   -0.1905539    0.1200540
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.3092675   -0.0512081    0.6697432
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.0587903   -0.1136773    0.2312578
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0256502   -0.1782959    0.1269956
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.3907721   -0.0149476    0.7964918
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0933245   -0.2189410    0.0322921
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.2671194   -0.4504883   -0.0837504
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0849356   -0.1783326    0.0084614
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0394776   -0.0529729    0.1319280
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0853480   -0.2213308    0.0506347
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0280445   -0.1087455    0.1648344
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0073767   -0.1414362    0.1266829
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0162470   -0.0714964    0.1039903
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.1099439   -0.2675942    0.0477064
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0158001   -0.2441646    0.2125644
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1275515   -0.2591809    0.0040778
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1677696   -0.2791219   -0.0564173
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0823068   -0.2168583    0.0522446
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0778080   -0.1300109   -0.0256052
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0872153   -0.2977549    0.1233242
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0628737   -0.0333231    0.1590704
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.1232927    0.0636703    0.1829151
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1019273   -0.1875192   -0.0163354
6-9 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    0                 -0.0620705   -0.1171463   -0.0069946
6-9 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0082613   -0.0814897    0.0980124
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0068941   -0.1427362    0.1565244
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0248386   -0.0333604    0.0830375
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0636737   -0.1493720    0.0220245
6-9 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0939395   -0.3488003    0.1609212
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0136703   -0.0878298    0.0604891
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0084347   -0.0695204    0.0526509
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0318545   -0.0153887    0.0790976
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0004702   -0.1033482    0.1042887
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0137924   -0.0907901    0.0632052
9-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0151173   -0.0669164    0.0366818
9-12 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       1                    0                  0.0393597   -0.0278671    0.1065865
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.1075486   -0.2331047    0.0180075
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0449177   -0.0332080    0.1230433
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0043478   -0.0955875    0.0868920
9-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         1                    0                  0.1108113   -0.0199990    0.2416216
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0423263   -0.1003755    0.0157230
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0078811   -0.0593145    0.0435523
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0413279   -0.0156833    0.0983391
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0040241   -0.0995403    0.1075885
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0934807   -0.0008151    0.1877766
12-15 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    0                 -0.0356666   -0.0789480    0.0076148
12-15 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0329835   -0.0249630    0.0909300
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0351982   -0.1922460    0.1218497
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0150152   -0.0618930    0.0318625
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0071668   -0.1159502    0.1302838
12-15 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0341055   -0.1072734    0.0390623
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0083275   -0.0203707    0.0370256
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0020315   -0.0874933    0.0834302
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0492238   -0.1122844    0.0138368
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0044008   -0.0321120    0.0409136
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0680681   -0.1148187   -0.0213176
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0255407   -0.0789124    0.0278310
15-18 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    0                 -0.0477639   -0.0881320   -0.0073957
15-18 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0106033   -0.0563124    0.0775190
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0472606   -0.0117768    0.1062980
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0149197   -0.0849776    0.1148170
15-18 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0340863   -0.0994316    0.0312590
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0161927   -0.0145179    0.0469033
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0438291   -0.1314630    0.0438047
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0272221   -0.0237428    0.0781870
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0054280   -0.0355816    0.0464377
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0711801   -0.0327314    0.1750917
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0098070   -0.0742141    0.0546001
18-21 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    0                 -0.0277775   -0.0647356    0.0091805
18-21 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0431118   -0.1292876    0.0430641
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0411141   -0.0041326    0.0863609
18-21 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0663951    0.0006353    0.1321549
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0148297   -0.0393537    0.0096944
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0010296   -0.0715799    0.0695206
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0743624   -0.0128648    0.1615897
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0242090   -0.0626641    0.0142462
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0415712   -0.0851898    0.0020474
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0277583   -0.0776634    0.0221469
21-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    0                  0.0260985   -0.0095881    0.0617850
21-24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0465050   -0.1086258    0.0156157
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0492127    0.0031620    0.0952634
21-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0199281   -0.0823029    0.0424468
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0097294   -0.0580614    0.0775203


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0044369   -0.0126896    0.0038159
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0025041   -0.0136148    0.0086066
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0316296   -0.0101664    0.0734257
0-3 months     ki1000108-IRC              INDIA                          0                    NA                 0.0103196   -0.0200385    0.0406776
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0016084   -0.0112059    0.0079891
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0350693   -0.0090677    0.0792062
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0021873   -0.0055130    0.0011385
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0085002   -0.0148855   -0.0021149
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0098452   -0.0209264    0.0012360
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0008545   -0.0015731    0.0032821
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0066794   -0.0177279    0.0043691
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0006018   -0.0028577    0.0040613
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0010572   -0.0202732    0.0181587
3-6 months     ki1000108-IRC              INDIA                          0                    NA                 0.0027489   -0.0121088    0.0176065
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0070678   -0.0176849    0.0035493
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0014458   -0.0223544    0.0194629
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0029862   -0.0066224    0.0006501
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0046490   -0.0080072   -0.0012909
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0027356   -0.0072748    0.0018036
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0087928   -0.0151001   -0.0024855
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0047143   -0.0164462    0.0070175
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0049205   -0.0029192    0.0127603
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0032163    0.0002334    0.0061992
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0150277   -0.0282708   -0.0017847
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0105489   -0.0201805   -0.0009173
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0005707   -0.0056337    0.0067751
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0007993   -0.0165531    0.0181517
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0005275   -0.0009571    0.0020122
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0016711   -0.0039791    0.0006368
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0027119   -0.0101436    0.0047198
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0014300   -0.0091963    0.0063364
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0001874   -0.0017232    0.0013484
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0025259   -0.0013847    0.0064365
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0000123   -0.0027078    0.0027325
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0019829   -0.0130659    0.0091000
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0025764   -0.0114219    0.0062692
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0026562   -0.0020059    0.0073182
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0112364   -0.0254960    0.0030231
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0010317   -0.0009987    0.0030621
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0001170   -0.0025718    0.0023379
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0030781   -0.0007616    0.0069178
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0048451   -0.0116027    0.0019125
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0002230   -0.0016894    0.0012433
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0032916   -0.0014787    0.0080619
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0001050   -0.0025980    0.0028079
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0144260   -0.0005846    0.0294367
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0061273   -0.0136821    0.0014274
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0024432   -0.0019605    0.0068469
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0024846   -0.0137367    0.0087676
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0003387   -0.0015259    0.0008485
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0001548   -0.0029240    0.0032336
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0009902   -0.0031382    0.0011579
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0009512   -0.0023357    0.0042381
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0000762   -0.0032816    0.0031292
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0013931   -0.0034904    0.0007041
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0003505   -0.0025618    0.0032628
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0017992   -0.0036842    0.0000859
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0040285   -0.0125091    0.0044521
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0076272   -0.0143086   -0.0009459
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0008010   -0.0042646    0.0058665
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0010741   -0.0005196    0.0026678
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0003155   -0.0021873    0.0028183
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0010034   -0.0029538    0.0009471
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0017045   -0.0015590    0.0049680
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0021511   -0.0066926    0.0023903
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0007815   -0.0008067    0.0023697
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0004323   -0.0028396    0.0037042
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0018814   -0.0012426    0.0050055
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0014938   -0.0113122    0.0083246
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0044826   -0.0105353    0.0015701
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0030552   -0.0093124    0.0032021
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0009880   -0.0002617    0.0022376
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0017854   -0.0000853    0.0036562
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0016890   -0.0045168    0.0011388
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0000374   -0.0026031    0.0025282
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0021554   -0.0008933    0.0052042
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0019281   -0.0051084    0.0012521
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0010988   -0.0025428    0.0003452
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0042916   -0.0120895    0.0035063
21-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0043049   -0.0016601    0.0102699
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0030711   -0.0077304    0.0015882
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0011493   -0.0001837    0.0024824
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0005361   -0.0022251    0.0011529
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0009211   -0.0055041    0.0073464
