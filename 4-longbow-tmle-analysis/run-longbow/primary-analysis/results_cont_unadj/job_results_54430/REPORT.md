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

**Outcome Variable:** y_rate_wtkg

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

agecat         studyid                    country                        sex       n_cell       n
-------------  -------------------------  -----------------------------  -------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Female       125     246
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Male         121     246
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Female       108     218
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Male         110     218
0-3 months     ki0047075b-MAL-ED          INDIA                          Female       133     238
0-3 months     ki0047075b-MAL-ED          INDIA                          Male         105     238
0-3 months     ki0047075b-MAL-ED          NEPAL                          Female       109     232
0-3 months     ki0047075b-MAL-ED          NEPAL                          Male         123     232
0-3 months     ki0047075b-MAL-ED          PERU                           Female       130     282
0-3 months     ki0047075b-MAL-ED          PERU                           Male         152     282
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female       140     272
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male         132     272
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       125     237
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         112     237
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female       167     331
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male         164     331
0-3 months     ki1000108-IRC              INDIA                          Female       178     394
0-3 months     ki1000108-IRC              INDIA                          Male         216     394
0-3 months     ki1000109-EE               PAKISTAN                       Female       154     320
0-3 months     ki1000109-EE               PAKISTAN                       Male         166     320
0-3 months     ki1000109-ResPak           PAKISTAN                       Female        39      80
0-3 months     ki1000109-ResPak           PAKISTAN                       Male          41      80
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Female       177     389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Male         212     389
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Female       265     565
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Male         300     565
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Female       305     640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Male         335     640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female       368     725
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male         357     725
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       997    2019
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male        1022    2019
0-3 months     ki1101329-Keneba           GAMBIA                         Female       734    1571
0-3 months     ki1101329-Keneba           GAMBIA                         Male         837    1571
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Female       242     509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Male         267     509
0-3 months     ki1114097-CMIN             BANGLADESH                     Female        17      43
0-3 months     ki1114097-CMIN             BANGLADESH                     Male          26      43
0-3 months     ki1114097-CONTENT          PERU                           Female        13      29
0-3 months     ki1114097-CONTENT          PERU                           Male          16      29
0-3 months     ki1119695-PROBIT           BELARUS                        Female      3883    7546
0-3 months     ki1119695-PROBIT           BELARUS                        Male        3663    7546
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female      3970    8172
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male        4202    8172
0-3 months     ki1135781-COHORTS          GUATEMALA                      Female       184     396
0-3 months     ki1135781-COHORTS          GUATEMALA                      Male         212     396
0-3 months     ki1135781-COHORTS          INDIA                          Female      3148    6667
0-3 months     ki1135781-COHORTS          INDIA                          Male        3519    6667
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Female      4965   10022
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Male        5057   10022
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Female       353     639
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Male         286     639
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Female       120     233
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Male         113     233
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Female       102     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Male         106     208
3-6 months     ki0047075b-MAL-ED          INDIA                          Female       127     230
3-6 months     ki0047075b-MAL-ED          INDIA                          Male         103     230
3-6 months     ki0047075b-MAL-ED          NEPAL                          Female       110     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          Male         123     233
3-6 months     ki0047075b-MAL-ED          PERU                           Female       122     267
3-6 months     ki0047075b-MAL-ED          PERU                           Male         145     267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female       117     243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male         126     243
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       123     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         116     239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female       159     322
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male         163     322
3-6 months     ki1000108-IRC              INDIA                          Female       179     399
3-6 months     ki1000108-IRC              INDIA                          Male         220     399
3-6 months     ki1000109-EE               PAKISTAN                       Female       134     275
3-6 months     ki1000109-EE               PAKISTAN                       Male         141     275
3-6 months     ki1000109-ResPak           PAKISTAN                       Female        73     156
3-6 months     ki1000109-ResPak           PAKISTAN                       Male          83     156
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Female       160     346
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Male         186     346
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Female       239     522
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Male         283     522
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Female       288     601
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Male         313     601
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female       359     702
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male         343     702
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       811    1664
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         853    1664
3-6 months     ki1101329-Keneba           GAMBIA                         Female       671    1399
3-6 months     ki1101329-Keneba           GAMBIA                         Male         728    1399
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Female       225     469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Male         244     469
3-6 months     ki1114097-CMIN             BANGLADESH                     Female        85     184
3-6 months     ki1114097-CMIN             BANGLADESH                     Male          99     184
3-6 months     ki1114097-CONTENT          PERU                           Female       106     214
3-6 months     ki1114097-CONTENT          PERU                           Male         108     214
3-6 months     ki1119695-PROBIT           BELARUS                        Female      3440    6702
3-6 months     ki1119695-PROBIT           BELARUS                        Male        3262    6702
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female      3006    6138
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male        3132    6138
3-6 months     ki1135781-COHORTS          GUATEMALA                      Female       183     394
3-6 months     ki1135781-COHORTS          GUATEMALA                      Male         211     394
3-6 months     ki1135781-COHORTS          INDIA                          Female      3200    6709
3-6 months     ki1135781-COHORTS          INDIA                          Male        3509    6709
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Female      3133    6299
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Male        3166    6299
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Female       233     430
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Male         197     430
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Female       113     224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Male         111     224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Female        95     198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Male         103     198
6-9 months     ki0047075b-MAL-ED          INDIA                          Female       125     230
6-9 months     ki0047075b-MAL-ED          INDIA                          Male         105     230
6-9 months     ki0047075b-MAL-ED          NEPAL                          Female       107     230
6-9 months     ki0047075b-MAL-ED          NEPAL                          Male         123     230
6-9 months     ki0047075b-MAL-ED          PERU                           Female       111     245
6-9 months     ki0047075b-MAL-ED          PERU                           Male         134     245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female       111     231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male         120     231
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       115     225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         110     225
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female       163     325
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male         162     325
6-9 months     ki1000108-IRC              INDIA                          Female       185     410
6-9 months     ki1000108-IRC              INDIA                          Male         225     410
6-9 months     ki1000109-EE               PAKISTAN                       Female       150     301
6-9 months     ki1000109-EE               PAKISTAN                       Male         151     301
6-9 months     ki1000109-ResPak           PAKISTAN                       Female        72     143
6-9 months     ki1000109-ResPak           PAKISTAN                       Male          71     143
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Female       162     350
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Male         188     350
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Female        45      74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Male          29      74
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Female       229     498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Male         269     498
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Female       273     576
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Male         303     576
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female       349     693
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male         344     693
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       741    1496
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         755    1496
6-9 months     ki1101329-Keneba           GAMBIA                         Female       442     905
6-9 months     ki1101329-Keneba           GAMBIA                         Male         463     905
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Female       111     214
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Male         103     214
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Female       227     477
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Male         250     477
6-9 months     ki1114097-CMIN             BANGLADESH                     Female        78     177
6-9 months     ki1114097-CMIN             BANGLADESH                     Male          99     177
6-9 months     ki1114097-CONTENT          PERU                           Female       105     214
6-9 months     ki1114097-CONTENT          PERU                           Male         109     214
6-9 months     ki1119695-PROBIT           BELARUS                        Female      3232    6268
6-9 months     ki1119695-PROBIT           BELARUS                        Male        3036    6268
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female      2801    5570
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male        2769    5570
6-9 months     ki1135781-COHORTS          GUATEMALA                      Female       179     392
6-9 months     ki1135781-COHORTS          GUATEMALA                      Male         213     392
6-9 months     ki1135781-COHORTS          INDIA                          Female      2863    5993
6-9 months     ki1135781-COHORTS          INDIA                          Male        3130    5993
6-9 months     ki1148112-LCNI-5           MALAWI                         Female       283     561
6-9 months     ki1148112-LCNI-5           MALAWI                         Male         278     561
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Female       395     777
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Male         382     777
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Female       112     225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Male         113     225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Female        93     194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Male         101     194
9-12 months    ki0047075b-MAL-ED          INDIA                          Female       122     227
9-12 months    ki0047075b-MAL-ED          INDIA                          Male         105     227
9-12 months    ki0047075b-MAL-ED          NEPAL                          Female       106     229
9-12 months    ki0047075b-MAL-ED          NEPAL                          Male         123     229
9-12 months    ki0047075b-MAL-ED          PERU                           Female       106     235
9-12 months    ki0047075b-MAL-ED          PERU                           Male         129     235
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female       116     233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male         117     233
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       113     224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         111     224
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female       163     327
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male         164     327
9-12 months    ki1000108-IRC              INDIA                          Female       182     403
9-12 months    ki1000108-IRC              INDIA                          Male         221     403
9-12 months    ki1000109-EE               PAKISTAN                       Female       164     325
9-12 months    ki1000109-EE               PAKISTAN                       Male         161     325
9-12 months    ki1000109-ResPak           PAKISTAN                       Female        69     140
9-12 months    ki1000109-ResPak           PAKISTAN                       Male          71     140
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Female       165     371
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Male         206     371
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female        42      72
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male          30      72
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Female       223     481
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Male         258     481
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Female       272     569
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Male         297     569
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female       347     683
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male         336     683
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       527    1083
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         556    1083
9-12 months    ki1101329-Keneba           GAMBIA                         Female       429     883
9-12 months    ki1101329-Keneba           GAMBIA                         Male         454     883
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Female        99     186
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Male          87     186
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Female       219     454
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Male         235     454
9-12 months    ki1114097-CMIN             BANGLADESH                     Female        70     160
9-12 months    ki1114097-CMIN             BANGLADESH                     Male          90     160
9-12 months    ki1114097-CONTENT          PERU                           Female       104     212
9-12 months    ki1114097-CONTENT          PERU                           Male         108     212
9-12 months    ki1119695-PROBIT           BELARUS                        Female      3223    6267
9-12 months    ki1119695-PROBIT           BELARUS                        Male        3044    6267
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female      2624    5054
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male        2430    5054
9-12 months    ki1135781-COHORTS          GUATEMALA                      Female       205     441
9-12 months    ki1135781-COHORTS          GUATEMALA                      Male         236     441
9-12 months    ki1135781-COHORTS          INDIA                          Female      2481    5173
9-12 months    ki1135781-COHORTS          INDIA                          Male        2692    5173
9-12 months    ki1148112-LCNI-5           MALAWI                         Female       189     383
9-12 months    ki1148112-LCNI-5           MALAWI                         Male         194     383
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Female       451     870
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Male         419     870
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Female       108     212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Male         104     212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Female        86     184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Male          98     184
12-15 months   ki0047075b-MAL-ED          INDIA                          Female       122     226
12-15 months   ki0047075b-MAL-ED          INDIA                          Male         104     226
12-15 months   ki0047075b-MAL-ED          NEPAL                          Female       107     230
12-15 months   ki0047075b-MAL-ED          NEPAL                          Male         123     230
12-15 months   ki0047075b-MAL-ED          PERU                           Female       100     224
12-15 months   ki0047075b-MAL-ED          PERU                           Male         124     224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       114     228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         114     228
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       113     226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         113     226
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       163     334
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         171     334
12-15 months   ki1000108-IRC              INDIA                          Female       177     392
12-15 months   ki1000108-IRC              INDIA                          Male         215     392
12-15 months   ki1000109-EE               PAKISTAN                       Female       157     298
12-15 months   ki1000109-EE               PAKISTAN                       Male         141     298
12-15 months   ki1000109-ResPak           PAKISTAN                       Female        39      92
12-15 months   ki1000109-ResPak           PAKISTAN                       Male          53      92
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Female       172     377
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Male         205     377
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female        41      74
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male          33      74
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Female       213     461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Male         248     461
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Female       255     537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Male         282     537
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       337     666
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         329     666
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       401     791
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         390     791
12-15 months   ki1101329-Keneba           GAMBIA                         Female       647    1340
12-15 months   ki1101329-Keneba           GAMBIA                         Male         693    1340
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Female        50      96
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Male          46      96
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Female       220     452
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Male         232     452
12-15 months   ki1114097-CMIN             BANGLADESH                     Female        72     159
12-15 months   ki1114097-CMIN             BANGLADESH                     Male          87     159
12-15 months   ki1114097-CONTENT          PERU                           Female        96     199
12-15 months   ki1114097-CONTENT          PERU                           Male         103     199
12-15 months   ki1119695-PROBIT           BELARUS                        Female       142     282
12-15 months   ki1119695-PROBIT           BELARUS                        Male         140     282
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female      1015    1858
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         843    1858
12-15 months   ki1135781-COHORTS          GUATEMALA                      Female       198     430
12-15 months   ki1135781-COHORTS          GUATEMALA                      Male         232     430
12-15 months   ki1148112-LCNI-5           MALAWI                         Female        61     126
12-15 months   ki1148112-LCNI-5           MALAWI                         Male          65     126
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Female       467     871
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Male         404     871
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Female       111     212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Male         101     212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Female        82     175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Male          93     175
15-18 months   ki0047075b-MAL-ED          INDIA                          Female       123     226
15-18 months   ki0047075b-MAL-ED          INDIA                          Male         103     226
15-18 months   ki0047075b-MAL-ED          NEPAL                          Female       106     227
15-18 months   ki0047075b-MAL-ED          NEPAL                          Male         121     227
15-18 months   ki0047075b-MAL-ED          PERU                           Female        99     214
15-18 months   ki0047075b-MAL-ED          PERU                           Male         115     214
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       111     225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         114     225
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       111     220
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         109     220
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       162     325
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         163     325
15-18 months   ki1000108-IRC              INDIA                          Female       172     383
15-18 months   ki1000108-IRC              INDIA                          Male         211     383
15-18 months   ki1000109-EE               PAKISTAN                       Female       140     277
15-18 months   ki1000109-EE               PAKISTAN                       Male         137     277
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Female       166     362
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Male         196     362
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female        42      72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male          30      72
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Female       207     449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Male         242     449
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Female       254     533
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Male         279     533
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       305     605
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         300     605
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       333     664
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         331     664
15-18 months   ki1101329-Keneba           GAMBIA                         Female       653    1362
15-18 months   ki1101329-Keneba           GAMBIA                         Male         709    1362
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Female       229     477
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Male         248     477
15-18 months   ki1114097-CMIN             BANGLADESH                     Female        69     163
15-18 months   ki1114097-CMIN             BANGLADESH                     Male          94     163
15-18 months   ki1114097-CONTENT          PERU                           Female        94     189
15-18 months   ki1114097-CONTENT          PERU                           Male          95     189
15-18 months   ki1119695-PROBIT           BELARUS                        Female        15      38
15-18 months   ki1119695-PROBIT           BELARUS                        Male          23      38
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       671    1198
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         527    1198
15-18 months   ki1135781-COHORTS          GUATEMALA                      Female       169     380
15-18 months   ki1135781-COHORTS          GUATEMALA                      Male         211     380
15-18 months   ki1148112-LCNI-5           MALAWI                         Female        59     119
15-18 months   ki1148112-LCNI-5           MALAWI                         Male          60     119
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female       451     880
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Male         429     880
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Female       104     209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Male         105     209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Female        78     167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Male          89     167
18-21 months   ki0047075b-MAL-ED          INDIA                          Female       122     226
18-21 months   ki0047075b-MAL-ED          INDIA                          Male         104     226
18-21 months   ki0047075b-MAL-ED          NEPAL                          Female       106     227
18-21 months   ki0047075b-MAL-ED          NEPAL                          Male         121     227
18-21 months   ki0047075b-MAL-ED          PERU                           Female        93     202
18-21 months   ki0047075b-MAL-ED          PERU                           Male         109     202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       114     233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         119     233
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       105     208
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         103     208
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       152     310
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         158     310
18-21 months   ki1000108-IRC              INDIA                          Female       169     380
18-21 months   ki1000108-IRC              INDIA                          Male         211     380
18-21 months   ki1000109-EE               PAKISTAN                       Female       123     255
18-21 months   ki1000109-EE               PAKISTAN                       Male         132     255
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Female       194     422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Male         228     422
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Female       260     542
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Male         282     542
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       271     547
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         276     547
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         5      11
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           6      11
18-21 months   ki1101329-Keneba           GAMBIA                         Female       634    1349
18-21 months   ki1101329-Keneba           GAMBIA                         Male         715    1349
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Female       218     447
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Male         229     447
18-21 months   ki1114097-CMIN             BANGLADESH                     Female        71     165
18-21 months   ki1114097-CMIN             BANGLADESH                     Male          94     165
18-21 months   ki1114097-CONTENT          PERU                           Female        94     183
18-21 months   ki1114097-CONTENT          PERU                           Male          89     183
18-21 months   ki1119695-PROBIT           BELARUS                        Female        12      21
18-21 months   ki1119695-PROBIT           BELARUS                        Male           9      21
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       388     657
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         269     657
18-21 months   ki1135781-COHORTS          GUATEMALA                      Female       175     381
18-21 months   ki1135781-COHORTS          GUATEMALA                      Male         206     381
18-21 months   ki1148112-LCNI-5           MALAWI                         Female       238     455
18-21 months   ki1148112-LCNI-5           MALAWI                         Male         217     455
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female       100     207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male         107     207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Female        76     165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Male          89     165
21-24 months   ki0047075b-MAL-ED          INDIA                          Female       121     226
21-24 months   ki0047075b-MAL-ED          INDIA                          Male         105     226
21-24 months   ki0047075b-MAL-ED          NEPAL                          Female       105     227
21-24 months   ki0047075b-MAL-ED          NEPAL                          Male         122     227
21-24 months   ki0047075b-MAL-ED          PERU                           Female        88     189
21-24 months   ki0047075b-MAL-ED          PERU                           Male         101     189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       115     235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         120     235
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       101     206
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         105     206
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       147     311
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         164     311
21-24 months   ki1000108-IRC              INDIA                          Female       174     389
21-24 months   ki1000108-IRC              INDIA                          Male         215     389
21-24 months   ki1000109-EE               PAKISTAN                       Female        55     106
21-24 months   ki1000109-EE               PAKISTAN                       Male          51     106
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female       188     411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male         223     411
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female       233     485
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male         252     485
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       245     493
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         248     493
21-24 months   ki1101329-Keneba           GAMBIA                         Female       575    1208
21-24 months   ki1101329-Keneba           GAMBIA                         Male         633    1208
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Female       159     343
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Male         184     343
21-24 months   ki1114097-CMIN             BANGLADESH                     Female        57     133
21-24 months   ki1114097-CMIN             BANGLADESH                     Male          76     133
21-24 months   ki1114097-CONTENT          PERU                           Female        24      38
21-24 months   ki1114097-CONTENT          PERU                           Male          14      38
21-24 months   ki1119695-PROBIT           BELARUS                        Female        17      33
21-24 months   ki1119695-PROBIT           BELARUS                        Male          16      33
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       194     303
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         109     303
21-24 months   ki1135781-COHORTS          GUATEMALA                      Female       196     426
21-24 months   ki1135781-COHORTS          GUATEMALA                      Male         230     426
21-24 months   ki1148112-LCNI-5           MALAWI                         Female       200     387
21-24 months   ki1148112-LCNI-5           MALAWI                         Male         187     387


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
* agecat: 0-3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/cc007720-5612-4624-8342-8f30e2385d5a/e0e41e9f-45af-4f19-8388-4a283bf6a697/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cc007720-5612-4624-8342-8f30e2385d5a/e0e41e9f-45af-4f19-8388-4a283bf6a697/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cc007720-5612-4624-8342-8f30e2385d5a/e0e41e9f-45af-4f19-8388-4a283bf6a697/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.8078216    0.7793747   0.8362685
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.9519810    0.9203578   0.9836041
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                1.0043968    0.9551942   1.0535994
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Male                 NA                1.1239425    1.0789830   1.1689019
0-3 months     ki0047075b-MAL-ED          INDIA                          Female               NA                0.7117257    0.6840772   0.7393741
0-3 months     ki0047075b-MAL-ED          INDIA                          Male                 NA                0.8198796    0.7872249   0.8525343
0-3 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                0.8610693    0.8293889   0.8927498
0-3 months     ki0047075b-MAL-ED          NEPAL                          Male                 NA                1.0419176    1.0061433   1.0776919
0-3 months     ki0047075b-MAL-ED          PERU                           Female               NA                0.9019259    0.8705147   0.9333370
0-3 months     ki0047075b-MAL-ED          PERU                           Male                 NA                1.0283540    0.9930134   1.0636945
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.8847546    0.8490800   0.9204291
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                1.0001922    0.9635841   1.0368002
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.8219920    0.7835796   0.8604045
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.9544778    0.9104742   0.9984813
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.6917834    0.6629625   0.7206042
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.8027340    0.7669734   0.8384946
0-3 months     ki1000108-IRC              INDIA                          Female               NA                0.7116676    0.6845832   0.7387520
0-3 months     ki1000108-IRC              INDIA                          Male                 NA                0.8144049    0.7884339   0.8403758
0-3 months     ki1000109-EE               PAKISTAN                       Female               NA                0.6494559    0.6203935   0.6785183
0-3 months     ki1000109-EE               PAKISTAN                       Male                 NA                0.7323757    0.6984114   0.7663399
0-3 months     ki1000109-ResPak           PAKISTAN                       Female               NA                0.7382478    0.6802874   0.7962082
0-3 months     ki1000109-ResPak           PAKISTAN                       Male                 NA                0.8786082    0.8001741   0.9570423
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.7214840    0.6841447   0.7588233
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.8480849    0.8133398   0.8828301
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.7503173    0.7279123   0.7727222
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.8746789    0.8519109   0.8974468
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.8298888    0.8115935   0.8481841
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.9669794    0.9466234   0.9873354
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.8153613    0.7975926   0.8331300
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.9558136    0.9350913   0.9765359
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.8687863    0.8552832   0.8822895
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.9748697    0.9604422   0.9892972
0-3 months     ki1101329-Keneba           GAMBIA                         Female               NA                0.8538894    0.8396251   0.8681537
0-3 months     ki1101329-Keneba           GAMBIA                         Male                 NA                0.9916788    0.9762660   1.0070916
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.7572866    0.7348574   0.7797157
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.8902091    0.8675750   0.9128433
0-3 months     ki1114097-CMIN             BANGLADESH                     Female               NA                0.8119111    0.6964881   0.9273342
0-3 months     ki1114097-CMIN             BANGLADESH                     Male                 NA                0.8864707    0.8115903   0.9613510
0-3 months     ki1114097-CONTENT          PERU                           Female               NA                1.2828768    1.1702806   1.3954730
0-3 months     ki1114097-CONTENT          PERU                           Male                 NA                1.0157097    0.9480419   1.0833776
0-3 months     ki1119695-PROBIT           BELARUS                        Female               NA                0.8599229    0.8386849   0.8811608
0-3 months     ki1119695-PROBIT           BELARUS                        Male                 NA                0.7848955    0.7718071   0.7979839
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.8894646    0.8825617   0.8963676
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                1.0065994    0.9994729   1.0137260
0-3 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                0.7139405    0.6820645   0.7458164
0-3 months     ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.8255837    0.7884377   0.8627296
0-3 months     ki1135781-COHORTS          INDIA                          Female               NA                0.7401217    0.7339209   0.7463225
0-3 months     ki1135781-COHORTS          INDIA                          Male                 NA                0.8721546    0.8661195   0.8781896
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.7891288    0.7837319   0.7945256
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.9109146    0.9058925   0.9159366
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.6770456    0.6413270   0.7127643
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.7967986    0.7610128   0.8325844
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.4606224    0.4386921   0.4825528
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.4895467    0.4645472   0.5145461
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.5478333    0.5086423   0.5870244
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.6074160    0.5597787   0.6550533
3-6 months     ki0047075b-MAL-ED          INDIA                          Female               NA                0.4256938    0.4004968   0.4508909
3-6 months     ki0047075b-MAL-ED          INDIA                          Male                 NA                0.4692991    0.4462900   0.4923082
3-6 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                0.4957127    0.4712603   0.5201651
3-6 months     ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.5449715    0.5141992   0.5757437
3-6 months     ki0047075b-MAL-ED          PERU                           Female               NA                0.4788739    0.4517954   0.5059524
3-6 months     ki0047075b-MAL-ED          PERU                           Male                 NA                0.5145222    0.4883751   0.5406693
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.4627278    0.4287473   0.4967082
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.4680878    0.4295221   0.5066536
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.4418778    0.4077166   0.4760389
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.4733020    0.4397008   0.5069031
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.4456803    0.4209733   0.4703873
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.5039097    0.4760631   0.5317562
3-6 months     ki1000108-IRC              INDIA                          Female               NA                0.4402529    0.4158109   0.4646949
3-6 months     ki1000108-IRC              INDIA                          Male                 NA                0.4870788    0.4625351   0.5116225
3-6 months     ki1000109-EE               PAKISTAN                       Female               NA                0.4535378    0.4259624   0.4811132
3-6 months     ki1000109-EE               PAKISTAN                       Male                 NA                0.4938127    0.4680439   0.5195815
3-6 months     ki1000109-ResPak           PAKISTAN                       Female               NA                0.4659963    0.4263978   0.5055948
3-6 months     ki1000109-ResPak           PAKISTAN                       Male                 NA                0.4925734    0.4537577   0.5313890
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.3947768    0.3704392   0.4191144
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.4464314    0.4023912   0.4904715
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.4242052    0.3992397   0.4491708
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.4891181    0.4660340   0.5122023
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.4754658    0.4555880   0.4953435
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.5015706    0.4845459   0.5185953
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.4802850    0.4658490   0.4947210
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.5166527    0.5000098   0.5332956
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.4107251    0.3983972   0.4230530
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.4280548    0.4158971   0.4402125
3-6 months     ki1101329-Keneba           GAMBIA                         Female               NA                0.4335579    0.4208252   0.4462906
3-6 months     ki1101329-Keneba           GAMBIA                         Male                 NA                0.4598132    0.4462196   0.4734068
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.4757756    0.4565735   0.4949778
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.5177474    0.4983149   0.5371800
3-6 months     ki1114097-CMIN             BANGLADESH                     Female               NA                0.4160512    0.3808966   0.4512058
3-6 months     ki1114097-CMIN             BANGLADESH                     Male                 NA                0.4764881    0.4467125   0.5062636
3-6 months     ki1114097-CONTENT          PERU                           Female               NA                0.5971445    0.5641023   0.6301868
3-6 months     ki1114097-CONTENT          PERU                           Male                 NA                0.5797393    0.5534249   0.6060537
3-6 months     ki1119695-PROBIT           BELARUS                        Female               NA                0.6840014    0.6693584   0.6986443
3-6 months     ki1119695-PROBIT           BELARUS                        Male                 NA                0.6458403    0.6282965   0.6633841
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.4660025    0.4595735   0.4724314
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.4901910    0.4838482   0.4965339
3-6 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                0.4491155    0.4260462   0.4721848
3-6 months     ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.4485046    0.4252420   0.4717673
3-6 months     ki1135781-COHORTS          INDIA                          Female               NA                0.4554621    0.4501286   0.4607955
3-6 months     ki1135781-COHORTS          INDIA                          Male                 NA                0.5080122    0.5027111   0.5133132
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.4296775    0.4233206   0.4360344
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.4612466    0.4554757   0.4670174
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.4344652    0.3980338   0.4708967
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.4491647    0.4244942   0.4738351
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.2277942    0.2075566   0.2480317
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.2581876    0.2377404   0.2786347
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.3756678    0.3399297   0.4114060
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.3900507    0.3523661   0.4277353
6-9 months     ki0047075b-MAL-ED          INDIA                          Female               NA                0.2193551    0.1970805   0.2416297
6-9 months     ki0047075b-MAL-ED          INDIA                          Male                 NA                0.2466659    0.2278145   0.2655173
6-9 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                0.2682334    0.2501234   0.2863434
6-9 months     ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.2707389    0.2487240   0.2927538
6-9 months     ki0047075b-MAL-ED          PERU                           Female               NA                0.2567234    0.2334688   0.2799781
6-9 months     ki0047075b-MAL-ED          PERU                           Male                 NA                0.2652616    0.2445189   0.2860043
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.2580947    0.2288277   0.2873617
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.2605851    0.2304234   0.2907469
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2568072    0.2255730   0.2880415
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.2190751    0.1825369   0.2556133
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.2527339    0.2286713   0.2767965
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.2664862    0.2452109   0.2877616
6-9 months     ki1000108-IRC              INDIA                          Female               NA                0.2511002    0.2328138   0.2693865
6-9 months     ki1000108-IRC              INDIA                          Male                 NA                0.2721119    0.2518862   0.2923376
6-9 months     ki1000109-EE               PAKISTAN                       Female               NA                0.2417082    0.2210178   0.2623985
6-9 months     ki1000109-EE               PAKISTAN                       Male                 NA                0.2643433    0.2432379   0.2854487
6-9 months     ki1000109-ResPak           PAKISTAN                       Female               NA                0.2068860    0.1722846   0.2414874
6-9 months     ki1000109-ResPak           PAKISTAN                       Male                 NA                0.2221107    0.1867714   0.2574499
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.2552761    0.2156345   0.2949177
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.2514584    0.2211539   0.2817630
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.2208057    0.1787314   0.2628800
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.1592093    0.1122535   0.2061652
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.2314897    0.2119515   0.2510279
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.2403202    0.2211107   0.2595296
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.2449801    0.2245717   0.2653885
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.2529362    0.2392833   0.2665891
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.2585167    0.2449916   0.2720419
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.2766333    0.2604394   0.2928273
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2596854    0.2469658   0.2724050
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.2535031    0.2411416   0.2658645
6-9 months     ki1101329-Keneba           GAMBIA                         Female               NA                0.1938985    0.1775884   0.2102086
6-9 months     ki1101329-Keneba           GAMBIA                         Male                 NA                0.2124336    0.1943115   0.2305558
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.2480643    0.2259962   0.2701324
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.2434507    0.2150975   0.2718039
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1791382    0.1598929   0.1983834
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1949971    0.1800521   0.2099421
6-9 months     ki1114097-CMIN             BANGLADESH                     Female               NA                0.2098041    0.1783729   0.2412353
6-9 months     ki1114097-CMIN             BANGLADESH                     Male                 NA                0.2390145    0.2128790   0.2651501
6-9 months     ki1114097-CONTENT          PERU                           Female               NA                0.3282763    0.2997180   0.3568347
6-9 months     ki1114097-CONTENT          PERU                           Male                 NA                0.3127586    0.2862492   0.3392679
6-9 months     ki1119695-PROBIT           BELARUS                        Female               NA                0.4782467    0.4635217   0.4929716
6-9 months     ki1119695-PROBIT           BELARUS                        Male                 NA                0.4755833    0.4588066   0.4923599
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.2651279    0.2586022   0.2716536
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.2514998    0.2453182   0.2576815
6-9 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                0.2042189    0.1823649   0.2260729
6-9 months     ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.2036521    0.1838854   0.2234189
6-9 months     ki1135781-COHORTS          INDIA                          Female               NA                0.2756960    0.2701566   0.2812354
6-9 months     ki1135781-COHORTS          INDIA                          Male                 NA                0.2853351    0.2797550   0.2909152
6-9 months     ki1148112-LCNI-5           MALAWI                         Female               NA                0.2925036    0.2737273   0.3112799
6-9 months     ki1148112-LCNI-5           MALAWI                         Male                 NA                0.2759975    0.2595359   0.2924591
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.2208405    0.2095953   0.2320856
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.2418155    0.2250588   0.2585722
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1726447    0.1542853   0.1910041
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1734211    0.1531900   0.1936522
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.2844209    0.2415979   0.3272440
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.2847501    0.2380946   0.3314056
9-12 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.1827830    0.1627227   0.2028434
9-12 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1742672    0.1548063   0.1937280
9-12 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1909973    0.1734696   0.2085250
9-12 months    ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1816785    0.1595497   0.2038073
9-12 months    ki0047075b-MAL-ED          PERU                           Female               NA                0.2019221    0.1791339   0.2247104
9-12 months    ki0047075b-MAL-ED          PERU                           Male                 NA                0.1756140    0.1551683   0.1960597
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.2008320    0.1691661   0.2324980
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.2283389    0.1977567   0.2589211
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1712124    0.1446807   0.1977442
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1624873    0.1318745   0.1931000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.2127199    0.1902703   0.2351696
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.2119441    0.1851285   0.2387597
9-12 months    ki1000108-IRC              INDIA                          Female               NA                0.2062808    0.1870170   0.2255446
9-12 months    ki1000108-IRC              INDIA                          Male                 NA                0.2189427    0.1984328   0.2394526
9-12 months    ki1000109-EE               PAKISTAN                       Female               NA                0.2424826    0.2185333   0.2664319
9-12 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.2519991    0.2290435   0.2749548
9-12 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.1180571    0.0879298   0.1481843
9-12 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.0746515    0.0272034   0.1220997
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.2018232    0.1662589   0.2373875
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.2262924    0.2176365   0.2349483
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1687151    0.1087375   0.2286926
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.1315915    0.0825904   0.1805926
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.1575010    0.1374785   0.1775234
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1689114    0.1516064   0.1862164
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.1744390    0.1615755   0.1873024
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1803639    0.1669165   0.1938114
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1978705    0.1838593   0.2118817
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.1978184    0.1824167   0.2132201
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2146958    0.2001151   0.2292764
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1962474    0.1823228   0.2101720
9-12 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.1703178    0.1543951   0.1862405
9-12 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.1452123    0.1283833   0.1620412
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.2043102    0.1776506   0.2309697
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.2110367    0.1784484   0.2436249
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1281014    0.1087581   0.1474448
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1587982    0.1423873   0.1752091
9-12 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.1264938    0.0928719   0.1601157
9-12 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1960357    0.1663606   0.2257109
9-12 months    ki1114097-CONTENT          PERU                           Female               NA                0.2217668    0.1954621   0.2480716
9-12 months    ki1114097-CONTENT          PERU                           Male                 NA                0.2267167    0.2017538   0.2516796
9-12 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.3754846    0.3511611   0.3998081
9-12 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.3677881    0.3396823   0.3958938
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1869219    0.1805303   0.1933135
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1726863    0.1662866   0.1790860
9-12 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.1418544    0.1257280   0.1579808
9-12 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.1490927    0.1314867   0.1666987
9-12 months    ki1135781-COHORTS          INDIA                          Female               NA                0.2202409    0.2145158   0.2259659
9-12 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.2187069    0.2129035   0.2245103
9-12 months    ki1148112-LCNI-5           MALAWI                         Female               NA                0.2101255    0.1871879   0.2330631
9-12 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                0.1935331    0.1716660   0.2154001
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.1451818    0.1354039   0.1549598
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.1383548    0.1247235   0.1519861
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1426226    0.1209243   0.1643209
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1278153    0.1049712   0.1506594
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.2022232    0.1661979   0.2382484
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.2171899    0.1830011   0.2513787
12-15 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.1707611    0.1482801   0.1932421
12-15 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1777041    0.1554403   0.1999679
12-15 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1481966    0.1281881   0.1682050
12-15 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1566062    0.1309158   0.1822966
12-15 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.1383945    0.1123006   0.1644884
12-15 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.1444362    0.1228480   0.1660244
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.1913423    0.1507071   0.2319775
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.1875068    0.1575497   0.2174638
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1771020    0.1463770   0.2078271
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1417859    0.1033751   0.1801967
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1609771    0.1414628   0.1804914
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1404482    0.1210342   0.1598623
12-15 months   ki1000108-IRC              INDIA                          Female               NA                0.1869429    0.1679018   0.2059839
12-15 months   ki1000108-IRC              INDIA                          Male                 NA                0.1781907    0.1609300   0.1954514
12-15 months   ki1000109-EE               PAKISTAN                       Female               NA                0.1206175    0.0955840   0.1456511
12-15 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.1535044    0.1281917   0.1788171
12-15 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.0902401    0.0315579   0.1489222
12-15 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.1836438    0.1179161   0.2493715
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.1627327    0.1448271   0.1806382
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.1499075    0.1411062   0.1587087
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1653554    0.1272163   0.2034944
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.2085256    0.1656898   0.2513613
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.1331955    0.1165468   0.1498443
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1281965    0.1110220   0.1453711
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.1753758    0.1588706   0.1918809
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1842431    0.1677033   0.2007830
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1679681    0.1523067   0.1836296
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.1600574    0.1460019   0.1741128
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1843608    0.1679852   0.2007365
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1637946    0.1482643   0.1793249
12-15 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.1848987    0.1717993   0.1979981
12-15 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.1864579    0.1719739   0.2009419
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.1852725    0.1439347   0.2266103
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.2107399    0.1758450   0.2456348
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1649186    0.1448560   0.1849811
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1789246    0.1618811   0.1959680
12-15 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.1739382    0.1427407   0.2051356
12-15 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1712670    0.1456090   0.1969251
12-15 months   ki1114097-CONTENT          PERU                           Female               NA                0.1891079    0.1601824   0.2180333
12-15 months   ki1114097-CONTENT          PERU                           Male                 NA                0.1735705    0.1497804   0.1973605
12-15 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.1991457    0.0681126   0.3301789
12-15 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.2570987    0.1129740   0.4012233
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1558441    0.1448995   0.1667887
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1427992    0.1312678   0.1543305
12-15 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.1408877    0.1228666   0.1589087
12-15 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.1575431    0.1390330   0.1760533
12-15 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.1717723    0.1166616   0.2268830
12-15 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.1330242    0.0944921   0.1715563
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.1274068    0.1133101   0.1415035
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.1233339    0.1110617   0.1356062
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1411409    0.1214308   0.1608509
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1445986    0.1200298   0.1691674
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.2131889    0.1736432   0.2527346
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.1948056    0.1589039   0.2307073
15-18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.1730959    0.1531044   0.1930873
15-18 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1500104    0.1277693   0.1722514
15-18 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1546339    0.1326534   0.1766144
15-18 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1900105    0.1680173   0.2120036
15-18 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.1493801    0.1187754   0.1799848
15-18 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.1434417    0.1202615   0.1666218
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.2510257    0.2085785   0.2934730
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.1969166    0.1597862   0.2340470
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1376989    0.1024609   0.1729368
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1479993    0.1186725   0.1773260
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1480658    0.1318685   0.1642632
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1562759    0.1331126   0.1794392
15-18 months   ki1000108-IRC              INDIA                          Female               NA                0.1605528    0.1413439   0.1797616
15-18 months   ki1000108-IRC              INDIA                          Male                 NA                0.1603819    0.1413739   0.1793899
15-18 months   ki1000109-EE               PAKISTAN                       Female               NA                0.0927805    0.0724028   0.1131581
15-18 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.0850147    0.0650600   0.1049693
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.1498127    0.1406429   0.1589824
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.1392076    0.1121132   0.1663020
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1756985    0.1263536   0.2250435
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.1765648    0.1361394   0.2169903
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.1541853    0.1338999   0.1744707
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1519569    0.1312965   0.1726173
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.1522069    0.1354335   0.1689802
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1601246    0.1436348   0.1766145
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1595716    0.1442960   0.1748473
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.1628500    0.1483528   0.1773472
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1781096    0.1582320   0.1979872
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1624163    0.1420773   0.1827554
15-18 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.1616293    0.1475995   0.1756590
15-18 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.1549723    0.1410722   0.1688724
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.2412176    0.2200218   0.2624135
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.2288232    0.2070034   0.2506431
15-18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.1462945    0.1164894   0.1760997
15-18 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1240800    0.0919320   0.1562279
15-18 months   ki1114097-CONTENT          PERU                           Female               NA                0.1708765    0.1429423   0.1988106
15-18 months   ki1114097-CONTENT          PERU                           Male                 NA                0.1718204    0.1479585   0.1956822
15-18 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.2644502    0.1954261   0.3334742
15-18 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.2079095    0.1016872   0.3141319
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1302534    0.1157470   0.1447598
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1381474    0.1226375   0.1536573
15-18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.1247867    0.1014633   0.1481102
15-18 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.1161235    0.0951554   0.1370916
15-18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.1893507    0.1378153   0.2408860
15-18 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.1640835    0.1270505   0.2011166
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.1576921    0.1433641   0.1720202
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.1549062    0.1423191   0.1674932
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1510778    0.1288676   0.1732880
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1344311    0.1090281   0.1598342
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.1524587    0.1215138   0.1834035
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.1678273    0.1316483   0.2040063
18-21 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.1837648    0.1660952   0.2014344
18-21 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1596473    0.1349694   0.1843252
18-21 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1599412    0.1356387   0.1842437
18-21 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1366006    0.1113914   0.1618098
18-21 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.1421192    0.1122395   0.1719990
18-21 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.1781568    0.1543908   0.2019228
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.1783763    0.1448830   0.2118697
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.1758378    0.1349196   0.2167560
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1541093    0.1137130   0.1945056
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1384477    0.1097009   0.1671945
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1409713    0.1221619   0.1597808
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1297121    0.1060753   0.1533489
18-21 months   ki1000108-IRC              INDIA                          Female               NA                0.1694421    0.1485106   0.1903737
18-21 months   ki1000108-IRC              INDIA                          Male                 NA                0.1505988    0.1333702   0.1678275
18-21 months   ki1000109-EE               PAKISTAN                       Female               NA                0.1385376    0.1137506   0.1633246
18-21 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.1213108    0.1013486   0.1412730
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.1813991    0.1556155   0.2071827
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1648154    0.1446520   0.1849788
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.1276624    0.1124402   0.1428845
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1369375    0.1200175   0.1538575
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1353614    0.1208765   0.1498463
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.1498282    0.1340707   0.1655856
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.3325045    0.1194055   0.5456035
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0494510   -0.2200815   0.3189835
18-21 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.1465264    0.1306290   0.1624238
18-21 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.1600849    0.1460172   0.1741527
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1530833    0.1300933   0.1760732
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1322197    0.1113315   0.1531079
18-21 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.1711960    0.1381213   0.2042708
18-21 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1545016    0.1211529   0.1878504
18-21 months   ki1114097-CONTENT          PERU                           Female               NA                0.1873501    0.1600146   0.2146855
18-21 months   ki1114097-CONTENT          PERU                           Male                 NA                0.1971646    0.1713913   0.2229379
18-21 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.1160230   -0.3265949   0.5586408
18-21 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.2830871   -0.0848736   0.6510478
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1199902    0.0978740   0.1421065
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1223420    0.0956384   0.1490456
18-21 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.1343829    0.1131033   0.1556624
18-21 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.1604784    0.1379518   0.1830050
18-21 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.1883236    0.1612887   0.2153585
18-21 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.1731405    0.1433579   0.2029230
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1600054    0.1381636   0.1818473
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1447418    0.1238730   0.1656106
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.1447924    0.1076284   0.1819565
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.1423779    0.1129364   0.1718194
21-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.1580426    0.1395177   0.1765676
21-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1542279    0.1356035   0.1728524
21-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1593601    0.1324921   0.1862281
21-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1773733    0.1485202   0.2062264
21-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.1884069    0.1576154   0.2191985
21-24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.1754205    0.1501010   0.2007401
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.1877294    0.1539287   0.2215302
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.1875858    0.1542104   0.2209613
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1155947    0.0775604   0.1536291
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1660627    0.1265433   0.2055822
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1559549    0.1341524   0.1777573
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1417213    0.1239221   0.1595205
21-24 months   ki1000108-IRC              INDIA                          Female               NA                0.1727018    0.1517114   0.1936922
21-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.1818066    0.1634850   0.2001283
21-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.1999693    0.1662828   0.2336557
21-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.1862606    0.1578414   0.2146797
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.1418058    0.1181038   0.1655077
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1421140    0.1224889   0.1617391
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.1380524    0.1202874   0.1558174
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1455932    0.1309542   0.1602321
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1738689    0.1568194   0.1909184
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.1762169    0.1577904   0.1946434
21-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.1627902    0.1482087   0.1773716
21-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.1710087    0.1559206   0.1860968
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1796309    0.1427623   0.2164994
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1743863    0.1418763   0.2068964
21-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.1707548    0.1327918   0.2087177
21-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1630657    0.1326899   0.1934414
21-24 months   ki1114097-CONTENT          PERU                           Female               NA                0.2066273    0.1426358   0.2706188
21-24 months   ki1114097-CONTENT          PERU                           Male                 NA                0.2030105    0.1273966   0.2786243
21-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.2171925    0.1076866   0.3266985
21-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.3293464    0.1623908   0.4963020
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1295569    0.0967073   0.1624066
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0726722    0.0224153   0.1229292
21-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.1512344    0.1308088   0.1716599
21-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.1781291    0.1579659   0.1982922
21-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.1514936    0.1151875   0.1877997
21-24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.2089269    0.1700566   0.2477972


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8787293    0.8556572   0.9018013
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0647180    1.0304826   1.0989534
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7594406    0.7372368   0.7816445
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9569501    0.9301779   0.9837223
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.9700715    0.9450349   0.9951081
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9407758    0.9143190   0.9672326
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013    0.8543673   0.9148354
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7467559    0.7230662   0.7704455
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                0.7679906    0.7485485   0.7874326
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.6924705    0.6695203   0.7154208
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                0.8101825    0.7586697   0.8616953
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7904799    0.7612204   0.8197394
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.8163500    0.7995330   0.8331670
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9016472    0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8845220    0.8699746   0.8990694
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9224848    0.9123284   0.9326411
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.9273010    0.9161920   0.9384101
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8270122    0.8100415   0.8439828
0-3 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8569936    0.7917724   0.9222149
0-3 months     ki1114097-CONTENT          PERU                           NA                   NA                1.1354743    1.0557030   1.2152455
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.8235029    0.8073992   0.8396066
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9496947    0.9445678   0.9548217
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7737091    0.7483126   0.7991055
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.8098118    0.8052049   0.8144186
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8505806    0.8465295   0.8546318
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.7306440    0.7043689   0.7569191
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4746501    0.4579760   0.4913241
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.5781976    0.5469697   0.6094254
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4452214    0.4276818   0.4627610
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.5217163    0.5015380   0.5418946
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.4982335    0.4792789   0.5171881
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4655071    0.4396676   0.4913465
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297    0.4330666   0.4811928
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4751567    0.4562440   0.4940693
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                0.4660717    0.4485044   0.4836390
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.4741878    0.4551933   0.4931824
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4801367    0.4523118   0.5079615
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4225449    0.4096930   0.4353968
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4593975    0.4422221   0.4765729
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4890611    0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4980544    0.4869892   0.5091196
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4196086    0.4109417   0.4282755
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.4472204    0.4378499   0.4565908
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4976117    0.4838029   0.5114205
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                0.4485689    0.4253428   0.4717949
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                0.5883606    0.5672514   0.6094698
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.6654276    0.6499538   0.6809014
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4783450    0.4738196   0.4828705
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4487884    0.4323564   0.4652203
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.4829473    0.4791324   0.4867622
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4455447    0.4412571   0.4498323
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4411996    0.4183110   0.4640882
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2428552    0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.3831499    0.3570859   0.4092138
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2318230    0.2168658   0.2467803
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2695733    0.2550952   0.2840514
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.2613933    0.2459015   0.2768851
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2593884    0.2383337   0.2804432
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604    0.2142762   0.2624446
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2595889    0.2435057   0.2756721
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                0.2626310    0.2487635   0.2764985
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.2530633    0.2382291   0.2678975
6-9 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2144451    0.1896874   0.2392029
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2532254    0.2418755   0.2645754
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1966666    0.1644047   0.2289285
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2362596    0.2225288   0.2499904
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653    0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2675097    0.2569518   0.2780676
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2565653    0.2476975   0.2654331
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.2033811    0.1911428   0.2156195
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2458437    0.2280295   0.2636580
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1874500    0.1753777   0.1995223
6-9 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2261421    0.2058904   0.2463939
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                0.3203724    0.3008854   0.3398595
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.4769566    0.4617272   0.4921860
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2583530    0.2538536   0.2628524
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2039109    0.1892499   0.2185720
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.2807303    0.2767918   0.2846687
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2843241    0.2718050   0.2968431
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2311525    0.2209713   0.2413338
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1730346    0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2845923    0.2527896   0.3163950
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1788440    0.1647878   0.1929001
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1859920    0.1715885   0.2003955
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1874806    0.1721694   0.2027919
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2146445    0.1925652   0.2367238
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888    0.1466505   0.1871271
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2123308    0.1948351   0.2298265
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                0.2132244    0.1989917   0.2274571
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2471969    0.2305945   0.2637993
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.0960443    0.0675395   0.1245490
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2154099    0.2029278   0.2278919
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1532469    0.1125153   0.1939785
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1636213    0.1504841   0.1767585
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316    0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1978449    0.1874487   0.2082411
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2052246    0.1951376   0.2153116
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1574096    0.1457735   0.1690458
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2074564    0.1866255   0.2282874
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1439907    0.1312935   0.1566879
9-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1656112    0.1427254   0.1884969
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2242885    0.2061680   0.2424089
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.3717463    0.3460555   0.3974370
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800773    0.1755475   0.1846071
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1457280    0.1336830   0.1577729
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2194426    0.2153609   0.2235243
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2017210    0.1858623   0.2175796
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1418939    0.1335225   0.1502652
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1353586    0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2101946    0.1853699   0.2350192
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1739561    0.1580675   0.1898447
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1526939    0.1360899   0.1692979
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1417390    0.1250455   0.1584325
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1894245    0.1641813   0.2146678
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440    0.1347422   0.1841458
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1504668    0.1366572   0.1642764
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.1821426    0.1693469   0.1949383
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1361781    0.1182651   0.1540911
12-15 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1440487    0.0977615   0.1903360
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1557588    0.1490309   0.1624867
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1846069    0.1556992   0.2135147
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1305063    0.1184818   0.1425307
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324    0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1640603    0.1535198   0.1746008
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1742207    0.1629042   0.1855373
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1857051    0.1759013   0.1955089
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1974757    0.1700956   0.2248557
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1721075    0.1589812   0.1852337
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1724766    0.1525587   0.1923945
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1810659    0.1624244   0.1997074
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2279167    0.1049452   0.3508882
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1499254    0.1419751   0.1578757
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1498739    0.1368657   0.1628820
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1517832    0.1183392   0.1852272
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1255177    0.1155109   0.1355245
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427882    0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2034195    0.1767881   0.2300509
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1625746    0.1476285   0.1775207
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1734910    0.1577405   0.1892416
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1461889    0.1273267   0.1650511
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2236104    0.1952383   0.2519826
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022    0.1198308   0.1657736
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1521835    0.1380291   0.1663379
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.1604586    0.1468913   0.1740260
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0889396    0.0746678   0.1032114
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1440707    0.1288559   0.1592855
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1760595    0.1427086   0.2094103
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1529843    0.1384423   0.1675263
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1563514    0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1611973    0.1506617   0.1717329
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1702866    0.1560553   0.1845179
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1581639    0.1482830   0.1680449
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2347736    0.2195239   0.2500233
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1334837    0.1109948   0.1559725
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1713509    0.1529966   0.1897053
15-18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2302282    0.1619189   0.2985375
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1337260    0.1231139   0.1443380
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1199764    0.1043771   0.1355756
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1766109    0.1448823   0.2083395
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1563340    0.1467542   0.1659137
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427146    0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1606491    0.1365241   0.1847741
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1726665    0.1577530   0.1875800
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1474997    0.1298460   0.1651535
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1615652    0.1425950   0.1805355
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1770799    0.1505223   0.2036374
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538    0.1214615   0.1712461
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1352327    0.1200477   0.1504178
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.1589791    0.1455977   0.1723606
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1296202    0.1137821   0.1454583
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1724392    0.1563209   0.1885575
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1324882    0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1426609    0.1319333   0.1533885
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1781117   -0.0184270   0.3746504
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1537127    0.1431511   0.1642744
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1423948    0.1268654   0.1579242
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1616853    0.1379134   0.1854572
18-21 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1921232    0.1732877   0.2109588
18-21 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1876219   -0.1088335   0.4840773
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1209531    0.1039197   0.1379866
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1484923    0.1328210   0.1641635
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1810824    0.1610270   0.2011378
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1521155    0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1434900    0.1201394   0.1668407
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1562703    0.1431057   0.1694349
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1690412    0.1491342   0.1889482
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1814671    0.1617319   0.2012023
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1876561    0.1639063   0.2114059
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187    0.1136523   0.1689851
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1484491    0.1344875   0.1624106
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1777340    0.1639174   0.1915507
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1933736    0.1711433   0.2156039
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1419730    0.1267767   0.1571693
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1419705    0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1750500    0.1624914   0.1876087
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1670967    0.1565736   0.1776198
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1768175    0.1523979   0.2012370
21-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1663610    0.1425615   0.1901605
21-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2052948    0.1562051   0.2543845
21-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2715702    0.1714986   0.3716418
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1090935    0.0811882   0.1369987
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1657550    0.1513172   0.1801928
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1792456    0.1525432   0.2059480


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.1441594    0.1016241    0.1866947
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.1195457    0.0528955    0.1861959
0-3 months     ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Male                 Female             0.1081540    0.0653665    0.1509414
0-3 months     ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.1808483    0.1330628    0.2286338
0-3 months     ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Male                 Female             0.1264281    0.0791458    0.1737104
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female             0.1154376    0.0643218    0.1665534
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.1324857    0.0740749    0.1908966
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.1109507    0.0650218    0.1568795
0-3 months     ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Male                 Female             0.1027373    0.0652133    0.1402614
0-3 months     ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Male                 Female             0.0829197    0.0382186    0.1276209
0-3 months     ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       Male                 Female             0.1403604    0.0428345    0.2378864
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.1266009    0.0784967    0.1747052
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.1243616    0.0924185    0.1563047
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.1370906    0.1097212    0.1644599
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.1404523    0.1131550    0.1677495
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.1060833    0.0863226    0.1258441
0-3 months     ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Male                 Female             0.1377894    0.1167889    0.1587900
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.1329225    0.1010576    0.1647874
0-3 months     ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0745595   -0.0630251    0.2121442
0-3 months     ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Male                 Female            -0.2671671   -0.3985324   -0.1358018
0-3 months     ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Male                 Female            -0.0750274   -0.0910020   -0.0590528
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             0.1171348    0.1072131    0.1270564
0-3 months     ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.1116432    0.0626953    0.1605911
0-3 months     ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Male                 Female             0.1320328    0.1233800    0.1406857
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female             0.1217858    0.1148831    0.1286885
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.1197530    0.0694224    0.1700836
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0289242   -0.0043310    0.0621795
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.0595826   -0.0021041    0.1212693
3-6 months     ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Male                 Female             0.0436053    0.0094833    0.0777273
3-6 months     ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0492587    0.0099542    0.0885633
3-6 months     ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Male                 Female             0.0356483   -0.0019936    0.0732903
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female             0.0053600   -0.0460402    0.0567603
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0314242   -0.0164926    0.0793410
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.0582294    0.0210022    0.0954566
3-6 months     ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Male                 Female             0.0468258    0.0121876    0.0814640
3-6 months     ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Male                 Female             0.0402749    0.0025332    0.0780165
3-6 months     ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       Male                 Female             0.0265771   -0.0288729    0.0820270
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.0516546   -0.0161402    0.1194493
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.0649129    0.0309106    0.0989152
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0261048   -0.0000670    0.0522766
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0363677    0.0143362    0.0583991
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0173297    0.0000154    0.0346440
3-6 months     ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Male                 Female             0.0262553    0.0076299    0.0448808
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.0419718    0.0146525    0.0692911
3-6 months     ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0604369    0.0143670    0.1065067
3-6 months     ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Male                 Female            -0.0174052   -0.0596455    0.0248350
3-6 months     ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Male                 Female            -0.0381611   -0.0483972   -0.0279249
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             0.0241885    0.0151573    0.0332198
3-6 months     ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.0006109   -0.0333728    0.0321511
3-6 months     ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Male                 Female             0.0525501    0.0450303    0.0600698
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female             0.0315691    0.0230081    0.0401300
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.0146994   -0.0287483    0.0581471
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0303934    0.0016246    0.0591622
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.0143829   -0.0375531    0.0663189
6-9 months     ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          Male                 Female             0.0273108   -0.0018702    0.0564919
6-9 months     ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0025055   -0.0260011    0.0310122
6-9 months     ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           Male                 Female             0.0085382   -0.0226234    0.0396997
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female             0.0024905   -0.0395367    0.0445177
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0377321   -0.0858010    0.0103368
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.0137523   -0.0183670    0.0458716
6-9 months     ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          Male                 Female             0.0210117   -0.0062549    0.0482784
6-9 months     ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       Male                 Female             0.0226352   -0.0069203    0.0521907
6-9 months     ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       Male                 Female             0.0152247   -0.0342336    0.0646829
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            -0.0038177   -0.0701505    0.0625152
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            -0.0615964   -0.1246448    0.0014520
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.0088305   -0.0185692    0.0362302
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0079561   -0.0165980    0.0325102
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0181166   -0.0029825    0.0392157
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0061823   -0.0239191    0.0115544
6-9 months     ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         Male                 Female             0.0185351   -0.0058459    0.0429161
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            -0.0046136   -0.0405428    0.0313155
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.0158589   -0.0085077    0.0402256
6-9 months     ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0292104   -0.0116673    0.0700881
6-9 months     ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           Male                 Female            -0.0155178   -0.0544835    0.0234480
6-9 months     ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        Male                 Female            -0.0026634   -0.0106161    0.0052893
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0136281   -0.0226168   -0.0046393
6-9 months     ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.0005668   -0.0300341    0.0289005
6-9 months     ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          Male                 Female             0.0096391    0.0017763    0.0175018
6-9 months     ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         Male                 Female            -0.0165061   -0.0414768    0.0084646
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.0209751    0.0007268    0.0412233
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0007764   -0.0265433    0.0280961
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.0003292   -0.0629997    0.0636581
9-12 months    ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.0085159   -0.0364648    0.0194331
9-12 months    ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          Male                 Female            -0.0093188   -0.0375483    0.0189107
9-12 months    ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           Male                 Female            -0.0263082   -0.0569240    0.0043077
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female             0.0275069   -0.0165159    0.0715296
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0087252   -0.0492353    0.0317850
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.0007759   -0.0357482    0.0341964
9-12 months    ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          Male                 Female             0.0126619   -0.0154762    0.0408000
9-12 months    ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       Male                 Female             0.0095165   -0.0236577    0.0426908
9-12 months    ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            -0.0434055   -0.0996103    0.0127993
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.0244692   -0.0173949    0.0663332
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            -0.0371236   -0.1145730    0.0403258
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.0114104   -0.0150539    0.0378747
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0059250   -0.0126842    0.0245341
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            -0.0000521   -0.0208734    0.0207692
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0184483   -0.0386099    0.0017132
9-12 months    ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0251055   -0.0482733   -0.0019377
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female             0.0067265   -0.0353772    0.0488302
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.0306968    0.0053298    0.0560638
9-12 months    ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0695419    0.0246972    0.1143866
9-12 months    ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           Male                 Female             0.0049499   -0.0313142    0.0412140
9-12 months    ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        Male                 Female            -0.0076966   -0.0178734    0.0024803
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0142356   -0.0232804   -0.0051907
9-12 months    ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.0072383   -0.0166371    0.0311137
9-12 months    ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          Male                 Female            -0.0015340   -0.0096860    0.0066181
9-12 months    ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         Male                 Female            -0.0165924   -0.0482831    0.0150983
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            -0.0068271   -0.0234248    0.0097707
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            -0.0148073   -0.0463140    0.0166994
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.0149667   -0.0346991    0.0646325
12-15 months   ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          Male                 Female             0.0069430   -0.0246967    0.0385828
12-15 months   ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0084097   -0.0241531    0.0409724
12-15 months   ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           Male                 Female             0.0060417   -0.0278248    0.0399082
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0038355   -0.0543196    0.0466486
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0353161   -0.0845037    0.0138714
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.0205289   -0.0480554    0.0069977
12-15 months   ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          Male                 Female            -0.0087521   -0.0344522    0.0169479
12-15 months   ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       Male                 Female             0.0328869   -0.0027138    0.0684876
12-15 months   ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       Male                 Female             0.0934037    0.0052917    0.1815157
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            -0.0128252   -0.0365093    0.0108589
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female             0.0431702   -0.0141839    0.1005243
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0049990   -0.0289186    0.0189206
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0088674   -0.0144990    0.0322337
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            -0.0079108   -0.0289545    0.0131329
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0205662   -0.0431351    0.0020026
12-15 months   ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         Male                 Female             0.0015592   -0.0179697    0.0210881
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female             0.0254674   -0.0286294    0.0795642
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.0140060   -0.0123186    0.0403306
12-15 months   ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            -0.0026711   -0.0430644    0.0377221
12-15 months   ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           Male                 Female            -0.0155374   -0.0529893    0.0219146
12-15 months   ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        Male                 Female             0.0579530   -0.0700120    0.1859179
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0130449   -0.0289432    0.0028534
12-15 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.0166554   -0.0091783    0.0424892
12-15 months   ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            -0.0387481   -0.1059933    0.0284971
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            -0.0040729   -0.0215835    0.0134377
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0034577   -0.0280401    0.0349555
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female            -0.0183833   -0.0717949    0.0350282
15-18 months   ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.0230855   -0.0529908    0.0068198
15-18 months   ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0353766    0.0042825    0.0664706
15-18 months   ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           Male                 Female            -0.0059384   -0.0443307    0.0324539
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0541091   -0.1105045    0.0022862
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0103004   -0.0355446    0.0561454
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.0082100   -0.0200547    0.0364747
15-18 months   ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          Male                 Female            -0.0001709   -0.0271947    0.0268529
15-18 months   ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       Male                 Female            -0.0077658   -0.0362866    0.0207550
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            -0.0106051   -0.0386281    0.0174179
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female             0.0008663   -0.0629235    0.0646561
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0022284   -0.0311826    0.0267259
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0079178   -0.0156037    0.0314393
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0032784   -0.0177814    0.0243381
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0156933   -0.0441327    0.0127461
15-18 months   ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0066570   -0.0264066    0.0130926
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            -0.0123944   -0.0428143    0.0180255
15-18 months   ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            -0.0222146   -0.0660533    0.0216242
15-18 months   ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           Male                 Female             0.0009439   -0.0357944    0.0376822
15-18 months   ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1119695-PROBIT           BELARUS                        Male                 Female            -0.0565407   -0.1712395    0.0581581
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             0.0078940   -0.0133426    0.0291306
15-18 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.0086632   -0.0400263    0.0226999
15-18 months   ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            -0.0252671   -0.0887284    0.0381942
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            -0.0027859   -0.0218701    0.0162982
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            -0.0166467   -0.0503900    0.0170966
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.0153686   -0.0322392    0.0629765
18-21 months   ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.0241175   -0.0544689    0.0062340
18-21 months   ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            -0.0233406   -0.0583566    0.0116753
18-21 months   ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           Male                 Female             0.0360375   -0.0021413    0.0742164
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0025385   -0.0554167    0.0503397
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0156616   -0.0652422    0.0339190
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.0112593   -0.0414668    0.0189482
18-21 months   ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          Male                 Female            -0.0188433   -0.0459534    0.0082668
18-21 months   ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       Male                 Female            -0.0172268   -0.0490527    0.0145990
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0165837   -0.0493153    0.0161479
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0092752   -0.0134845    0.0320348
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0144667   -0.0069368    0.0358702
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.2830535   -0.6266506    0.0605435
18-21 months   ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         Male                 Female             0.0135585   -0.0076695    0.0347865
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            -0.0208635   -0.0519256    0.0101985
18-21 months   ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            -0.0166944   -0.0636633    0.0302745
18-21 months   ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           Male                 Female             0.0098145   -0.0277553    0.0473843
18-21 months   ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1119695-PROBIT           BELARUS                        Male                 Female             0.1670642   -0.4598146    0.7939430
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             0.0023518   -0.0323212    0.0370247
18-21 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.0260956   -0.0048926    0.0570837
18-21 months   ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            -0.0151831   -0.0554061    0.0250398
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            -0.0152636   -0.0454725    0.0149452
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female            -0.0024146   -0.0498273    0.0449982
21-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.0038147   -0.0300834    0.0224540
21-24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0180132   -0.0214125    0.0574390
21-24 months   ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           Male                 Female            -0.0129864   -0.0528512    0.0268783
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0001436   -0.0476452    0.0473581
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0504680   -0.0043809    0.1053169
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.0142335   -0.0423788    0.0139117
21-24 months   ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          Male                 Female             0.0091048   -0.0187570    0.0369666
21-24 months   ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            -0.0137087   -0.0577816    0.0303643
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.0003083   -0.0304639    0.0310804
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0075408   -0.0154787    0.0305602
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0023480   -0.0227562    0.0274522
21-24 months   ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female             0.0082185   -0.0127641    0.0292011
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            -0.0052445   -0.0543993    0.0439102
21-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            -0.0076891   -0.0563088    0.0409305
21-24 months   ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           Male                 Female            -0.0036168   -0.1026742    0.0954406
21-24 months   ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female             0.1121539   -0.1164125    0.3407202
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0568847   -0.1169252    0.0031558
21-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.0268947   -0.0018065    0.0555959
21-24 months   ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female             0.0574334    0.0042447    0.1106220


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0709077    0.0481225    0.0936928
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0603212    0.0257629    0.0948795
0-3 months     ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0477150    0.0276382    0.0677918
0-3 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0958808    0.0680004    0.1237612
0-3 months     ki0047075b-MAL-ED          PERU                           Female               NA                 0.0681456    0.0416163    0.0946750
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0560212    0.0302815    0.0817609
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0626093    0.0337447    0.0914738
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0549725    0.0314423    0.0785027
0-3 months     ki1000108-IRC              INDIA                          Female               NA                 0.0563230    0.0351395    0.0775065
0-3 months     ki1000109-EE               PAKISTAN                       Female               NA                 0.0430146    0.0193844    0.0666448
0-3 months     ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0719347    0.0196131    0.1242564
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0689959    0.0392963    0.0986954
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0660327    0.0483153    0.0837501
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0717583    0.0564802    0.0870365
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0691606    0.0547788    0.0835424
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0536984    0.0434315    0.0639653
0-3 months     ki1101329-Keneba           GAMBIA                         Female               NA                 0.0734117    0.0617176    0.0851057
0-3 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0697256    0.0520419    0.0874092
0-3 months     ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0450825   -0.0388356    0.1290006
0-3 months     ki1114097-CONTENT          PERU                           Female               NA                -0.1474025   -0.2350094   -0.0597957
0-3 months     ki1119695-PROBIT           BELARUS                        Female               NA                -0.0364200   -0.0436637   -0.0291763
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0602301    0.0549729    0.0654873
0-3 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0597686    0.0329950    0.0865422
0-3 months     ki1135781-COHORTS          INDIA                          Female               NA                 0.0696900    0.0648565    0.0745236
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0614519    0.0577796    0.0651241
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0535984    0.0297252    0.0774716
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0140276   -0.0022074    0.0302626
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0303642   -0.0013331    0.0620615
3-6 months     ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0195276    0.0039909    0.0350642
3-6 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0260035    0.0050149    0.0469922
3-6 months     ki0047075b-MAL-ED          PERU                           Female               NA                 0.0193596   -0.0011938    0.0399129
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0027793   -0.0238748    0.0294334
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0152519   -0.0080902    0.0385940
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0294764    0.0103643    0.0485884
3-6 months     ki1000108-IRC              INDIA                          Female               NA                 0.0258188    0.0065834    0.0450541
3-6 months     ki1000109-EE               PAKISTAN                       Female               NA                 0.0206500    0.0011526    0.0401475
3-6 months     ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0141404   -0.0154356    0.0437163
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0277681   -0.0079418    0.0634779
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0351923    0.0165500    0.0538345
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0135953   -0.0000748    0.0272655
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0177694    0.0069210    0.0286178
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0088836   -0.0000019    0.0177690
3-6 months     ki1101329-Keneba           GAMBIA                         Female               NA                 0.0136625    0.0039460    0.0233790
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0218361    0.0074967    0.0361755
3-6 months     ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0325177    0.0073486    0.0576867
3-6 months     ki1114097-CONTENT          PERU                           Female               NA                -0.0087840   -0.0301335    0.0125656
3-6 months     ki1119695-PROBIT           BELARUS                        Female               NA                -0.0185738   -0.0237783   -0.0133692
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0123425    0.0077243    0.0169608
3-6 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0003271   -0.0178723    0.0172180
3-6 months     ki1135781-COHORTS          INDIA                          Female               NA                 0.0274852    0.0235023    0.0314681
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0158672    0.0115204    0.0202141
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0067344   -0.0133297    0.0267985
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0150610    0.0006662    0.0294558
6-9 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0074820   -0.0195538    0.0345178
6-9 months     ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0124680   -0.0009698    0.0259058
6-9 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0013399   -0.0139058    0.0165856
6-9 months     ki0047075b-MAL-ED          PERU                           Female               NA                 0.0046698   -0.0123819    0.0217216
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0012937   -0.0205392    0.0231267
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0184468   -0.0420766    0.0051830
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0068550   -0.0091727    0.0228827
6-9 months     ki1000108-IRC              INDIA                          Female               NA                 0.0115308   -0.0034668    0.0265285
6-9 months     ki1000109-EE               PAKISTAN                       Female               NA                 0.0113552   -0.0035269    0.0262373
6-9 months     ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0075591   -0.0170290    0.0321472
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0020506   -0.0376377    0.0335365
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0241391   -0.0497921    0.0015138
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0047699   -0.0100354    0.0195752
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0041852   -0.0087353    0.0171058
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0089929   -0.0015022    0.0194881
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0031201   -0.0120729    0.0058327
6-9 months     ki1101329-Keneba           GAMBIA                         Female               NA                 0.0094826   -0.0030054    0.0219706
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0022206   -0.0195163    0.0150752
6-9 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0083118   -0.0044788    0.0211024
6-9 months     ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0163380   -0.0066259    0.0393020
6-9 months     ki1114097-CONTENT          PERU                           Female               NA                -0.0079039   -0.0277782    0.0119704
6-9 months     ki1119695-PROBIT           BELARUS                        Female               NA                -0.0012901   -0.0051299    0.0025498
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0067749   -0.0112470   -0.0023028
6-9 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0003080   -0.0163196    0.0157036
6-9 months     ki1135781-COHORTS          INDIA                          Female               NA                 0.0050343    0.0009259    0.0091426
6-9 months     ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0081795   -0.0205724    0.0042134
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0103121    0.0002399    0.0203842
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0003899   -0.0133307    0.0141106
9-12 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0001714   -0.0327988    0.0331416
9-12 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0039391   -0.0168788    0.0090007
9-12 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0050053   -0.0201798    0.0101693
9-12 months    ki0047075b-MAL-ED          PERU                           Female               NA                -0.0144415   -0.0313311    0.0024481
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0138125   -0.0083641    0.0359890
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0043236   -0.0244060    0.0157588
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0003891   -0.0179288    0.0171506
9-12 months    ki1000108-IRC              INDIA                          Female               NA                 0.0069436   -0.0084992    0.0223865
9-12 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0047144   -0.0117278    0.0211565
9-12 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0220128   -0.0507441    0.0067184
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0135867   -0.0098892    0.0370625
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0154682   -0.0480184    0.0170820
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0061203   -0.0080838    0.0203245
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0030926   -0.0066238    0.0128091
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0000256   -0.0102686    0.0102173
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0094712   -0.0198365    0.0008941
9-12 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.0129082   -0.0248488   -0.0009676
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0031463   -0.0165534    0.0228459
9-12 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0158893    0.0026831    0.0290955
9-12 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0391173    0.0133285    0.0649061
9-12 months    ki1114097-CONTENT          PERU                           Female               NA                 0.0025216   -0.0159556    0.0209988
9-12 months    ki1119695-PROBIT           BELARUS                        Female               NA                -0.0037384   -0.0087000    0.0012233
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0068446   -0.0111978   -0.0024913
9-12 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0038736   -0.0089077    0.0166549
9-12 months    ki1135781-COHORTS          INDIA                          Female               NA                -0.0007983   -0.0050406    0.0034441
9-12 months    ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0084045   -0.0244783    0.0076692
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0032880   -0.0113168    0.0047408
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0072639   -0.0227523    0.0082244
12-15 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0079714   -0.0185032    0.0344459
12-15 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0031950   -0.0113719    0.0177619
12-15 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0044973   -0.0129251    0.0219198
12-15 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0033445   -0.0154071    0.0220962
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0019178   -0.0271610    0.0233255
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0176581   -0.0423598    0.0070437
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0105103   -0.0246463    0.0036257
12-15 months   ki1000108-IRC              INDIA                          Female               NA                -0.0048003   -0.0189026    0.0093020
12-15 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0155606   -0.0013873    0.0325084
12-15 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0538087    0.0021702    0.1054472
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0069739   -0.0202705    0.0063227
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0192516   -0.0067947    0.0452978
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0026893   -0.0155591    0.0101805
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0046566   -0.0076197    0.0169329
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0039079   -0.0143077    0.0064919
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0101401   -0.0212907    0.0010104
12-15 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0008064   -0.0092934    0.0109061
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0122031   -0.0138442    0.0382505
12-15 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0071889   -0.0063383    0.0207161
12-15 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0014616   -0.0235645    0.0206414
12-15 months   ki1114097-CONTENT          PERU                           Female               NA                -0.0080420   -0.0274568    0.0113729
12-15 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0287710   -0.0340138    0.0915558
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0059186   -0.0131380    0.0013007
12-15 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0089862   -0.0049742    0.0229465
12-15 months   ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0199891   -0.0548448    0.0148666
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0018891   -0.0100120    0.0062337
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0016473   -0.0133605    0.0166551
15-18 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0097694   -0.0381866    0.0186477
15-18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0105213   -0.0242332    0.0031907
15-18 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0188571    0.0021238    0.0355905
15-18 months   ki0047075b-MAL-ED          PERU                           Female               NA                -0.0031912   -0.0238264    0.0174440
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0274153   -0.0562077    0.0013771
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0051034   -0.0176210    0.0278277
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0041177   -0.0100652    0.0183005
15-18 months   ki1000108-IRC              INDIA                          Female               NA                -0.0000941   -0.0149819    0.0147936
15-18 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0038409   -0.0179542    0.0102725
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0057420   -0.0207531    0.0092691
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0003610   -0.0262183    0.0269402
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0012011   -0.0168070    0.0144049
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0041446   -0.0081724    0.0164616
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0016256   -0.0088180    0.0120693
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0078230   -0.0220124    0.0063664
15-18 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.0034653   -0.0137477    0.0068170
15-18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0064440   -0.0222696    0.0093815
15-18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0128108   -0.0381485    0.0125268
15-18 months   ki1114097-CONTENT          PERU                           Female               NA                 0.0004745   -0.0179920    0.0189409
15-18 months   ki1119695-PROBIT           BELARUS                        Female               NA                -0.0342220   -0.0968807    0.0284368
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0034726   -0.0058720    0.0128172
15-18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0048104   -0.0222305    0.0126098
15-18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0127397   -0.0448181    0.0193387
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0013581   -0.0106499    0.0079336
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0083632   -0.0253532    0.0086269
18-21 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0081905   -0.0172082    0.0335891
18-21 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0110983   -0.0251534    0.0029568
18-21 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0124415   -0.0311680    0.0062851
18-21 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0194460   -0.0013046    0.0401966
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0012965   -0.0283034    0.0257105
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0077555   -0.0323306    0.0168196
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0057386   -0.0211475    0.0096703
18-21 months   ki1000108-IRC              INDIA                          Female               NA                -0.0104630   -0.0255457    0.0046197
18-21 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0089174   -0.0254259    0.0075911
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0089599   -0.0266619    0.0087421
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0048258   -0.0070224    0.0166740
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0072995   -0.0035171    0.0181161
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.1543928   -0.3611675    0.0523818
18-21 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0071863   -0.0040708    0.0184434
18-21 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0106885   -0.0266311    0.0052542
18-21 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0095107   -0.0362987    0.0172772
18-21 months   ki1114097-CONTENT          PERU                           Female               NA                 0.0047732   -0.0135124    0.0230587
18-21 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0715989   -0.2594614    0.4026592
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0009629   -0.0132338    0.0151595
18-21 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0141094   -0.0026963    0.0309151
18-21 months   ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0072412   -0.0264371    0.0119548
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0078899   -0.0235398    0.0077600
21-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0013024   -0.0268772    0.0242724
21-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0017723   -0.0139793    0.0104347
21-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0096811   -0.0115404    0.0309026
21-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                -0.0069398   -0.0282633    0.0143837
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0000733   -0.0243295    0.0241829
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0257240   -0.0024455    0.0538934
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0075058   -0.0223687    0.0073572
21-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0050322   -0.0103736    0.0204380
21-24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0065957   -0.0278410    0.0146497
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0001673   -0.0165291    0.0168636
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0039181   -0.0080472    0.0158834
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0011811   -0.0114478    0.0138101
21-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0043066   -0.0066909    0.0153040
21-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0028134   -0.0291836    0.0235568
21-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0043938   -0.0321840    0.0233965
21-24 months   ki1114097-CONTENT          PERU                           Female               NA                -0.0013325   -0.0378317    0.0351666
21-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0543776   -0.0879811    0.1967363
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0204635   -0.0422806    0.0013536
21-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0145206   -0.0010276    0.0300689
21-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0277520    0.0018921    0.0536120
