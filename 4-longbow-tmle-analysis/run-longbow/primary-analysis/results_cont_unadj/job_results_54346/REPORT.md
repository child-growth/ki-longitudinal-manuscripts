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

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        sex       n_cell      n
-------------  -------------------------  -----------------------------  -------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Female       122    243
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Male         121    243
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Female        85    168
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Male          83    168
0-3 months     ki0047075b-MAL-ED          INDIA                          Female       101    183
0-3 months     ki0047075b-MAL-ED          INDIA                          Male          82    183
0-3 months     ki0047075b-MAL-ED          NEPAL                          Female        75    156
0-3 months     ki0047075b-MAL-ED          NEPAL                          Male          81    156
0-3 months     ki0047075b-MAL-ED          PERU                           Female       121    265
0-3 months     ki0047075b-MAL-ED          PERU                           Male         144    265
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female       107    211
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male         104    211
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       120    228
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         108    228
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female        47     88
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male          41     88
0-3 months     ki1000108-IRC              INDIA                          Female       166    377
0-3 months     ki1000108-IRC              INDIA                          Male         211    377
0-3 months     ki1000109-EE               PAKISTAN                       Female       147    303
0-3 months     ki1000109-EE               PAKISTAN                       Male         156    303
0-3 months     ki1000109-ResPak           PAKISTAN                       Female        39     80
0-3 months     ki1000109-ResPak           PAKISTAN                       Male          41     80
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Female       177    389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Male         212    389
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Female       266    566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Male         300    566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Female       305    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Male         335    640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female       368    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male         353    721
0-3 months     ki1101329-Keneba           GAMBIA                         Female       606   1276
0-3 months     ki1101329-Keneba           GAMBIA                         Male         670   1276
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Female       244    509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Male         265    509
0-3 months     ki1114097-CMIN             BANGLADESH                     Female        17     43
0-3 months     ki1114097-CMIN             BANGLADESH                     Male          26     43
0-3 months     ki1114097-CONTENT          PERU                           Female        13     29
0-3 months     ki1114097-CONTENT          PERU                           Male          16     29
0-3 months     ki1119695-PROBIT           BELARUS                        Female      3878   7539
0-3 months     ki1119695-PROBIT           BELARUS                        Male        3661   7539
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female      3873   7982
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male        4109   7982
0-3 months     ki1135781-COHORTS          GUATEMALA                      Female       164    356
0-3 months     ki1135781-COHORTS          GUATEMALA                      Male         192    356
0-3 months     ki1135781-COHORTS          INDIA                          Female      3098   6465
0-3 months     ki1135781-COHORTS          INDIA                          Male        3367   6465
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Female      4891   9826
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Male        4935   9826
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Female       347    636
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Male         289    636
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Female       119    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Male         112    231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Female       102    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Male         106    208
3-6 months     ki0047075b-MAL-ED          INDIA                          Female       127    230
3-6 months     ki0047075b-MAL-ED          INDIA                          Male         103    230
3-6 months     ki0047075b-MAL-ED          NEPAL                          Female       110    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          Male         123    233
3-6 months     ki0047075b-MAL-ED          PERU                           Female       122    267
3-6 months     ki0047075b-MAL-ED          PERU                           Male         145    267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female       117    243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male         126    243
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       123    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         116    239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female       151    307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male         156    307
3-6 months     ki1000108-IRC              INDIA                          Female       177    397
3-6 months     ki1000108-IRC              INDIA                          Male         220    397
3-6 months     ki1000109-EE               PAKISTAN                       Female       135    280
3-6 months     ki1000109-EE               PAKISTAN                       Male         145    280
3-6 months     ki1000109-ResPak           PAKISTAN                       Female        73    156
3-6 months     ki1000109-ResPak           PAKISTAN                       Male          83    156
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Female       162    349
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Male         187    349
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Female       239    523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Male         284    523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Female       286    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Male         312    598
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female       358    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male         337    695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       811   1661
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         850   1661
3-6 months     ki1101329-Keneba           GAMBIA                         Female       670   1397
3-6 months     ki1101329-Keneba           GAMBIA                         Male         727   1397
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Female       226    469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Male         243    469
3-6 months     ki1114097-CMIN             BANGLADESH                     Female        86    185
3-6 months     ki1114097-CMIN             BANGLADESH                     Male          99    185
3-6 months     ki1114097-CONTENT          PERU                           Female       106    214
3-6 months     ki1114097-CONTENT          PERU                           Male         108    214
3-6 months     ki1119695-PROBIT           BELARUS                        Female      3438   6696
3-6 months     ki1119695-PROBIT           BELARUS                        Male        3258   6696
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female      3009   6178
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male        3169   6178
3-6 months     ki1135781-COHORTS          GUATEMALA                      Female       182    393
3-6 months     ki1135781-COHORTS          GUATEMALA                      Male         211    393
3-6 months     ki1135781-COHORTS          INDIA                          Female      3150   6509
3-6 months     ki1135781-COHORTS          INDIA                          Male        3359   6509
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Female      3105   6239
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Male        3134   6239
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Female       232    432
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Male         200    432
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Female       113    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Male         111    224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Female        95    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Male         103    198
6-9 months     ki0047075b-MAL-ED          INDIA                          Female       125    230
6-9 months     ki0047075b-MAL-ED          INDIA                          Male         105    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          Female       107    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          Male         123    230
6-9 months     ki0047075b-MAL-ED          PERU                           Female       111    245
6-9 months     ki0047075b-MAL-ED          PERU                           Male         134    245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female       111    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male         120    231
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       115    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         110    225
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female       156    313
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male         157    313
6-9 months     ki1000108-IRC              INDIA                          Female       183    407
6-9 months     ki1000108-IRC              INDIA                          Male         224    407
6-9 months     ki1000109-EE               PAKISTAN                       Female       151    304
6-9 months     ki1000109-EE               PAKISTAN                       Male         153    304
6-9 months     ki1000109-ResPak           PAKISTAN                       Female        72    143
6-9 months     ki1000109-ResPak           PAKISTAN                       Male          71    143
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Female       162    351
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Male         189    351
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Female        45     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Male          29     74
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Female       229    498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Male         269    498
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Female       269    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Male         296    565
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female       348    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male         340    688
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       739   1488
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         749   1488
6-9 months     ki1101329-Keneba           GAMBIA                         Female       442    905
6-9 months     ki1101329-Keneba           GAMBIA                         Male         463    905
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Female       111    213
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Male         102    213
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Female       231    481
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Male         250    481
6-9 months     ki1114097-CMIN             BANGLADESH                     Female        78    177
6-9 months     ki1114097-CMIN             BANGLADESH                     Male          99    177
6-9 months     ki1114097-CONTENT          PERU                           Female       105    214
6-9 months     ki1114097-CONTENT          PERU                           Male         109    214
6-9 months     ki1119695-PROBIT           BELARUS                        Female      3230   6262
6-9 months     ki1119695-PROBIT           BELARUS                        Male        3032   6262
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female      2891   5929
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male        3038   5929
6-9 months     ki1135781-COHORTS          GUATEMALA                      Female       178    391
6-9 months     ki1135781-COHORTS          GUATEMALA                      Male         213    391
6-9 months     ki1135781-COHORTS          INDIA                          Female      2848   5965
6-9 months     ki1135781-COHORTS          INDIA                          Male        3117   5965
6-9 months     ki1148112-LCNI-5           MALAWI                         Female       285    564
6-9 months     ki1148112-LCNI-5           MALAWI                         Male         279    564
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Female       388    768
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Male         380    768
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Female       112    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Male         113    225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Female        93    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Male         101    194
9-12 months    ki0047075b-MAL-ED          INDIA                          Female       122    227
9-12 months    ki0047075b-MAL-ED          INDIA                          Male         105    227
9-12 months    ki0047075b-MAL-ED          NEPAL                          Female       106    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          Male         123    229
9-12 months    ki0047075b-MAL-ED          PERU                           Female       106    235
9-12 months    ki0047075b-MAL-ED          PERU                           Male         129    235
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female       116    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male         117    233
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       112    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         112    224
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female       159    317
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male         158    317
9-12 months    ki1000108-IRC              INDIA                          Female       180    400
9-12 months    ki1000108-IRC              INDIA                          Male         220    400
9-12 months    ki1000109-EE               PAKISTAN                       Female       165    326
9-12 months    ki1000109-EE               PAKISTAN                       Male         161    326
9-12 months    ki1000109-ResPak           PAKISTAN                       Female        69    140
9-12 months    ki1000109-ResPak           PAKISTAN                       Male          71    140
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Female       165    372
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Male         207    372
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female        44     77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male          33     77
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Female       223    482
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Male         259    482
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Female       271    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Male         295    566
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female       345    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male         329    674
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       526   1081
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         555   1081
9-12 months    ki1101329-Keneba           GAMBIA                         Female       429    883
9-12 months    ki1101329-Keneba           GAMBIA                         Male         454    883
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Female        99    186
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Male          87    186
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Female       229    469
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Male         240    469
9-12 months    ki1114097-CMIN             BANGLADESH                     Female        70    160
9-12 months    ki1114097-CMIN             BANGLADESH                     Male          90    160
9-12 months    ki1114097-CONTENT          PERU                           Female       104    212
9-12 months    ki1114097-CONTENT          PERU                           Male         108    212
9-12 months    ki1119695-PROBIT           BELARUS                        Female      3222   6264
9-12 months    ki1119695-PROBIT           BELARUS                        Male        3042   6264
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female      2887   5933
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male        3046   5933
9-12 months    ki1135781-COHORTS          GUATEMALA                      Female       204    438
9-12 months    ki1135781-COHORTS          GUATEMALA                      Male         234    438
9-12 months    ki1135781-COHORTS          INDIA                          Female      2462   5135
9-12 months    ki1135781-COHORTS          INDIA                          Male        2673   5135
9-12 months    ki1148112-LCNI-5           MALAWI                         Female       191    386
9-12 months    ki1148112-LCNI-5           MALAWI                         Male         195    386
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Female       451    866
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Male         415    866
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Female       108    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Male         104    212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Female        86    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Male          98    184
12-15 months   ki0047075b-MAL-ED          INDIA                          Female       122    226
12-15 months   ki0047075b-MAL-ED          INDIA                          Male         104    226
12-15 months   ki0047075b-MAL-ED          NEPAL                          Female       107    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          Male         123    230
12-15 months   ki0047075b-MAL-ED          PERU                           Female       100    224
12-15 months   ki0047075b-MAL-ED          PERU                           Male         124    224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       114    228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         114    228
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       112    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         114    226
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       161    329
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         168    329
12-15 months   ki1000108-IRC              INDIA                          Female       175    390
12-15 months   ki1000108-IRC              INDIA                          Male         215    390
12-15 months   ki1000109-EE               PAKISTAN                       Female       157    297
12-15 months   ki1000109-EE               PAKISTAN                       Male         140    297
12-15 months   ki1000109-ResPak           PAKISTAN                       Female        39     92
12-15 months   ki1000109-ResPak           PAKISTAN                       Male          53     92
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Female       172    377
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Male         205    377
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female        42     76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male          34     76
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Female       213    461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Male         248    461
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Female       253    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Male         279    532
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       335    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         325    660
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       401    791
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         390    791
12-15 months   ki1101329-Keneba           GAMBIA                         Female       647   1339
12-15 months   ki1101329-Keneba           GAMBIA                         Male         692   1339
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Female        51     97
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Male          46     97
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Female       231    469
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Male         238    469
12-15 months   ki1114097-CMIN             BANGLADESH                     Female        73    160
12-15 months   ki1114097-CMIN             BANGLADESH                     Male          87    160
12-15 months   ki1114097-CONTENT          PERU                           Female        96    199
12-15 months   ki1114097-CONTENT          PERU                           Male         103    199
12-15 months   ki1119695-PROBIT           BELARUS                        Female       145    283
12-15 months   ki1119695-PROBIT           BELARUS                        Male         138    283
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female      1266   2548
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male        1282   2548
12-15 months   ki1135781-COHORTS          GUATEMALA                      Female       197    426
12-15 months   ki1135781-COHORTS          GUATEMALA                      Male         229    426
12-15 months   ki1148112-LCNI-5           MALAWI                         Female        61    127
12-15 months   ki1148112-LCNI-5           MALAWI                         Male          66    127
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Female       471    873
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Male         402    873
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Female       111    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Male         101    212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Female        82    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Male          93    175
15-18 months   ki0047075b-MAL-ED          INDIA                          Female       123    226
15-18 months   ki0047075b-MAL-ED          INDIA                          Male         103    226
15-18 months   ki0047075b-MAL-ED          NEPAL                          Female       106    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          Male         121    227
15-18 months   ki0047075b-MAL-ED          PERU                           Female        99    213
15-18 months   ki0047075b-MAL-ED          PERU                           Male         114    213
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       111    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         114    225
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       109    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         108    217
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       160    321
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         161    321
15-18 months   ki1000108-IRC              INDIA                          Female       171    382
15-18 months   ki1000108-IRC              INDIA                          Male         211    382
15-18 months   ki1000109-EE               PAKISTAN                       Female       141    278
15-18 months   ki1000109-EE               PAKISTAN                       Male         137    278
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Female       166    362
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Male         196    362
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female        42     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male          30     72
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Female       207    449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Male         242    449
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Female       252    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Male         276    528
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       304    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         300    604
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       333    664
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         331    664
15-18 months   ki1101329-Keneba           GAMBIA                         Female       652   1359
15-18 months   ki1101329-Keneba           GAMBIA                         Male         707   1359
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Female       231    480
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Male         249    480
15-18 months   ki1114097-CMIN             BANGLADESH                     Female        69    163
15-18 months   ki1114097-CMIN             BANGLADESH                     Male          94    163
15-18 months   ki1114097-CONTENT          PERU                           Female        94    189
15-18 months   ki1114097-CONTENT          PERU                           Male          95    189
15-18 months   ki1119695-PROBIT           BELARUS                        Female        14     37
15-18 months   ki1119695-PROBIT           BELARUS                        Male          23     37
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female      1008   2036
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male        1028   2036
15-18 months   ki1135781-COHORTS          GUATEMALA                      Female       167    372
15-18 months   ki1135781-COHORTS          GUATEMALA                      Male         205    372
15-18 months   ki1148112-LCNI-5           MALAWI                         Female        59    120
15-18 months   ki1148112-LCNI-5           MALAWI                         Male          61    120
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female       457    887
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Male         430    887
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Female       104    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Male         105    209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Female        78    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Male          89    167
18-21 months   ki0047075b-MAL-ED          INDIA                          Female       122    226
18-21 months   ki0047075b-MAL-ED          INDIA                          Male         104    226
18-21 months   ki0047075b-MAL-ED          NEPAL                          Female       106    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          Male         121    227
18-21 months   ki0047075b-MAL-ED          PERU                           Female        93    202
18-21 months   ki0047075b-MAL-ED          PERU                           Male         109    202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       114    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         119    233
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       102    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         102    204
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       149    305
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         156    305
18-21 months   ki1000108-IRC              INDIA                          Female       168    379
18-21 months   ki1000108-IRC              INDIA                          Male         211    379
18-21 months   ki1000109-EE               PAKISTAN                       Female       124    254
18-21 months   ki1000109-EE               PAKISTAN                       Male         130    254
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Female       194    422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Male         228    422
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Female       260    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Male         281    541
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       271    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         275    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         4      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           5      9
18-21 months   ki1101329-Keneba           GAMBIA                         Female       633   1348
18-21 months   ki1101329-Keneba           GAMBIA                         Male         715   1348
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Female       217    445
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Male         228    445
18-21 months   ki1114097-CMIN             BANGLADESH                     Female        71    165
18-21 months   ki1114097-CMIN             BANGLADESH                     Male          94    165
18-21 months   ki1114097-CONTENT          PERU                           Female        94    183
18-21 months   ki1114097-CONTENT          PERU                           Male          89    183
18-21 months   ki1119695-PROBIT           BELARUS                        Female        14     23
18-21 months   ki1119695-PROBIT           BELARUS                        Male           9     23
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       785   1595
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         810   1595
18-21 months   ki1135781-COHORTS          GUATEMALA                      Female       172    369
18-21 months   ki1135781-COHORTS          GUATEMALA                      Male         197    369
18-21 months   ki1148112-LCNI-5           MALAWI                         Female       244    477
18-21 months   ki1148112-LCNI-5           MALAWI                         Male         233    477
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female       100    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male         107    207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Female        76    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Male          89    165
21-24 months   ki0047075b-MAL-ED          INDIA                          Female       121    226
21-24 months   ki0047075b-MAL-ED          INDIA                          Male         105    226
21-24 months   ki0047075b-MAL-ED          NEPAL                          Female       105    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          Male         122    227
21-24 months   ki0047075b-MAL-ED          PERU                           Female        88    189
21-24 months   ki0047075b-MAL-ED          PERU                           Male         101    189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       115    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         120    235
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female        99    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         105    204
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       146    308
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         162    308
21-24 months   ki1000108-IRC              INDIA                          Female       174    389
21-24 months   ki1000108-IRC              INDIA                          Male         215    389
21-24 months   ki1000109-EE               PAKISTAN                       Female        55    106
21-24 months   ki1000109-EE               PAKISTAN                       Male          51    106
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female       188    411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male         223    411
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female       229    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male         242    471
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       245    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         245    490
21-24 months   ki1101329-Keneba           GAMBIA                         Female       573   1205
21-24 months   ki1101329-Keneba           GAMBIA                         Male         632   1205
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Female       159    342
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Male         183    342
21-24 months   ki1114097-CMIN             BANGLADESH                     Female        57    133
21-24 months   ki1114097-CMIN             BANGLADESH                     Male          76    133
21-24 months   ki1114097-CONTENT          PERU                           Female        24     38
21-24 months   ki1114097-CONTENT          PERU                           Male          14     38
21-24 months   ki1119695-PROBIT           BELARUS                        Female        17     32
21-24 months   ki1119695-PROBIT           BELARUS                        Male          15     32
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       585   1169
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         584   1169
21-24 months   ki1135781-COHORTS          GUATEMALA                      Female       192    417
21-24 months   ki1135781-COHORTS          GUATEMALA                      Male         225    417
21-24 months   ki1148112-LCNI-5           MALAWI                         Female       208    410
21-24 months   ki1148112-LCNI-5           MALAWI                         Male         202    410


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

* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/de6e9e32-77c0-4be3-ba4c-493904a213f9/b8ccbdbd-3d1c-4fec-9341-ac63302eae50/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/de6e9e32-77c0-4be3-ba4c-493904a213f9/b8ccbdbd-3d1c-4fec-9341-ac63302eae50/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/de6e9e32-77c0-4be3-ba4c-493904a213f9/b8ccbdbd-3d1c-4fec-9341-ac63302eae50/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                3.2756610    3.1857199   3.3656021
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                3.4031097    3.3087579   3.4974615
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                3.8019344    3.6431194   3.9607493
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Male                 NA                3.7953904    3.6420384   3.9487424
0-3 months     ki0047075b-MAL-ED          INDIA                          Female               NA                3.3251083    3.1792028   3.4710137
0-3 months     ki0047075b-MAL-ED          INDIA                          Male                 NA                3.3766981    3.2527606   3.5006356
0-3 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                3.3720925    3.2510995   3.4930855
0-3 months     ki0047075b-MAL-ED          NEPAL                          Male                 NA                3.8561258    3.7400557   3.9721960
0-3 months     ki0047075b-MAL-ED          PERU                           Female               NA                3.0139502    2.9216674   3.1062330
0-3 months     ki0047075b-MAL-ED          PERU                           Male                 NA                3.0838870    2.9896032   3.1781709
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                3.0820583    2.9531155   3.2110012
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                3.2843604    3.1417452   3.4269756
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                3.1924647    3.0790034   3.3059260
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                3.3445374    3.2439491   3.4451257
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                3.2999785    3.0327208   3.5672362
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                3.6438418    3.3043122   3.9833714
0-3 months     ki1000108-IRC              INDIA                          Female               NA                2.8778557    2.7103436   3.0453678
0-3 months     ki1000108-IRC              INDIA                          Male                 NA                3.3431086    3.2015764   3.4846409
0-3 months     ki1000109-EE               PAKISTAN                       Female               NA                2.9613302    2.8455377   3.0771228
0-3 months     ki1000109-EE               PAKISTAN                       Male                 NA                3.1871591    3.0719474   3.3023709
0-3 months     ki1000109-ResPak           PAKISTAN                       Female               NA                3.0543405    2.6600365   3.4486445
0-3 months     ki1000109-ResPak           PAKISTAN                       Male                 NA                2.9879615    2.5943055   3.3816175
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                3.2991153    3.1018285   3.4964020
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                3.4872974    3.3637100   3.6108848
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                2.9968400    2.9266120   3.0670680
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                3.2103570    3.1328877   3.2878264
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                3.0969796    3.0490823   3.1448768
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                3.4039913    3.3531983   3.4547843
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                3.0087903    2.9572573   3.0603232
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                3.2548179    3.2068289   3.3028070
0-3 months     ki1101329-Keneba           GAMBIA                         Female               NA                2.9716224    2.9046013   3.0386436
0-3 months     ki1101329-Keneba           GAMBIA                         Male                 NA                3.2340519    3.1694617   3.2986422
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                3.4670319    3.4008098   3.5332539
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Male                 NA                3.7204494    3.6465977   3.7943011
0-3 months     ki1114097-CMIN             BANGLADESH                     Female               NA                3.2885528    3.0678934   3.5092121
0-3 months     ki1114097-CMIN             BANGLADESH                     Male                 NA                3.5160755    3.3481933   3.6839577
0-3 months     ki1114097-CONTENT          PERU                           Female               NA                3.9481171    3.7349969   4.1612374
0-3 months     ki1114097-CONTENT          PERU                           Male                 NA                3.3930491    3.1879708   3.5981275
0-3 months     ki1119695-PROBIT           BELARUS                        Female               NA                2.8131860    2.6368098   2.9895623
0-3 months     ki1119695-PROBIT           BELARUS                        Male                 NA                2.6710430    2.5098451   2.8322410
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                3.2036567    3.1743005   3.2330129
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                3.4628047    3.4345897   3.4910197
0-3 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                2.4049876    2.3114018   2.4985734
0-3 months     ki1135781-COHORTS          GUATEMALA                      Male                 NA                2.6085525    2.5248776   2.6922274
0-3 months     ki1135781-COHORTS          INDIA                          Female               NA                3.3656050    3.3459384   3.3852716
0-3 months     ki1135781-COHORTS          INDIA                          Male                 NA                3.6407677    3.6217360   3.6597994
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                3.5165548    3.4975702   3.5355394
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                3.7795378    3.7594999   3.7995756
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                2.8847349    2.7206771   3.0487927
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                3.1241180    2.9945628   3.2536732
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                1.9232842    1.8532511   1.9933172
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                1.9322696    1.8601839   2.0043552
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                2.0337511    1.9211754   2.1463267
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Male                 NA                2.2541731    2.1466626   2.3616836
3-6 months     ki0047075b-MAL-ED          INDIA                          Female               NA                1.8014087    1.7152479   1.8875695
3-6 months     ki0047075b-MAL-ED          INDIA                          Male                 NA                2.0043654    1.9146777   2.0940531
3-6 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                1.9271200    1.8532012   2.0010388
3-6 months     ki0047075b-MAL-ED          NEPAL                          Male                 NA                1.9978536    1.9149744   2.0807329
3-6 months     ki0047075b-MAL-ED          PERU                           Female               NA                1.9530821    1.8612780   2.0448862
3-6 months     ki0047075b-MAL-ED          PERU                           Male                 NA                2.0683525    1.9748720   2.1618331
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                1.9063111    1.8017348   2.0108873
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                2.0299616    1.9093327   2.1505906
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                1.8458792    1.7494044   1.9423540
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                1.8133484    1.7181759   1.9085209
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                1.8498271    1.7096580   1.9899962
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                1.7592245    1.6148514   1.9035975
3-6 months     ki1000108-IRC              INDIA                          Female               NA                1.9269321    1.8267269   2.0271373
3-6 months     ki1000108-IRC              INDIA                          Male                 NA                1.8434569    1.7616021   1.9253118
3-6 months     ki1000109-EE               PAKISTAN                       Female               NA                2.0726337    1.9867360   2.1585315
3-6 months     ki1000109-EE               PAKISTAN                       Male                 NA                2.1152903    2.0368008   2.1937798
3-6 months     ki1000109-ResPak           PAKISTAN                       Female               NA                2.0184582    1.8342399   2.2026766
3-6 months     ki1000109-ResPak           PAKISTAN                       Male                 NA                2.1057258    1.8955357   2.3159159
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                1.7538761    1.6079248   1.8998273
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                2.0535599    1.8912887   2.2158311
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                1.7023416    1.6375873   1.7670960
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                1.9423873    1.8753566   2.0094180
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                1.9240980    1.8773555   1.9708405
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                2.0039228    1.9555159   2.0523297
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                1.9393533    1.8894235   1.9892832
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                2.0763816    2.0242512   2.1285121
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                1.7884717    1.7340953   1.8428480
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                1.8025443    1.7554555   1.8496332
3-6 months     ki1101329-Keneba           GAMBIA                         Female               NA                1.9296893    1.8733209   1.9860576
3-6 months     ki1101329-Keneba           GAMBIA                         Male                 NA                2.0516658    1.9970016   2.1063301
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                1.6741862    1.6192217   1.7291507
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Male                 NA                1.7424755    1.6866917   1.7982593
3-6 months     ki1114097-CMIN             BANGLADESH                     Female               NA                1.8912073    1.7889731   1.9934416
3-6 months     ki1114097-CMIN             BANGLADESH                     Male                 NA                1.9970504    1.9013453   2.0927555
3-6 months     ki1114097-CONTENT          PERU                           Female               NA                2.1117604    2.0429355   2.1805853
3-6 months     ki1114097-CONTENT          PERU                           Male                 NA                2.0571185    1.9907508   2.1234862
3-6 months     ki1119695-PROBIT           BELARUS                        Female               NA                2.1400233    2.0783928   2.2016537
3-6 months     ki1119695-PROBIT           BELARUS                        Male                 NA                2.0368547    1.9640535   2.1096560
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                1.9300521    1.9016821   1.9584221
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                2.0184317    1.9912546   2.0456087
3-6 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                1.6890581    1.6257706   1.7523456
3-6 months     ki1135781-COHORTS          GUATEMALA                      Male                 NA                1.6659933    1.6037550   1.7282316
3-6 months     ki1135781-COHORTS          INDIA                          Female               NA                1.8153459    1.7982390   1.8324528
3-6 months     ki1135781-COHORTS          INDIA                          Male                 NA                1.9284015    1.9116340   1.9451691
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                1.8875581    1.8680926   1.9070235
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                1.9670930    1.9457668   1.9884193
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                1.8258720    1.7274376   1.9243065
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                1.9510086    1.8780261   2.0239911
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                1.2409831    1.1846796   1.2972866
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                1.2552344    1.1992219   1.3112469
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                1.5406775    1.4080613   1.6732937
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Male                 NA                1.4300252    1.3365352   1.5235151
6-9 months     ki0047075b-MAL-ED          INDIA                          Female               NA                1.2385314    1.1646913   1.3123714
6-9 months     ki0047075b-MAL-ED          INDIA                          Male                 NA                1.2553811    1.1834897   1.3272726
6-9 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                1.3507246    1.2894617   1.4119874
6-9 months     ki0047075b-MAL-ED          NEPAL                          Male                 NA                1.3627224    1.2996797   1.4257652
6-9 months     ki0047075b-MAL-ED          PERU                           Female               NA                1.2339970    1.1636080   1.3043859
6-9 months     ki0047075b-MAL-ED          PERU                           Male                 NA                1.3912350    1.3128311   1.4696388
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                1.4606695    1.3670842   1.5542548
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                1.2994629    1.2138171   1.3851087
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                1.2328247    1.1071930   1.3584565
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                1.1467742    1.0576005   1.2359479
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                1.2524996    1.1352462   1.3697530
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                1.1824007    1.0811465   1.2836548
6-9 months     ki1000108-IRC              INDIA                          Female               NA                1.3420348    1.2721266   1.4119431
6-9 months     ki1000108-IRC              INDIA                          Male                 NA                1.3972089    1.3300157   1.4644022
6-9 months     ki1000109-EE               PAKISTAN                       Female               NA                1.1350318    1.0692625   1.2008012
6-9 months     ki1000109-EE               PAKISTAN                       Male                 NA                1.2202894    1.1538229   1.2867559
6-9 months     ki1000109-ResPak           PAKISTAN                       Female               NA                1.4410495    1.2991574   1.5829416
6-9 months     ki1000109-ResPak           PAKISTAN                       Male                 NA                1.4570137    1.3025195   1.6115079
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                1.3121451    1.1973773   1.4269130
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                1.1409215    1.0964365   1.1854066
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                1.1755838    1.0724475   1.2787201
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                1.0691997    0.9403674   1.1980319
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                1.2497914    1.1938759   1.3057070
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                1.2605357    1.2025451   1.3185262
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                1.2844051    1.2478336   1.3209767
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                1.2806131    1.2457474   1.3154787
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                1.3196751    1.2764705   1.3628797
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                1.3370661    1.2971696   1.3769626
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                1.2964632    1.2416831   1.3512432
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                1.3489933    1.3007524   1.3972341
6-9 months     ki1101329-Keneba           GAMBIA                         Female               NA                1.4155551    1.3400815   1.4910286
6-9 months     ki1101329-Keneba           GAMBIA                         Male                 NA                1.3959779    1.3277547   1.4642011
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                1.1862796    1.1286304   1.2439287
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                1.1528715    1.0853942   1.2203487
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                1.3257684    1.2572162   1.3943205
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Male                 NA                1.3092879    1.2633378   1.3552380
6-9 months     ki1114097-CMIN             BANGLADESH                     Female               NA                1.1793355    1.0862985   1.2723724
6-9 months     ki1114097-CMIN             BANGLADESH                     Male                 NA                1.3340558    1.2566116   1.4115000
6-9 months     ki1114097-CONTENT          PERU                           Female               NA                1.3655579    1.3032763   1.4278395
6-9 months     ki1114097-CONTENT          PERU                           Male                 NA                1.4281199    1.3579658   1.4982740
6-9 months     ki1119695-PROBIT           BELARUS                        Female               NA                1.5827544    1.5437135   1.6217952
6-9 months     ki1119695-PROBIT           BELARUS                        Male                 NA                1.6085403    1.5530816   1.6639990
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                1.3657443    1.3381747   1.3933138
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                1.3291188    1.3027769   1.3554606
6-9 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                1.0931738    1.0343038   1.1520439
6-9 months     ki1135781-COHORTS          GUATEMALA                      Male                 NA                1.0420544    0.9893005   1.0948082
6-9 months     ki1135781-COHORTS          INDIA                          Female               NA                1.1906698    1.1748554   1.2064841
6-9 months     ki1135781-COHORTS          INDIA                          Male                 NA                1.1994590    1.1843651   1.2145530
6-9 months     ki1148112-LCNI-5           MALAWI                         Female               NA                1.4710480    1.4152959   1.5268002
6-9 months     ki1148112-LCNI-5           MALAWI                         Male                 NA                1.4534293    1.4064651   1.5003935
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                1.2791160    1.2257966   1.3324353
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                1.2939385    1.2451515   1.3427255
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.9671122    0.9154300   1.0187943
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                1.0119776    0.9547912   1.0691639
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                1.3379245    1.2285894   1.4472595
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Male                 NA                1.2617294    1.1614122   1.3620467
9-12 months    ki0047075b-MAL-ED          INDIA                          Female               NA                1.0095694    0.9548411   1.0642978
9-12 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.9488216    0.8967610   1.0008822
9-12 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                1.0874931    1.0311811   1.1438052
9-12 months    ki0047075b-MAL-ED          NEPAL                          Male                 NA                1.0907401    1.0323997   1.1490806
9-12 months    ki0047075b-MAL-ED          PERU                           Female               NA                1.1226309    1.0516987   1.1935632
9-12 months    ki0047075b-MAL-ED          PERU                           Male                 NA                1.0786941    1.0067202   1.1506680
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                1.0412508    0.9480874   1.1344143
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.9876309    0.8976968   1.0775651
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.7694207    0.6377348   0.9011067
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.8567946    0.7626568   0.9509324
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.8732101    0.7905036   0.9559166
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.9260012    0.8184219   1.0335806
9-12 months    ki1000108-IRC              INDIA                          Female               NA                1.0999255    1.0414615   1.1583895
9-12 months    ki1000108-IRC              INDIA                          Male                 NA                1.1427399    1.0896272   1.1958525
9-12 months    ki1000109-EE               PAKISTAN                       Female               NA                0.8880131    0.8369091   0.9391170
9-12 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.9424176    0.8943504   0.9904847
9-12 months    ki1000109-ResPak           PAKISTAN                       Female               NA                1.2328042    1.1004347   1.3651738
9-12 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                1.1468443    0.9359716   1.3577170
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.9349610    0.8577116   1.0122105
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                1.0276715    0.9780184   1.0773247
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.9347984    0.5034955   1.3661012
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                1.1547126    0.5116933   1.7977319
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                1.0603167    1.0065810   1.1140524
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                1.1129164    1.0669159   1.1589170
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                1.0521140    1.0114609   1.0927670
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                1.0480100    1.0122156   1.0838045
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                1.1238824    1.0858650   1.1618998
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                1.1230467    1.0869641   1.1591293
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                1.0870828    1.0369702   1.1371954
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                1.0858278    1.0394925   1.1321632
9-12 months    ki1101329-Keneba           GAMBIA                         Female               NA                1.0018220    0.9432607   1.0603833
9-12 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.9611795    0.9006578   1.0217012
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                1.0645435    1.0122373   1.1168498
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                1.0088929    0.9508164   1.0669693
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.9729374    0.9184741   1.0274007
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                1.0226489    0.9864514   1.0588463
9-12 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.9424891    0.8448537   1.0401245
9-12 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.9785034    0.9047989   1.0522079
9-12 months    ki1114097-CONTENT          PERU                           Female               NA                1.2015214    1.1486098   1.2544329
9-12 months    ki1114097-CONTENT          PERU                           Male                 NA                1.2081079    1.1487390   1.2674769
9-12 months    ki1119695-PROBIT           BELARUS                        Female               NA                1.3440919    1.2949543   1.3932295
9-12 months    ki1119695-PROBIT           BELARUS                        Male                 NA                1.3854807    1.3192817   1.4516796
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                1.1136619    1.0877290   1.1395948
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                1.0504028    1.0258096   1.0749961
9-12 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.9280697    0.8727171   0.9834224
9-12 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.9664996    0.9240030   1.0089962
9-12 months    ki1135781-COHORTS          INDIA                          Female               NA                0.9896336    0.9726401   1.0066271
9-12 months    ki1135781-COHORTS          INDIA                          Male                 NA                1.0060371    0.9896191   1.0224550
9-12 months    ki1148112-LCNI-5           MALAWI                         Female               NA                1.1237180    1.0515138   1.1959222
9-12 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                1.0741044    1.0143256   1.1338832
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                1.0537904    1.0055276   1.1020532
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                1.0562202    1.0111306   1.1013098
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.9114888    0.8556720   0.9673055
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.9168126    0.8584466   0.9751785
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                1.1083452    1.0168762   1.1998142
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                1.1718668    1.0959234   1.2478103
12-15 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.9208517    0.8724360   0.9692675
12-15 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.8983428    0.8350302   0.9616553
12-15 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.9565656    0.9021898   1.0109414
12-15 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.9469296    0.8904748   1.0033844
12-15 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.9077470    0.8329501   0.9825439
12-15 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.8788093    0.8209946   0.9366241
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.8971579    0.8206013   0.9737145
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.9421010    0.8561051   1.0280968
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.8824976    0.7879687   0.9770264
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.8306727    0.7435244   0.9178210
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.8557908    0.7606380   0.9509436
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.8510548    0.7496113   0.9524983
12-15 months   ki1000108-IRC              INDIA                          Female               NA                0.9704055    0.9049525   1.0358586
12-15 months   ki1000108-IRC              INDIA                          Male                 NA                0.9431026    0.8897714   0.9964339
12-15 months   ki1000109-EE               PAKISTAN                       Female               NA                0.9675832    0.9257936   1.0093728
12-15 months   ki1000109-EE               PAKISTAN                       Male                 NA                1.0576932    1.0078265   1.1075599
12-15 months   ki1000109-ResPak           PAKISTAN                       Female               NA                1.1509548    0.9659044   1.3360052
12-15 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                1.3909423    1.1506227   1.6312619
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.8390359    0.7649754   0.9130964
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.8592827    0.8284895   0.8900758
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                1.0238311    0.6778798   1.3697823
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.8893116    0.5013446   1.2772785
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.7306377    0.6523003   0.8089752
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.7186007    0.6706143   0.7665871
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.9612516    0.9222923   1.0002109
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.9583884    0.9231736   0.9936033
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                1.0006838    0.9654813   1.0358862
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.9406861    0.9067876   0.9745846
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.9688356    0.9181597   1.0195114
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.8925548    0.8394361   0.9456736
12-15 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.9485730    0.9048394   0.9923066
12-15 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.9268201    0.8840075   0.9696327
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                1.0227128    0.9321133   1.1133123
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.9950974    0.9178613   1.0723334
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.8795783    0.8329029   0.9262537
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.8798272    0.8452476   0.9144069
12-15 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.8391970    0.7579808   0.9204132
12-15 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.9031161    0.8282866   0.9779455
12-15 months   ki1114097-CONTENT          PERU                           Female               NA                0.9235145    0.8615835   0.9854456
12-15 months   ki1114097-CONTENT          PERU                           Male                 NA                0.9343915    0.8763516   0.9924315
12-15 months   ki1119695-PROBIT           BELARUS                        Female               NA                1.2208492    0.5774449   1.8642535
12-15 months   ki1119695-PROBIT           BELARUS                        Male                 NA                1.2138024    0.7756082   1.6519966
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.9228300    0.8850823   0.9605778
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.9183819    0.8800316   0.9567322
12-15 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.7174873    0.6554681   0.7795064
12-15 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.7789039    0.7378340   0.8199737
12-15 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.9577545    0.7922785   1.1232305
12-15 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.9598661    0.8567717   1.0629606
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.9278302    0.8846726   0.9709877
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.9599636    0.9098134   1.0101139
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.8412444    0.7878148   0.8946739
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.8053056    0.7549511   0.8556600
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                1.0339148    0.9435480   1.1242817
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.9740696    0.8969062   1.0512331
15-18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.8894264    0.8370024   0.9418504
15-18 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.7906052    0.7433480   0.8378625
15-18 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.8631898    0.8080032   0.9183765
15-18 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.8212536    0.7606015   0.8819058
15-18 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.9064401    0.8482090   0.9646712
15-18 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.8073963    0.7479667   0.8668259
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.9476817    0.8693749   1.0259885
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.8282117    0.7592902   0.8971332
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.7431908    0.6644566   0.8219250
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.6297825    0.5376046   0.7219603
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.7100221    0.6271389   0.7929054
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.7576565    0.6633025   0.8520105
15-18 months   ki1000108-IRC              INDIA                          Female               NA                0.8696437    0.8078709   0.9314165
15-18 months   ki1000108-IRC              INDIA                          Male                 NA                0.8505942    0.7999078   0.9012806
15-18 months   ki1000109-EE               PAKISTAN                       Female               NA                0.8513070    0.8013770   0.9012370
15-18 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.8236015    0.7833026   0.8639003
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.9526972    0.8175137   1.0878807
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.9632349    0.8828442   1.0436256
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.7923902    0.6983090   0.8864713
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.8869545    0.7918834   0.9820256
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.7850768    0.7266058   0.8435477
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.7622467    0.7069211   0.8175723
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.8587746    0.8237875   0.8937618
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.8536576    0.8204555   0.8868597
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.9210078    0.8882766   0.9537390
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.9143818    0.8822132   0.9465505
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.9754501    0.9150228   1.0358775
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.9001926    0.8421613   0.9582239
15-18 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.8937076    0.8562973   0.9311179
15-18 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.8612705    0.8128321   0.9097090
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.7439799    0.6852542   0.8027056
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.7651309    0.7262243   0.8040374
15-18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.8139707    0.7428099   0.8851315
15-18 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.6995891    0.6275027   0.7716755
15-18 months   ki1114097-CONTENT          PERU                           Female               NA                0.9677749    0.9020328   1.0335170
15-18 months   ki1114097-CONTENT          PERU                           Male                 NA                1.0040793    0.9415914   1.0665672
15-18 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.8425802    0.2116698   1.4734907
15-18 months   ki1119695-PROBIT           BELARUS                        Male                 NA                1.2984369    0.1862147   2.4106591
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.8083322    0.7643045   0.8523599
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.7906897    0.7500209   0.8313586
15-18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.7450473    0.6829382   0.8071564
15-18 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.7154756    0.6612250   0.7697262
15-18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.8337981    0.7265294   0.9410669
15-18 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.8160113    0.7227769   0.9092457
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.8409643    0.7974686   0.8844599
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.8314845    0.7856854   0.8772835
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.8000292    0.7511509   0.8489076
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.8266130    0.7783895   0.8748366
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.9356643    0.8301158   1.0412127
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.8989085    0.8036725   0.9941444
18-21 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.9065188    0.8565176   0.9565200
18-21 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.8460883    0.7974945   0.8946822
18-21 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.7991062    0.7475723   0.8506400
18-21 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.8350765    0.7798175   0.8903354
18-21 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.8660487    0.7943972   0.9377002
18-21 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.8204508    0.7649952   0.8759064
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.7925192    0.7065868   0.8784516
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.7722771    0.7012326   0.8433217
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.7908812    0.6996675   0.8820950
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.6965264    0.5978107   0.7952421
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.7288596    0.6353161   0.8224032
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.6724196    0.5856768   0.7591625
18-21 months   ki1000108-IRC              INDIA                          Female               NA                0.7943607    0.7333600   0.8553613
18-21 months   ki1000108-IRC              INDIA                          Male                 NA                0.7322864    0.6838175   0.7807552
18-21 months   ki1000109-EE               PAKISTAN                       Female               NA                0.7185828    0.6625814   0.7745842
18-21 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.7180521    0.6776656   0.7584386
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.7538954    0.7015041   0.8062867
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.7080888    0.6585824   0.7575953
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.8508397    0.8150337   0.8866458
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.8286952    0.7965662   0.8608242
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.7883470    0.7560854   0.8206085
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.8070669    0.7733875   0.8407463
18-21 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.8183359    0.7702967   0.8663752
18-21 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.8171500    0.7701917   0.8641083
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.9330402    0.8907554   0.9753251
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.8761569    0.8237708   0.9285431
18-21 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.8082141    0.7224175   0.8940108
18-21 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.7988072    0.7428249   0.8547894
18-21 months   ki1114097-CONTENT          PERU                           Female               NA                0.9043652    0.8384396   0.9702907
18-21 months   ki1114097-CONTENT          PERU                           Male                 NA                0.9254793    0.8688530   0.9821056
18-21 months   ki1119695-PROBIT           BELARUS                        Female               NA                1.2748317   -0.5205451   3.0702086
18-21 months   ki1119695-PROBIT           BELARUS                        Male                 NA                1.5008574    0.4321504   2.5695643
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.6812989    0.6331018   0.7294959
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.6804788    0.6324478   0.7285097
18-21 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.7521352    0.6952036   0.8090667
18-21 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.7160471    0.6618136   0.7702805
18-21 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.8497510    0.7928604   0.9066416
18-21 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.7847318    0.7112532   0.8582104
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.8099926    0.7535595   0.8664257
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.7314983    0.6888303   0.7741663
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.8383498    0.7839878   0.8927117
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.7601178    0.6938513   0.8263843
21-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.8436769    0.7994323   0.8879214
21-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.8046638    0.7624648   0.8468627
21-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.7616252    0.7051639   0.8180865
21-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.8020597    0.7440605   0.8600589
21-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.7886588    0.7190994   0.8582181
21-24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.7369959    0.6739171   0.8000747
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.8978571    0.8185273   0.9771869
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.7835646    0.7189313   0.8481979
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.6730464    0.5932375   0.7528553
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.7621971    0.6626907   0.8617034
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.7578176    0.6689127   0.8467225
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.6609109    0.5767296   0.7450922
21-24 months   ki1000108-IRC              INDIA                          Female               NA                0.7109480    0.6432663   0.7786296
21-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.7063612    0.6565036   0.7562188
21-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.6531772    0.5994991   0.7068553
21-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.6452039    0.5913451   0.6990627
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.7386633    0.6854510   0.7918756
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.6991381    0.6516361   0.7466401
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.7579685    0.7218886   0.7940484
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.7680319    0.7323074   0.8037564
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.8019630    0.7662725   0.8376536
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.7967076    0.7630418   0.8303735
21-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.7306494    0.6828323   0.7784666
21-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.7067823    0.6605090   0.7530555
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.7984284    0.7440110   0.8528459
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.7995549    0.7292134   0.8698964
21-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.7484958    0.6660612   0.8309305
21-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.7607406    0.6814190   0.8400622
21-24 months   ki1114097-CONTENT          PERU                           Female               NA                0.9040411    0.8144956   0.9935867
21-24 months   ki1114097-CONTENT          PERU                           Male                 NA                0.9882913    0.8360370   1.1405457
21-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                1.1580366    0.3947773   1.9212959
21-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                1.5556945    0.8928628   2.2185262
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.7138009    0.6607109   0.7668910
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.6676425    0.6131453   0.7221397
21-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.6212074    0.5689314   0.6734833
21-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.6336855    0.5917278   0.6756432
21-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.7434644    0.6725514   0.8143775
21-24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.7593957    0.7016705   0.8171210


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0519536   2.9854854   3.1184219
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.1817712   3.0847973   3.2787451
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                3.0775986   2.9949164   3.1602807
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                3.0203213   2.7415636   3.2990789
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.4016721   3.2751931   3.5281511
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1094185   3.0623536   3.1564834
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                3.4261247   3.2881156   3.5641338
0-3 months     ki1114097-CONTENT          PERU                           NA                   NA                3.6418727   3.4619177   3.8218277
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.7441602   2.5752798   2.9130407
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3370617   3.3165207   3.3576028
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.5147754   2.4514774   2.5780734
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5089109   3.4948295   3.5229924
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6486351   3.6333080   3.6639622
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                2.9935112   2.8845861   3.1024362
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9704262   1.8897530   2.0510994
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0947237   2.0366412   2.1528063
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                2.0648890   1.9235221   2.2062560
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9144516   1.8761636   1.9527397
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7956732   1.7598168   1.8315297
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9931660   1.9537919   2.0325400
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0898257   2.0242077   2.1554437
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9753863   1.9557273   1.9950453
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.6766747   1.6322125   1.7211370
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8736888   1.8616349   1.8857427
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9275104   1.9126078   1.9424130
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8838056   1.8192936   1.9483176
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                1.1779411   1.1309380   1.2249441
6-9 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                1.4489758   1.3441442   1.5538073
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.2199478   1.1697810   1.2701146
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.1338927   1.0525014   1.2152841
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3229048   1.2864138   1.3593957
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.4055393   1.3547714   1.4563072
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1702813   1.1261029   1.2144597
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.2658739   1.2051613   1.3265866
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                1.5952397   1.5519431   1.6385362
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.3469775   1.3279219   1.3660330
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0653261   1.0259497   1.1047026
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.1952626   1.1843432   1.2061820
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                1.4623324   1.4258089   1.4988559
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2864500   1.2489340   1.3239661
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.9148816   0.8796496   0.9501135
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                1.1892103   1.0637355   1.3146851
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9865499   0.9621090   1.0109908
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0290473   0.6585278   1.3995669
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0864385   1.0523722   1.1205048
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.9809254   0.9387401   1.0231107
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0385134   0.9994107   1.0776161
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.9627471   0.9031556   1.0223387
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.3641916   1.3090073   1.4193759
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.0811847   1.0633156   1.0990539
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.9486008   0.9142012   0.9830003
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.9981724   0.9863625   1.0099822
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.0986541   1.0518074   1.1455009
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.0549548   1.0220826   1.0878270
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                1.0100593   0.9773974   1.0427213
12-15 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                1.2892085   1.1282289   1.4501880
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8500454   0.8255871   0.8745037
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.9636513   0.7049916   1.2223109
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9312256   0.8944427   0.9680085
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.9373310   0.9067296   0.9679324
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0096168   0.9494649   1.0697687
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8739530   0.8186981   0.9292079
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.2174129   0.7348696   1.6999562
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9205920   0.8936831   0.9475009
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7505023   0.7141919   0.7868127
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.9588519   0.8629996   1.0547041
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.9426270   0.9101880   0.9750661
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8376536   0.8054297   0.8698774
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9584027   0.8755768   1.0412286
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8317920   0.7632451   0.9003389
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9379347   0.8959416   0.9799278
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8768327   0.8458829   0.9077824
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7480083   0.6959380   0.8000786
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.1259506   0.2738358   1.9780654
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7994243   0.7694755   0.8293732
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7287511   0.6878433   0.7696588
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8247565   0.7538318   0.8956812
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8363686   0.8047923   0.8679450
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7183112   0.6840373   0.7525850
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8177069   0.7841023   0.8513114
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8028550   0.7540631   0.8516469
18-21 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9146338   0.8709588   0.9583088
18-21 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.3632765   0.2369679   2.4895852
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6808824   0.6468583   0.7149065
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7328686   0.6935502   0.7721870
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8179911   0.7716915   0.8642907
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.6493410   0.6112910   0.6873909
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.7181315   0.6848678   0.7513952
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7554929   0.6980149   0.8129708
21-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.9350807   0.8543561   1.0158053
21-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                1.3444388   0.7369879   1.9518896
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6907415   0.6526782   0.7288047
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6279402   0.5948914   0.6609890
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.7513135   0.7054477   0.7971793


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.1274487   -0.0029034    0.2578008
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Male                 Female            -0.0065439   -0.2273131    0.2142252
0-3 months     ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Male                 Female             0.0515898   -0.1398492    0.2430289
0-3 months     ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.4840333    0.3163683    0.6516984
0-3 months     ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Male                 Female             0.0699368   -0.0619933    0.2018670
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female             0.2023021    0.0100383    0.3945658
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.1520727    0.0004433    0.3037021
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.3438633   -0.0882328    0.7759594
0-3 months     ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Male                 Female             0.4652529    0.2459548    0.6845511
0-3 months     ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Male                 Female             0.2258289    0.0624837    0.3891741
0-3 months     ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       Male                 Female            -0.0663790   -0.6235511    0.4907931
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.1881821   -0.0149552    0.3913194
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.2135170    0.1089538    0.3180803
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.3070117    0.2371971    0.3768263
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.2460277    0.1756104    0.3164450
0-3 months     ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Male                 Female             0.2624295    0.1693503    0.3555087
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.2534176    0.1542237    0.3526115
0-3 months     ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     Male                 Female             0.2275227   -0.0497407    0.5047861
0-3 months     ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Male                 Female            -0.5550680   -0.8508337   -0.2593023
0-3 months     ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Male                 Female            -0.1421430   -0.1817669   -0.1025191
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             0.2591480    0.2184310    0.2998649
0-3 months     ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.2035649    0.0780269    0.3291029
0-3 months     ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Male                 Female             0.2751627    0.2477952    0.3025302
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female             0.2629830    0.2382813    0.2876847
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.2393831    0.0342458    0.4445204
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0089854   -0.0915181    0.1094890
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.2204221    0.0647565    0.3760877
3-6 months     ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Male                 Female             0.2029567    0.0785880    0.3273253
3-6 months     ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0707336   -0.0403202    0.1817875
3-6 months     ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Male                 Female             0.1152704   -0.0157510    0.2462918
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female             0.1236506   -0.0359976    0.2832988
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0325308   -0.1680490    0.1029875
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.0906027   -0.2918263    0.1106210
3-6 months     ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Male                 Female            -0.0834752   -0.2128634    0.0459130
3-6 months     ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Male                 Female             0.0426565   -0.0737008    0.1590139
3-6 months     ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       Male                 Female             0.0872675   -0.1922253    0.3667604
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.2996838   -0.0027816    0.6021493
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.2400457    0.1468457    0.3332457
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0798248    0.0125337    0.1471158
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.1370283    0.0648440    0.2092126
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0140727   -0.0578589    0.0860042
3-6 months     ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Male                 Female             0.1219766    0.0434554    0.2004977
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.0682893   -0.0100237    0.1466024
3-6 months     ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     Male                 Female             0.1058431   -0.0341974    0.2458835
3-6 months     ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Male                 Female            -0.0546419   -0.1502533    0.0409694
3-6 months     ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Male                 Female            -0.1031685   -0.1374731   -0.0688640
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             0.0883796    0.0490928    0.1276664
3-6 months     ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.0230648   -0.1118281    0.0656985
3-6 months     ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Male                 Female             0.1130556    0.0891016    0.1370097
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female             0.0795350    0.0517505    0.1073195
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.1251366    0.0049160    0.2453572
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0142513   -0.0651684    0.0936709
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Male                 Female            -0.1106524   -0.2729097    0.0516049
6-9 months     ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Male                 Female             0.0168498   -0.0862072    0.1199068
6-9 months     ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0119979   -0.0759085    0.0999042
6-9 months     ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Male                 Female             0.1572380    0.0518730    0.2626029
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.1612066   -0.2880664   -0.0343468
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0860506   -0.2401131    0.0680120
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.0700989   -0.2250207    0.0848229
6-9 months     ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Male                 Female             0.0551741   -0.0417903    0.1521385
6-9 months     ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       Male                 Female             0.0852576   -0.0082486    0.1787637
6-9 months     ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       Male                 Female             0.0159642   -0.1938020    0.2257303
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            -0.1712236   -0.3134554   -0.0289917
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            -0.1063841   -0.2714140    0.0586457
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.0107442   -0.0698129    0.0913014
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            -0.0037921   -0.0543202    0.0467360
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0173910   -0.0414169    0.0761990
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0525301   -0.0204633    0.1255235
6-9 months     ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0195772   -0.1213154    0.0821610
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            -0.0334081   -0.1221583    0.0553421
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Male                 Female            -0.0164804   -0.0990081    0.0660472
6-9 months     ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     Male                 Female             0.1547203    0.0336687    0.2757719
6-9 months     ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           Male                 Female             0.0625620   -0.0312494    0.1563735
6-9 months     ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        Male                 Female             0.0257860   -0.0148153    0.0663873
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0366255   -0.0747565    0.0015055
6-9 months     ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.0511195   -0.1301679    0.0279289
6-9 months     ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          Male                 Female             0.0087893   -0.0130721    0.0306506
6-9 months     ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         Male                 Female            -0.0176188   -0.0905156    0.0552780
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.0148225   -0.0545235    0.0841685
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0448654   -0.0322145    0.1219454
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Male                 Female            -0.0761950   -0.2245786    0.0721886
9-12 months    ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.0607478   -0.1362825    0.0147869
9-12 months    ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0032470   -0.0778372    0.0843312
9-12 months    ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           Male                 Female            -0.0439369   -0.1449894    0.0571157
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0536199   -0.1831096    0.0758698
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0873739   -0.0744999    0.2492476
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.0527911   -0.0829059    0.1884882
9-12 months    ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Male                 Female             0.0428144   -0.0361729    0.1218017
9-12 months    ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       Male                 Female             0.0544045   -0.0157529    0.1245619
9-12 months    ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            -0.0859599   -0.3349358    0.1630160
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.0927105   -0.0251270    0.2105480
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female             0.2199143   -0.5543570    0.9941855
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.0525997   -0.0181362    0.1233357
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            -0.0041039   -0.0582696    0.0500617
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            -0.0008357   -0.0532501    0.0515788
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0012550   -0.0695062    0.0669963
9-12 months    ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0406424   -0.1248582    0.0435734
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            -0.0556506   -0.1338096    0.0225083
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.0497114   -0.0156836    0.1151065
9-12 months    ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0360143   -0.0863174    0.1583459
9-12 months    ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           Male                 Female             0.0065866   -0.0729389    0.0861120
9-12 months    ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        Male                 Female             0.0413888    0.0036027    0.0791748
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0632591   -0.0989990   -0.0275191
9-12 months    ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.0384299   -0.0313546    0.1082144
9-12 months    ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          Male                 Female             0.0164035   -0.0072255    0.0400324
9-12 months    ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         Male                 Female            -0.0496136   -0.1433524    0.0441252
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.0024298   -0.0641573    0.0690170
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0053238   -0.0754357    0.0860833
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.0635216   -0.0553647    0.1824080
12-15 months   ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.0225090   -0.1022120    0.0571940
12-15 months   ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            -0.0096360   -0.0880189    0.0687468
12-15 months   ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           Male                 Female            -0.0289377   -0.1234741    0.0655987
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female             0.0449430   -0.0701925    0.1600786
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0518248   -0.1803959    0.0767463
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.0047360   -0.1438218    0.1343498
12-15 months   ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Male                 Female            -0.0273029   -0.1117323    0.0571265
12-15 months   ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       Male                 Female             0.0901100    0.0250480    0.1551720
12-15 months   ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       Male                 Female             0.2399875   -0.0633228    0.5432978
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.0202468   -0.0787113    0.1192048
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            -0.1345195   -0.6543277    0.3852888
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0120371   -0.1039035    0.0798294
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            -0.0028631   -0.0553790    0.0496527
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            -0.0599977   -0.1088681   -0.0111272
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0762807   -0.1496949   -0.0028666
12-15 months   ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0217529   -0.0829538    0.0394480
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            -0.0276154   -0.1466687    0.0914379
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.0002489   -0.0578403    0.0583380
12-15 months   ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0639191   -0.0465143    0.1743524
12-15 months   ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           Male                 Female             0.0108770   -0.0739999    0.0957539
12-15 months   ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        Male                 Female            -0.0070468   -0.5464821    0.5323884
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0044481   -0.0582593    0.0493630
12-15 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.0614166   -0.0129683    0.1358014
12-15 months   ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         Male                 Female             0.0021117   -0.1928518    0.1970752
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.0321335   -0.0349305    0.0991974
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            -0.0359388   -0.1093573    0.0374798
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female            -0.0598452   -0.1786743    0.0589839
15-18 months   ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.0988212   -0.1694011   -0.0282412
15-18 months   ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            -0.0419362   -0.1239378    0.0400653
15-18 months   ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Male                 Female            -0.0990438   -0.1822468   -0.0158408
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.1194700   -0.2237874   -0.0151526
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.1134083   -0.2346347    0.0078181
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.0476344   -0.0779535    0.1732222
15-18 months   ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Male                 Female            -0.0190496   -0.0989557    0.0608566
15-18 months   ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       Male                 Female            -0.0277056   -0.0918694    0.0364583
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.0105377   -0.1318755    0.1529509
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female             0.0945643   -0.0391884    0.2283170
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0228301   -0.1033271    0.0576670
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            -0.0051171   -0.0533507    0.0431166
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            -0.0066260   -0.0525188    0.0392668
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0752575   -0.1590375    0.0085225
15-18 months   ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0324371   -0.0936401    0.0287660
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.0211510   -0.0492936    0.0915955
15-18 months   ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            -0.1143816   -0.2156748   -0.0130884
15-18 months   ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           Male                 Female             0.0363044   -0.0543971    0.1270059
15-18 months   ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1119695-PROBIT           BELARUS                        Male                 Female             0.4558567   -0.7320610    1.6437744
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0176425   -0.0775791    0.0422941
15-18 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.0295717   -0.1120379    0.0528944
15-18 months   ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            -0.0177869   -0.1599109    0.1243372
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            -0.0094798   -0.0725506    0.0535910
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0265838   -0.0420791    0.0952467
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female            -0.0367558   -0.1789189    0.1054073
18-21 months   ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.0604305   -0.1301548    0.0092939
18-21 months   ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0359703   -0.0395895    0.1115301
18-21 months   ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Male                 Female            -0.0455979   -0.1362029    0.0450071
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0202420   -0.1317396    0.0912555
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0943548   -0.2287600    0.0400503
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.0564400   -0.1840124    0.0711324
18-21 months   ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Male                 Female            -0.0620743   -0.1399865    0.0158379
18-21 months   ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       Male                 Female            -0.0005307   -0.0695758    0.0685144
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0458065   -0.1178880    0.0262750
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            -0.0221445   -0.0702522    0.0259631
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0187199   -0.0279181    0.0653580
18-21 months   ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0011860   -0.0683637    0.0659918
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            -0.0568833   -0.1242058    0.0104392
18-21 months   ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            -0.0094070   -0.1118525    0.0930385
18-21 months   ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           Male                 Female             0.0211142   -0.0657922    0.1080205
18-21 months   ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1119695-PROBIT           BELARUS                        Male                 Female             0.2260256   -1.9833565    2.4354077
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0008201   -0.0688637    0.0672235
18-21 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.0360881   -0.1147168    0.0425405
18-21 months   ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            -0.0650192   -0.1579474    0.0279090
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            -0.0784943   -0.1492421   -0.0077465
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female            -0.0782320   -0.1639436    0.0074795
21-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.0390131   -0.1001550    0.0221288
21-24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0404345   -0.0405086    0.1213776
21-24 months   ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           Male                 Female            -0.0516628   -0.1455640    0.0422383
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.1142925   -0.2166188   -0.0119661
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0891507   -0.0384071    0.2167084
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.0969067   -0.2193427    0.0255293
21-24 months   ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Male                 Female            -0.0045868   -0.0886497    0.0794762
21-24 months   ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            -0.0079733   -0.0840135    0.0680669
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0395252   -0.1108554    0.0318049
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0100634   -0.0407105    0.0608374
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            -0.0052554   -0.0543186    0.0438078
21-24 months   ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0238672   -0.0904081    0.0426737
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.0011264   -0.0878072    0.0900600
21-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0122448   -0.1021553    0.1266449
21-24 months   ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           Male                 Female             0.0842502   -0.0923844    0.2608848
21-24 months   ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female             0.3976579   -0.5121070    1.3074228
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0461584   -0.1222406    0.0299238
21-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.0124781   -0.0545534    0.0795096
21-24 months   ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female             0.0159313   -0.0755065    0.1073691


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0634621   -0.0019404    0.1288646
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0032330   -0.1123046    0.1058386
0-3 months     ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0231168   -0.0627456    0.1089791
0-3 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.2513250    0.1563072    0.3463428
0-3 months     ki0047075b-MAL-ED          PERU                           Female               NA                 0.0380034   -0.0338100    0.1098168
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0997129    0.0039656    0.1954602
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0720344   -0.0004661    0.1445349
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1602090   -0.0443097    0.3647277
0-3 months     ki1000108-IRC              INDIA                          Female               NA                 0.2603935    0.1354559    0.3853312
0-3 months     ki1000109-EE               PAKISTAN                       Female               NA                 0.1162683    0.0312119    0.2013247
0-3 months     ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0340192   -0.3196636    0.2516252
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.1025568   -0.0094499    0.2145635
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1131716    0.0570571    0.1692861
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1607014    0.1222725    0.1991303
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1204546    0.0848273    0.1560819
0-3 months     ki1101329-Keneba           GAMBIA                         Female               NA                 0.1377960    0.0883957    0.1871964
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.1319365    0.0791328    0.1847401
0-3 months     ki1114097-CMIN             BANGLADESH                     Female               NA                 0.1375719   -0.0334181    0.3085618
0-3 months     ki1114097-CONTENT          PERU                           Female               NA                -0.3062444   -0.4988124   -0.1136764
0-3 months     ki1119695-PROBIT           BELARUS                        Female               NA                -0.0690258   -0.0879308   -0.0501208
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1334050    0.1122529    0.1545572
0-3 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.1097878    0.0412641    0.1783115
0-3 months     ki1135781-COHORTS          INDIA                          Female               NA                 0.1433059    0.1286642    0.1579477
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.1320803    0.1194703    0.1446903
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1087763    0.0132455    0.2043070
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0043566   -0.0443759    0.0530890
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.1123305    0.0315932    0.1930678
3-6 months     ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0908893    0.0336804    0.1480982
3-6 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0373401   -0.0214608    0.0961409
3-6 months     ki0047075b-MAL-ED          PERU                           Female               NA                 0.0626001   -0.0088877    0.1340878
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0641151   -0.0190306    0.1472608
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0157890   -0.0815960    0.0500180
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0460391   -0.1484155    0.0563372
3-6 months     ki1000108-IRC              INDIA                          Female               NA                -0.0462583   -0.1180759    0.0255593
3-6 months     ki1000109-EE               PAKISTAN                       Female               NA                 0.0220900   -0.0382184    0.0823983
3-6 months     ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0464308   -0.1024317    0.1952933
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.1605756    0.0024787    0.3186724
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1303499    0.0787112    0.1819886
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0416477    0.0063939    0.0769015
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0664439    0.0310735    0.1018144
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0072016   -0.0296103    0.0440134
3-6 months     ki1101329-Keneba           GAMBIA                         Female               NA                 0.0634767    0.0224894    0.1044640
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0353823   -0.0053111    0.0760758
3-6 months     ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0566403   -0.0186874    0.1319681
3-6 months     ki1114097-CONTENT          PERU                           Female               NA                -0.0275763   -0.0759681    0.0208154
3-6 months     ki1119695-PROBIT           BELARUS                        Female               NA                -0.0501976   -0.0673271   -0.0330681
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0453342    0.0251520    0.0655164
3-6 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0123834   -0.0600536    0.0352868
3-6 months     ki1135781-COHORTS          INDIA                          Female               NA                 0.0583429    0.0459053    0.0707805
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0399523    0.0259724    0.0539323
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0579336    0.0012864    0.1145808
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0070620   -0.0323044    0.0464284
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0575616   -0.1423204    0.0271973
6-9 months     ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0076923   -0.0393680    0.0547526
6-9 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0064162   -0.0406009    0.0534334
6-9 months     ki0047075b-MAL-ED          PERU                           Female               NA                 0.0859995    0.0275405    0.1444586
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0837437   -0.1504619   -0.0170255
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0420692   -0.1175990    0.0334607
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0351614   -0.1129671    0.0426442
6-9 months     ki1000108-IRC              INDIA                          Female               NA                 0.0303661   -0.0230668    0.0837990
6-9 months     ki1000109-EE               PAKISTAN                       Female               NA                 0.0429092   -0.0043956    0.0902140
6-9 months     ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0079263   -0.0962316    0.1120841
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0921973   -0.1657989   -0.0185958
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0416911   -0.1074531    0.0240709
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0058036   -0.0377127    0.0493200
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0019866   -0.0284585    0.0244852
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0085944   -0.0204749    0.0376637
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0264416   -0.0103246    0.0632078
6-9 months     ki1101329-Keneba           GAMBIA                         Female               NA                -0.0100157   -0.0620691    0.0420377
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0159982   -0.0585577    0.0265612
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0085657   -0.0514658    0.0343344
6-9 months     ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0865385    0.0178872    0.1551897
6-9 months     ki1114097-CONTENT          PERU                           Female               NA                 0.0318657   -0.0161010    0.0798324
6-9 months     ki1119695-PROBIT           BELARUS                        Female               NA                 0.0124853   -0.0071880    0.0321587
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0187668   -0.0383105    0.0007770
6-9 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0278477   -0.0709839    0.0152885
6-9 months     ki1135781-COHORTS          INDIA                          Female               NA                 0.0045928   -0.0068314    0.0160170
6-9 months     ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0087157   -0.0447837    0.0273523
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0073341   -0.0270419    0.0417100
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0225324   -0.0162902    0.0613550
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0396685   -0.1171062    0.0377691
9-12 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0280992   -0.0632606    0.0070622
9-12 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0017440   -0.0418083    0.0452963
9-12 months    ki0047075b-MAL-ED          PERU                           Female               NA                -0.0241185   -0.0796606    0.0314236
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0269250   -0.0920392    0.0381892
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0436869   -0.0374528    0.1248267
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0263123   -0.0413848    0.0940094
9-12 months    ki1000108-IRC              INDIA                          Female               NA                 0.0235479   -0.0199453    0.0670412
9-12 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0268685   -0.0079058    0.0616427
9-12 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0435940   -0.1700623    0.0828743
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0515889   -0.0129440    0.1161218
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0942490   -0.2384824    0.4269803
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0282642   -0.0098176    0.0663459
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0021390   -0.0303707    0.0260927
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0004079   -0.0259930    0.0251772
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0006443   -0.0356855    0.0343968
9-12 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.0208966   -0.0642174    0.0224243
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0260301   -0.0628067    0.0107464
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0254387   -0.0081014    0.0589787
9-12 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0202580   -0.0486095    0.0891256
9-12 months    ki1114097-CONTENT          PERU                           Female               NA                 0.0033554   -0.0371600    0.0438708
9-12 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0200997    0.0018356    0.0383638
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0324772   -0.0508437   -0.0141107
9-12 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0205310   -0.0167944    0.0578565
9-12 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0085387   -0.0037632    0.0208407
9-12 months    ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0250639   -0.0724837    0.0223560
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0011644   -0.0307408    0.0330696
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0026117   -0.0370078    0.0422312
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0338322   -0.0296540    0.0973184
12-15 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0103581   -0.0470649    0.0263487
12-15 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0051532   -0.0470756    0.0367692
12-15 months   ki0047075b-MAL-ED          PERU                           Female               NA                -0.0160191   -0.0683858    0.0363476
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0224715   -0.0351704    0.0801135
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0261417   -0.0910845    0.0388010
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0024184   -0.0734414    0.0686046
12-15 months   ki1000108-IRC              INDIA                          Female               NA                -0.0150516   -0.0616156    0.0315124
12-15 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0424761    0.0113820    0.0735702
12-15 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.1382537   -0.0381703    0.3146776
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0110095   -0.0423748    0.0643938
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0601798   -0.2932177    0.1728582
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0064755   -0.0558991    0.0429481
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0015015   -0.0290430    0.0260399
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0295443   -0.0537180   -0.0053706
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0376100   -0.0739042   -0.0013158
12-15 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.0112420   -0.0428762    0.0203922
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0130960   -0.0696216    0.0434296
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0001263   -0.0293518    0.0296044
12-15 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0347560   -0.0254957    0.0950077
12-15 months   ki1114097-CONTENT          PERU                           Female               NA                 0.0056298   -0.0383080    0.0495676
12-15 months   ki1119695-PROBIT           BELARUS                        Female               NA                -0.0034363   -0.2664576    0.2595850
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0022380   -0.0293127    0.0248366
12-15 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0330150   -0.0070770    0.0731071
12-15 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0010974   -0.1002224    0.1024172
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0147969   -0.0161035    0.0456972
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0171218   -0.0521832    0.0179397
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0318034   -0.0951083    0.0315015
15-18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0450380   -0.0778415   -0.0122345
15-18 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0223537   -0.0661488    0.0214414
15-18 months   ki0047075b-MAL-ED          PERU                           Female               NA                -0.0530093   -0.0980343   -0.0079844
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0605315   -0.1139613   -0.0071017
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0564428   -0.1172488    0.0043631
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0238914   -0.0391522    0.0869350
15-18 months   ki1000108-IRC              INDIA                          Female               NA                -0.0105221   -0.0546690    0.0336247
15-18 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0136535   -0.0453158    0.0180089
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0057055   -0.0716426    0.0830535
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0394018   -0.0173737    0.0961773
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0123048   -0.0557036    0.0310939
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0026748   -0.0278888    0.0225391
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0032911   -0.0260870    0.0195049
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0375154   -0.0793774    0.0043465
15-18 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.0168749   -0.0487266    0.0149767
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0109721   -0.0255833    0.0475274
15-18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0659624   -0.1250216   -0.0069032
15-18 months   ki1114097-CONTENT          PERU                           Female               NA                 0.0182482   -0.0274162    0.0639127
15-18 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.2833704   -0.4749254    1.0416661
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0089079   -0.0391730    0.0213572
15-18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0162962   -0.0617659    0.0291735
15-18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0090417   -0.0813057    0.0632224
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0045956   -0.0351813    0.0259900
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0133555   -0.0211875    0.0478985
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0195884   -0.0954034    0.0562265
18-21 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0278087   -0.0601347    0.0045173
18-21 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0191736   -0.0211707    0.0595179
18-21 months   ki0047075b-MAL-ED          PERU                           Female               NA                -0.0246048   -0.0735965    0.0243869
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0103382   -0.0672982    0.0466218
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0471774   -0.1146926    0.0203378
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0288676   -0.0941948    0.0364595
18-21 months   ki1000108-IRC              INDIA                          Female               NA                -0.0345585   -0.0780457    0.0089287
18-21 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0002716   -0.0356097    0.0350664
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0247485   -0.0637540    0.0142570
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0115021   -0.0365070    0.0135029
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0094285   -0.0140745    0.0329315
18-21 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.0006291   -0.0362612    0.0350031
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0291447   -0.0637393    0.0054499
18-21 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0053591   -0.0637264    0.0530081
18-21 months   ki1114097-CONTENT          PERU                           Female               NA                 0.0102686   -0.0320251    0.0525624
18-21 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0884448   -0.8237924    1.0006820
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0004165   -0.0349715    0.0341386
18-21 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0192665   -0.0612847    0.0227516
18-21 months   ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0317599   -0.0772463    0.0137265
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0405744   -0.0775347   -0.0036141
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0421979   -0.0888138    0.0044180
21-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0181256   -0.0466457    0.0103946
21-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0217313   -0.0218505    0.0653131
21-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                -0.0276082   -0.0779232    0.0227068
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0583621   -0.1111242   -0.0056001
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0458864   -0.0200538    0.1118266
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0509704   -0.1155956    0.0136548
21-24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0025351   -0.0489972    0.0439270
21-24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0038362   -0.0404295    0.0327571
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0214456   -0.0601947    0.0173036
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0051706   -0.0209211    0.0312623
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0026277   -0.0271604    0.0219050
21-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.0125179   -0.0474238    0.0223881
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0006027   -0.0469846    0.0481901
21-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0069970   -0.0583826    0.0723767
21-24 months   ki1114097-CONTENT          PERU                           Female               NA                 0.0310395   -0.0353408    0.0974199
21-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.1864021   -0.3078431    0.6806474
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0230595   -0.0610911    0.0149721
21-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0067328   -0.0294402    0.0429058
21-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0078491   -0.0372074    0.0529055
