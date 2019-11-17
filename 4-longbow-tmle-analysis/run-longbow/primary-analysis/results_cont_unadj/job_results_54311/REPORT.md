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
![](/tmp/d01a964b-0e78-47cf-a6e2-a33174b4d9c3/90b1e3e8-5ba4-4f03-b6f9-e4a73c789dce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d01a964b-0e78-47cf-a6e2-a33174b4d9c3/90b1e3e8-5ba4-4f03-b6f9-e4a73c789dce/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d01a964b-0e78-47cf-a6e2-a33174b4d9c3/90b1e3e8-5ba4-4f03-b6f9-e4a73c789dce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1220083   -0.1571749   -0.0868417
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2234588   -0.3203461   -0.1265714
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1198398    0.0632176    0.1764620
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0735739   -0.3313399    0.1841920
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0440638   -0.1008426    0.0127151
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.1796262   -0.2694638   -0.0897886
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0427196   -0.0051558    0.0905951
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.1072577    0.0003061    0.2142094
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.2765642   -0.3098681   -0.2432604
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0980889   -0.3439626    0.1477847
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.1607465   -0.2109056   -0.1105874
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.3906114   -0.5729695   -0.2082533
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0710097   -0.1824319    0.0404125
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.4234179   -0.6990425   -0.1477932
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.1021613   -0.1563640   -0.0479586
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.7096097   -0.7853357   -0.6338837
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.2479726   -0.2919627   -0.2039824
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.5257368   -0.6692960   -0.3821776
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2706410   -0.4216251   -0.1196570
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                -0.5853956   -0.9212833   -0.2495079
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1205690   -0.1989177   -0.0422203
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1967592   -0.2967911   -0.0967272
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.2135506   -0.2441248   -0.1829764
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.3200785   -0.3701728   -0.2699842
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1855292   -0.2052356   -0.1658229
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2116413   -0.2487019   -0.1745807
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.2178013   -0.2380731   -0.1975294
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.2894908   -0.3231118   -0.2558697
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.2346590   -0.2568747   -0.2124433
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.5140724   -0.5598755   -0.4682693
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0314855   -0.0595659   -0.0034052
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1068926   -0.1685631   -0.0452220
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.4104315   -0.4844721   -0.3363909
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                -0.6644293   -0.7596131   -0.5692454
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0945820   -0.1048070   -0.0843569
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5409786   -0.5659744   -0.5159828
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.5394080   -0.5786447   -0.5001713
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.6470752   -0.6994134   -0.5947369
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0610906   -0.0685247   -0.0536566
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.1396423   -0.1570075   -0.1222772
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0337524    0.0259179    0.0415869
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0549336   -0.0773785   -0.0324887
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3403062   -0.4056904   -0.2749220
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.2684411   -0.3571276   -0.1797545
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0253445   -0.0505464   -0.0001426
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0250742   -0.0883520    0.0382035
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0535642    0.0145863    0.0925422
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0928777   -0.0428615    0.2286168
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0532006   -0.0860914   -0.0203098
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0091723   -0.0413186    0.0596632
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0283656   -0.0577791    0.0010478
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0201216   -0.0768331    0.0365900
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0216599   -0.0100362    0.0533560
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.0661153   -0.2004761    0.0682455
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0119871   -0.0511435    0.0271693
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0619716   -0.0858273    0.2097705
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0925835   -0.1491043   -0.0360627
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1285500   -0.2183832   -0.0387168
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0722112   -0.1079882   -0.0364342
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0130952   -0.0727047    0.0465143
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0372753    0.0058428    0.0687079
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                 0.0816525   -0.0014203    0.1647253
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0104773   -0.0653309    0.0862855
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.1126319   -0.0295543    0.2548182
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0337599   -0.0542950   -0.0132247
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0336916   -0.0541078    0.1214909
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0550226   -0.0813408   -0.0287043
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0415066   -0.0842565    0.0012433
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0251095   -0.0426192   -0.0075997
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0333683   -0.0710797    0.0043431
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0182591   -0.0013434    0.0378616
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0354412    0.0027404    0.0681420
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0870941   -0.1042150   -0.0699732
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0309765   -0.1031100    0.0411569
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0257729   -0.0472489   -0.0042968
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0064689   -0.0332880    0.0462257
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1778393   -0.1984562   -0.1572225
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1469207   -0.1924777   -0.1013638
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0124127   -0.0467408    0.0219154
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0314212   -0.1593135    0.0964711
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0597550    0.0357533    0.0837568
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.0022998   -0.0586510    0.0632505
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0136855   -0.0240205   -0.0033506
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0522846    0.0294835    0.0750858
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1282897   -0.1529661   -0.1036133
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1693164   -0.2115032   -0.1271296
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0597931   -0.0659471   -0.0536392
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0682288   -0.0823634   -0.0540943
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0178724   -0.0255983   -0.0101465
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0138214   -0.0058154    0.0334581
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0221400   -0.0562925    0.0120124
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0484988   -0.1068128    0.0098152
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0746408   -0.0940080   -0.0552736
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0534500   -0.0984675   -0.0084326
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0101443   -0.0266474    0.0469359
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0024155   -0.1982779    0.2031089
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0738300   -0.0978139   -0.0498461
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0374469   -0.0824531    0.0075592
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0439633   -0.0646026   -0.0233240
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0154919   -0.0382395    0.0692234
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0276154   -0.0520896   -0.0031412
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.1229158   -0.3024495    0.0566179
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0196740   -0.0482964    0.0089484
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0399927   -0.1386152    0.0586299
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0773871   -0.1183986   -0.0363755
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0923818   -0.1552028   -0.0295609
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0229108   -0.0464294    0.0006077
6-9 months     ki1000108-IRC              INDIA                          1                    NA                -0.0238425   -0.0689761    0.0212912
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0904308   -0.1139906   -0.0668710
6-9 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.0781505   -0.1515525   -0.0047485
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0143505   -0.0370057    0.0657067
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0015971   -0.1096210    0.1128151
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0838917   -0.1071298   -0.0606535
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1228206   -0.1898701   -0.0557710
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1162595   -0.1522908   -0.0802281
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0560808   -0.1780569    0.0658952
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0685068   -0.0897335   -0.0472802
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0455484   -0.0819757   -0.0091211
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0683640   -0.0807533   -0.0559748
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0352799   -0.0578340   -0.0127258
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0302282   -0.0451617   -0.0152947
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0382868   -0.0639624   -0.0126113
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0510836   -0.0677345   -0.0344326
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0706606   -0.1327454   -0.0085758
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0146966   -0.0392499    0.0098566
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0046544   -0.0542285    0.0635374
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0425908   -0.0620909   -0.0230906
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0519763   -0.0983412   -0.0056114
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0650169   -0.0924201   -0.0376136
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0354511   -0.0668211    0.1377232
6-9 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0577370    0.0369488    0.0785251
6-9 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.0681588    0.0276990    0.1086187
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0364946   -0.0459569   -0.0270323
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0205312   -0.0410175   -0.0000449
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1372018   -0.1569699   -0.1174336
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1403057   -0.1769868   -0.1036245
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.1008467   -0.1061724   -0.0955210
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0856172   -0.0980616   -0.0731728
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0297911    0.0143312    0.0452510
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0124296   -0.1938586    0.2187179
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0464706   -0.0648589   -0.0280823
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0568470   -0.1199524    0.0062585
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0940274   -0.1125836   -0.0754713
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0725147   -0.1102453   -0.0347840
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0052784   -0.0275052    0.0380620
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0294497   -0.1098037    0.1687031
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0975282   -0.1156906   -0.0793657
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0630051   -0.0959902   -0.0300201
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0659074   -0.0846090   -0.0472059
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0357511   -0.0750879    0.0035856
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0471261   -0.0685324   -0.0257198
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0079618   -0.1738263    0.1579027
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0896111   -0.1175924   -0.0616297
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0449002   -0.1276828    0.0378824
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1183307   -0.1531133   -0.0835481
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1164759   -0.1655112   -0.0674406
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0534163   -0.0728846   -0.0339479
9-12 months    ki1000108-IRC              INDIA                          1                    NA                 0.0046125   -0.0322603    0.0414853
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.1102119   -0.1275057   -0.0929182
9-12 months    ki1000109-EE               PAKISTAN                       1                    NA                -0.0930392   -0.1339998   -0.0520786
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0039025   -0.0715350    0.0637300
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.0436227   -0.1143568    0.0271114
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0928372   -0.1008948   -0.0847796
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0389717   -0.1513839    0.0734406
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0231668   -0.2009725    0.1546390
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.2330664   -0.2754509   -0.1906820
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0427527   -0.0596965   -0.0258089
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0438967   -0.0722202   -0.0155731
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0623047   -0.0748443   -0.0497651
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0699213   -0.0934197   -0.0464229
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0428173   -0.0552505   -0.0303841
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0162465   -0.0383475    0.0058545
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0663338   -0.0809617   -0.0517059
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0503389   -0.1161937    0.0155159
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0976753   -0.1180264   -0.0773242
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1113821   -0.1487911   -0.0739731
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0809518   -0.0959802   -0.0659233
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0822484   -0.1203957   -0.0441011
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0932899   -0.1194149   -0.0671649
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0774277   -0.1459281   -0.0089273
9-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0354545    0.0204028    0.0505061
9-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0282020   -0.0379307    0.0943348
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0661647   -0.0745942   -0.0577351
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0369641   -0.0549930   -0.0189352
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0897653   -0.1064743   -0.0730563
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0813043   -0.1089771   -0.0536314
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0857252   -0.0911356   -0.0803147
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0904159   -0.1020659   -0.0787659
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0447343   -0.0645614   -0.0249071
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0037843   -0.0687596    0.0611909
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0627883   -0.0780929   -0.0474838
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0375512   -0.0793285    0.0042261
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0646401   -0.0819817   -0.0472984
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0273670   -0.0653796    0.0106456
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0044523   -0.0279221    0.0190174
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0508483   -0.1800880    0.0783915
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0551440   -0.0720427   -0.0382452
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0691829   -0.1045959   -0.0337699
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0559251   -0.0727964   -0.0390537
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0691019   -0.1106175   -0.0275864
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0646544   -0.0830678   -0.0462411
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0592945   -0.1973982    0.0788093
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0615084   -0.0854959   -0.0375209
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0234358   -0.0990136    0.0521420
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0787922   -0.1118033   -0.0457811
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0553477   -0.1103240   -0.0003714
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0341812   -0.0560939   -0.0122686
12-15 months   ki1000108-IRC              INDIA                          1                    NA                -0.0788297   -0.1037930   -0.0538665
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0043939   -0.0199345    0.0111468
12-15 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0503502   -0.0874303   -0.0132700
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1023874    0.0195401    0.1852346
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                 0.0187240   -0.0435503    0.0809984
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0732457   -0.0817821   -0.0647093
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1437599   -0.2096993   -0.0778206
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0427420   -0.1643992    0.0789151
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1134768    0.0424996    0.1844541
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1309229   -0.1471615   -0.1146844
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1073035   -0.1536241   -0.0609829
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0386649   -0.0501187   -0.0272111
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0507449   -0.0719700   -0.0295197
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0386775   -0.0496113   -0.0277436
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0397895   -0.0596618   -0.0199173
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0654076   -0.0803103   -0.0505049
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0573503   -0.1188785    0.0041779
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0507865   -0.0645348   -0.0370381
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0670388   -0.0951364   -0.0389411
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0716016   -0.0847107   -0.0584926
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0579622   -0.0796331   -0.0362914
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0648463   -0.0875101   -0.0421825
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0281229   -0.0934821    0.0372362
12-15 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0568454   -0.1507352    0.2644259
12-15 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1117382   -0.4361164    0.2126400
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0629609   -0.0747950   -0.0511268
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0584978   -0.0838203   -0.0331753
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0974653   -0.1134984   -0.0814323
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0995305   -0.1320195   -0.0670414
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0467232   -0.0602309   -0.0332155
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0610891   -0.0884110   -0.0337671
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0401047   -0.0551645   -0.0250449
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0608701   -0.0946841   -0.0270560
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0211907   -0.0431579    0.0007766
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1151472   -0.2261671   -0.0041273
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0413353   -0.0560373   -0.0266333
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0207022   -0.0477511    0.0063468
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0536347   -0.0707849   -0.0364845
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0618291   -0.0864282   -0.0372299
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0374696   -0.0535358   -0.0214033
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0395406   -0.1135197    0.0344385
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0278904   -0.0480206   -0.0077602
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0278927   -0.0666984    0.0109129
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0651678   -0.0934638   -0.0368718
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0651794   -0.1089736   -0.0213852
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0373943   -0.0549352   -0.0198533
15-18 months   ki1000108-IRC              INDIA                          1                    NA                -0.0430511   -0.0690818   -0.0170205
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0232115   -0.0374997   -0.0089233
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0554236   -0.0848623   -0.0259849
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0112665   -0.0268687    0.0494017
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0043350   -0.0592044    0.0505345
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0166423   -0.0417458    0.0084612
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0659351   -0.1488820    0.0170118
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0630463   -0.0808558   -0.0452369
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0583500   -0.0866434   -0.0300566
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0416256   -0.0512644   -0.0319868
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0231041   -0.0439197   -0.0022885
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0154290   -0.0253207   -0.0055372
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0251677   -0.0418803   -0.0084550
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0182949   -0.0339949   -0.0025948
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0363475   -0.1079628    0.0352678
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0345170   -0.0475022   -0.0215318
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0276398   -0.0507633   -0.0045163
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0780019   -0.0933392   -0.0626646
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0557912   -0.0794190   -0.0321634
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0648568   -0.0850013   -0.0447123
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0657253   -0.1534890    0.0220385
15-18 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0294824   -0.2441751    0.3031400
15-18 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0748489   -1.5894686    1.7391663
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0599675   -0.0723606   -0.0475743
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0684389   -0.0981134   -0.0387644
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0591035   -0.0765275   -0.0416796
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0437383   -0.0754054   -0.0120712
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0420463   -0.0542053   -0.0298874
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0291489   -0.0689294    0.0106316
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0169004   -0.0296218   -0.0041791
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0059598   -0.0383518    0.0264322
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0173416   -0.0437351    0.0090519
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0847074   -0.1776574    0.0082425
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0074116   -0.0052630    0.0200862
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0030017   -0.0311087    0.0251053
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0308043   -0.0449540   -0.0166545
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0198566   -0.0540247    0.0143116
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0326341   -0.0524508   -0.0128174
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0312526   -0.1107271    0.0482218
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0601102   -0.0856561   -0.0345642
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0040886   -0.0498467    0.0416696
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0329556   -0.0488174   -0.0170938
18-21 months   ki1000108-IRC              INDIA                          1                    NA                -0.0586035   -0.0861525   -0.0310545
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0385509   -0.0522852   -0.0248166
18-21 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0347984   -0.0652206   -0.0043763
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0373524   -0.0522588   -0.0224460
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0439097   -0.0687118   -0.0191076
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0141761   -0.0230778   -0.0052745
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0059501   -0.0255406    0.0136404
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0293716   -0.0386377   -0.0201055
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0279618   -0.0446650   -0.0112587
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0209971   -0.0338595   -0.0081347
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0283950   -0.0548297   -0.0019603
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0185602    0.0036095    0.0335109
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0034542   -0.0128754    0.0197838
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0029825   -0.0210457    0.0150807
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0354539   -0.0890598    0.0181521
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0758982   -0.0889378   -0.0628586
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0540501   -0.0921027   -0.0159976
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0264630   -0.0418757   -0.0110502
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0248566   -0.0539957    0.0042826
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0153397   -0.0318615    0.0011822
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0125173   -0.0659797    0.0409450
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0246508    0.0105522    0.0387494
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0367273    0.0099499    0.0635046
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0171656    0.0001804    0.0341507
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0147824   -0.0729521    0.1025168
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0329625    0.0205254    0.0453996
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0113856   -0.0119849    0.0347560
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0042661   -0.0097548    0.0182870
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0022601   -0.0292625    0.0247423
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0396647    0.0237817    0.0555477
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1123267   -0.0049164    0.2295697
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0202429   -0.0052314    0.0457172
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0164361   -0.0200176    0.0528899
21-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0168756   -0.0337038   -0.0000474
21-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0073278   -0.0306854    0.0160298
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0114983   -0.0259067    0.0029101
21-24 months   ki1000109-EE               PAKISTAN                       1                    NA                -0.0081389   -0.0417279    0.0254500
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0373812    0.0230556    0.0517068
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0499936    0.0274062    0.0725811
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0476753    0.0380048    0.0573459
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0460599    0.0260938    0.0660260
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0586329    0.0486529    0.0686129
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0610795    0.0455540    0.0766050
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0151992    0.0022238    0.0281746
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0106680   -0.0107387    0.0320748
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0401713    0.0215092    0.0588334
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0744110    0.0420326    0.1067894
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0183894   -0.0014953    0.0382741
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0401872   -0.0974347    0.0170604
21-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.1264261   -0.0802657    0.3331179
21-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.4417699    0.0962122    0.7873277
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0204392    0.0067048    0.0341736
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0294133   -0.0167850    0.0756115
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0205382   -0.0333022   -0.0077743
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0081813   -0.0335108    0.0171483
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0244094    0.0088434    0.0399755
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1310196    0.0384308    0.2236083


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1391363   -0.1729897   -0.1052829
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1126318    0.0569895    0.1682741
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0674106   -0.1174570   -0.0173643
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0490885    0.0045596    0.0936174
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.2724137   -0.3056248   -0.2392025
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1760709   -0.2250595   -0.1270822
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1219603   -0.2286940   -0.0152266
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2903848   -0.3433581   -0.2374114
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.2840006   -0.3281932   -0.2398079
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.3238390   -0.4642954   -0.1833825
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.1269359   -0.1903740   -0.0634977
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.2437630   -0.2701813   -0.2173446
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1911070   -0.2085288   -0.1736851
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.2360049   -0.2535255   -0.2184843
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.3100346   -0.3315761   -0.2884931
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0463433   -0.0720995   -0.0205871
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4638408   -0.5532131   -0.3744686
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1671399   -0.1773196   -0.1569602
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5712622   -0.6033655   -0.5391589
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0753364   -0.0822309   -0.0684419
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0231168    0.0152675    0.0309660
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3336590   -0.3934302   -0.2738877
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0252989   -0.0488136   -0.0017841
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0549541    0.0170356    0.0928726
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0413855   -0.0698882   -0.0128827
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0272856   -0.0539061   -0.0006652
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0199719   -0.0111485    0.0510923
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0070973   -0.0450190    0.0308244
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1017842   -0.1497475   -0.0538210
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0546191   -0.0855018   -0.0237363
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0428725    0.0134098    0.0723351
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0287434   -0.0387923    0.0962791
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0279127   -0.0443044   -0.0115210
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0511724   -0.0735961   -0.0287487
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0268423   -0.0427832   -0.0109013
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0226628    0.0058374    0.0394882
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0837691   -0.1004452   -0.0670930
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0191194   -0.0380483   -0.0001906
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1718254   -0.1906834   -0.1529674
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0135940   -0.0467623    0.0195742
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0474328    0.0166178    0.0782477
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0034464   -0.0128873    0.0059944
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1380580   -0.1594468   -0.1166692
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0612889   -0.0669386   -0.0556392
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0143355   -0.0214482   -0.0072228
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0251505   -0.0557485    0.0054475
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0709598   -0.0888039   -0.0531157
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0098565   -0.0263455    0.0460585
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0669381   -0.0882472   -0.0456289
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0361058   -0.0555517   -0.0166598
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0296175   -0.0539606   -0.0052744
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0209991   -0.0485247    0.0065265
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0812331   -0.1157289   -0.0467374
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0231889   -0.0444884   -0.0018894
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.0888002   -0.1114435   -0.0661570
6-9 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0115979   -0.0352934    0.0584893
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0874851   -0.1039423   -0.0710279
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1073140   -0.1432841   -0.0713439
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0619747   -0.0803849   -0.0435646
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0615456   -0.0724812   -0.0506101
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0322670   -0.0451786   -0.0193554
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0523129   -0.0683997   -0.0362262
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0111603   -0.0339350    0.0116145
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0444845   -0.0626484   -0.0263206
6-9 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0596346   -0.0863634   -0.0329059
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0599569    0.0397710    0.0801428
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0340119   -0.0426157   -0.0254081
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1379487   -0.1553633   -0.1205341
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0981879   -0.1030937   -0.0932821
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0295141    0.0135818    0.0454463
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0474757   -0.0644987   -0.0304528
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0902074   -0.1069110   -0.0735039
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0061980   -0.0257873    0.0381833
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0908712   -0.1069519   -0.0747906
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0619044   -0.0789957   -0.0448131
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0462673   -0.0675594   -0.0249751
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0867203   -0.1134717   -0.0599688
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1178655   -0.1466809   -0.0890501
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0363945   -0.0540984   -0.0186906
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.1078823   -0.1238456   -0.0919190
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.0128620   -0.0676884    0.0419645
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0878119   -0.0945047   -0.0811191
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.0558784   -0.2070913    0.0953345
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0430862   -0.0576563   -0.0285162
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0638881   -0.0749601   -0.0528161
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0359511   -0.0468336   -0.0250687
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0653239   -0.0796470   -0.0510008
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1002513   -0.1182145   -0.0822881
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0812176   -0.0954972   -0.0669380
9-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0923629   -0.1172917   -0.0674341
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0339298    0.0109478    0.0569119
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0616655   -0.0693231   -0.0540078
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0878560   -0.1022266   -0.0734854
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0865260   -0.0914341   -0.0816179
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0440977   -0.0635039   -0.0246915
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0605408   -0.0747971   -0.0462844
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0576283   -0.0735474   -0.0417092
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0060522   -0.0291811    0.0170767
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0578000   -0.0730692   -0.0425307
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0576665   -0.0733132   -0.0420198
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0645309   -0.0828132   -0.0462487
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0588248   -0.0817843   -0.0358654
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0727491   -0.1010761   -0.0444220
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0473562   -0.0645964   -0.0301160
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0107055   -0.0251902    0.0037792
12-15 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0870010    0.0180856    0.1559164
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0802151   -0.0919904   -0.0684399
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.0180759   -0.1219384    0.0857866
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1242816   -0.1417993   -0.1067640
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0411176   -0.0512205   -0.0310146
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0389655   -0.0485641   -0.0293668
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0649674   -0.0794519   -0.0504828
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0540419   -0.0663983   -0.0416856
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0689426   -0.0803215   -0.0575636
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0634247   -0.0853861   -0.0414634
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0173896   -0.1655024    0.2002816
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0622840   -0.0730330   -0.0515350
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0978905   -0.1122730   -0.0835081
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0480608   -0.0607540   -0.0353677
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0439083   -0.0577255   -0.0300910
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0245867   -0.0463023   -0.0028711
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0374318   -0.0504480   -0.0244155
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0547322   -0.0699509   -0.0395134
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0375198   -0.0532933   -0.0217464
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0278905   -0.0469178   -0.0088632
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0651710   -0.0889701   -0.0413718
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0390376   -0.0536026   -0.0244726
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0282354   -0.0412330   -0.0152378
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0097491   -0.0247933    0.0442915
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.0234885   -0.0483025    0.0013254
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0617186   -0.0767922   -0.0466451
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0378435   -0.0466363   -0.0290507
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0180925   -0.0266167   -0.0095684
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0192796   -0.0346318   -0.0039273
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0331519   -0.0445278   -0.0217761
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0737095   -0.0869237   -0.0604953
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0649069   -0.0845529   -0.0452609
15-18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0356130   -0.2854616    0.3566876
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0611841   -0.0726218   -0.0497463
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0558665   -0.0711662   -0.0405667
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0409582   -0.0527031   -0.0292134
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0148560   -0.0268558   -0.0028562
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0198998   -0.0456142    0.0058146
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0053946   -0.0061974    0.0169866
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0293381   -0.0424284   -0.0162477
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0325448   -0.0517794   -0.0133102
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0449337   -0.0674850   -0.0223825
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0402732   -0.0541206   -0.0264258
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0379555   -0.0504797   -0.0254314
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0392561   -0.0520562   -0.0264560
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0125124   -0.0206491   -0.0043757
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0289741   -0.0371259   -0.0208223
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0224419   -0.0340094   -0.0108743
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0154878    0.0031096    0.0278660
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0048321   -0.0221779    0.0125137
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0733643   -0.0857126   -0.0610159
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0261190   -0.0397443   -0.0124938
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0153042   -0.0314684    0.0008600
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                 0.0269305    0.0144086    0.0394525
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0170739    0.0003969    0.0337509
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                 0.0287832    0.0177235    0.0398430
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0033921   -0.0092815    0.0160656
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.0443225    0.0275097    0.0611353
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0192849   -0.0018719    0.0404418
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0141028   -0.0278433   -0.0003623
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -0.0108707   -0.0241646    0.0024232
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                 0.0409847    0.0288739    0.0530956
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0473481    0.0386400    0.0560561
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0593011    0.0508979    0.0677043
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0142984    0.0030647    0.0255321
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0465239    0.0301147    0.0629332
21-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                 0.0152353   -0.0039656    0.0344362
21-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1954075   -0.0030551    0.3938701
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0212740    0.0080958    0.0344522
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0180730   -0.0294821   -0.0066639
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0262296    0.0108190    0.0416402


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1014505   -0.2045225    0.0016216
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1934138   -0.4573254    0.0704979
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.1355624   -0.2418387   -0.0292862
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0645381   -0.0526400    0.1817163
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.1784753   -0.0696436    0.4265943
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.2298649   -0.4189955   -0.0407342
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.3524082   -0.6497024   -0.0551139
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.6074484   -0.7005739   -0.5143229
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.2777643   -0.4279121   -0.1276164
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.3147546   -0.6830163    0.0535072
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0761902   -0.2467602    0.0943799
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.1065279   -0.1652153   -0.0478404
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0261121   -0.0680862    0.0158620
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0716895   -0.1109492   -0.0324299
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.2794134   -0.3303198   -0.2285070
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0754070   -0.1431696   -0.0076444
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.2539978   -0.3319541   -0.1760415
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.4463966   -0.4734029   -0.4193903
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.1076672   -0.1730798   -0.0422546
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0785517   -0.0974412   -0.0596622
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0886860   -0.1110635   -0.0663085
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0718651   -0.0384124    0.1821426
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0002703   -0.0678415    0.0683820
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0393134   -0.1019112    0.1805380
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0623729    0.0021139    0.1226318
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0082441   -0.0556414    0.0721295
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.0877752   -0.2258240    0.0502736
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0739587   -0.0789391    0.2268565
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0359665   -0.1421014    0.0701683
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0591160   -0.0104058    0.1286378
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0443772   -0.0444434    0.1331978
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.1021546   -0.0589783    0.2632875
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0674514   -0.0300484    0.1649513
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0135160   -0.0366856    0.0637177
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0082588   -0.0498370    0.0333193
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0171821   -0.0209440    0.0553082
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0561176   -0.0180199    0.1302550
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0322417   -0.0129448    0.0774283
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0309186   -0.0190863    0.0809235
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0190085   -0.1514277    0.1134107
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.0574553   -0.1092464   -0.0056641
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0659702    0.0409362    0.0910042
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0410267   -0.0899005    0.0078471
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0084357   -0.0238519    0.0069804
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0316937    0.0103530    0.0530344
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0263587   -0.0958662    0.0431487
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0211908   -0.0278160    0.0701975
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0077288   -0.2117667    0.1963091
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0363831   -0.0146148    0.0873810
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0594552    0.0018961    0.1170143
6-9 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.0953004   -0.2764946    0.0858938
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0203187   -0.1230107    0.0823733
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0149948   -0.0900175    0.0600280
6-9 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    0                 -0.0009316   -0.0518253    0.0499621
6-9 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0122803   -0.0648100    0.0893706
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0127534   -0.1352561    0.1097493
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0389289   -0.1251157    0.0472579
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0601786   -0.0670079    0.1873652
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0229584   -0.0192022    0.0651190
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0330841    0.0073512    0.0588170
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0080586   -0.0377612    0.0216439
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0195770   -0.0838560    0.0447019
6-9 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0193511   -0.0444460    0.0831481
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0093855   -0.0596843    0.0409132
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.1004679   -0.0054119    0.2063477
6-9 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0104219   -0.0312225    0.0520662
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0159634   -0.0066025    0.0385294
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0031039   -0.0447726    0.0385649
6-9 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          1                    0                  0.0152295    0.0016934    0.0287656
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0173615   -0.2242282    0.1895053
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0103764   -0.0780812    0.0573285
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0215128   -0.0205340    0.0635596
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0241713   -0.1188891    0.1672317
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0345230   -0.0031318    0.0721779
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0301563   -0.0133998    0.0737124
9-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.0391643   -0.1280758    0.2064044
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0447108   -0.0426728    0.1320945
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0018548   -0.0582641    0.0619738
9-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0580288    0.0163320    0.0997255
9-12 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       1                    0                  0.0171727   -0.0272890    0.0616345
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0397202   -0.1375847    0.0581443
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0538656   -0.0656645    0.1733957
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.2098997   -0.3926874   -0.0271120
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0011440   -0.0341488    0.0318608
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0076166   -0.0342514    0.0190183
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0265708    0.0012126    0.0519290
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0159949   -0.0514650    0.0834548
9-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0137068   -0.0562932    0.0288796
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0012966   -0.0422975    0.0397042
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.0158622   -0.0574510    0.0891754
9-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0072525   -0.0648884    0.0503834
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0292005    0.0092983    0.0491028
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0084610   -0.0238651    0.0407871
9-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0046907   -0.0175358    0.0081543
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                  0.0409499   -0.0269832    0.1088830
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0252372   -0.0200754    0.0705497
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0372731   -0.0045084    0.0790545
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0463959   -0.1777494    0.0849576
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0140389   -0.0532773    0.0251995
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0131769   -0.0579896    0.0316359
12-15 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0053600   -0.1339659    0.1446858
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0380726   -0.0412206    0.1173658
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0234445   -0.0406814    0.0875704
12-15 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    0                 -0.0446485   -0.0778649   -0.0114322
12-15 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0459563   -0.0861614   -0.0057512
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0836633   -0.1873058    0.0199792
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0705142   -0.1348881   -0.0061403
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.1562189    0.0153706    0.2970671
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0236194   -0.0254651    0.0727039
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0120800   -0.0361983    0.0120384
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0011121   -0.0237937    0.0215695
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0080573   -0.0552500    0.0713646
12-15 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0162523   -0.0475332    0.0150286
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0136394   -0.0116879    0.0389667
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0367234   -0.0324537    0.1059004
12-15 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.1685836   -0.5245093    0.1873422
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0044632   -0.0234881    0.0324145
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0020651   -0.0382949    0.0341647
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0143659   -0.0441120    0.0153802
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0207653   -0.0577814    0.0162507
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0939565   -0.2071289    0.0192158
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0206331   -0.0101531    0.0514194
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0081944   -0.0381818    0.0217931
15-18 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.0020710   -0.0777746    0.0736326
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0000023   -0.0437185    0.0437138
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0000116   -0.0521517    0.0521285
15-18 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    0                 -0.0056569   -0.0370460    0.0257323
15-18 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0322121   -0.0649350    0.0005108
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0156015   -0.0835972    0.0523942
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0492928   -0.1359552    0.0373696
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0046964   -0.0287356    0.0381283
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0185215   -0.0044174    0.0414604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0097387   -0.0291593    0.0096819
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0180527   -0.0913687    0.0552634
15-18 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0068772   -0.0196429    0.0333972
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0222107   -0.0059585    0.0503800
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0008685   -0.0909144    0.0891775
15-18 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.0453664   -1.6469266    1.7376594
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0084714   -0.0406299    0.0236870
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0153652   -0.0207789    0.0515094
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0128974   -0.0281843    0.0539791
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0109406   -0.0238599    0.0457412
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0673658   -0.1639904    0.0292587
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0104133   -0.0412459    0.0204193
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0109477   -0.0260344    0.0479299
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0013815   -0.0805263    0.0832893
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0560216    0.0036155    0.1084277
18-21 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    0                 -0.0256479   -0.0574370    0.0061412
18-21 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0037525   -0.0296262    0.0371312
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0065573   -0.0354942    0.0223796
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0082260   -0.0132921    0.0297441
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0014097   -0.0176915    0.0205110
18-21 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0073979   -0.0367957    0.0220000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0151060   -0.0372460    0.0070340
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0324714   -0.0890388    0.0240960
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0218481   -0.0183766    0.0620727
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0016064   -0.0313579    0.0345707
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    0                  0.0028224   -0.0531347    0.0587794
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0120765   -0.0181857    0.0423386
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0023832   -0.0917467    0.0869803
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0215770   -0.0480507    0.0048968
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0065262   -0.0369517    0.0238994
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0726620   -0.0456520    0.1909760
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0038068   -0.0482794    0.0406659
21-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    0                  0.0095478   -0.0192405    0.0383361
21-24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       1                    0                  0.0033593   -0.0331895    0.0399082
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0126125   -0.0141348    0.0393597
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0016154   -0.0238002    0.0205694
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0024466   -0.0160099    0.0209031
21-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0045311   -0.0295633    0.0205010
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0342397   -0.0031318    0.0716113
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0585765   -0.1191793    0.0020262
21-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.3153439   -0.1349693    0.7656571
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0089741   -0.0392225    0.0571707
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0123570   -0.0160068    0.0407207
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  0.1066101    0.0127220    0.2004983


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0171280   -0.0352096    0.0009536
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0072080   -0.0185638    0.0041479
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0233469   -0.0431264   -0.0035674
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0063689   -0.0055953    0.0183331
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0041506   -0.0028702    0.0111714
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0153243   -0.0301367   -0.0005119
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0509506   -0.1016164   -0.0002848
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.1882234   -0.2293201   -0.1471268
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0360280   -0.0588284   -0.0132276
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0531980   -0.1212978    0.0149018
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0063669   -0.0216995    0.0089657
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0302123   -0.0473405   -0.0130841
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0055777   -0.0145825    0.0034270
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0182036   -0.0284370   -0.0079702
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0753756   -0.0907631   -0.0599881
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0148577   -0.0284813   -0.0012342
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.0534093   -0.0901331   -0.0166856
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0725579   -0.0783079   -0.0668079
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0318542   -0.0519056   -0.0118028
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0142457   -0.0177549   -0.0107366
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0106357   -0.0134304   -0.0078409
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0066472   -0.0041972    0.0174916
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0000457   -0.0114618    0.0115531
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0013899   -0.0037048    0.0064845
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0118151   -0.0000360    0.0236662
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0010800   -0.0072970    0.0094571
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0016880   -0.0054385    0.0020625
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0048898   -0.0054820    0.0152616
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0092007   -0.0364095    0.0180081
3-6 months     ki1000108-IRC              INDIA                          0                    NA                 0.0175922   -0.0032782    0.0384625
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0055971   -0.0057726    0.0169669
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0182661   -0.0112189    0.0477510
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0058472   -0.0039514    0.0156458
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0038502   -0.0104603    0.0181606
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0017328   -0.0104607    0.0069951
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0044037   -0.0053843    0.0141917
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0033250   -0.0011139    0.0077638
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0066534   -0.0026972    0.0160041
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0060139   -0.0037800    0.0158079
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0011813   -0.0094386    0.0070760
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.0123223   -0.0274124    0.0027679
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0102391    0.0063054    0.0141728
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0097683   -0.0215378    0.0020013
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0014958   -0.0042305    0.0012389
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0035369    0.0011378    0.0059359
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0030105   -0.0110407    0.0050196
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0036810   -0.0049002    0.0122623
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0002878   -0.0078878    0.0073123
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0068920   -0.0029456    0.0167295
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0078575   -0.0001896    0.0159047
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0020021   -0.0068547    0.0028504
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0013251   -0.0080539    0.0054036
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0038461   -0.0231029    0.0154107
6-9 months     ki1000108-IRC              INDIA                          0                    NA                -0.0002780   -0.0154663    0.0149102
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0016306   -0.0086190    0.0118802
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0027525   -0.0292065    0.0237014
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0035934   -0.0125571    0.0053702
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0089455   -0.0105880    0.0284790
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0065321   -0.0054993    0.0185636
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0068184    0.0013998    0.0122370
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0020388   -0.0095581    0.0054805
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0012293   -0.0052730    0.0028143
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0035363   -0.0081328    0.0152055
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0018938   -0.0120487    0.0082612
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0053822   -0.0012469    0.0120113
6-9 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0022199   -0.0072701    0.0117100
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0024827   -0.0010301    0.0059955
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0007469   -0.0107751    0.0092812
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                 0.0026588    0.0002908    0.0050267
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0002770   -0.0054518    0.0048977
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0010051   -0.0076091    0.0055988
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0038200   -0.0037274    0.0113675
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0009196   -0.0045640    0.0064032
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0066569   -0.0008217    0.0141355
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0040030   -0.0019313    0.0099374
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0008589   -0.0033882    0.0051059
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0028908   -0.0029342    0.0087158
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0004652   -0.0146131    0.0155435
9-12 months    ki1000108-IRC              INDIA                          0                    NA                 0.0170218    0.0045011    0.0295425
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0023296   -0.0037447    0.0084040
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0089594   -0.0312151    0.0132962
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0050254   -0.0071747    0.0172254
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0327116   -0.0659448    0.0005215
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0003336   -0.0099571    0.0092900
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0015834   -0.0071263    0.0039596
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0068661    0.0002529    0.0134794
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0010099   -0.0032558    0.0052755
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0025760   -0.0105875    0.0054355
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0002658   -0.0086716    0.0081400
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0009270   -0.0033979    0.0052519
9-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0015246   -0.0132772    0.0102279
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0044992    0.0014203    0.0075781
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0019092   -0.0053931    0.0092116
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0008009   -0.0029945    0.0013928
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0006365   -0.0011356    0.0024086
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0022476   -0.0018448    0.0063399
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0070118   -0.0011020    0.0151255
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0015999   -0.0063017    0.0031020
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0026560   -0.0101148    0.0048028
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0017414   -0.0076923    0.0042095
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0001235   -0.0033613    0.0036083
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0026835   -0.0030480    0.0084151
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0060431   -0.0105242    0.0226105
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0131750   -0.0231967   -0.0031533
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0063116   -0.0121965   -0.0004266
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0153864   -0.0356406    0.0048679
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0069694   -0.0132674   -0.0006714
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0246661   -0.0010396    0.0503719
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0066413   -0.0071959    0.0204784
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0024527   -0.0073671    0.0024618
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0002880   -0.0061620    0.0055860
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004402   -0.0030211    0.0039016
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0032554   -0.0095312    0.0030203
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0026591   -0.0023047    0.0076228
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0014215   -0.0014806    0.0043237
12-15 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0394557   -0.1186238    0.0397124
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0006769   -0.0035629    0.0049168
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0004252   -0.0078847    0.0070344
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0013376   -0.0041350    0.0014597
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0038036   -0.0106740    0.0030669
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0033960   -0.0082841    0.0014920
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0039036   -0.0020175    0.0098246
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0010975   -0.0051303    0.0029354
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0000503   -0.0019434    0.0018428
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0000001   -0.0027324    0.0027321
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0000031   -0.0141175    0.0141112
15-18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0016433   -0.0107659    0.0074792
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0050239   -0.0103591    0.0003113
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0015175   -0.0082224    0.0051875
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0068462   -0.0195190    0.0058265
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0013277   -0.0081260    0.0107814
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0037821   -0.0009455    0.0085097
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0026636   -0.0079869    0.0026597
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0009847   -0.0049960    0.0030266
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0013651   -0.0039010    0.0066311
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0042924   -0.0012123    0.0097971
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0000501   -0.0052452    0.0051450
15-18 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0061306   -0.2225043    0.2347655
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0012166   -0.0058370    0.0034037
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0032371   -0.0044054    0.0108795
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0010881   -0.0023907    0.0045669
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0020445   -0.0044859    0.0085748
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0025582   -0.0067439    0.0016275
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0020170   -0.0080137    0.0039797
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0014662   -0.0035109    0.0064433
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0000893   -0.0052066    0.0053853
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0151764    0.0007008    0.0296521
18-21 months   ki1000108-IRC              INDIA                          0                    NA                -0.0073176   -0.0164675    0.0018323
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0005953   -0.0047036    0.0058943
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0019037   -0.0103098    0.0065023
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0016637   -0.0026973    0.0060247
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0003975   -0.0049885    0.0057834
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0014447   -0.0071880    0.0042985
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0030724   -0.0076136    0.0014688
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0018496   -0.0052801    0.0015809
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0025340   -0.0021449    0.0072128
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0003439   -0.0067136    0.0074014
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0000355   -0.0013637    0.0014347
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0022797   -0.0034714    0.0080309
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0000917   -0.0035295    0.0033462
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0041793   -0.0094289    0.0010703
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0008740   -0.0049593    0.0032112
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0046578   -0.0032632    0.0125789
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0009580   -0.0121513    0.0102354
21-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0027728   -0.0055995    0.0111451
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0006276   -0.0062056    0.0074607
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0036036   -0.0040594    0.0112665
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0003273   -0.0048220    0.0041675
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0006682   -0.0043734    0.0057098
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0009008   -0.0058784    0.0040768
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0063527   -0.0007342    0.0134395
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0031541   -0.0071359    0.0008276
21-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0689815   -0.1355918    0.2735547
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0008348   -0.0036513    0.0053209
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0024652   -0.0032140    0.0081445
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0018202   -0.0008818    0.0045222
