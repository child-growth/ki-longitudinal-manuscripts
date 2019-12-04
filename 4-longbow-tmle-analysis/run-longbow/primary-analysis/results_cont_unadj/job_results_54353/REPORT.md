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

**Intervention Variable:** enwast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        enwast    n_cell      n
-------------  -------------------------  -----------------------------  -------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0            192    231
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1             39    231
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0            155    161
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              6    161
0-3 months     ki0047075b-MAL-ED          INDIA                          0            149    180
0-3 months     ki0047075b-MAL-ED          INDIA                          1             31    180
0-3 months     ki0047075b-MAL-ED          NEPAL                          0            137    152
0-3 months     ki0047075b-MAL-ED          NEPAL                          1             15    152
0-3 months     ki0047075b-MAL-ED          PERU                           0            252    258
0-3 months     ki0047075b-MAL-ED          PERU                           1              6    258
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0            196    210
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             14    210
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            216    219
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3    219
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             71     83
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             12     83
0-3 months     ki1000108-IRC              INDIA                          0            245    355
0-3 months     ki1000108-IRC              INDIA                          1            110    355
0-3 months     ki1000109-EE               PAKISTAN                       0            208    239
0-3 months     ki1000109-EE               PAKISTAN                       1             31    239
0-3 months     ki1000109-ResPak           PAKISTAN                       0             59     71
0-3 months     ki1000109-ResPak           PAKISTAN                       1             12     71
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0            329    359
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1             30    359
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0            389    543
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1            154    543
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            497    632
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            135    632
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            523    701
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            178    701
0-3 months     ki1101329-Keneba           GAMBIA                         0            896   1227
0-3 months     ki1101329-Keneba           GAMBIA                         1            331   1227
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0            379    472
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1             93    472
0-3 months     ki1114097-CMIN             BANGLADESH                     0             34     37
0-3 months     ki1114097-CMIN             BANGLADESH                     1              3     37
0-3 months     ki1114097-CONTENT          PERU                           0             29     29
0-3 months     ki1114097-CONTENT          PERU                           1              0     29
0-3 months     ki1119695-PROBIT           BELARUS                        0           5949   7533
0-3 months     ki1119695-PROBIT           BELARUS                        1           1584   7533
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0           6327   7555
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           1228   7555
0-3 months     ki1135781-COHORTS          GUATEMALA                      0            238    338
0-3 months     ki1135781-COHORTS          GUATEMALA                      1            100    338
0-3 months     ki1135781-COHORTS          INDIA                          0           4979   6082
0-3 months     ki1135781-COHORTS          INDIA                          1           1103   6082
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0           7023   7980
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            957   7980
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0            520    573
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1             53    573
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0            182    219
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1             37    219
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0            191    198
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              7    198
3-6 months     ki0047075b-MAL-ED          INDIA                          0            184    227
3-6 months     ki0047075b-MAL-ED          INDIA                          1             43    227
3-6 months     ki0047075b-MAL-ED          NEPAL                          0            199    229
3-6 months     ki0047075b-MAL-ED          NEPAL                          1             30    229
3-6 months     ki0047075b-MAL-ED          PERU                           0            255    260
3-6 months     ki0047075b-MAL-ED          PERU                           1              5    260
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0            226    242
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             16    242
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            228    231
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3    231
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0            224    301
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             77    301
3-6 months     ki1000108-IRC              INDIA                          0            262    373
3-6 months     ki1000108-IRC              INDIA                          1            111    373
3-6 months     ki1000109-EE               PAKISTAN                       0            194    222
3-6 months     ki1000109-EE               PAKISTAN                       1             28    222
3-6 months     ki1000109-ResPak           PAKISTAN                       0            124    151
3-6 months     ki1000109-ResPak           PAKISTAN                       1             27    151
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0            295    323
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1             28    323
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0            359    502
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1            143    502
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            467    591
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            124    591
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            502    675
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            173    675
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1556   1654
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             98   1654
3-6 months     ki1101329-Keneba           GAMBIA                         0           1073   1352
3-6 months     ki1101329-Keneba           GAMBIA                         1            279   1352
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0            352    437
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1             85    437
3-6 months     ki1114097-CMIN             BANGLADESH                     0            166    177
3-6 months     ki1114097-CMIN             BANGLADESH                     1             11    177
3-6 months     ki1114097-CONTENT          PERU                           0            213    214
3-6 months     ki1114097-CONTENT          PERU                           1              1    214
3-6 months     ki1119695-PROBIT           BELARUS                        0           5256   6691
3-6 months     ki1119695-PROBIT           BELARUS                        1           1435   6691
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0           4915   5818
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            903   5818
3-6 months     ki1135781-COHORTS          GUATEMALA                      0            288    378
3-6 months     ki1135781-COHORTS          GUATEMALA                      1             90    378
3-6 months     ki1135781-COHORTS          INDIA                          0           5085   6181
3-6 months     ki1135781-COHORTS          INDIA                          1           1096   6181
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0           4689   5278
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            589   5278
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0            349    394
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1             45    394
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0            176    213
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1             37    213
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0            181    188
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1              7    188
6-9 months     ki0047075b-MAL-ED          INDIA                          0            184    227
6-9 months     ki0047075b-MAL-ED          INDIA                          1             43    227
6-9 months     ki0047075b-MAL-ED          NEPAL                          0            197    227
6-9 months     ki0047075b-MAL-ED          NEPAL                          1             30    227
6-9 months     ki0047075b-MAL-ED          PERU                           0            233    238
6-9 months     ki0047075b-MAL-ED          PERU                           1              5    238
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0            215    230
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1             15    230
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            214    217
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3    217
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0            229    308
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             79    308
6-9 months     ki1000108-IRC              INDIA                          0            268    382
6-9 months     ki1000108-IRC              INDIA                          1            114    382
6-9 months     ki1000109-EE               PAKISTAN                       0            209    241
6-9 months     ki1000109-EE               PAKISTAN                       1             32    241
6-9 months     ki1000109-ResPak           PAKISTAN                       0            109    139
6-9 months     ki1000109-ResPak           PAKISTAN                       1             30    139
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0            295    325
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1             30    325
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0             63     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1             11     74
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0            342    478
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1            136    478
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0            443    558
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1            115    558
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            499    668
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            169    668
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1388   1481
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             93   1481
6-9 months     ki1101329-Keneba           GAMBIA                         0            720    881
6-9 months     ki1101329-Keneba           GAMBIA                         1            161    881
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0            210    213
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1              3    213
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0            360    451
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1             91    451
6-9 months     ki1114097-CMIN             BANGLADESH                     0            159    168
6-9 months     ki1114097-CMIN             BANGLADESH                     1              9    168
6-9 months     ki1114097-CONTENT          PERU                           0            213    214
6-9 months     ki1114097-CONTENT          PERU                           1              1    214
6-9 months     ki1119695-PROBIT           BELARUS                        0           4925   6258
6-9 months     ki1119695-PROBIT           BELARUS                        1           1333   6258
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0           4724   5594
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            870   5594
6-9 months     ki1135781-COHORTS          GUATEMALA                      0            284    374
6-9 months     ki1135781-COHORTS          GUATEMALA                      1             90    374
6-9 months     ki1135781-COHORTS          INDIA                          0           4676   5665
6-9 months     ki1135781-COHORTS          INDIA                          1            989   5665
6-9 months     ki1148112-LCNI-5           MALAWI                         0            555    564
6-9 months     ki1148112-LCNI-5           MALAWI                         1              9    564
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0            634    702
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1             68    702
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0            176    214
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1             38    214
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0            177    184
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1              7    184
9-12 months    ki0047075b-MAL-ED          INDIA                          0            180    223
9-12 months    ki0047075b-MAL-ED          INDIA                          1             43    223
9-12 months    ki0047075b-MAL-ED          NEPAL                          0            196    226
9-12 months    ki0047075b-MAL-ED          NEPAL                          1             30    226
9-12 months    ki0047075b-MAL-ED          PERU                           0            223    228
9-12 months    ki0047075b-MAL-ED          PERU                           1              5    228
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            217    232
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             15    232
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            213    216
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3    216
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            233    311
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             78    311
9-12 months    ki1000108-IRC              INDIA                          0            265    375
9-12 months    ki1000108-IRC              INDIA                          1            110    375
9-12 months    ki1000109-EE               PAKISTAN                       0            223    258
9-12 months    ki1000109-EE               PAKISTAN                       1             35    258
9-12 months    ki1000109-ResPak           PAKISTAN                       0            103    133
9-12 months    ki1000109-ResPak           PAKISTAN                       1             30    133
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0            311    343
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1             32    343
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             65     77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             12     77
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0            328    463
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1            135    463
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            442    558
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            116    558
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            485    654
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            169    654
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1009   1077
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             68   1077
9-12 months    ki1101329-Keneba           GAMBIA                         0            700    862
9-12 months    ki1101329-Keneba           GAMBIA                         1            162    862
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0            182    186
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1              4    186
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0            349    439
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1             90    439
9-12 months    ki1114097-CMIN             BANGLADESH                     0            145    154
9-12 months    ki1114097-CMIN             BANGLADESH                     1              9    154
9-12 months    ki1114097-CONTENT          PERU                           0            211    212
9-12 months    ki1114097-CONTENT          PERU                           1              1    212
9-12 months    ki1119695-PROBIT           BELARUS                        0           4944   6260
9-12 months    ki1119695-PROBIT           BELARUS                        1           1316   6260
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           4738   5601
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            863   5601
9-12 months    ki1135781-COHORTS          GUATEMALA                      0            326    421
9-12 months    ki1135781-COHORTS          GUATEMALA                      1             95    421
9-12 months    ki1135781-COHORTS          INDIA                          0           4046   4879
9-12 months    ki1135781-COHORTS          INDIA                          1            833   4879
9-12 months    ki1148112-LCNI-5           MALAWI                         0            380    386
9-12 months    ki1148112-LCNI-5           MALAWI                         1              6    386
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0            716    786
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1             70    786
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0            164    202
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1             38    202
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0            168    174
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1              6    174
12-15 months   ki0047075b-MAL-ED          INDIA                          0            180    222
12-15 months   ki0047075b-MAL-ED          INDIA                          1             42    222
12-15 months   ki0047075b-MAL-ED          NEPAL                          0            197    227
12-15 months   ki0047075b-MAL-ED          NEPAL                          1             30    227
12-15 months   ki0047075b-MAL-ED          PERU                           0            212    217
12-15 months   ki0047075b-MAL-ED          PERU                           1              5    217
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            211    227
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             16    227
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            214    217
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3    217
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            239    322
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             83    322
12-15 months   ki1000108-IRC              INDIA                          0            258    366
12-15 months   ki1000108-IRC              INDIA                          1            108    366
12-15 months   ki1000109-EE               PAKISTAN                       0            201    233
12-15 months   ki1000109-EE               PAKISTAN                       1             32    233
12-15 months   ki1000109-ResPak           PAKISTAN                       0             71     87
12-15 months   ki1000109-ResPak           PAKISTAN                       1             16     87
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0            310    344
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1             34    344
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0             64     76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1             12     76
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0            317    441
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1            124    441
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0            420    527
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1            107    527
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            475    641
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            166    641
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            744    787
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             43    787
12-15 months   ki1101329-Keneba           GAMBIA                         0           1042   1303
12-15 months   ki1101329-Keneba           GAMBIA                         1            261   1303
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0             94     97
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1              3     97
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0            351    436
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1             85    436
12-15 months   ki1114097-CMIN             BANGLADESH                     0            149    155
12-15 months   ki1114097-CMIN             BANGLADESH                     1              6    155
12-15 months   ki1114097-CONTENT          PERU                           0            198    199
12-15 months   ki1114097-CONTENT          PERU                           1              1    199
12-15 months   ki1119695-PROBIT           BELARUS                        0            216    282
12-15 months   ki1119695-PROBIT           BELARUS                        1             66    282
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0           2008   2367
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            359   2367
12-15 months   ki1135781-COHORTS          GUATEMALA                      0            324    408
12-15 months   ki1135781-COHORTS          GUATEMALA                      1             84    408
12-15 months   ki1148112-LCNI-5           MALAWI                         0            126    127
12-15 months   ki1148112-LCNI-5           MALAWI                         1              1    127
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0            711    784
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1             73    784
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0            165    202
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1             37    202
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0            160    166
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1              6    166
15-18 months   ki0047075b-MAL-ED          INDIA                          0            180    222
15-18 months   ki0047075b-MAL-ED          INDIA                          1             42    222
15-18 months   ki0047075b-MAL-ED          NEPAL                          0            194    224
15-18 months   ki0047075b-MAL-ED          NEPAL                          1             30    224
15-18 months   ki0047075b-MAL-ED          PERU                           0            201    206
15-18 months   ki0047075b-MAL-ED          PERU                           1              5    206
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            210    224
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             14    224
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            205    208
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3    208
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            229    314
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             85    314
15-18 months   ki1000108-IRC              INDIA                          0            254    358
15-18 months   ki1000108-IRC              INDIA                          1            104    358
15-18 months   ki1000109-EE               PAKISTAN                       0            184    218
15-18 months   ki1000109-EE               PAKISTAN                       1             34    218
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0            297    329
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1             32    329
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0             62     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1             10     72
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0            307    428
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1            121    428
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0            417    524
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1            107    524
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            425    585
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            160    585
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            624    660
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             36    660
15-18 months   ki1101329-Keneba           GAMBIA                         0           1062   1325
15-18 months   ki1101329-Keneba           GAMBIA                         1            263   1325
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0            359    445
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1             86    445
15-18 months   ki1114097-CMIN             BANGLADESH                     0            147    156
15-18 months   ki1114097-CMIN             BANGLADESH                     1              9    156
15-18 months   ki1114097-CONTENT          PERU                           0            188    189
15-18 months   ki1114097-CONTENT          PERU                           1              1    189
15-18 months   ki1119695-PROBIT           BELARUS                        0             32     37
15-18 months   ki1119695-PROBIT           BELARUS                        1              5     37
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0           1616   1887
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            271   1887
15-18 months   ki1135781-COHORTS          GUATEMALA                      0            281    356
15-18 months   ki1135781-COHORTS          GUATEMALA                      1             75    356
15-18 months   ki1148112-LCNI-5           MALAWI                         0            119    120
15-18 months   ki1148112-LCNI-5           MALAWI                         1              1    120
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0            738    806
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1             68    806
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0            161    198
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1             37    198
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0            152    158
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1              6    158
18-21 months   ki0047075b-MAL-ED          INDIA                          0            179    222
18-21 months   ki0047075b-MAL-ED          INDIA                          1             43    222
18-21 months   ki0047075b-MAL-ED          NEPAL                          0            194    224
18-21 months   ki0047075b-MAL-ED          NEPAL                          1             30    224
18-21 months   ki0047075b-MAL-ED          PERU                           0            193    197
18-21 months   ki0047075b-MAL-ED          PERU                           1              4    197
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            217    232
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             15    232
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            192    195
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3    195
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            218    299
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             81    299
18-21 months   ki1000108-IRC              INDIA                          0            253    354
18-21 months   ki1000108-IRC              INDIA                          1            101    354
18-21 months   ki1000109-EE               PAKISTAN                       0            175    208
18-21 months   ki1000109-EE               PAKISTAN                       1             33    208
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0            286    403
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1            117    403
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0            426    534
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1            108    534
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            382    532
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            150    532
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              8      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1      9
18-21 months   ki1101329-Keneba           GAMBIA                         0           1059   1316
18-21 months   ki1101329-Keneba           GAMBIA                         1            257   1316
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0            329    413
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1             84    413
18-21 months   ki1114097-CMIN             BANGLADESH                     0            149    158
18-21 months   ki1114097-CMIN             BANGLADESH                     1              9    158
18-21 months   ki1114097-CONTENT          PERU                           0            182    183
18-21 months   ki1114097-CONTENT          PERU                           1              1    183
18-21 months   ki1119695-PROBIT           BELARUS                        0             22     23
18-21 months   ki1119695-PROBIT           BELARUS                        1              1     23
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0           1311   1483
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            172   1483
18-21 months   ki1135781-COHORTS          GUATEMALA                      0            279    355
18-21 months   ki1135781-COHORTS          GUATEMALA                      1             76    355
18-21 months   ki1148112-LCNI-5           MALAWI                         0            471    477
18-21 months   ki1148112-LCNI-5           MALAWI                         1              6    477
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0            159    196
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1             37    196
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0            150    156
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1              6    156
21-24 months   ki0047075b-MAL-ED          INDIA                          0            179    222
21-24 months   ki0047075b-MAL-ED          INDIA                          1             43    222
21-24 months   ki0047075b-MAL-ED          NEPAL                          0            194    224
21-24 months   ki0047075b-MAL-ED          NEPAL                          1             30    224
21-24 months   ki0047075b-MAL-ED          PERU                           0            182    185
21-24 months   ki0047075b-MAL-ED          PERU                           1              3    185
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            219    234
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             15    234
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            192    195
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3    195
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            226    302
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             76    302
21-24 months   ki1000108-IRC              INDIA                          0            259    365
21-24 months   ki1000108-IRC              INDIA                          1            106    365
21-24 months   ki1000109-EE               PAKISTAN                       0             74     91
21-24 months   ki1000109-EE               PAKISTAN                       1             17     91
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0            280    392
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1            112    392
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            370    464
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             94    464
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            346    476
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            130    476
21-24 months   ki1101329-Keneba           GAMBIA                         0            939   1172
21-24 months   ki1101329-Keneba           GAMBIA                         1            233   1172
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0            259    318
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1             59    318
21-24 months   ki1114097-CMIN             BANGLADESH                     0            123    130
21-24 months   ki1114097-CMIN             BANGLADESH                     1              7    130
21-24 months   ki1114097-CONTENT          PERU                           0             38     38
21-24 months   ki1114097-CONTENT          PERU                           1              0     38
21-24 months   ki1119695-PROBIT           BELARUS                        0             25     32
21-24 months   ki1119695-PROBIT           BELARUS                        1              7     32
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            975   1075
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            100   1075
21-24 months   ki1135781-COHORTS          GUATEMALA                      0            321    401
21-24 months   ki1135781-COHORTS          GUATEMALA                      1             80    401
21-24 months   ki1148112-LCNI-5           MALAWI                         0            403    410
21-24 months   ki1148112-LCNI-5           MALAWI                         1              7    410


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
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/1c66a92c-e0a9-4eee-a139-1888aba72718/09950e77-2dd2-42f8-af75-5ad7b01225b4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1c66a92c-e0a9-4eee-a139-1888aba72718/09950e77-2dd2-42f8-af75-5ad7b01225b4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1c66a92c-e0a9-4eee-a139-1888aba72718/09950e77-2dd2-42f8-af75-5ad7b01225b4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                3.3565156    3.2865988   3.4264324
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.1220815    2.9316111   3.3125519
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                3.7781071    3.6657672   3.8904471
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                3.4724173    3.0205687   3.9242659
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                3.3880993    3.2785294   3.4976691
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.0719663    2.8852299   3.2587026
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                3.6105012    3.5102939   3.7107085
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                3.6469485    3.4396658   3.8542313
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                3.0316053    2.9648866   3.0983239
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.4305949    3.0675066   3.7936833
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                3.2187160    3.1194185   3.3180136
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                2.7762475    2.4525177   3.0999773
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.5093452    3.2828998   3.7357905
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                2.7549192    2.1488903   3.3609480
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.4474496    3.3345695   3.5603297
0-3 months     ki1000108-IRC              INDIA                          1                    NA                2.2519499    2.1018203   2.4020795
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                3.0409550    2.9530752   3.1288348
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                2.5351964    2.2498555   2.8205372
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.9394916    2.6350152   3.2439681
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.3832192    1.7060937   3.0603447
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                3.3846349    3.2344971   3.5347726
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.1517718    2.9057717   3.3977719
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                3.1543989    3.0927449   3.2160528
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                2.9402138    2.8395476   3.0408799
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.2736538    3.2313627   3.3159450
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.1851724    3.1074811   3.2628636
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                3.1644396    3.1220468   3.2068325
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.0177671    2.9455108   3.0900234
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                3.2040638    3.1584881   3.2496395
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.6714058    2.5801254   2.7626862
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                3.6105512    3.5531155   3.6679869
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                3.4755248    3.3506724   3.6003772
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.8392754    2.6963328   2.9822180
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.3794178    2.2027607   2.5560749
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                3.4386324    3.4177303   3.4595346
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.5394716    2.4900724   2.5888708
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                2.5614741    2.4836447   2.6393034
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                2.4270097    2.3178918   2.5361277
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                3.5198971    3.5045561   3.5352382
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.3674041    3.3311591   3.4036492
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                3.6412603    3.6244926   3.6580280
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.4435690    3.3994886   3.4876494
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                2.8949966    2.7707693   3.0192239
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.0067735    2.8290365   3.1845105
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.9297791    1.8760597   1.9834985
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9081865    1.7726892   2.0436838
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                2.1365488    2.0519147   2.2211830
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.2063105    1.9044224   2.5081986
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.8565991    1.7857668   1.9274314
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.9836096    1.8716749   2.0955442
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.9568448    1.8946400   2.0190496
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.9510930    1.8304156   2.0717704
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                2.0086162    1.9413042   2.0759282
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.8686035    1.5955103   2.1416968
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.9580975    1.8745636   2.0416314
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                2.0905775    1.7843831   2.3967719
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.8193510    1.6987712   1.9399308
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.7306079    1.5462708   1.9149450
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8473741    1.7724479   1.9223003
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.9472137    1.8178238   2.0766036
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                2.0473933    1.9801855   2.1146011
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                2.1545428    1.9801659   2.3289197
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                2.0182023    1.8561453   2.1802593
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                2.1988882    1.8898030   2.5079733
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.9149614    1.8766165   1.9533063
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                2.0217397    1.8324168   2.2110626
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.8299641    1.7729799   1.8869483
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.8498550    1.7564873   1.9432227
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9754202    1.9379368   2.0129035
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9378776    1.8589635   2.0167917
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.9928583    1.9503612   2.0353554
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                2.0219061    1.9505243   2.0932879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7895560    1.7526557   1.8264564
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.9206989    1.7659473   2.0754506
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.9752307    1.9295063   2.0209550
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.0416344    1.9555545   2.1277143
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.6800173    1.6360817   1.7239529
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.7470266    1.6511614   1.8428918
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.9450224    1.8702352   2.0198095
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.9015849    1.6579994   2.1451703
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.1145198    2.0641073   2.1649324
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                1.9996683    1.8661625   2.1331741
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.9563625    1.9342676   1.9784573
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.0679685    2.0190854   2.1168515
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                1.6851475    1.6333827   1.7369124
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                1.6327452    1.5431393   1.7223510
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                1.8699294    1.8565773   1.8832815
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.8500938    1.8194674   1.8807203
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.8987123    1.8822014   1.9152232
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9628439    1.9200587   2.0056291
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.8746563    1.8000201   1.9492925
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.8210772    1.6798238   1.9623306
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                1.2419000    1.1973451   1.2864550
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.2792540    1.1746491   1.3838588
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.4879067    1.4031459   1.5726675
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.4747760    0.9942225   1.9553294
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                1.2376355    1.1836743   1.2915967
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.3273694    1.2252100   1.4295287
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                1.3379926    1.2907641   1.3852211
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                1.4604314    1.3339207   1.5869421
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                1.3349321    1.2799287   1.3899356
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                1.1299731    0.7282474   1.5316988
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.3728937    1.3077936   1.4379938
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.3259644    1.0857031   1.5662257
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.2308223    1.1376678   1.3239767
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.1840066    1.0428923   1.3251208
6-9 months     ki1000108-IRC              INDIA                          0                    NA                1.3617140    1.3079704   1.4154576
6-9 months     ki1000108-IRC              INDIA                          1                    NA                1.3525194    1.2521013   1.4529376
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                1.1762181    1.1228919   1.2295443
6-9 months     ki1000109-EE               PAKISTAN                       1                    NA                1.2125048    1.0480123   1.3769973
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                1.4367075    1.3218256   1.5515893
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                1.4242089    1.1742605   1.6741573
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                1.2204902    1.1607699   1.2802105
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.1268343    0.9837194   1.2699491
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                1.1122798    1.0300407   1.1945190
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                1.2576756    0.9901233   1.5252278
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.2378320    1.1898166   1.2858474
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.2889953    1.2056247   1.3723658
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.2684279    1.2395879   1.2972678
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.3393560    1.2865850   1.3921270
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.3328844    1.2983340   1.3674347
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.3143226    1.2557434   1.3729017
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.3258307    1.2879327   1.3637287
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2879932    1.1458485   1.4301379
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                1.4021878    1.3462703   1.4581053
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.4420831    1.3095678   1.5745984
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                1.3236151    1.2781959   1.3690343
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.2996188    1.1924528   1.4067848
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                1.2392432    1.1772351   1.3012513
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.4630969    1.2321459   1.6940479
6-9 months     ki1119695-PROBIT           BELARUS                        0                    NA                1.5887724    1.5433360   1.6342087
6-9 months     ki1119695-PROBIT           BELARUS                        1                    NA                1.6172729    1.5303966   1.7041492
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.3408848    1.3193920   1.3623777
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.3579867    1.3109893   1.4049840
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                1.0617649    1.0164511   1.1070788
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                1.0686504    0.9865740   1.1507268
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                1.1876649    1.1755425   1.1997874
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                1.2188783    1.1908478   1.2469088
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    NA                1.4629897    1.4275925   1.4983870
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    NA                1.4217952    0.9439919   1.8995985
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.2891996    1.2466927   1.3317065
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.2616799    1.1183854   1.4049743
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.9759657    0.9312345   1.0206969
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.0224910    0.9348781   1.1101039
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.2921684    1.2134424   1.3708943
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.3536480    0.9894964   1.7177996
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.9656972    0.9218153   1.0095791
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.0569800    0.9782101   1.1357499
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                1.0814120    1.0364030   1.1264210
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.1526438    1.0557745   1.2495130
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                1.0868018    1.0360160   1.1375876
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.1885976    0.8175296   1.5596656
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                1.0025204    0.9351057   1.0699351
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.1146710    0.9130583   1.3162836
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.9010358    0.8188935   0.9831781
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.9053379    0.7848059   1.0258700
9-12 months    ki1000108-IRC              INDIA                          0                    NA                1.0851319    1.0402120   1.1300518
9-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2214785    1.1345283   1.3084287
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                0.9036673    0.8621860   0.9451487
9-12 months    ki1000109-EE               PAKISTAN                       1                    NA                0.9491293    0.8510002   1.0472584
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                1.2023201    1.0435531   1.3610870
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                1.1179973    0.9498455   1.2861490
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.9746081    0.9639376   0.9852786
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.0909359    0.8274587   1.3544131
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                1.1092879    0.6736142   1.5449615
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5944110    0.4904624   0.6983595
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                1.0894555    1.0480439   1.1308671
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.0902457    1.0216396   1.1588519
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.0531262    1.0222555   1.0839970
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.0327048    0.9751656   1.0902440
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.1048399    1.0749129   1.1347670
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.1685752    1.1159389   1.2212115
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0857119    1.0507766   1.1206472
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1105666    0.9548545   1.2662787
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.9915215    0.9427052   1.0403377
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.9492949    0.8629160   1.0356739
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.9990945    0.9632191   1.0349698
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.9948337    0.9035035   1.0861639
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.9574410    0.8938125   1.0210696
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.9948732    0.8367399   1.1530064
9-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                1.3657393    1.3307873   1.4006913
9-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                1.3578766    1.1979863   1.5177670
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.0687670    1.0485814   1.0889526
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.1208139    1.0772454   1.1643824
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.9391676    0.8978766   0.9804587
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.9693330    0.9031990   1.0354670
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                1.0032358    0.9899884   1.0164831
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                0.9923557    0.9637206   1.0209908
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                1.0971251    1.0492817   1.1449686
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                1.1954920    1.0297792   1.3612049
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.0495611    1.0126182   1.0865040
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.1079815    1.0074974   1.2084656
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8924219    0.8474638   0.9373800
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.9885966    0.8900201   1.0871731
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.1392953    1.0782654   1.2003252
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.0108767    0.6776390   1.3441144
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.9133099    0.8702106   0.9564092
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8857126    0.7903231   0.9811022
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.9555800    0.9125062   0.9986538
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.9261617    0.8208786   1.0314447
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8943075    0.8467734   0.9418417
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.9282217    0.5654871   1.2909563
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.9134323    0.8531388   0.9737258
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.0133714    0.8141418   1.2126010
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8363114    0.7534978   0.9191250
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8884744    0.7538406   1.0231082
12-15 months   ki1000108-IRC              INDIA                          0                    NA                0.9860436    0.9315829   1.0405043
12-15 months   ki1000108-IRC              INDIA                          1                    NA                0.8728051    0.8101766   0.9354335
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                1.0088799    0.9690774   1.0486824
12-15 months   ki1000109-EE               PAKISTAN                       1                    NA                0.8971620    0.8044381   0.9898860
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                1.3325629    1.1300184   1.5351073
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                1.1468715    0.9971923   1.2965508
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.8674361    0.8479016   0.8869705
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6709479    0.4652457   0.8766501
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.9030977    0.6003958   1.2057996
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                1.2866037    1.0939121   1.4792954
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7136436    0.6715780   0.7557093
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7785434    0.6560563   0.9010305
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.9665906    0.9370947   0.9960866
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9322771    0.8756564   0.9888978
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.9713613    0.9430381   0.9996845
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.9711587    0.9197770   1.0225403
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9289891    0.8910537   0.9669246
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9604492    0.8027018   1.1181967
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.9448177    0.9099502   0.9796851
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.9021273    0.8320529   0.9722018
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8709319    0.8358343   0.9060295
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.9054209    0.8490364   0.9618055
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.8638612    0.8055649   0.9221575
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.9882519    0.8369379   1.1395659
12-15 months   ki1119695-PROBIT           BELARUS                        0                    NA                1.3123953    0.7662026   1.8585880
12-15 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8801182    0.0016946   1.7585419
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.9236862    0.8934657   0.9539067
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.9189941    0.8539544   0.9840337
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7500494    0.7082857   0.7918130
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7514752    0.6704909   0.8324594
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.9409224    0.9055918   0.9762530
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8989561    0.8282208   0.9696914
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8411761    0.7999672   0.8823849
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7833620    0.6915673   0.8751566
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.0002657    0.9386855   1.0618459
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.7350532    0.4417441   1.0283622
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8340702    0.7928043   0.8753361
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.9028319    0.8241033   0.9815604
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8451311    0.7981445   0.8921177
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8228501    0.7511521   0.8945481
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.8501980    0.8062357   0.8941602
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8532168    0.6715079   1.0349257
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8882617    0.8325038   0.9440196
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.9000501    0.7846656   1.0154346
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7446260    0.6687121   0.8205400
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7337445    0.6161467   0.8513423
15-18 months   ki1000108-IRC              INDIA                          0                    NA                0.8646514    0.8176241   0.9116787
15-18 months   ki1000108-IRC              INDIA                          1                    NA                0.8455388    0.7765664   0.9145113
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                0.8569646    0.8160563   0.8978728
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                0.7599402    0.6813067   0.8385736
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.9749282    0.8702170   1.0796394
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.9107916    0.7832149   1.0383684
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.8503153    0.7800294   0.9206012
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7169475    0.4985103   0.9353846
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7591085    0.7102321   0.8079850
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7806752    0.7028815   0.8584690
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8463207    0.8196340   0.8730074
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8916586    0.8352511   0.9480662
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.9233247    0.8961168   0.9505325
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8968769    0.8505990   0.9431548
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9399868    0.8967839   0.9831896
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9011341    0.7069632   1.0953050
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8753819    0.8404334   0.9103305
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8898039    0.8255935   0.9540144
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7350055    0.6923372   0.7776739
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7918625    0.7277809   0.8559440
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7417603    0.6877075   0.7958130
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7633725    0.5269193   0.9998256
15-18 months   ki1119695-PROBIT           BELARUS                        0                    NA                1.1166697    0.4004898   1.8328496
15-18 months   ki1119695-PROBIT           BELARUS                        1                    NA                1.1853485   -3.2792852   5.6499823
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.8114433    0.7777063   0.8451802
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7694937    0.6876138   0.8513737
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7249246    0.6777318   0.7721173
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7690686    0.6839892   0.8541479
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8379565    0.8049803   0.8709328
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8711929    0.7606001   0.9817856
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8111723    0.7731978   0.8491468
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8448536    0.7512825   0.9384247
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.9261699    0.8503394   1.0020005
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.6920940    0.4344292   0.9497587
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8814458    0.8422596   0.9206320
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8666522    0.7802630   0.9530414
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8111240    0.7699228   0.8523251
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8441280    0.7380659   0.9501900
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.7802029    0.7228255   0.8375803
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.7931696    0.5599991   1.0263400
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6535898    0.5803927   0.7267868
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8145037    0.6855375   0.9434699
18-21 months   ki1000108-IRC              INDIA                          0                    NA                0.7825752    0.7368204   0.8283300
18-21 months   ki1000108-IRC              INDIA                          1                    NA                0.7091710    0.6287369   0.7896051
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                0.7229205    0.6816407   0.7642003
18-21 months   ki1000109-EE               PAKISTAN                       1                    NA                0.7195780    0.6283631   0.8107929
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7330338    0.6897795   0.7762882
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7220271    0.6505917   0.7934625
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8296714    0.8034670   0.8558757
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8567720    0.7992934   0.9142506
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.7944955    0.7672548   0.8217362
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8005356    0.7531279   0.8479433
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.8204443    0.7833426   0.8575460
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.7911445    0.7164534   0.8658357
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.9173274    0.8743525   0.9603023
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8654354    0.8159258   0.9149451
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.8135132    0.7611717   0.8658546
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7293530    0.6021913   0.8565147
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6657309    0.6279922   0.7034696
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7125952    0.6026164   0.8225740
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7206324    0.6758731   0.7653917
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7293618    0.6448291   0.8138945
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.8182133    0.7709281   0.8654985
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.8005479    0.6302424   0.9708533
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.7687942    0.7287870   0.8088013
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7861139    0.6996562   0.8725717
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.8019938    0.7554147   0.8485730
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.7257307    0.5276036   0.9238578
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.8320995    0.7971761   0.8670228
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.7927613    0.7221565   0.8633660
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.7807635    0.7396577   0.8218693
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.7526322    0.6641796   0.8410848
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8235160    0.7756008   0.8714311
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.0877436    0.7091058   1.4663814
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7141987    0.6396066   0.7887908
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7038719    0.5961153   0.8116285
21-24 months   ki1000108-IRC              INDIA                          0                    NA                0.7051912    0.6544195   0.7559628
21-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7213809    0.6487207   0.7940411
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.6468685    0.6050192   0.6887177
21-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.6686183    0.5730253   0.7642113
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7080731    0.6648865   0.7512598
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7568729    0.6885650   0.8251808
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.7679355    0.7393758   0.7964952
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7612456    0.7040208   0.8184704
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8050728    0.7755280   0.8346175
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.7934258    0.7465185   0.8403330
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.7196825    0.6807894   0.7585755
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6898312    0.6274633   0.7521991
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7790816    0.7244976   0.8336655
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8721416    0.7780275   0.9662556
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7602098    0.6996900   0.8207295
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6354145    0.4457099   0.8251190
21-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                1.1421189    0.5180291   1.7662087
21-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                2.0670096    1.1044941   3.0295252
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7066215    0.6647402   0.7485029
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7072336    0.5698676   0.8445996
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.6216100    0.5842737   0.6589463
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6523808    0.5782273   0.7265343
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.7468706    0.7003626   0.7933786
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                1.0070991    0.7644408   1.2497575


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3169358   3.2495564   3.3843152
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                3.7667150   3.6568915   3.8765385
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.3336541   3.2358460   3.4314623
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.6140980   3.5214759   3.7067201
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0408841   2.9747929   3.1069753
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.1892181   3.0928914   3.2855449
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.4002715   3.1800517   3.6204913
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.0770131   2.9695444   3.1844818
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.9753545   2.8876891   3.0630199
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.8454737   2.5635176   3.1274299
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.3651756   3.2467431   3.4836081
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.0936539   3.0404374   3.1468704
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2547535   3.2174779   3.2920291
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.1271961   3.0903268   3.1640655
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.0603720   3.0169082   3.1038358
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                3.5839464   3.5314522   3.6364407
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.7425789   2.5737975   2.9113603
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.2924816   3.2718212   3.3131420
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.5216917   2.4577502   2.5856332
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.4922418   3.4779900   3.5064936
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6175522   3.6012238   3.6338807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                2.9053355   2.7914381   3.0192328
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9261310   1.8759489   1.9763132
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1390151   2.0566588   2.2213715
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8806583   1.8191105   1.9422062
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9560913   1.8997707   2.0124120
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0059237   1.9398988   2.0719486
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9668565   1.8861545   2.0475586
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.7966493   1.6951848   1.8981138
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8770851   1.8117096   1.9424606
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0609077   1.9980184   2.1237969
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.0505104   1.9059854   2.1950354
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9242177   1.8955450   1.9528905
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8356302   1.7869609   1.8842995
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9675432   1.9335883   2.0014982
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0003032   1.9637722   2.0368341
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7973263   1.7613908   1.8332618
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9889338   1.9485053   2.0293623
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.6930511   1.6529721   1.7331301
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.9423229   1.8705517   2.0140940
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0898880   2.0242695   2.1555064
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9736846   1.9535093   1.9938599
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.6726708   1.6277737   1.7175679
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8664122   1.8541571   1.8786673
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9058691   1.8905432   1.9211950
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8685369   1.8011462   1.9359276
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2483888   1.2072891   1.2894884
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4874178   1.4038736   1.5709619
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2546335   1.2065851   1.3026819
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3541739   1.3095793   1.3987686
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3306263   1.2759374   1.3853151
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.3698331   1.3069758   1.4326904
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.2188143   1.1406327   1.2969960
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                1.3589701   1.3108047   1.4071355
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                1.1810362   1.1298686   1.2322038
6-9 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                1.4340099   1.3290024   1.5390175
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.2118450   1.1670060   1.2566840
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.1338927   1.0525014   1.2152841
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.2523889   1.2105899   1.2941879
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2830457   1.2575860   1.3085054
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.3281884   1.2984204   1.3579563
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3234547   1.2868291   1.3600802
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.4094786   1.3577498   1.4612073
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.3187732   1.2765504   1.3609961
6-9 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.2512354   1.1907738   1.3116969
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                1.5948432   1.5514478   1.6382386
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.3435446   1.3239772   1.3631119
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0634219   1.0237457   1.1030981
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.1931142   1.1819712   1.2042571
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                1.4623324   1.4258089   1.4988559
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2865338   1.2473539   1.3257138
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9842272   0.9442133   1.0242411
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.2945073   1.2175008   1.3715138
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9832988   0.9444691   1.0221285
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0908675   1.0496486   1.1320865
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.0890342   1.0386192   1.1394491
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.0097715   0.9452841   1.0742589
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9021148   0.8335498   0.9706797
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.1251269   1.0839232   1.1663307
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.9098347   0.8715418   0.9481275
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                1.1832999   1.0544874   1.3121123
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9854609   0.9670848   1.0038369
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0290473   0.6585278   1.3995669
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.0896859   1.0541780   1.1251939
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0488809   1.0216502   1.0761116
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.1213098   1.0951919   1.1474276
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0872812   1.0531050   1.1214573
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.9835856   0.9407344   1.0264369
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9982210   0.9641032   1.0323387
9-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.9596286   0.8989940   1.0202632
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.3640864   1.3087827   1.4193901
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.0767864   1.0584322   1.0951406
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.9459745   0.9106692   0.9812799
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.0013782   0.9893533   1.0134031
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.0986541   1.0518074   1.1455009
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.0547639   1.0202520   1.0892758
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9105142   0.8692446   0.9517838
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.1348671   1.0747303   1.1950039
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9080888   0.8687328   0.9474448
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9516921   0.9117841   0.9916000
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8950890   0.8478594   0.9423185
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9204765   0.8626040   0.9783489
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8497572   0.7791257   0.9203886
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.9526289   0.9096939   0.9955640
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.9935367   0.9565824   1.0304910
12-15 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                1.2984127   1.1301531   1.4666724
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8480157   0.8134916   0.8825398
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.9636513   0.7049916   1.2223109
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7318921   0.6859800   0.7778042
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9596237   0.9334295   0.9858180
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9713088   0.9464579   0.9961598
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9307080   0.8938207   0.9675954
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.9362665   0.9050358   0.9674972
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8776557   0.8473104   0.9080009
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8686763   0.8122040   0.9251486
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.2112241   0.7278349   1.6946133
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9229745   0.8955051   0.9504439
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7503429   0.7132224   0.7874634
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.9370148   0.9038277   0.9702019
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8305864   0.7928331   0.8683396
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9906797   0.9299147   1.0514447
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8470792   0.8102831   0.8838752
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8421471   0.8003239   0.8839702
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8502712   0.8071679   0.8933746
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8889985   0.8362290   0.9417679
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7416804   0.6778145   0.8055463
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.8590992   0.8201691   0.8980292
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8418323   0.8048928   0.8787718
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9686900   0.8732613   1.0641186
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8317920   0.7632451   0.9003389
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7652057   0.7238094   0.8066019
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8555786   0.8313681   0.8797891
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9160911   0.8926000   0.9395821
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9378676   0.8956651   0.9800700
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8782446   0.8474682   0.9090209
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7459936   0.7093517   0.7826355
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7430071   0.6902717   0.7957426
15-18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.1259506   0.2738358   1.9780654
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.8054187   0.7742184   0.8366190
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7342246   0.6928437   0.7756054
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8407606   0.8084802   0.8730410
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8174663   0.7819336   0.8529990
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9172810   0.8433449   0.9912171
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8785804   0.8428187   0.9143421
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8155441   0.7771093   0.8539790
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7810413   0.7252949   0.8367877
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6971818   0.6328805   0.7614832
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.7616322   0.7215333   0.8017310
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7223902   0.6847648   0.7600156
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7298383   0.6927892   0.7668875
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8351524   0.8112151   0.8590897
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7961985   0.7725063   0.8198907
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8147224   0.7814877   0.8479571
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9067731   0.8710316   0.9425146
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8087193   0.7587374   0.8587011
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6711663   0.6354411   0.7068915
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7225012   0.6829403   0.7620622
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8179911   0.7716915   0.8642907
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7720637   0.7357237   0.8084037
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.7990606   0.7535707   0.8445505
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8244799   0.7931087   0.8558511
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7769959   0.7394551   0.8145368
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8404536   0.7887901   0.8921172
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7115999   0.6495390   0.7736608
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.7098929   0.6681343   0.7516515
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.6509316   0.6124595   0.6894037
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7220159   0.6854476   0.7585843
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7665802   0.7410242   0.7921362
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8018919   0.7768810   0.8269028
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.7137479   0.6802038   0.7472920
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7963474   0.7484187   0.8442761
21-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7534900   0.6951222   0.8118578
21-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.3444388   0.7369879   1.9518896
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7066785   0.6666014   0.7467556
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6277488   0.5943785   0.6611192
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.7513135   0.7054477   0.7971793


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.2344341   -0.4373315   -0.0315368
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.3056898   -0.7712942    0.1599145
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.3161330   -0.5326417   -0.0996243
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0364473   -0.1937866    0.2666812
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.3989897    0.0298223    0.7681571
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.4424685   -0.7810848   -0.1038523
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.7544260   -1.4013793   -0.1074728
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -1.1954997   -1.3833316   -1.0076678
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.5057586   -0.8043256   -0.2071916
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.5562724   -1.2987041    0.1861593
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2328631   -0.6019477    0.1362216
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.2141851   -0.3322312   -0.0961390
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0884815   -0.1769375   -0.0000254
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1466725   -0.2304468   -0.0628983
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.5326580   -0.6346837   -0.4306322
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1350264   -0.2724564    0.0024035
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.4598576   -0.6020682   -0.3176470
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.8991609   -0.9528002   -0.8455215
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.1344643   -0.2684946   -0.0004340
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.1524930   -0.1918510   -0.1131350
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1976914   -0.2425617   -0.1528210
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1117769   -0.1041928    0.3277467
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0215927   -0.1673503    0.1241650
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0697617   -0.2437657    0.3832890
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.1270105   -0.0054531    0.2594740
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0057518   -0.1415181    0.1300144
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.1400127   -0.4212792    0.1412537
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1324800   -0.1849045    0.4498645
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0887431   -0.3090149    0.1315286
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0998396   -0.0496786    0.2493577
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.1071495   -0.0797307    0.2940296
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.1806859   -0.1683071    0.5296788
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1067783   -0.1048866    0.3184433
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0198910   -0.0894924    0.1292744
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0375425   -0.1249064    0.0498213
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0290478   -0.0540267    0.1121222
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1311429   -0.0279473    0.2902331
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0664038   -0.0310666    0.1638741
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0670093   -0.0384443    0.1724630
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0434375   -0.2982452    0.2113702
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.1148516   -0.2280452   -0.0016579
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.1116060    0.0579615    0.1652505
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0524024   -0.1558857    0.0510810
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0198356   -0.0532460    0.0135749
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0641316    0.0180713    0.1101919
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0535791   -0.2166556    0.1094974
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0373539   -0.0763444    0.1510523
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0131307   -0.5011020    0.4748406
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0897339   -0.0258012    0.2052689
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.1224388   -0.0126000    0.2574777
6-9 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.2049591   -0.6104328    0.2005146
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0469293   -0.2958540    0.2019955
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0468157   -0.2159044    0.1222729
6-9 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    0                 -0.0091946   -0.1230900    0.1047009
6-9 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0362867   -0.1366337    0.2092071
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0124986   -0.2875841    0.2625870
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0936559   -0.2843186    0.0970068
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.1453957   -0.1345104    0.4253019
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0511633   -0.0450455    0.1473721
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0709281    0.0107906    0.1310656
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0185618   -0.0865709    0.0494473
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0378375   -0.1849476    0.1092726
6-9 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0398953   -0.1039347    0.1837252
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0239963   -0.1403898    0.0923973
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.2238537   -0.0152767    0.4629842
6-9 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0285005   -0.0628472    0.1198481
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0171018   -0.0345769    0.0687806
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0068855   -0.0868688    0.1006398
6-9 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          1                    0                  0.0312134    0.0006738    0.0617529
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0411945   -0.5203072    0.4379181
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0275197   -0.1818485    0.1268091
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0465253   -0.0518459    0.1448965
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0614796   -0.3110847    0.4340440
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0912828    0.0011145    0.1814511
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0712318   -0.0355833    0.1780469
9-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.1017958   -0.2727314    0.4763230
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1121506   -0.1004345    0.3247356
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0043021   -0.1415586    0.1501628
9-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    0                  0.1363466    0.0384787    0.2342146
9-12 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       1                    0                  0.0454620   -0.0610745    0.1519984
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0843228   -0.3155844    0.1469388
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1163278   -0.1569767    0.3896323
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.5148769   -0.9627796   -0.0669742
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0007902   -0.0793454    0.0809259
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0204214   -0.0857189    0.0448761
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0637353    0.0031860    0.1242845
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0248547   -0.1347282    0.1844377
9-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0422265   -0.1414453    0.0569922
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0042607   -0.1023844    0.0938629
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.0374321   -0.1330224    0.2078866
9-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0078627   -0.1473994    0.1316740
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0520469    0.0040295    0.1000643
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0301654   -0.0478003    0.1081311
9-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0108800   -0.0424310    0.0206709
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                  0.0983669   -0.0741142    0.2708480
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0584204   -0.0502175    0.1670583
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0961747   -0.0121700    0.2045193
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1284187   -0.4671988    0.2103615
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0275973   -0.1322716    0.0770771
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0294183   -0.1431719    0.0843353
12-15 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0339142   -0.3319217    0.3997501
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0999391   -0.1082140    0.3080922
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0521630   -0.1059014    0.2102273
12-15 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    0                 -0.1132385   -0.1962343   -0.0302428
12-15 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.1117179   -0.2126236   -0.0108122
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    0                 -0.1856913   -0.4375407    0.0661581
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.1964881   -0.3943195    0.0013433
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.3835060    0.0246767    0.7423353
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0648997   -0.0646094    0.1944088
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0343135   -0.0981565    0.0295294
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0002027   -0.0588736    0.0584683
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0314601   -0.1307846    0.1937048
12-15 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0426903   -0.1209602    0.0355795
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0344890   -0.0319267    0.1009048
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.1243907   -0.0377648    0.2865461
12-15 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.4322771   -1.3919667    0.5274126
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0046921   -0.0764099    0.0670256
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0014258   -0.0896931    0.0925446
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0419663   -0.1191404    0.0352078
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0578141   -0.1584343    0.0428061
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.2652125   -0.5649162    0.0344912
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0687617   -0.0201262    0.1576495
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0222810   -0.1080035    0.0634414
15-18 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0030188   -0.1839325    0.1899702
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0117885   -0.1163619    0.1399389
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0108815   -0.1508536    0.1290905
15-18 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    0                 -0.0191126   -0.1025917    0.0643665
15-18 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0970244   -0.1856625   -0.0083863
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0641365   -0.2254813    0.0972082
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.1333678   -0.3628344    0.0960987
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0215667   -0.0703070    0.1134404
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0453380   -0.0170639    0.1077398
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0264478   -0.0801312    0.0272357
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0388527   -0.2377719    0.1600665
15-18 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0144220   -0.0586833    0.0875273
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0568569   -0.0201303    0.1338442
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0216122   -0.2209404    0.2641649
15-18 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.0686789   -4.4677583    4.6051160
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0419495   -0.1305075    0.0466084
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0441440   -0.0531476    0.1414356
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0332363   -0.0794442    0.1459169
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0336813   -0.0673019    0.1346646
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.2340760   -0.5026675    0.0345155
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0147936   -0.1096548    0.0800676
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0330040   -0.0807795    0.1467876
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0129667   -0.2271596    0.2530930
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1609140    0.0126234    0.3092045
18-21 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    0                 -0.0734042   -0.1659414    0.0191331
18-21 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0033425   -0.1034634    0.0967783
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0110067   -0.0945169    0.0725035
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0271006   -0.0360695    0.0902707
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0060401   -0.0486366    0.0607169
18-21 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0292998   -0.1126983    0.0540987
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0518920   -0.1174515    0.0136676
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0841602   -0.2216728    0.0533524
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0468643   -0.0694093    0.1631379
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0087294   -0.0869219    0.1043807
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0176654   -0.1944134    0.1590825
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0173198   -0.0779458    0.1125853
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0762632   -0.2797919    0.1272656
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0393382   -0.1181080    0.0394316
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0281313   -0.1256687    0.0694061
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.2642277   -0.1174298    0.6458851
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0103268   -0.1413820    0.1207285
21-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    0                  0.0161897   -0.0724515    0.1048310
21-24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0217498   -0.0826024    0.1261020
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0487998   -0.0320152    0.1296147
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0066899   -0.0706456    0.0572658
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0116470   -0.0670833    0.0437893
21-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0298513   -0.1033524    0.0436499
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0930600   -0.0157374    0.2018573
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.1247953   -0.3239195    0.0743289
21-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.9248907   -0.3235175    2.1732989
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0006121   -0.1429966    0.1442208
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0307708   -0.0522518    0.1137933
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  0.2602285    0.0131535    0.5073035


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0395798   -0.0756664   -0.0034932
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0113922   -0.0309262    0.0081418
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0544451   -0.0956292   -0.0132610
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0035968   -0.0191897    0.0263833
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0092788   -0.0025207    0.0210783
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0294979   -0.0565812   -0.0024146
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1090736   -0.2188301    0.0006828
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.3704365   -0.4523146   -0.2885585
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0656005   -0.1099376   -0.0212634
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0940179   -0.2286678    0.0406320
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0194593   -0.0536732    0.0147546
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0607449   -0.0951964   -0.0262935
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0189003   -0.0380059    0.0002053
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0372435   -0.0590351   -0.0154520
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.1436918   -0.1742308   -0.1131527
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0266048   -0.0541141    0.0009046
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.0966965   -0.1632839   -0.0301090
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1461508   -0.1576391   -0.1346626
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0397823   -0.0799740    0.0004093
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0276553   -0.0349443   -0.0203664
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0237081   -0.0293363   -0.0180799
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0103389   -0.0105740    0.0312517
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0036481   -0.0282972    0.0210011
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0024663   -0.0087630    0.0136957
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0240592   -0.0018583    0.0499768
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0007535   -0.0185413    0.0170342
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0026926   -0.0101039    0.0047188
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0087590   -0.0126327    0.0301507
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0227017   -0.0792204    0.0338170
3-6 months     ki1000108-IRC              INDIA                          0                    NA                 0.0297110   -0.0150248    0.0744468
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0135143   -0.0105182    0.0375469
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0323081   -0.0310707    0.0956868
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0092563   -0.0111644    0.0296770
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0056661   -0.0255028    0.0368351
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0078769   -0.0262485    0.0104947
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0074448   -0.0138684    0.0287580
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0077703   -0.0017733    0.0173138
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0137031   -0.0064619    0.0338682
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0130339   -0.0076283    0.0336960
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0026995   -0.0186106    0.0132116
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.0246319   -0.0569053    0.0076415
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0173221    0.0089316    0.0257127
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0124768   -0.0372184    0.0122649
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0035172   -0.0094445    0.0024101
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0071568    0.0019922    0.0123214
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0061194   -0.0249852    0.0127463
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0064887   -0.0133534    0.0263308
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0004889   -0.0186615    0.0176837
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0169980   -0.0053624    0.0393585
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0161813   -0.0024660    0.0348287
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0043059   -0.0151114    0.0064997
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0030606   -0.0193640    0.0132428
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0120079   -0.0554383    0.0314225
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0027439   -0.0367363    0.0312484
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0048182   -0.0181950    0.0278313
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0026975   -0.0620747    0.0566796
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0086452   -0.0287075    0.0114171
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0216129   -0.0216535    0.0648793
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0145569   -0.0128946    0.0420084
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0146178    0.0019969    0.0272387
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0046960   -0.0219128    0.0125208
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0023760   -0.0116257    0.0068736
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0072907   -0.0190135    0.0335949
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0048418   -0.0283438    0.0186602
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0119922   -0.0029260    0.0269104
6-9 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0060708   -0.0151053    0.0272469
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0026597   -0.0053792    0.0106987
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0016569   -0.0209062    0.0242201
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                 0.0054493    0.0001087    0.0107898
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0006574   -0.0126428    0.0113280
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0026657   -0.0177294    0.0123980
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0082615   -0.0093687    0.0258917
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0023389   -0.0119368    0.0166146
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0176016   -0.0004189    0.0356221
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0094555   -0.0050709    0.0239820
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0022324   -0.0073296    0.0117943
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0072511   -0.0069463    0.0214485
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0010790   -0.0355040    0.0376620
9-12 months    ki1000108-IRC              INDIA                          0                    NA                 0.0399950    0.0106058    0.0693842
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0061673   -0.0084101    0.0207447
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0190202   -0.0715298    0.0334894
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0108527   -0.0168925    0.0385980
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0802406   -0.1616977    0.0012165
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0002304   -0.0231353    0.0235961
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0042453   -0.0178371    0.0093465
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0164698    0.0006776    0.0322620
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0015693   -0.0085130    0.0116516
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0079358   -0.0266150    0.0107434
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0008735   -0.0209906    0.0192436
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0021876   -0.0078707    0.0122459
9-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0016529   -0.0305777    0.0272718
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0080194    0.0006045    0.0154342
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0068069   -0.0108276    0.0244414
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0018576   -0.0072455    0.0035304
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0015290   -0.0029510    0.0060091
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0052028   -0.0046063    0.0150120
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0180923   -0.0029413    0.0391258
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0044282   -0.0166210    0.0077645
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0052211   -0.0250756    0.0146334
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0038879   -0.0189774    0.0112016
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0007814   -0.0083896    0.0099525
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0070442   -0.0080017    0.0220900
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0134457   -0.0273739    0.0542654
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0334147   -0.0584718   -0.0083575
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0153432   -0.0300584   -0.0006280
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0341501   -0.0828989    0.0145986
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0194203   -0.0389384    0.0000977
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0605536   -0.0043439    0.1254511
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0182485   -0.0182687    0.0547656
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0069669   -0.0199829    0.0060491
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0000525   -0.0152465    0.0151416
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0017189   -0.0071599    0.0105977
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0085512   -0.0242566    0.0071543
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0067238   -0.0062878    0.0197353
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0048151   -0.0025172    0.0121474
12-15 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1011712   -0.3144162    0.1120737
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0007116   -0.0115892    0.0101659
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0002935   -0.0184663    0.0190534
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0039076   -0.0111673    0.0033521
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0105897   -0.0292776    0.0080982
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0095860   -0.0227919    0.0036199
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0130090   -0.0041784    0.0301963
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0029841   -0.0145079    0.0085397
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0000733   -0.0046009    0.0047475
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0007368   -0.0072814    0.0087549
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0029456   -0.0408399    0.0349487
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0055523   -0.0298199    0.0187154
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0151322   -0.0297284   -0.0005361
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0062382   -0.0223536    0.0098772
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0185233   -0.0521509    0.0151043
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0060971   -0.0198929    0.0320871
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0092579   -0.0035803    0.0220962
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0072336   -0.0219473    0.0074802
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0021192   -0.0129903    0.0087518
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0028626   -0.0116514    0.0173766
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0109881   -0.0040362    0.0260123
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0012469   -0.0127690    0.0152628
15-18 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0092809   -0.6032794    0.6218412
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0060245   -0.0187600    0.0067110
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0093000   -0.0112822    0.0298822
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0028041   -0.0067378    0.0123459
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0062940   -0.0126655    0.0252534
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0088890   -0.0212587    0.0034808
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0028654   -0.0212556    0.0155248
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0044202   -0.0108899    0.0197303
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0008384   -0.0146925    0.0163692
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0435921    0.0026074    0.0845768
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0209430   -0.0475703    0.0056843
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0005303   -0.0164157    0.0153551
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0031955   -0.0274453    0.0210543
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0054810   -0.0073283    0.0182904
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0017030   -0.0137151    0.0171212
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0057219   -0.0220208    0.0105770
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0105543   -0.0240401    0.0029315
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0047939   -0.0132002    0.0036123
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0054354   -0.0080718    0.0189425
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0018688   -0.0186120    0.0223497
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0002222   -0.0046444    0.0042000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0032695   -0.0147394    0.0212785
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0029332   -0.0110946    0.0052282
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0076196   -0.0230138    0.0077747
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0037676   -0.0168910    0.0093558
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0169377   -0.0089003    0.0427757
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0025988   -0.0355835    0.0303859
21-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0047017   -0.0210518    0.0304551
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0040632   -0.0155097    0.0236360
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0139428   -0.0092504    0.0371359
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0013553   -0.0143141    0.0116036
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0031809   -0.0183283    0.0119664
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0059346   -0.0205630    0.0086938
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0172658   -0.0033089    0.0378406
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0067197   -0.0184922    0.0050527
21-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.2023198   -0.3688208    0.7734605
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000569   -0.0133020    0.0134159
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0061388   -0.0104681    0.0227457
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0044429   -0.0025447    0.0114306
