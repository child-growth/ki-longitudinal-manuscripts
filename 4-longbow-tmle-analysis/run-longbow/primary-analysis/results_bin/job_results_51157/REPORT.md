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

**Outcome Variable:** ever_sstunted

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

agecat        studyid                    country                        sex       ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  -------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female                0      111     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female                1       25     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                  0       97     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                  1       32     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female                0      106     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female                1        7     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                  0      109     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                  1       11     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Female                0      115     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Female                1       23     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                  0       80     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                  1       33     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female                0      102     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female                1        8     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                  0      117     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                  1       13     240
0-24 months   ki0047075b-MAL-ED          PERU                           Female                0      118     303
0-24 months   ki0047075b-MAL-ED          PERU                           Female                1       25     303
0-24 months   ki0047075b-MAL-ED          PERU                           Male                  0      121     303
0-24 months   ki0047075b-MAL-ED          PERU                           Male                  1       39     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female                0      127     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female                1       32     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                  0      115     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                  1       40     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female                0       71     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female                1       62     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                  0       56     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                  1       73     262
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female                0       80     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female                1      107     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                  0       56     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                  1      130     373
0-24 months   ki1000108-IRC              INDIA                          Female                0      142     410
0-24 months   ki1000108-IRC              INDIA                          Female                1       43     410
0-24 months   ki1000108-IRC              INDIA                          Male                  0      166     410
0-24 months   ki1000108-IRC              INDIA                          Male                  1       59     410
0-24 months   ki1000109-EE               PAKISTAN                       Female                0       61     379
0-24 months   ki1000109-EE               PAKISTAN                       Female                1      124     379
0-24 months   ki1000109-EE               PAKISTAN                       Male                  0       70     379
0-24 months   ki1000109-EE               PAKISTAN                       Male                  1      124     379
0-24 months   ki1000109-ResPak           PAKISTAN                       Female                0       86     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Female                1       46     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                  0       79     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                  1       67     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female                0      483    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female                1      217    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                  0      543    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                  1      290    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female                0      125     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female                1       98     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                  0       92     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                  1      103     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female                0      217     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female                1       80     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                  0      216     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                  1      116     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female                0      292     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female                1       40     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                  0      314     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                  1       54     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female                0      336     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female                1       45     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                  0      323     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                  1       54     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female                0     1101    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female                1       83    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                  0     1056    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                  1      156    2396
0-24 months   ki1101329-Keneba           GAMBIA                         Female                0     1155    2915
0-24 months   ki1101329-Keneba           GAMBIA                         Female                1      252    2915
0-24 months   ki1101329-Keneba           GAMBIA                         Male                  0     1141    2915
0-24 months   ki1101329-Keneba           GAMBIA                         Male                  1      367    2915
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female                0      146     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female                1       16     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                  0      113     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                  1       40     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female                0     1490    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female                1      135    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                  0     1418    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                  1      222    3265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female                0      220     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female                1       68     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                  0      228     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                  1       86     602
0-24 months   ki1114097-CMIN             BANGLADESH                     Female                0       60     277
0-24 months   ki1114097-CMIN             BANGLADESH                     Female                1       60     277
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                  0       79     277
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                  1       78     277
0-24 months   ki1114097-CMIN             BRAZIL                         Female                0       55     119
0-24 months   ki1114097-CMIN             BRAZIL                         Female                1        7     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male                  0       46     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male                  1       11     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female                0      665    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female                1       93    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                  0      618    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                  1      131    1507
0-24 months   ki1114097-CMIN             PERU                           Female                0      400     929
0-24 months   ki1114097-CMIN             PERU                           Female                1       44     929
0-24 months   ki1114097-CMIN             PERU                           Male                  0      417     929
0-24 months   ki1114097-CMIN             PERU                           Male                  1       68     929
0-24 months   ki1114097-CONTENT          PERU                           Female                0      104     215
0-24 months   ki1114097-CONTENT          PERU                           Female                1        2     215
0-24 months   ki1114097-CONTENT          PERU                           Male                  0       96     215
0-24 months   ki1114097-CONTENT          PERU                           Male                  1       13     215
0-24 months   ki1119695-PROBIT           BELARUS                        Female                0     8656   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Female                1       87   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Male                  0     7575   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Male                  1      579   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female                0     5910   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female                1      924   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                  0     5897   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                  1     1342   14073
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female                0      365    1368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female                1      279    1368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                  0      368    1368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                  1      356    1368
0-24 months   ki1135781-COHORTS          INDIA                          Female                0     3163    7417
0-24 months   ki1135781-COHORTS          INDIA                          Female                1      391    7417
0-24 months   ki1135781-COHORTS          INDIA                          Male                  0     3308    7417
0-24 months   ki1135781-COHORTS          INDIA                          Male                  1      555    7417
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female                0      972    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female                1      465    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                  0      997    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                  1      624    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         Female                0      356     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Female                1       65     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                  0      307     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                  1      112     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female                0    11187   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female                1     2195   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                  0    11045   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                  1     2809   27236
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female                0     2245    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female                1      479    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                  0     2092    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                  1      626    5442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female                0      125     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female                1       11     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                  0      119     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                  1       10     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female                0      106     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female                1        7     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                  0      112     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                  1        8     233
0-6 months    ki0047075b-MAL-ED          INDIA                          Female                0      132     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Female                1        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                  0       99     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                  1       14     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female                0      109     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female                1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                  0      122     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                  1        8     240
0-6 months    ki0047075b-MAL-ED          PERU                           Female                0      128     303
0-6 months    ki0047075b-MAL-ED          PERU                           Female                1       15     303
0-6 months    ki0047075b-MAL-ED          PERU                           Male                  0      137     303
0-6 months    ki0047075b-MAL-ED          PERU                           Male                  1       23     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female                0      143     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female                1       16     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                  0      142     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                  1       13     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female                0      114     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female                1       19     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                  0      111     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                  1       18     262
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female                0      147     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female                1       38     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                  0      130     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                  1       53     368
0-6 months    ki1000108-IRC              INDIA                          Female                0      159     410
0-6 months    ki1000108-IRC              INDIA                          Female                1       26     410
0-6 months    ki1000108-IRC              INDIA                          Male                  0      189     410
0-6 months    ki1000108-IRC              INDIA                          Male                  1       36     410
0-6 months    ki1000109-EE               PAKISTAN                       Female                0      111     379
0-6 months    ki1000109-EE               PAKISTAN                       Female                1       74     379
0-6 months    ki1000109-EE               PAKISTAN                       Male                  0      103     379
0-6 months    ki1000109-EE               PAKISTAN                       Male                  1       91     379
0-6 months    ki1000109-ResPak           PAKISTAN                       Female                0       90     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Female                1       42     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                  0       89     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                  1       57     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female                0      610    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female                1       90    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                  0      691    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                  1      139    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female                0      197     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female                1       25     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                  0      169     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                  1       25     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female                0      271     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female                1       26     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                  0      299     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                  1       33     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female                0      323     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female                1        9     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                  0      346     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                  1       22     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female                0      362     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female                1       19     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                  0      349     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                  1       28     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female                0     1143    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female                1       41    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                  0     1148    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                  1       64    2396
0-6 months    ki1101329-Keneba           GAMBIA                         Female                0     1069    2465
0-6 months    ki1101329-Keneba           GAMBIA                         Female                1      116    2465
0-6 months    ki1101329-Keneba           GAMBIA                         Male                  0     1109    2465
0-6 months    ki1101329-Keneba           GAMBIA                         Male                  1      171    2465
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female                0      146     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female                1        8     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                  0      122     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                  1       19     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female                0      275     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female                1       13     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                  0      285     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                  1       29     602
0-6 months    ki1114097-CMIN             BANGLADESH                     Female                0       97     277
0-6 months    ki1114097-CMIN             BANGLADESH                     Female                1       23     277
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                  0      110     277
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                  1       47     277
0-6 months    ki1114097-CMIN             BRAZIL                         Female                0       60     119
0-6 months    ki1114097-CMIN             BRAZIL                         Female                1        2     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male                  0       52     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male                  1        5     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female                0      456     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female                1       17     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                  0      468     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                  1       24     965
0-6 months    ki1114097-CMIN             PERU                           Female                0      318     699
0-6 months    ki1114097-CMIN             PERU                           Female                1        7     699
0-6 months    ki1114097-CMIN             PERU                           Male                  0      360     699
0-6 months    ki1114097-CMIN             PERU                           Male                  1       14     699
0-6 months    ki1114097-CONTENT          PERU                           Female                0      104     215
0-6 months    ki1114097-CONTENT          PERU                           Female                1        2     215
0-6 months    ki1114097-CONTENT          PERU                           Male                  0      102     215
0-6 months    ki1114097-CONTENT          PERU                           Male                  1        7     215
0-6 months    ki1119695-PROBIT           BELARUS                        Female                0     8714   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Female                1       27   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Male                  0     7939   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Male                  1      213   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female                0     6284   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female                1      543   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                  0     6490   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                  1      734   14051
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female                0      476    1092
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female                1       45    1092
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                  0      506    1092
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                  1       65    1092
0-6 months    ki1135781-COHORTS          INDIA                          Female                0     3329    7176
0-6 months    ki1135781-COHORTS          INDIA                          Female                1      151    7176
0-6 months    ki1135781-COHORTS          INDIA                          Male                  0     3494    7176
0-6 months    ki1135781-COHORTS          INDIA                          Male                  1      202    7176
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female                0     1374    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female                1       63    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                  0     1493    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                  1      128    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         Female                0      125     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Female                1        4     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                  0      127     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                  1       16     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female                0    11539   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female                1     1819   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                  0    11647   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                  1     2165   27170
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female                0     2358    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female                1      225    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                  0     2252    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                  1      295    5130


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/a65de94e-5319-4f94-9232-3724e885cd3a/c6f9f7d2-a7c1-4163-ae77-e9b5f1caf51c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a65de94e-5319-4f94-9232-3724e885cd3a/c6f9f7d2-a7c1-4163-ae77-e9b5f1caf51c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a65de94e-5319-4f94-9232-3724e885cd3a/c6f9f7d2-a7c1-4163-ae77-e9b5f1caf51c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a65de94e-5319-4f94-9232-3724e885cd3a/c6f9f7d2-a7c1-4163-ae77-e9b5f1caf51c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1838235   0.1186018   0.2490452
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.2480620   0.1733922   0.3227319
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.0619469   0.0174052   0.1064886
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.0916667   0.0399275   0.1434059
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.1666667   0.1043636   0.2289697
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.2920354   0.2080315   0.3760393
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.0727273   0.0240965   0.1213580
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1000000   0.0483222   0.1516778
0-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.1748252   0.1124699   0.2371804
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.2437500   0.1771137   0.3103863
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.2012579   0.1388381   0.2636776
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.2580645   0.1890688   0.3270602
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.4661654   0.3812227   0.5511081
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.5658915   0.4801977   0.6515853
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.5721925   0.5011848   0.6432002
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.6989247   0.6329121   0.7649374
0-24 months   ki1000108-IRC              INDIA                          Female               NA                0.2324324   0.1714929   0.2933720
0-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.2622222   0.2046803   0.3197642
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.6702703   0.6024374   0.7381031
0-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.6391753   0.5715079   0.7068426
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.3484848   0.2670523   0.4299174
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.4589041   0.3779289   0.5398794
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.3100000   0.2770153   0.3429847
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.3481393   0.3004483   0.3958302
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.4394619   0.3742422   0.5046816
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.5282051   0.4580549   0.5983553
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.2693603   0.2188670   0.3198536
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.3493976   0.2980710   0.4007242
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.1204819   0.0854412   0.1555226
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1467391   0.1105608   0.1829175
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1181102   0.0856820   0.1505385
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.1432361   0.1078509   0.1786212
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0701014   0.0555553   0.0846474
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1287129   0.1098556   0.1475702
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.1791045   0.1590656   0.1991433
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.2433687   0.2217068   0.2650306
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.0987654   0.0527501   0.1447808
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.2614379   0.1916997   0.3311761
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0830769   0.0629294   0.1032244
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.1353659   0.1044940   0.1662377
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.2361111   0.1870219   0.2852003
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.2738854   0.2245190   0.3232517
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.5000000   0.4103784   0.5896216
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.4968153   0.4184642   0.5751663
0-24 months   ki1114097-CMIN             BRAZIL                         Female               NA                0.1129032   0.0337947   0.1920118
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 NA                0.1929825   0.0900995   0.2958654
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.1226913   0.0993276   0.1460549
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.1748999   0.1476854   0.2021143
0-24 months   ki1114097-CMIN             PERU                           Female               NA                0.0990991   0.0712915   0.1269067
0-24 months   ki1114097-CMIN             PERU                           Male                 NA                0.1402062   0.1092896   0.1711228
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0099508   0.0059718   0.0139299
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0710081   0.0573366   0.0846796
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1352063   0.1270989   0.1433137
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1853847   0.1764324   0.1943371
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.4332298   0.3949450   0.4715146
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.4917127   0.4552836   0.5281418
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.1100169   0.0997287   0.1203051
0-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.1436707   0.1326091   0.1547324
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.3235908   0.2993976   0.3477840
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.3849476   0.3612565   0.4086386
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.1543943   0.1198588   0.1889298
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.2673031   0.2249033   0.3097029
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.1640263   0.1570774   0.1709752
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.2027573   0.1951905   0.2103241
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.1758443   0.1598608   0.1918279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.2303164   0.2129150   0.2477178
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.0808824   0.0349718   0.1267929
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.0775194   0.0312858   0.1237530
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.0619469   0.0174052   0.1064886
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.0666667   0.0219402   0.1113931
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.0434783   0.0093858   0.0775708
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1238938   0.0630272   0.1847604
0-6 months    ki0047075b-MAL-ED          PERU                           Female               NA                0.1048951   0.0545900   0.1552003
0-6 months    ki0047075b-MAL-ED          PERU                           Male                 NA                0.1437500   0.0892985   0.1982015
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.1006289   0.0537937   0.1474642
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.0838710   0.0401632   0.1275788
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1428571   0.0832731   0.2024412
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1395349   0.0796259   0.1994438
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.2054054   0.1471103   0.2637005
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.2896175   0.2238105   0.3554245
0-6 months    ki1000108-IRC              INDIA                          Female               NA                0.1405405   0.0903980   0.1906830
0-6 months    ki1000108-IRC              INDIA                          Male                 NA                0.1600000   0.1120392   0.2079608
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.4000000   0.3293127   0.4706873
0-6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.4690722   0.3987555   0.5393889
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.3181818   0.2385814   0.3977823
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.3904110   0.3111364   0.4696855
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.1285714   0.1106534   0.1464894
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.1674699   0.1347190   0.2002208
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1126126   0.0709790   0.1542463
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.1288660   0.0816617   0.1760703
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0875421   0.0553736   0.1197105
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.0993976   0.0671885   0.1316067
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0271084   0.0096271   0.0445897
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.0597826   0.0355424   0.0840228
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0498688   0.0279973   0.0717403
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0742706   0.0477847   0.1007564
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0346284   0.0242118   0.0450450
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0528053   0.0402118   0.0653988
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.0978903   0.0809673   0.1148133
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.1335938   0.1149521   0.1522354
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.0519481   0.0168385   0.0870576
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.1347518   0.0782953   0.1912082
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.0451389   0.0211418   0.0691360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.0923567   0.0603061   0.1244073
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.1916667   0.1211143   0.2622190
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.2993631   0.2275953   0.3711308
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0359408   0.0191571   0.0527245
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0487805   0.0297367   0.0678243
0-6 months    ki1114097-CMIN             PERU                           Female               NA                0.0215385   0.0057443   0.0373326
0-6 months    ki1114097-CMIN             PERU                           Male                 NA                0.0374332   0.0181816   0.0566848
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.0030889   0.0011982   0.0049796
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.0261286   0.0201159   0.0321412
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0795371   0.0731186   0.0859557
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1016058   0.0946384   0.1085731
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0863724   0.0622400   0.1105047
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.1138354   0.0877724   0.1398984
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                0.0433908   0.0366213   0.0501603
0-6 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.0546537   0.0473251   0.0619822
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0438413   0.0332537   0.0544289
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0789636   0.0658332   0.0920940
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.1361731   0.1297689   0.1425773
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.1567478   0.1498792   0.1636164
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0871080   0.0752858   0.0989303
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.1158225   0.1020882   0.1295568


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2150943   0.1655300   0.2646587
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.0772532   0.0428971   0.1116093
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2231076   0.1714997   0.2747154
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0875000   0.0516764   0.1233236
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2112211   0.1651858   0.2572564
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2292994   0.1827279   0.2758709
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5152672   0.4546361   0.5758983
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6353887   0.5864772   0.6843003
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.6543536   0.6064106   0.7022965
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4064748   0.3486326   0.4643170
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3307241   0.3024794   0.3589688
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4808612   0.4329065   0.5288160
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1342857   0.1090095   0.1595619
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0997496   0.0877482   0.1117510
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2123499   0.1975010   0.2271989
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1777778   0.1354898   0.2200657
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1093415   0.0900773   0.1286057
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2558140   0.2209310   0.2906969
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.4981949   0.4392073   0.5571825
0-24 months   ki1114097-CMIN             BRAZIL                         NA                   NA                0.1512605   0.0866122   0.2159088
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1486397   0.1306733   0.1666060
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.1205597   0.0996100   0.1415095
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0394153   0.0310085   0.0478221
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1610176   0.1549448   0.1670903
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4641813   0.4377440   0.4906186
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1275448   0.1199527   0.1351370
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2107143   0.1831192   0.2383093
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1837274   0.1781609   0.1892940
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2030503   0.1912482   0.2148525
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0792453   0.0466613   0.1118293
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.0643777   0.0327970   0.0959584
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0796813   0.0461133   0.1132493
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1254125   0.0880603   0.1627648
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0923567   0.0602816   0.1244318
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1412214   0.0989722   0.1834706
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2472826   0.2031431   0.2914222
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.4353562   0.3853744   0.4853380
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3561151   0.2997244   0.4125058
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1496732   0.1307571   0.1685893
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1201923   0.0889059   0.1514788
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0442857   0.0290345   0.0595370
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0438230   0.0356249   0.0520212
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1164300   0.1037657   0.1290943
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0915254   0.0585643   0.1244865
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0697674   0.0494002   0.0901347
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2527076   0.2014394   0.3039758
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0424870   0.0297546   0.0552194
0-6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0300429   0.0173790   0.0427068
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0142071   0.0107237   0.0176904
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0908832   0.0861303   0.0956361
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1007326   0.0828733   0.1185919
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0491918   0.0441876   0.0541959
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1466323   0.1416239   0.1516407
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1013645   0.0924445   0.1102845


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.3494574   0.8473945    2.148982
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female            1.4797619   0.5932018    3.691316
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.7522124   1.0932981    2.808244
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            1.3750000   0.5905862    3.201269
0-24 months   ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 Female            1.3942500   0.8895555    2.185286
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.2822581   0.8514151    1.931121
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.2139285   0.9578495    1.538469
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.2214853   1.0451039    1.427634
0-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Male                 Female            1.1281654   0.8014734    1.588022
0-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            0.9536082   0.8236915    1.104016
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            1.3168553   0.9825855    1.764842
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.1230299   0.9326578    1.352260
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.2019362   0.9848930    1.466810
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.2971386   1.0222458    1.645953
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.2179348   0.8318349    1.783245
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.2127321   0.8382291    1.754555
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.8360969   1.4242332    2.367064
0-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.3588086   1.1777881    1.567651
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            2.6470588   1.5474148    4.528146
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.6294038   1.2020731    2.208648
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.1599850   0.8809504    1.527402
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9936306   0.7825985    1.261569
0-24 months   ki1114097-CMIN             BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 Female            1.7092732   0.7086696    4.122676
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.4255279   1.1147481    1.822950
0-24 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1114097-CMIN             PERU                           Male                 Female            1.4148078   0.9901635    2.021566
0-24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            7.1359054   5.2811394    9.642076
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.3711247   1.2695223    1.480859
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.1349928   1.0113730    1.273723
0-24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.3058970   1.1569166    1.474062
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.1896121   1.0798157    1.310573
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.7313016   1.3160788    2.277527
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.2361269   1.1738206    1.301740
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.3097743   1.1636754    1.474216
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            0.9584214   0.4207080    2.183395
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 Female            1.0761905   0.4025292    2.877272
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            2.8495574   1.1295804    7.188490
0-6 months    ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           Male                 Female            1.3704167   0.7437777    2.525004
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            0.8334677   0.4144211    1.676238
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.9767442   0.5368085    1.777224
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.4099799   0.9802159    2.028169
0-6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Male                 Female            1.1384615   0.7143995    1.814244
0-6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.1726804   0.9301187    1.478499
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.2270059   0.8890248    1.693477
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.3025435   1.0140362    1.673135
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.1443299   0.6800252    1.925650
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.1354263   0.6956397    1.853248
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            2.2053140   1.0295501    4.723821
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.4893201   0.8462445    2.621080
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.5249135   1.0387904    2.238528
0-6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.3647292   1.0928509    1.704245
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            2.5939716   1.1711724    5.745259
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            2.0460558   1.0844201    3.860445
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            1.5618942   1.0066381    2.423427
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.3572453   0.7384393    2.494606
0-6 months    ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1114097-CMIN             PERU                           Male                 Female            1.7379679   0.7096707    4.256245
0-6 months    ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 Female            8.4588785   4.8685414   14.696933
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.2774632   1.1490987    1.420167
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.3179607   0.9183839    1.891388
0-6 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Male                 Female            1.2595682   1.0253673    1.547262
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.8011221   1.3433951    2.414808
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.1510921   1.0840951    1.222230
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.3296427   1.1071292    1.596878


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0312708   -0.0171467   0.0796883
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0153063   -0.0199065   0.0505192
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0564409    0.0087256   0.1041562
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0147727   -0.0237034   0.0532488
0-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0363959   -0.0119507   0.0847426
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0280415   -0.0179940   0.0740770
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0491018   -0.0106140   0.1088175
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0631962    0.0144231   0.1119694
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0163481   -0.0296696   0.0623657
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0159167   -0.0649859   0.0331525
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0579900   -0.0026703   0.1186502
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0207241   -0.0136409   0.0550890
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0413994   -0.0034864   0.0862851
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0422455    0.0041140   0.0803769
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0138038   -0.0126921   0.0402997
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0124966   -0.0113919   0.0363852
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0296482    0.0175442   0.0417522
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0332454    0.0179352   0.0485557
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0790123    0.0374459   0.1205788
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0262646    0.0098180   0.0427111
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0197028   -0.0166413   0.0560470
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0018051   -0.0692766   0.0656665
0-24 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0383573   -0.0242243   0.1009389
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0259484    0.0080730   0.0438238
0-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0214606   -0.0002883   0.0432096
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0294645    0.0236565   0.0352725
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0258112    0.0195847   0.0320377
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0309515    0.0029400   0.0589630
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0175279    0.0096507   0.0254052
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0325243    0.0145422   0.0505064
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0563200    0.0287764   0.0838635
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0197011    0.0149069   0.0244953
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0272060    0.0154035   0.0390085
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0016371   -0.0333552   0.0300811
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0024308   -0.0300799   0.0349415
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0362030    0.0044061   0.0679999
0-6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.0205174   -0.0186893   0.0597242
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0082722   -0.0399087   0.0233642
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0016358   -0.0432386   0.0399670
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0418772   -0.0020526   0.0858070
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0106790   -0.0274107   0.0487686
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0353562   -0.0157988   0.0865112
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0379333   -0.0212191   0.0970857
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0211018   -0.0004627   0.0426662
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0075797   -0.0217831   0.0369425
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0062576   -0.0177743   0.0302895
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0171773    0.0014192   0.0329354
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0121365   -0.0049695   0.0292425
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0091947    0.0009195   0.0174698
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0185397    0.0054469   0.0316325
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0395774    0.0074509   0.0717039
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0246286    0.0036596   0.0455975
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0610409    0.0036536   0.1184283
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0065462   -0.0064021   0.0194946
0-6 months    ki1114097-CMIN             PERU                           Female               NA                 0.0085045   -0.0048320   0.0218409
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0111182    0.0084219   0.0138144
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0113461    0.0064722   0.0162199
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0143602   -0.0042306   0.0329511
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0058009    0.0006608   0.0109411
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0186178    0.0096551   0.0275805
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0104592    0.0060010   0.0149174
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0142565    0.0050926   0.0234205


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1453818   -0.1104170   0.3422541
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.1981318   -0.4026375   0.5415832
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.2529762    0.0114853   0.4354716
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.1688312   -0.4029836   0.5075911
0-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.1723121   -0.0890912   0.3709734
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1222921   -0.1023672   0.3011665
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0952938   -0.0289176   0.2045103
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0994607    0.0184481   0.1737870
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0657128   -0.1386877   0.2334223
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0243243   -0.1021919   0.0480420
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.1426656   -0.0206317   0.2798360
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0626627   -0.0446081   0.1589179
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0860942   -0.0124865   0.1750765
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1355734    0.0043719   0.2494855
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1027942   -0.1170392   0.2793643
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0956812   -0.1062779   0.2607712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2972266    0.1701477   0.4048454
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.1565597    0.0817841   0.2252459
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.4444444    0.1820801   0.6226501
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.2402069    0.0861335   0.3683042
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0770202   -0.0764047   0.2085768
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0036232   -0.1486190   0.1230691
0-24 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.2535842   -0.2810532   0.5650949
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1745724    0.0466421   0.2853359
0-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.1780084   -0.0211489   0.3383235
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.7475391    0.6705580   0.8065319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1603007    0.1210634   0.1977864
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0666797    0.0042614   0.1251853
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.1374258    0.0738370   0.1966486
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0913308    0.0394053   0.1404495
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.2672813    0.1276227   0.3845820
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.1072301    0.0808995   0.1328065
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1339865    0.0739985   0.1900883
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0206583   -0.5106301   0.3103915
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0377581   -0.6258323   0.4305013
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.4543478   -0.0459568   0.7153455
0-6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.1635996   -0.2112544   0.4224453
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0895684   -0.4905703   0.2035536
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0115830   -0.3535390   0.2439818
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1693496   -0.0272770   0.3283407
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0706190   -0.2182434   0.2909881
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0812121   -0.0443088   0.1916460
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.1065197   -0.0760159   0.2580900
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.1409857   -0.0038641   0.2649347
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0630631   -0.2155102   0.2777923
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0667123   -0.2275646   0.2904439
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.3878741   -0.0517628   0.6437427
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1957335   -0.1266196   0.4258536
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2098134    0.0013534   0.3747589
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.1592349    0.0401075   0.2635780
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.4324194    0.0044090   0.6764257
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.3530092   -0.0037780   0.5829785
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.2415476   -0.0197142   0.4358713
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1540762   -0.2081598   0.4077049
0-6 months    ki1114097-CMIN             PERU                           Female               NA                 0.2830769   -0.3029722   0.6055337
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.7825807    0.6442434   0.8671250
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1248424    0.0698873   0.1765505
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.1425580   -0.0616268   0.3074716
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.1179251    0.0076991   0.2159071
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.2980795    0.1454556   0.4234444
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0713297    0.0405444   0.1011272
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1406459    0.0463771   0.2255960
