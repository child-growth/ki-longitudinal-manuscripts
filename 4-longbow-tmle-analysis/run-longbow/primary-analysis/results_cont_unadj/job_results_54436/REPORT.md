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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        enstunt    n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0             205     246
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1              41     246
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0             192     218
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              26     218
0-3 months     ki0047075b-MAL-ED          INDIA                          0             201     238
0-3 months     ki0047075b-MAL-ED          INDIA                          1              37     238
0-3 months     ki0047075b-MAL-ED          NEPAL                          0             206     232
0-3 months     ki0047075b-MAL-ED          NEPAL                          1              26     232
0-3 months     ki0047075b-MAL-ED          PERU                           0             246     282
0-3 months     ki0047075b-MAL-ED          PERU                           1              36     282
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             240     272
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              32     272
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             200     237
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              37     237
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             262     331
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              69     331
0-3 months     ki1000108-IRC              INDIA                          0             345     394
0-3 months     ki1000108-IRC              INDIA                          1              49     394
0-3 months     ki1000109-EE               PAKISTAN                       0             179     320
0-3 months     ki1000109-EE               PAKISTAN                       1             141     320
0-3 months     ki1000109-ResPak           PAKISTAN                       0              55      80
0-3 months     ki1000109-ResPak           PAKISTAN                       1              25      80
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0             291     389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1              98     389
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0             477     565
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1              88     565
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0             576     640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              64     640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             624     725
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             101     725
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1885    2019
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             134    2019
0-3 months     ki1101329-Keneba           GAMBIA                         0            1437    1571
0-3 months     ki1101329-Keneba           GAMBIA                         1             134    1571
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0             422     509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1              87     509
0-3 months     ki1114097-CMIN             BANGLADESH                     0              26      43
0-3 months     ki1114097-CMIN             BANGLADESH                     1              17      43
0-3 months     ki1114097-CONTENT          PERU                           0              28      29
0-3 months     ki1114097-CONTENT          PERU                           1               1      29
0-3 months     ki1119695-PROBIT           BELARUS                        0            7487    7546
0-3 months     ki1119695-PROBIT           BELARUS                        1              59    7546
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            7321    8172
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             851    8172
0-3 months     ki1135781-COHORTS          GUATEMALA                      0             362     396
0-3 months     ki1135781-COHORTS          GUATEMALA                      1              34     396
0-3 months     ki1135781-COHORTS          INDIA                          0            5881    6667
0-3 months     ki1135781-COHORTS          INDIA                          1             786    6667
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0            6686   10022
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            3336   10022
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0             472     639
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1             167     639
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0             196     233
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1              37     233
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0             183     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              25     208
3-6 months     ki0047075b-MAL-ED          INDIA                          0             195     230
3-6 months     ki0047075b-MAL-ED          INDIA                          1              35     230
3-6 months     ki0047075b-MAL-ED          NEPAL                          0             206     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          1              27     233
3-6 months     ki0047075b-MAL-ED          PERU                           0             233     267
3-6 months     ki0047075b-MAL-ED          PERU                           1              34     267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             218     243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     243
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             201     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              38     239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             252     322
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              70     322
3-6 months     ki1000108-IRC              INDIA                          0             349     399
3-6 months     ki1000108-IRC              INDIA                          1              50     399
3-6 months     ki1000109-EE               PAKISTAN                       0             157     275
3-6 months     ki1000109-EE               PAKISTAN                       1             118     275
3-6 months     ki1000109-ResPak           PAKISTAN                       0             116     156
3-6 months     ki1000109-ResPak           PAKISTAN                       1              40     156
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0             266     346
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1              80     346
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0             440     522
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1              82     522
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0             539     601
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              62     601
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             602     702
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             100     702
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1548    1664
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             116    1664
3-6 months     ki1101329-Keneba           GAMBIA                         0            1263    1399
3-6 months     ki1101329-Keneba           GAMBIA                         1             136    1399
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0             392     469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1              77     469
3-6 months     ki1114097-CMIN             BANGLADESH                     0             114     184
3-6 months     ki1114097-CMIN             BANGLADESH                     1              70     184
3-6 months     ki1114097-CONTENT          PERU                           0             196     214
3-6 months     ki1114097-CONTENT          PERU                           1              18     214
3-6 months     ki1119695-PROBIT           BELARUS                        0            6656    6702
3-6 months     ki1119695-PROBIT           BELARUS                        1              46    6702
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            5511    6138
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             627    6138
3-6 months     ki1135781-COHORTS          GUATEMALA                      0             343     394
3-6 months     ki1135781-COHORTS          GUATEMALA                      1              51     394
3-6 months     ki1135781-COHORTS          INDIA                          0            5926    6709
3-6 months     ki1135781-COHORTS          INDIA                          1             783    6709
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0            4336    6299
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            1963    6299
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0             324     430
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1             106     430
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0             189     224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1              35     224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0             174     198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1              24     198
6-9 months     ki0047075b-MAL-ED          INDIA                          0             195     230
6-9 months     ki0047075b-MAL-ED          INDIA                          1              35     230
6-9 months     ki0047075b-MAL-ED          NEPAL                          0             203     230
6-9 months     ki0047075b-MAL-ED          NEPAL                          1              27     230
6-9 months     ki0047075b-MAL-ED          PERU                           0             212     245
6-9 months     ki0047075b-MAL-ED          PERU                           1              33     245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0             208     231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              23     231
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             188     225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              37     225
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             258     325
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              67     325
6-9 months     ki1000108-IRC              INDIA                          0             358     410
6-9 months     ki1000108-IRC              INDIA                          1              52     410
6-9 months     ki1000109-EE               PAKISTAN                       0             173     301
6-9 months     ki1000109-EE               PAKISTAN                       1             128     301
6-9 months     ki1000109-ResPak           PAKISTAN                       0             106     143
6-9 months     ki1000109-ResPak           PAKISTAN                       1              37     143
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0             264     350
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1              86     350
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0              47      74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1              27      74
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0             420     498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1              78     498
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0             514     576
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1              62     576
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             599     693
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              94     693
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1396    1496
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             100    1496
6-9 months     ki1101329-Keneba           GAMBIA                         0             817     905
6-9 months     ki1101329-Keneba           GAMBIA                         1              88     905
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0             158     214
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1              56     214
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0             402     477
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1              75     477
6-9 months     ki1114097-CMIN             BANGLADESH                     0             107     177
6-9 months     ki1114097-CMIN             BANGLADESH                     1              70     177
6-9 months     ki1114097-CONTENT          PERU                           0             196     214
6-9 months     ki1114097-CONTENT          PERU                           1              18     214
6-9 months     ki1119695-PROBIT           BELARUS                        0            6230    6268
6-9 months     ki1119695-PROBIT           BELARUS                        1              38    6268
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0            4998    5570
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             572    5570
6-9 months     ki1135781-COHORTS          GUATEMALA                      0             334     392
6-9 months     ki1135781-COHORTS          GUATEMALA                      1              58     392
6-9 months     ki1135781-COHORTS          INDIA                          0            5287    5993
6-9 months     ki1135781-COHORTS          INDIA                          1             706    5993
6-9 months     ki1148112-LCNI-5           MALAWI                         0             356     561
6-9 months     ki1148112-LCNI-5           MALAWI                         1             205     561
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0             579     777
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1             198     777
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0             188     225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1              37     225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0             171     194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1              23     194
9-12 months    ki0047075b-MAL-ED          INDIA                          0             191     227
9-12 months    ki0047075b-MAL-ED          INDIA                          1              36     227
9-12 months    ki0047075b-MAL-ED          NEPAL                          0             202     229
9-12 months    ki0047075b-MAL-ED          NEPAL                          1              27     229
9-12 months    ki0047075b-MAL-ED          PERU                           0             204     235
9-12 months    ki0047075b-MAL-ED          PERU                           1              31     235
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             208     233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     233
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             189     224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              35     224
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             261     327
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              66     327
9-12 months    ki1000108-IRC              INDIA                          0             352     403
9-12 months    ki1000108-IRC              INDIA                          1              51     403
9-12 months    ki1000109-EE               PAKISTAN                       0             185     325
9-12 months    ki1000109-EE               PAKISTAN                       1             140     325
9-12 months    ki1000109-ResPak           PAKISTAN                       0             102     140
9-12 months    ki1000109-ResPak           PAKISTAN                       1              38     140
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0             272     371
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1              99     371
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0              46      72
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              26      72
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0             405     481
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1              76     481
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0             509     569
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              60     569
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             589     683
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              94     683
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1015    1083
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              68    1083
9-12 months    ki1101329-Keneba           GAMBIA                         0             802     883
9-12 months    ki1101329-Keneba           GAMBIA                         1              81     883
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0             136     186
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1              50     186
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0             379     454
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1              75     454
9-12 months    ki1114097-CMIN             BANGLADESH                     0              96     160
9-12 months    ki1114097-CMIN             BANGLADESH                     1              64     160
9-12 months    ki1114097-CONTENT          PERU                           0             194     212
9-12 months    ki1114097-CONTENT          PERU                           1              18     212
9-12 months    ki1119695-PROBIT           BELARUS                        0            6228    6267
9-12 months    ki1119695-PROBIT           BELARUS                        1              39    6267
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            4512    5054
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             542    5054
9-12 months    ki1135781-COHORTS          GUATEMALA                      0             363     441
9-12 months    ki1135781-COHORTS          GUATEMALA                      1              78     441
9-12 months    ki1135781-COHORTS          INDIA                          0            4562    5173
9-12 months    ki1135781-COHORTS          INDIA                          1             611    5173
9-12 months    ki1148112-LCNI-5           MALAWI                         0             232     383
9-12 months    ki1148112-LCNI-5           MALAWI                         1             151     383
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0             642     870
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1             228     870
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0             162     184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1              22     184
12-15 months   ki0047075b-MAL-ED          INDIA                          0             190     226
12-15 months   ki0047075b-MAL-ED          INDIA                          1              36     226
12-15 months   ki0047075b-MAL-ED          NEPAL                          0             203     230
12-15 months   ki0047075b-MAL-ED          NEPAL                          1              27     230
12-15 months   ki0047075b-MAL-ED          PERU                           0             195     224
12-15 months   ki0047075b-MAL-ED          PERU                           1              29     224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             203     228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              25     228
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             191     226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              35     226
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             262     334
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              72     334
12-15 months   ki1000108-IRC              INDIA                          0             343     392
12-15 months   ki1000108-IRC              INDIA                          1              49     392
12-15 months   ki1000109-EE               PAKISTAN                       0             164     298
12-15 months   ki1000109-EE               PAKISTAN                       1             134     298
12-15 months   ki1000109-ResPak           PAKISTAN                       0              62      92
12-15 months   ki1000109-ResPak           PAKISTAN                       1              30      92
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0             273     377
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1             104     377
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0              47      74
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              27      74
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0             387     461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1              74     461
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0             485     537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1              52     537
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             571     666
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              95     666
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             740     791
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              51     791
12-15 months   ki1101329-Keneba           GAMBIA                         0            1219    1340
12-15 months   ki1101329-Keneba           GAMBIA                         1             121    1340
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0              71      96
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1              25      96
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0             373     452
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1              79     452
12-15 months   ki1114097-CMIN             BANGLADESH                     0              94     159
12-15 months   ki1114097-CMIN             BANGLADESH                     1              65     159
12-15 months   ki1114097-CONTENT          PERU                           0             181     199
12-15 months   ki1114097-CONTENT          PERU                           1              18     199
12-15 months   ki1119695-PROBIT           BELARUS                        0             281     282
12-15 months   ki1119695-PROBIT           BELARUS                        1               1     282
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            1615    1858
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             243    1858
12-15 months   ki1135781-COHORTS          GUATEMALA                      0             324     430
12-15 months   ki1135781-COHORTS          GUATEMALA                      1             106     430
12-15 months   ki1148112-LCNI-5           MALAWI                         0              72     126
12-15 months   ki1148112-LCNI-5           MALAWI                         1              54     126
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0             633     871
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1             238     871
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0             157     175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1              18     175
15-18 months   ki0047075b-MAL-ED          INDIA                          0             190     226
15-18 months   ki0047075b-MAL-ED          INDIA                          1              36     226
15-18 months   ki0047075b-MAL-ED          NEPAL                          0             200     227
15-18 months   ki0047075b-MAL-ED          NEPAL                          1              27     227
15-18 months   ki0047075b-MAL-ED          PERU                           0             185     214
15-18 months   ki0047075b-MAL-ED          PERU                           1              29     214
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             202     225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              23     225
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             185     220
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              35     220
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             253     325
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              72     325
15-18 months   ki1000108-IRC              INDIA                          0             337     383
15-18 months   ki1000108-IRC              INDIA                          1              46     383
15-18 months   ki1000109-EE               PAKISTAN                       0             159     277
15-18 months   ki1000109-EE               PAKISTAN                       1             118     277
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0             259     362
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1             103     362
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0              46      72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              26      72
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0             372     449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1              77     449
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0             483     533
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1              50     533
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             518     605
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              87     605
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             620     664
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              44     664
15-18 months   ki1101329-Keneba           GAMBIA                         0            1243    1362
15-18 months   ki1101329-Keneba           GAMBIA                         1             119    1362
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0             396     477
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1              81     477
15-18 months   ki1114097-CMIN             BANGLADESH                     0              97     163
15-18 months   ki1114097-CMIN             BANGLADESH                     1              66     163
15-18 months   ki1114097-CONTENT          PERU                           0             172     189
15-18 months   ki1114097-CONTENT          PERU                           1              17     189
15-18 months   ki1119695-PROBIT           BELARUS                        0              37      38
15-18 months   ki1119695-PROBIT           BELARUS                        1               1      38
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            1010    1198
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             188    1198
15-18 months   ki1135781-COHORTS          GUATEMALA                      0             289     380
15-18 months   ki1135781-COHORTS          GUATEMALA                      1              91     380
15-18 months   ki1148112-LCNI-5           MALAWI                         0              71     119
15-18 months   ki1148112-LCNI-5           MALAWI                         1              48     119
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0             639     880
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1             241     880
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0             176     209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0             149     167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1              18     167
18-21 months   ki0047075b-MAL-ED          INDIA                          0             190     226
18-21 months   ki0047075b-MAL-ED          INDIA                          1              36     226
18-21 months   ki0047075b-MAL-ED          NEPAL                          0             200     227
18-21 months   ki0047075b-MAL-ED          NEPAL                          1              27     227
18-21 months   ki0047075b-MAL-ED          PERU                           0             177     202
18-21 months   ki0047075b-MAL-ED          PERU                           1              25     202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             209     233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              24     233
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             176     208
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              32     208
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             242     310
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              68     310
18-21 months   ki1000108-IRC              INDIA                          0             332     380
18-21 months   ki1000108-IRC              INDIA                          1              48     380
18-21 months   ki1000109-EE               PAKISTAN                       0             159     255
18-21 months   ki1000109-EE               PAKISTAN                       1              96     255
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0             350     422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1              72     422
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0             488     542
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1              54     542
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             472     547
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              75     547
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              11      11
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      11
18-21 months   ki1101329-Keneba           GAMBIA                         0            1218    1349
18-21 months   ki1101329-Keneba           GAMBIA                         1             131    1349
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0             372     447
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1              75     447
18-21 months   ki1114097-CMIN             BANGLADESH                     0             100     165
18-21 months   ki1114097-CMIN             BANGLADESH                     1              65     165
18-21 months   ki1114097-CONTENT          PERU                           0             168     183
18-21 months   ki1114097-CONTENT          PERU                           1              15     183
18-21 months   ki1119695-PROBIT           BELARUS                        0              20      21
18-21 months   ki1119695-PROBIT           BELARUS                        1               1      21
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             533     657
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             124     657
18-21 months   ki1135781-COHORTS          GUATEMALA                      0             291     381
18-21 months   ki1135781-COHORTS          GUATEMALA                      1              90     381
18-21 months   ki1148112-LCNI-5           MALAWI                         0             296     455
18-21 months   ki1148112-LCNI-5           MALAWI                         1             159     455
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0             175     207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              32     207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0             146     165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1              19     165
21-24 months   ki0047075b-MAL-ED          INDIA                          0             190     226
21-24 months   ki0047075b-MAL-ED          INDIA                          1              36     226
21-24 months   ki0047075b-MAL-ED          NEPAL                          0             200     227
21-24 months   ki0047075b-MAL-ED          NEPAL                          1              27     227
21-24 months   ki0047075b-MAL-ED          PERU                           0             165     189
21-24 months   ki0047075b-MAL-ED          PERU                           1              24     189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             211     235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              24     235
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             175     206
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              31     206
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             245     311
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              66     311
21-24 months   ki1000108-IRC              INDIA                          0             340     389
21-24 months   ki1000108-IRC              INDIA                          1              49     389
21-24 months   ki1000109-EE               PAKISTAN                       0              65     106
21-24 months   ki1000109-EE               PAKISTAN                       1              41     106
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0             342     411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              69     411
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0             435     485
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              50     485
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             425     493
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              68     493
21-24 months   ki1101329-Keneba           GAMBIA                         0            1093    1208
21-24 months   ki1101329-Keneba           GAMBIA                         1             115    1208
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0             287     343
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1              56     343
21-24 months   ki1114097-CMIN             BANGLADESH                     0              78     133
21-24 months   ki1114097-CMIN             BANGLADESH                     1              55     133
21-24 months   ki1114097-CONTENT          PERU                           0              33      38
21-24 months   ki1114097-CONTENT          PERU                           1               5      38
21-24 months   ki1119695-PROBIT           BELARUS                        0              32      33
21-24 months   ki1119695-PROBIT           BELARUS                        1               1      33
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             236     303
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              67     303
21-24 months   ki1135781-COHORTS          GUATEMALA                      0             313     426
21-24 months   ki1135781-COHORTS          GUATEMALA                      1             113     426
21-24 months   ki1148112-LCNI-5           MALAWI                         0             246     387
21-24 months   ki1148112-LCNI-5           MALAWI                         1             141     387


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/fa42848a-4075-4557-8e41-0bd94d41da8c/02e19fc7-cdda-4b32-8f18-12bfe53a64e4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fa42848a-4075-4557-8e41-0bd94d41da8c/02e19fc7-cdda-4b32-8f18-12bfe53a64e4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/fa42848a-4075-4557-8e41-0bd94d41da8c/02e19fc7-cdda-4b32-8f18-12bfe53a64e4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.8899542   0.8655215   0.9143868
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8226046   0.7602819   0.8849274
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                1.0709086   1.0336520   1.1081652
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.0190030   0.9393031   1.0987028
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                0.7636263   0.7394403   0.7878123
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                0.7367023   0.6812767   0.7921279
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                0.9655065   0.9378593   0.9931536
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8891573   0.7979568   0.9803578
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                0.9749528   0.9474030   1.0025026
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                0.9367158   0.8829959   0.9904357
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.9287694   0.9011881   0.9563507
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.0308234   0.9491280   1.1125189
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8940488   0.8608162   0.9272814
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8335338   0.7634377   0.9036299
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7610757   0.7344500   0.7877014
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6923821   0.6425368   0.7422274
0-3 months     ki1000108-IRC              INDIA                          0                    NA                0.7733263   0.7524782   0.7941744
0-3 months     ki1000108-IRC              INDIA                          1                    NA                0.7304224   0.6778322   0.7830125
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                0.7277854   0.6968071   0.7587636
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                0.6476382   0.6149564   0.6803201
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                0.8010307   0.7380229   0.8640384
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    NA                0.8303165   0.7416255   0.9190076
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.7993504   0.7695242   0.8291766
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.7641397   0.7135698   0.8147097
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.8170437   0.7996039   0.8344836
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.8125894   0.7604257   0.8647531
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.9055729   0.8899906   0.9211551
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8663158   0.8213428   0.9112888
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8942854   0.8787627   0.9098081
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8242012   0.7848805   0.8635219
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9288341   0.9183361   0.9393321
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8331678   0.7962379   0.8700976
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                0.9304643   0.9189589   0.9419698
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.8933784   0.8521074   0.9346493
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8272355   0.8082039   0.8462672
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8259286   0.7893753   0.8624820
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                0.8616601   0.7795098   0.9438104
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    NA                0.8498567   0.7430378   0.9566756
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                0.8239403   0.8073163   0.8405643
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                0.7679980   0.7589655   0.7770304
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.9528487   0.9474356   0.9582618
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.9225616   0.9066998   0.9384233
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7898091   0.7636940   0.8159242
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6022910   0.5214094   0.6831726
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                0.8192686   0.8143867   0.8241505
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                0.7390540   0.7262099   0.7518982
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.8671699   0.8624261   0.8719138
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8173324   0.8108833   0.8237816
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.7332536   0.7012932   0.7652139
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.7232684   0.6881891   0.7583477
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4776484   0.4593686   0.4959283
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4587669   0.4185520   0.4989818
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.5845973   0.5514417   0.6177530
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.5313511   0.4407079   0.6219944
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                0.4396048   0.4207679   0.4584416
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                0.4765142   0.4302164   0.5228120
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                0.5125175   0.4925042   0.5325308
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                0.5918992   0.5130945   0.6707038
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                0.4978005   0.4771124   0.5184887
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                0.5012004   0.4558696   0.5465312
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.4599613   0.4344545   0.4854680
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.5138664   0.3989375   0.6287953
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4575801   0.4308462   0.4843141
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4547472   0.4008201   0.5086742
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4775849   0.4557682   0.4994016
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4664150   0.4290687   0.5037613
3-6 months     ki1000108-IRC              INDIA                          0                    NA                0.4713670   0.4529075   0.4898265
3-6 months     ki1000108-IRC              INDIA                          1                    NA                0.4291107   0.3749774   0.4832440
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                0.4760660   0.4496952   0.5024367
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                0.4716890   0.4447047   0.4986732
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                0.4655774   0.4342714   0.4968833
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    NA                0.5223586   0.4648965   0.5798207
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4318234   0.4206995   0.4429474
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3916936   0.3717814   0.4116059
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4627595   0.4455201   0.4799989
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4413574   0.3832262   0.4994886
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4869551   0.4732640   0.5006463
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5073698   0.4646500   0.5500897
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4974311   0.4859313   0.5089309
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5018065   0.4665849   0.5370280
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4159981   0.4071291   0.4248670
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4677909   0.4308292   0.5047526
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                0.4451341   0.4352661   0.4550022
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.4665949   0.4369084   0.4962814
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4967847   0.4814718   0.5120975
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5018221   0.4702644   0.5333799
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                0.4315184   0.4014949   0.4615419
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                0.4763367   0.4407301   0.5119434
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                0.5837062   0.5616238   0.6057885
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                0.6390423   0.5714793   0.7066052
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                0.6652481   0.6492622   0.6812340
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                0.6914031   0.6779746   0.7048315
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4759875   0.4712349   0.4807402
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4990660   0.4844134   0.5137187
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4503076   0.4327137   0.4679016
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4385704   0.3926948   0.4844460
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                0.4847662   0.4807003   0.4888322
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                0.4691808   0.4582064   0.4801553
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4406842   0.4356065   0.4457619
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4562810   0.4493166   0.4632455
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4435162   0.4155765   0.4714559
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4341188   0.4019405   0.4662971
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2462374   0.2301472   0.2623275
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2245914   0.1922767   0.2569060
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.3772992   0.3509774   0.4036210
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.4255673   0.3281488   0.5229858
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                0.2309231   0.2146570   0.2471891
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    NA                0.2368372   0.1988271   0.2748473
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2704074   0.2554438   0.2853711
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2633017   0.2128321   0.3137713
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                0.2575643   0.2409868   0.2741418
6-9 months     ki0047075b-MAL-ED          PERU                           1                    NA                0.2859916   0.2435079   0.3284754
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2558310   0.2334787   0.2781832
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2915602   0.2310417   0.3520786
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2335138   0.2068119   0.2602157
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2629864   0.2085197   0.3174531
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2597462   0.2411650   0.2783274
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2589831   0.2278899   0.2900764
6-9 months     ki1000108-IRC              INDIA                          0                    NA                0.2598169   0.2452635   0.2743703
6-9 months     ki1000108-IRC              INDIA                          1                    NA                0.2820050   0.2385956   0.3254145
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                0.2445346   0.2262235   0.2628457
6-9 months     ki1000109-EE               PAKISTAN                       1                    NA                0.2645905   0.2401486   0.2890324
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                0.1992748   0.1709534   0.2275961
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    NA                0.2579061   0.2098845   0.3059277
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2460567   0.2377844   0.2543290
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2752318   0.2558322   0.2946314
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1962278   0.1585087   0.2339468
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1974305   0.1382096   0.2566514
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2303782   0.2154073   0.2453491
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2679286   0.2343389   0.3015183
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2478568   0.2349994   0.2607142
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2600135   0.2258617   0.2941653
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2684983   0.2569127   0.2800839
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2612100   0.2365907   0.2858294
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2579545   0.2489186   0.2669903
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2371729   0.1962796   0.2780662
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                0.2059133   0.1930360   0.2187906
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.1798722   0.1408745   0.2188700
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.2354911   0.2174173   0.2535649
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2750531   0.2308453   0.3192609
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1816047   0.1701792   0.1930303
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2187804   0.1731197   0.2644411
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                0.2128388   0.1865010   0.2391766
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    NA                0.2464772   0.2154337   0.2775207
6-9 months     ki1114097-CONTENT          PERU                           0                    NA                0.3202291   0.2995778   0.3408804
6-9 months     ki1114097-CONTENT          PERU                           1                    NA                0.3219332   0.2661795   0.3776869
6-9 months     ki1119695-PROBIT           BELARUS                        0                    NA                0.4768544   0.4613841   0.4923247
6-9 months     ki1119695-PROBIT           BELARUS                        1                    NA                0.4937117   0.4752481   0.5121752
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2583177   0.2535386   0.2630967
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2586619   0.2453976   0.2719263
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2051593   0.1897146   0.2206040
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1967220   0.1530854   0.2403586
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                0.2828382   0.2786493   0.2870271
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                0.2649448   0.2534499   0.2764397
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    NA                0.2915629   0.2756743   0.3074515
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    NA                0.2717533   0.2515612   0.2919453
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2339254   0.2221822   0.2456687
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2230439   0.2015771   0.2445107
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1749254   0.1603421   0.1895087
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1634274   0.1259564   0.2008983
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.2843450   0.2501542   0.3185358
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2864310   0.2007644   0.3720976
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1756607   0.1600823   0.1912391
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1957328   0.1643021   0.2271635
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1862438   0.1706739   0.2018137
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1841082   0.1473077   0.2209087
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.1905575   0.1735548   0.2075601
9-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.1672331   0.1373291   0.1971372
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2136996   0.1903012   0.2370980
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2225057   0.1559011   0.2891104
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1618987   0.1392195   0.1845779
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1938352   0.1528046   0.2348658
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2079356   0.1889980   0.2268732
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2297120   0.1863134   0.2731105
9-12 months    ki1000108-IRC              INDIA                          0                    NA                0.2163611   0.2013111   0.2314110
9-12 months    ki1000108-IRC              INDIA                          1                    NA                0.1915755   0.1489340   0.2342171
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                0.2501521   0.2278142   0.2724901
9-12 months    ki1000109-EE               PAKISTAN                       1                    NA                0.2432919   0.2185254   0.2680584
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0986687   0.0629600   0.1343775
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.0889996   0.0461683   0.1318310
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2120933   0.1995687   0.2246179
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2245220   0.1850916   0.2639525
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1386354   0.0809407   0.1963300
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1790981   0.1327653   0.2254310
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1648772   0.1502238   0.1795306
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1569289   0.1284210   0.1854368
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1806717   0.1709064   0.1904370
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1508931   0.1205117   0.1812745
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1967158   0.1852011   0.2082306
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2049196   0.1826067   0.2272325
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2067205   0.1961971   0.2172438
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1828965   0.1496511   0.2161420
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1591022   0.1471319   0.1710725
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1406509   0.0956100   0.1856917
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.2064609   0.1849660   0.2279559
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2101641   0.1593134   0.2610148
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1431092   0.1299391   0.1562792
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1484456   0.1100138   0.1868774
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1701585   0.1424488   0.1978682
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.1587901   0.1195322   0.1980481
9-12 months    ki1114097-CONTENT          PERU                           0                    NA                0.2216491   0.2027881   0.2405101
9-12 months    ki1114097-CONTENT          PERU                           1                    NA                0.2527351   0.1892108   0.3162593
9-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.3716519   0.3454001   0.3979037
9-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.3868197   0.3702488   0.4033907
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1800358   0.1752391   0.1848325
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1804230   0.1666529   0.1941931
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1483728   0.1353946   0.1613509
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1334195   0.1021052   0.1647338
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                0.2195598   0.2152238   0.2238957
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2185680   0.2064792   0.2306567
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                0.2021021   0.1822985   0.2219057
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.2011354   0.1748260   0.2274449
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1436140   0.1335287   0.1536992
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1370504   0.1249270   0.1491738
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1342001   0.1166392   0.1517610
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1416430   0.1071734   0.1761126
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.2015353   0.1765650   0.2265056
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2739581   0.1818277   0.3660884
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1741691   0.1566246   0.1917137
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.1728318   0.1357525   0.2099111
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1554689   0.1379930   0.1729449
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1318298   0.0801477   0.1835118
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.1406594   0.1226596   0.1586593
12-15 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1489981   0.1046243   0.1933719
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1870886   0.1603305   0.2138466
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2083924   0.1326977   0.2840870
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1661909   0.1391344   0.1932473
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1226252   0.0637736   0.1814769
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1483441   0.1330987   0.1635896
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1581910   0.1262204   0.1901616
12-15 months   ki1000108-IRC              INDIA                          0                    NA                0.1836196   0.1698753   0.1973640
12-15 months   ki1000108-IRC              INDIA                          1                    NA                0.1718033   0.1369806   0.2066260
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1378798   0.1140604   0.1616991
12-15 months   ki1000109-EE               PAKISTAN                       1                    NA                0.1340955   0.1069501   0.1612408
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.1568142   0.0929469   0.2206814
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.1176669   0.0667411   0.1685927
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1560886   0.1450530   0.1671241
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1548930   0.1301725   0.1796136
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1996719   0.1619222   0.2374216
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1583828   0.1159223   0.2008434
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1289136   0.1160447   0.1417824
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1388355   0.1060068   0.1716642
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1818367   0.1696410   0.1940324
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1632033   0.1225868   0.2038198
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1683112   0.1568588   0.1797636
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1385099   0.1122179   0.1648019
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1750388   0.1632424   0.1868351
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1623513   0.1236461   0.2010566
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1824943   0.1723915   0.1925970
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2180519   0.1807403   0.2553634
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1884728   0.1546284   0.2223173
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2230437   0.1820765   0.2640109
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1714940   0.1569680   0.1860199
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1750042   0.1444101   0.2055982
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1616892   0.1363069   0.1870715
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1880769   0.1564228   0.2197310
12-15 months   ki1114097-CONTENT          PERU                           0                    NA                0.1837977   0.1638757   0.2037196
12-15 months   ki1114097-CONTENT          PERU                           1                    NA                0.1535965   0.1070643   0.2001288
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1492345   0.1406902   0.1577787
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1545177   0.1328323   0.1762030
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1519181   0.1365423   0.1672940
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1436253   0.1196695   0.1675811
12-15 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1525527   0.1073965   0.1977088
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1507573   0.1011141   0.2004005
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1288545   0.1182456   0.1394635
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1166428   0.0971649   0.1361208
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1435434   0.1266042   0.1604826
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1386917   0.0986011   0.1787823
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.1987870   0.1699212   0.2276529
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2438249   0.1867553   0.3008944
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1651709   0.1492094   0.1811325
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.1488717   0.1078453   0.1898981
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1747854   0.1586580   0.1909127
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1639034   0.1069001   0.2209067
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.1480939   0.1273184   0.1688694
15-18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1340361   0.0917747   0.1762975
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2186242   0.1900330   0.2472153
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2674031   0.1506803   0.3841259
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1397055   0.1147042   0.1647068
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1591706   0.1012892   0.2170521
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1561365   0.1393893   0.1728837
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1382931   0.1136807   0.1629055
15-18 months   ki1000108-IRC              INDIA                          0                    NA                0.1552065   0.1407028   0.1697102
15-18 months   ki1000108-IRC              INDIA                          1                    NA                0.1989363   0.1624732   0.2353995
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                0.0913307   0.0728664   0.1097951
15-18 months   ki1000109-EE               PAKISTAN                       1                    NA                0.0857177   0.0632941   0.1081413
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1403209   0.1245411   0.1561006
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1534999   0.1376796   0.1693203
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1689885   0.1256417   0.2123353
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1885697   0.1374665   0.2396728
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1616597   0.1452587   0.1780607
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1110716   0.0826787   0.1394645
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1542467   0.1418644   0.1666289
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1766834   0.1392991   0.2140677
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1639674   0.1523333   0.1756015
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1447039   0.1211371   0.1682706
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1723265   0.1575163   0.1871367
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1415427   0.0915935   0.1914920
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1611359   0.1509444   0.1713273
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1271211   0.0893966   0.1648457
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2348920   0.2179196   0.2518644
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2341948   0.1998483   0.2685412
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1256262   0.0948022   0.1564501
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1450318   0.1131040   0.1769597
15-18 months   ki1114097-CONTENT          PERU                           0                    NA                0.1788619   0.1594021   0.1983216
15-18 months   ki1114097-CONTENT          PERU                           1                    NA                0.0953578   0.0574990   0.1332166
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1346120   0.1230357   0.1461884
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1289657   0.1024219   0.1555095
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1188295   0.1016416   0.1360173
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1236186   0.0880816   0.1591556
15-18 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1719220   0.1263279   0.2175161
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1835467   0.1431407   0.2239526
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1574901   0.1464298   0.1685504
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1532686   0.1364602   0.1700770
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1396837   0.1209240   0.1584434
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1588795   0.1209689   0.1967902
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.1636290   0.1382758   0.1889823
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.1359820   0.0591238   0.2128403
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1713011   0.1551944   0.1874078
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.1798726   0.1407260   0.2190193
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1451678   0.1258989   0.1644366
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1647734   0.1246690   0.2048779
18-21 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.1637782   0.1437259   0.1838306
18-21 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1458973   0.0884899   0.2033048
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1787146   0.1526071   0.2048221
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1628436   0.0413923   0.2842949
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1513113   0.1248116   0.1778110
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1190876   0.0495851   0.1885901
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1400242   0.1216913   0.1583570
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1181809   0.0955000   0.1408618
18-21 months   ki1000108-IRC              INDIA                          0                    NA                0.1588794   0.1448887   0.1728702
18-21 months   ki1000108-IRC              INDIA                          1                    NA                0.1596688   0.1165620   0.2027757
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1407441   0.1200441   0.1614440
18-21 months   ki1000109-EE               PAKISTAN                       1                    NA                0.1111963   0.0872671   0.1351254
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1752270   0.1570507   0.1934033
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1588874   0.1256313   0.1921435
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1300231   0.1177649   0.1422813
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1547652   0.1250396   0.1844909
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1440549   0.1325156   0.1555941
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1338883   0.1048504   0.1629262
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1523941   0.1415184   0.1632699
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1659725   0.1259868   0.2059582
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1449769   0.1273737   0.1625801
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1295874   0.0990432   0.1601316
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1554671   0.1213389   0.1895953
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1712517   0.1416600   0.2008433
18-21 months   ki1114097-CONTENT          PERU                           0                    NA                0.1923214   0.1727579   0.2118848
18-21 months   ki1114097-CONTENT          PERU                           1                    NA                0.1899045   0.1206656   0.2591433
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1188772   0.0990296   0.1387248
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1298762   0.1004871   0.1592654
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1478879   0.1302509   0.1655250
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1504463   0.1165498   0.1843429
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1834451   0.1580178   0.2088724
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1766839   0.1442449   0.2091228
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1579520   0.1414749   0.1744292
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1201972   0.0840251   0.1563693
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.1444616   0.1197131   0.1692102
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.1360243   0.0657262   0.2063223
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1568177   0.1421740   0.1714613
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.1533816   0.1241258   0.1826375
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1652677   0.1452923   0.1852431
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1969928   0.1195920   0.2743935
21-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.1742857   0.1548703   0.1937011
21-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2308395   0.1541111   0.3075679
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1998611   0.1750757   0.2246464
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0803542   0.0130038   0.1477047
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1421563   0.1121039   0.1722087
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1365906   0.0657720   0.2074092
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1443753   0.1281980   0.1605527
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1635713   0.1370216   0.1901209
21-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1841016   0.1701171   0.1980862
21-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1335507   0.0841554   0.1829461
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1961959   0.1661582   0.2262337
21-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.1888991   0.1567686   0.2210296
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1358636   0.1195936   0.1521337
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1722543   0.1318988   0.2126098
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1451754   0.1329183   0.1574325
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1140877   0.0846034   0.1435721
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1718805   0.1583945   0.1853664
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1948600   0.1607993   0.2289207
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1684877   0.1573678   0.1796075
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1538769   0.1215878   0.1861660
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1684884   0.1421542   0.1948225
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2195040   0.1562080   0.2828001
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1741291   0.1452680   0.2029901
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1553445   0.1150665   0.1956224
21-24 months   ki1114097-CONTENT          PERU                           0                    NA                0.1991196   0.1485425   0.2496968
21-24 months   ki1114097-CONTENT          PERU                           1                    NA                0.2460507   0.0840265   0.4080750
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1109309   0.0788552   0.1430066
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1026213   0.0464272   0.1588154
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1676341   0.1515078   0.1837604
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1605499   0.1294690   0.1916308
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1925366   0.1568747   0.2281985
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1560571   0.1176242   0.1944899


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8787293   0.8556572   0.9018013
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0647180   1.0304826   1.0989534
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7594406   0.7372368   0.7816445
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9569501   0.9301779   0.9837223
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.9700715   0.9450349   0.9951081
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9407758   0.9143190   0.9672326
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.6924705   0.6695203   0.7154208
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                0.8101825   0.7586697   0.8616953
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7904799   0.7612204   0.8197394
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9224848   0.9123284   0.9326411
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.9273010   0.9161920   0.9384101
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8569936   0.7917724   0.9222149
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.8235029   0.8073992   0.8396066
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9496947   0.9445678   0.9548217
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7737091   0.7483126   0.7991055
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.8098118   0.8052049   0.8144186
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8505806   0.8465295   0.8546318
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.7306440   0.7043689   0.7569191
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4452214   0.4276818   0.4627610
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4655071   0.4396676   0.4913465
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4751567   0.4562440   0.4940693
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.4741878   0.4551933   0.4931824
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4801367   0.4523118   0.5079615
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4225449   0.4096930   0.4353968
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4196086   0.4109417   0.4282755
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.4472204   0.4378499   0.4565908
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                0.4485689   0.4253428   0.4717949
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                0.5883606   0.5672514   0.6094698
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.6654276   0.6499538   0.6809014
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4783450   0.4738196   0.4828705
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4487884   0.4323564   0.4652203
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.4829473   0.4791324   0.4867622
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4455447   0.4412571   0.4498323
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4411996   0.4183110   0.4640882
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2318230   0.2168658   0.2467803
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2595889   0.2435057   0.2756721
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     ki1000109-EE               PAKISTAN                       NA                   NA                0.2530633   0.2382291   0.2678975
6-9 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2144451   0.1896874   0.2392029
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2532254   0.2418755   0.2645754
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1966666   0.1644047   0.2289285
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2565653   0.2476975   0.2654331
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.2033811   0.1911428   0.2156195
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2458437   0.2280295   0.2636580
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1874500   0.1753777   0.1995223
6-9 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2261421   0.2058904   0.2463939
6-9 months     ki1114097-CONTENT          PERU                           NA                   NA                0.3203724   0.3008854   0.3398595
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.4769566   0.4617272   0.4921860
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2583530   0.2538536   0.2628524
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2039109   0.1892499   0.2185720
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.2807303   0.2767918   0.2846687
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2843241   0.2718050   0.2968431
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2311525   0.2209713   0.2413338
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1788440   0.1647878   0.1929001
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2123308   0.1948351   0.2298265
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                0.2132244   0.1989917   0.2274571
9-12 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2471969   0.2305945   0.2637993
9-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.0960443   0.0675395   0.1245490
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2154099   0.2029278   0.2278919
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1532469   0.1125153   0.1939785
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2052246   0.1951376   0.2153116
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1574096   0.1457735   0.1690458
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2074564   0.1866255   0.2282874
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1439907   0.1312935   0.1566879
9-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1656112   0.1427254   0.1884969
9-12 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2242885   0.2061680   0.2424089
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.3717463   0.3460555   0.3974370
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800773   0.1755475   0.1846071
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1457280   0.1336830   0.1577729
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2194426   0.2153609   0.2235243
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2017210   0.1858623   0.2175796
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1418939   0.1335225   0.1502652
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1739561   0.1580675   0.1898447
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1504668   0.1366572   0.1642764
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1361781   0.1182651   0.1540911
12-15 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1440487   0.0977615   0.1903360
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1557588   0.1490309   0.1624867
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1846069   0.1556992   0.2135147
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1742207   0.1629042   0.1855373
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1857051   0.1759013   0.1955089
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1974757   0.1700956   0.2248557
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1721075   0.1589812   0.1852337
12-15 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1724766   0.1525587   0.1923945
12-15 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1810659   0.1624244   0.1997074
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1499254   0.1419751   0.1578757
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1498739   0.1368657   0.1628820
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1517832   0.1183392   0.1852272
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1255177   0.1155109   0.1355245
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1625746   0.1476285   0.1775207
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1521835   0.1380291   0.1663379
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0889396   0.0746678   0.1032114
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1440707   0.1288559   0.1592855
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1760595   0.1427086   0.2094103
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1702866   0.1560553   0.1845179
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1581639   0.1482830   0.1680449
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1334837   0.1109948   0.1559725
15-18 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1713509   0.1529966   0.1897053
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1337260   0.1231139   0.1443380
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1199764   0.1043771   0.1355756
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1766109   0.1448823   0.2083395
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1563340   0.1467542   0.1659137
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1726665   0.1577530   0.1875800
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1352327   0.1200477   0.1504178
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.1589791   0.1455977   0.1723606
18-21 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1296202   0.1137821   0.1454583
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1537127   0.1431511   0.1642744
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1616853   0.1379134   0.1854572
18-21 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1921232   0.1732877   0.2109588
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1209531   0.1039197   0.1379866
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1484923   0.1328210   0.1641635
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1810824   0.1610270   0.2011378
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1562703   0.1431057   0.1694349
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1484491   0.1344875   0.1624106
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1777340   0.1639174   0.1915507
21-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1933736   0.1711433   0.2156039
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1670967   0.1565736   0.1776198
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1768175   0.1523979   0.2012370
21-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1663610   0.1425615   0.1901605
21-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2052948   0.1562051   0.2543845
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1090935   0.0811882   0.1369987
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1657550   0.1513172   0.1801928
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1792456   0.1525432   0.2059480


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0673495   -0.1342904   -0.0004087
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0519056   -0.1398836    0.0360723
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0269240   -0.0873968    0.0335488
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0763491   -0.1716481    0.0189499
0-3 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           1                    0                 -0.0382370   -0.0986093    0.0221353
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1020540    0.0158283    0.1882798
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0605150   -0.1380899    0.0170599
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0686936   -0.1252045   -0.0121827
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.0429040   -0.0994757    0.0136678
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0801471   -0.1251777   -0.0351165
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0292858   -0.0795079    0.1380796
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0352107   -0.0804851    0.0100637
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0044543   -0.0594562    0.0505475
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0392571   -0.0868531    0.0083389
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0700842   -0.1123580   -0.0278104
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0956663   -0.1340593   -0.0572733
0-3 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0370860   -0.0799306    0.0057587
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0013069   -0.0425180    0.0399041
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0118034   -0.1465585    0.1229518
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.0559423   -0.0751942   -0.0366905
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0302872   -0.0470472   -0.0135271
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.1875181   -0.2725113   -0.1025250
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0802146   -0.0939552   -0.0664739
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0498375   -0.0574474   -0.0422276
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0099851   -0.0545672    0.0345969
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0188816   -0.0630561    0.0252930
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0532462   -0.1497630    0.0432706
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0369094   -0.0130737    0.0868925
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0793817   -0.0019246    0.1606879
3-6 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.0033999   -0.0464287    0.0532284
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0539051   -0.0638202    0.1716304
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0028330   -0.0630229    0.0573569
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0111699   -0.0544216    0.0320819
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0422563   -0.0994504    0.0149379
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0043770   -0.0421072    0.0333531
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0567812   -0.0086554    0.1222179
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0401298   -0.0564928   -0.0237668
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0214021   -0.0820357    0.0392315
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0204147   -0.0244455    0.0652749
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0043754   -0.0326760    0.0414267
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0517928    0.0137819    0.0898037
3-6 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         1                    0                  0.0214608   -0.0098229    0.0527444
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0050375   -0.0300392    0.0401141
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.0448184   -0.0017568    0.0913935
3-6 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           1                    0                  0.0553361   -0.0157440    0.1264162
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0261550    0.0014666    0.0508434
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0230785    0.0076743    0.0384827
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0117372   -0.0608709    0.0373964
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0155854   -0.0272888   -0.0038820
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0155969    0.0074297    0.0237640
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0093974   -0.0510007    0.0322058
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0216460   -0.0577449    0.0144529
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0482681   -0.0526437    0.1491800
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          1                    0                  0.0059141   -0.0354302    0.0472585
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0071057   -0.0597469    0.0455354
6-9 months     ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           1                    0                  0.0284273   -0.0171762    0.0740309
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0357292   -0.0287852    0.1002436
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0294726   -0.0311872    0.0901324
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0007631   -0.0369853    0.0354591
6-9 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          1                    0                  0.0221882   -0.0235959    0.0679722
6-9 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0200559   -0.0104844    0.0505961
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000109-ResPak           PAKISTAN                       1                    0                  0.0586313    0.0028804    0.1143823
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0291751    0.0163205    0.0420297
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0012027   -0.0690101    0.0714156
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0375504    0.0007755    0.0743253
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0121567   -0.0243352    0.0486486
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0072883   -0.0344974    0.0199209
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0207815   -0.0626613    0.0210982
6-9 months     ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         1                    0                 -0.0260411   -0.0671099    0.0150278
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0395620   -0.0081977    0.0873217
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0371756   -0.0098928    0.0842441
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CMIN             BANGLADESH                     1                    0                  0.0336384   -0.0070726    0.0743493
6-9 months     ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT          PERU                           1                    0                  0.0017041   -0.0577514    0.0611595
6-9 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0168573   -0.0022597    0.0359742
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0003443   -0.0137547    0.0144433
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0084374   -0.0547266    0.0378519
6-9 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0178934   -0.0301278   -0.0056591
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0198096   -0.0455034    0.0058841
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0108816   -0.0356198    0.0138566
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0114980   -0.0517068    0.0287107
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0020860   -0.0901516    0.0943236
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0200721   -0.0150075    0.0551516
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0021356   -0.0420943    0.0378231
9-12 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0233244   -0.0577241    0.0110754
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0088061   -0.0617890    0.0794011
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0319364   -0.0149449    0.0788177
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0217764   -0.0255741    0.0691268
9-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0247855   -0.0700050    0.0204339
9-12 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.0068602   -0.0402124    0.0264919
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0096691   -0.0654332    0.0460950
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0124287   -0.0316726    0.0565301
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0404628   -0.0335332    0.1144587
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0079483   -0.0400017    0.0241052
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0297786   -0.0616908    0.0021337
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0082038   -0.0169051    0.0333126
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0238240   -0.0586952    0.0110472
9-12 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0184514   -0.0650557    0.0281529
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0037031   -0.0515040    0.0589103
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0053365   -0.0352893    0.0459622
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0113684   -0.0594206    0.0366838
9-12 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT          PERU                           1                    0                  0.0310860   -0.0351792    0.0973511
9-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0151679   -0.0118001    0.0421358
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0003872   -0.0141945    0.0149688
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0149533   -0.0488504    0.0189439
9-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0009918   -0.0138346    0.0118510
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0009667   -0.0338965    0.0319631
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0065636   -0.0216084    0.0084812
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0074429   -0.0312422    0.0461280
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0724227   -0.0230315    0.1678770
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0013374   -0.0423579    0.0396832
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0236392   -0.0781960    0.0309176
12-15 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0083386   -0.0395470    0.0562242
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0213038   -0.0589812    0.1015887
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0435656   -0.1083389    0.0212076
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0098469   -0.0255727    0.0452664
12-15 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          1                    0                 -0.0118163   -0.0492533    0.0256207
12-15 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0037843   -0.0398984    0.0323298
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0391472   -0.1208324    0.0425379
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0011955   -0.0337185    0.0313274
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0412891   -0.0981040    0.0155258
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0099219   -0.0253390    0.0451828
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0186334   -0.0610414    0.0237745
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0298013   -0.0584793   -0.0011233
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0126874   -0.0531504    0.0277755
12-15 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0355576   -0.0030975    0.0742127
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  0.0345709   -0.0185681    0.0877099
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0035102   -0.0303572    0.0373776
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0263877   -0.0141862    0.0669617
12-15 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT          PERU                           1                    0                 -0.0302011   -0.0808187    0.0204164
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0052832   -0.0180247    0.0285911
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0082928   -0.0367586    0.0201729
12-15 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0017954   -0.0689037    0.0653129
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0122117   -0.0330756    0.0086522
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0048517   -0.0483740    0.0386707
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0450378   -0.0189166    0.1089923
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0162993   -0.0603213    0.0277227
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.0108820   -0.0701227    0.0483587
15-18 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.0140578   -0.0611497    0.0330341
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0487790   -0.0713945    0.1689525
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0194651   -0.0435851    0.0825153
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0178434   -0.0476131    0.0119264
15-18 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          1                    0                  0.0437299    0.0044881    0.0829716
15-18 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0056130   -0.0346604    0.0234343
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0131791    0.0038308    0.0225274
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0195812   -0.0474299    0.0865922
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0505881   -0.0833776   -0.0177987
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0224367   -0.0169448    0.0618183
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0192635   -0.0455455    0.0070184
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0307838   -0.0828824    0.0213148
15-18 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0340147   -0.0730917    0.0050622
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0006972   -0.0390083    0.0376139
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0194057   -0.0249734    0.0637847
15-18 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT          PERU                           1                    0                 -0.0835041   -0.1260713   -0.0409368
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0056463   -0.0346047    0.0233120
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0047891   -0.0346862    0.0442644
15-18 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    0                  0.0116247   -0.0492971    0.0725464
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0042215   -0.0235767    0.0151337
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0191958   -0.0231024    0.0614941
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0276470   -0.1085789    0.0532849
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.0085715   -0.0337591    0.0509022
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0196057   -0.0248876    0.0640990
18-21 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.0178809   -0.0786897    0.0429279
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0158710   -0.1400967    0.1083546
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0322237   -0.1066067    0.0421594
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0218432   -0.0510069    0.0073204
18-21 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          1                    0                  0.0007894   -0.0445310    0.0461098
18-21 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0295478   -0.0611879    0.0020923
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0163396   -0.0542388    0.0215595
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0247421   -0.0074118    0.0568961
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0101666   -0.0414133    0.0210801
18-21 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         1                    0                  0.0135784   -0.0278600    0.0550167
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0153895   -0.0506432    0.0198641
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0157845   -0.0293863    0.0609553
18-21 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT          PERU                           1                    0                 -0.0024169   -0.0743665    0.0695328
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0109990   -0.0244644    0.0464624
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.0025584   -0.0356521    0.0407689
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0067612   -0.0479781    0.0344557
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0377548   -0.0775030    0.0019934
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0084373   -0.0829645    0.0660898
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0034360   -0.0361521    0.0292801
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0317250   -0.0482118    0.1116618
21-24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           1                    0                  0.0565539   -0.0225929    0.1357006
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.1195068   -0.1912731   -0.0477406
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0055657   -0.0824970    0.0713657
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0191959   -0.0118941    0.0502859
21-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0505509   -0.1018877    0.0007859
21-24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.0072968   -0.0512813    0.0366877
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0363907   -0.0071212    0.0799025
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0310876   -0.0630182    0.0008429
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0229795   -0.0136538    0.0596128
21-24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.0146108   -0.0487610    0.0195394
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0510157   -0.0175400    0.1195713
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0187846   -0.0683354    0.0307661
21-24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT          PERU                           1                    0                  0.0469311   -0.1228037    0.2166660
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0083096   -0.0730137    0.0563946
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.0070842   -0.0420996    0.0279312
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.0364795   -0.0889090    0.0159500


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0112249   -0.0228160    0.0003661
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0061906   -0.0169194    0.0045383
0-3 months     ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0041857   -0.0136686    0.0052973
0-3 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0085564   -0.0196789    0.0025661
0-3 months     ki0047075b-MAL-ED          PERU                           0                    NA                -0.0048813   -0.0127315    0.0029689
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0120064    0.0011330    0.0228797
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0094475   -0.0218783    0.0029834
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0143198   -0.0264787   -0.0021610
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.0053358   -0.0125092    0.0018377
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0353148   -0.0556312   -0.0149985
0-3 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0091518   -0.0249777    0.0432814
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0088706   -0.0205260    0.0027849
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0006938   -0.0092615    0.0078739
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0039257   -0.0087721    0.0009207
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0097635   -0.0159122   -0.0036147
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0063493   -0.0091011   -0.0035975
0-3 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0031633   -0.0068535    0.0005269
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0002234   -0.0072674    0.0068207
0-3 months     ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0046664   -0.0579703    0.0486374
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.0004374   -0.0010765    0.0002017
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0031540   -0.0049108   -0.0013972
0-3 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0161000   -0.0250494   -0.0071506
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0094568   -0.0111917   -0.0077219
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0165893   -0.0191298   -0.0140487
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0026096   -0.0142681    0.0090490
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0029984   -0.0100692    0.0040725
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0063998   -0.0182377    0.0054382
3-6 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0056167   -0.0021809    0.0134142
3-6 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0091987   -0.0007742    0.0191717
3-6 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0004329   -0.0059137    0.0067796
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0055458   -0.0067404    0.0178319
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004504   -0.0100213    0.0091204
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0024282   -0.0118443    0.0069878
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0052953   -0.0125931    0.0020025
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.0018781   -0.0180698    0.0143136
3-6 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0145593   -0.0026673    0.0317859
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0092786   -0.0127928   -0.0057643
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0033620   -0.0129103    0.0061862
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0021060   -0.0025484    0.0067604
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0006233   -0.0046559    0.0059025
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0036106    0.0008860    0.0063351
3-6 months     ki1101329-Keneba           GAMBIA                         0                    NA                 0.0020862   -0.0009731    0.0051456
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0008270   -0.0049343    0.0065884
3-6 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0170505   -0.0009466    0.0350475
3-6 months     ki1114097-CONTENT          PERU                           0                    NA                 0.0046544   -0.0016701    0.0109789
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0001795   -0.0004161    0.0007751
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0023575    0.0007743    0.0039407
3-6 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0015193   -0.0078912    0.0048526
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0018190   -0.0031901   -0.0004478
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0048606    0.0022772    0.0074439
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0023166   -0.0125754    0.0079423
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0033822   -0.0091162    0.0023518
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0058507   -0.0065773    0.0182787
6-9 months     ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0009000   -0.0053976    0.0071975
6-9 months     ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0008342   -0.0070209    0.0053526
6-9 months     ki0047075b-MAL-ED          PERU                           0                    NA                 0.0038290   -0.0024331    0.0100911
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0035575   -0.0030132    0.0101281
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0048466   -0.0052306    0.0149239
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0001573   -0.0076247    0.0073101
6-9 months     ki1000108-IRC              INDIA                          0                    NA                 0.0028141   -0.0030366    0.0086648
6-9 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0085287   -0.0045068    0.0215643
6-9 months     ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0151703    0.0001397    0.0302010
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0071687    0.0037773    0.0105602
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0004388   -0.0251797    0.0260574
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0058814   -0.0000022    0.0117650
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0013085   -0.0026315    0.0052485
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0009886   -0.0046840    0.0027068
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0013891   -0.0042009    0.0014226
6-9 months     ki1101329-Keneba           GAMBIA                         0                    NA                -0.0025322   -0.0065572    0.0014928
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0103527   -0.0023615    0.0230669
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0058452   -0.0016547    0.0133451
6-9 months     ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0133033   -0.0029794    0.0295860
6-9 months     ki1114097-CONTENT          PERU                           0                    NA                 0.0001433   -0.0048580    0.0051447
6-9 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0001022   -0.0003641    0.0005685
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000354   -0.0014125    0.0014832
6-9 months     ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0012484   -0.0081037    0.0056070
6-9 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0021079   -0.0035566   -0.0006593
6-9 months     ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0072388   -0.0166610    0.0021833
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0027729   -0.0090866    0.0035408
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0018908   -0.0085264    0.0047448
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0002473   -0.0106885    0.0111831
9-12 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0031832   -0.0024616    0.0088280
9-12 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0002518   -0.0049639    0.0044603
9-12 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0030768   -0.0077260    0.0015723
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0009449   -0.0066378    0.0085276
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0049901   -0.0024916    0.0124717
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0043952   -0.0052087    0.0139992
9-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0031366   -0.0089156    0.0026424
9-12 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0029552   -0.0173270    0.0114167
9-12 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0026245   -0.0177773    0.0125284
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0033166   -0.0085367    0.0151699
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0146116   -0.0124889    0.0417120
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0012559   -0.0063271    0.0038154
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0031401   -0.0065882    0.0003080
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0011291   -0.0023331    0.0045913
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0014959   -0.0037123    0.0007206
9-12 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0016926   -0.0059822    0.0025970
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0009955   -0.0138471    0.0158380
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0008816   -0.0058322    0.0075954
9-12 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0045473   -0.0237877    0.0146930
9-12 months    ki1114097-CONTENT          PERU                           0                    NA                 0.0026394   -0.0031071    0.0083859
9-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0000944   -0.0005952    0.0007840
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000415   -0.0015222    0.0016053
9-12 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0026448   -0.0086639    0.0033743
9-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0001171   -0.0016341    0.0013998
9-12 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0003811   -0.0133640    0.0126017
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0017201   -0.0057170    0.0022768
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0011586   -0.0048742    0.0071913
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0086592   -0.0032507    0.0205692
12-15 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0002130   -0.0067476    0.0063215
12-15 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0027750   -0.0092549    0.0037048
12-15 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0010796   -0.0051308    0.0072899
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0023359   -0.0065097    0.0111816
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0067469   -0.0169874    0.0034936
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0021227   -0.0055250    0.0097704
12-15 months   ki1000108-IRC              INDIA                          0                    NA                -0.0014770   -0.0061727    0.0032186
12-15 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0017017   -0.0179423    0.0145390
12-15 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0127654   -0.0396674    0.0141366
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0003298   -0.0093400    0.0086804
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0150649   -0.0362902    0.0061604
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0015927   -0.0040772    0.0072625
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0018044   -0.0059373    0.0023286
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0042509   -0.0084176   -0.0000843
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0008180   -0.0034359    0.0017999
12-15 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0032108   -0.0003221    0.0067437
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0090028   -0.0051678    0.0231734
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0006135   -0.0053071    0.0065341
12-15 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0107874   -0.0059223    0.0274972
12-15 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0027318   -0.0074666    0.0020030
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0006910   -0.0023585    0.0037404
12-15 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0020443   -0.0090696    0.0049810
12-15 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0007694   -0.0295306    0.0279917
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0033368   -0.0090855    0.0024118
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0007552   -0.0075341    0.0060236
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0046325   -0.0022526    0.0115176
15-18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0025963   -0.0096519    0.0044592
15-18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0012943   -0.0083555    0.0057669
15-18 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0019050   -0.0083193    0.0045092
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0049863   -0.0074496    0.0174222
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0030967   -0.0069782    0.0131717
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0039530   -0.0105973    0.0026913
15-18 months   ki1000108-IRC              INDIA                          0                    NA                 0.0052521    0.0003282    0.0101761
15-18 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0023911   -0.0147694    0.0099872
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0037499    0.0008308    0.0066689
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0070710   -0.0172261    0.0313681
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0086755   -0.0145693   -0.0027816
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0021048   -0.0016312    0.0058407
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0027701   -0.0065878    0.0010475
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0020399   -0.0055411    0.0014613
15-18 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0029719   -0.0064241    0.0004802
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0001184   -0.0066241    0.0063873
15-18 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0078575   -0.0101717    0.0258867
15-18 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0075109   -0.0126415   -0.0023804
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0008861   -0.0054319    0.0036598
15-18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0011469   -0.0083087    0.0106024
15-18 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0046889   -0.0199061    0.0292840
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0011561   -0.0064287    0.0041164
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0030309   -0.0037152    0.0097770
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0029799   -0.0118001    0.0058402
18-21 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0013654   -0.0053900    0.0081208
18-21 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0023320   -0.0030245    0.0076884
18-21 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0022130   -0.0097827    0.0053568
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0016348   -0.0144456    0.0111760
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0049575   -0.0165101    0.0065951
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0047914   -0.0112675    0.0016847
18-21 months   ki1000108-IRC              INDIA                          0                    NA                 0.0000997   -0.0056250    0.0058245
18-21 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0111239   -0.0231648    0.0009171
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0027878   -0.0092806    0.0037050
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0024651   -0.0007987    0.0057289
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0013940   -0.0056883    0.0029004
18-21 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0013186   -0.0027112    0.0053483
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0025821   -0.0085212    0.0033569
18-21 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0062181   -0.0116155    0.0240518
18-21 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0001981   -0.0060964    0.0057002
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0020759   -0.0046254    0.0087773
18-21 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0006044   -0.0084224    0.0096311
18-21 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0023627   -0.0167690    0.0120436
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0058365   -0.0122576    0.0005846
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0009716   -0.0095634    0.0076202
21-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0005473   -0.0057613    0.0046667
21-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0037735   -0.0058283    0.0133752
21-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0071814   -0.0032231    0.0175860
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0122050   -0.0208778   -0.0035321
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0008376   -0.0124178    0.0107427
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0040737   -0.0025817    0.0107292
21-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0063676   -0.0130461    0.0003109
21-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0028224   -0.0198488    0.0142041
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0061094   -0.0013132    0.0135320
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0032049   -0.0066027    0.0001929
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0031696   -0.0019316    0.0082707
21-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0013909   -0.0046510    0.0018691
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0083291   -0.0030407    0.0196988
21-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0077681   -0.0283197    0.0127835
21-24 months   ki1114097-CONTENT          PERU                           0                    NA                 0.0061751   -0.0167359    0.0290862
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0018374   -0.0161502    0.0124754
21-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0018791   -0.0111720    0.0074137
21-24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0132910   -0.0324733    0.0058913
