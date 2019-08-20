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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        sex       ever_co   n_cell       n
------------  -------------------------  -----------------------------  -------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female          0      115     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female          1       19     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male            0      109     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male            1       20     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female          0      113     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female          1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male            0      118     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male            1        2     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Female          0      113     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Female          1       25     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male            0       84     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male            1       29     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female          0       99     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female          1       11     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male            0      120     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male            1       10     240
0-24 months   ki0047075b-MAL-ED          PERU                           Female          0      138     302
0-24 months   ki0047075b-MAL-ED          PERU                           Female          1        4     302
0-24 months   ki0047075b-MAL-ED          PERU                           Male            0      152     302
0-24 months   ki0047075b-MAL-ED          PERU                           Male            1        8     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female          0      150     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female          1        8     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male            0      140     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male            1       14     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          0      120     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          1       12     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            0      118     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            1       11     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female          0      157     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female          1       30     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male            0      130     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male            1       56     373
0-24 months   ki1000108-IRC              INDIA                          Female          0      152     410
0-24 months   ki1000108-IRC              INDIA                          Female          1       33     410
0-24 months   ki1000108-IRC              INDIA                          Male            0      182     410
0-24 months   ki1000108-IRC              INDIA                          Male            1       43     410
0-24 months   ki1000109-EE               PAKISTAN                       Female          0      120     379
0-24 months   ki1000109-EE               PAKISTAN                       Female          1       65     379
0-24 months   ki1000109-EE               PAKISTAN                       Male            0      115     379
0-24 months   ki1000109-EE               PAKISTAN                       Male            1       79     379
0-24 months   ki1000109-ResPak           PAKISTAN                       Female          0      116     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Female          1       16     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male            0      122     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male            1       24     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female          0      525    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female          1      161    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male            0      637    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male            1      190    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female          0      146     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female          1       77     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male            0      117     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male            1       78     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female          0      248     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female          1       48     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male            0      239     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male            1       89     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female          0      291     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female          1       41     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male            0      319     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male            1       49     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female          0      351     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female          1       30     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male            0      336     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male            1       41     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          0     1142    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          1       42    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            0     1135    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            1       77    2396
0-24 months   ki1101329-Keneba           GAMBIA                         Female          0     1228    2912
0-24 months   ki1101329-Keneba           GAMBIA                         Female          1      177    2912
0-24 months   ki1101329-Keneba           GAMBIA                         Male            0     1252    2912
0-24 months   ki1101329-Keneba           GAMBIA                         Male            1      255    2912
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female          0      155     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female          1        7     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male            0      137     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male            1       16     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female          0     1467    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female          1      158    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male            0     1391    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male            1      249    3265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female          0      195     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female          1       93     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male            0      214     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male            1      100     602
0-24 months   ki1114097-CMIN             BANGLADESH                     Female          0       76     271
0-24 months   ki1114097-CMIN             BANGLADESH                     Female          1       42     271
0-24 months   ki1114097-CMIN             BANGLADESH                     Male            0      103     271
0-24 months   ki1114097-CMIN             BANGLADESH                     Male            1       50     271
0-24 months   ki1114097-CMIN             BRAZIL                         Female          0       61     119
0-24 months   ki1114097-CMIN             BRAZIL                         Female          1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male            0       57     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male            1        0     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female          0      708    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female          1       50    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male            0      677    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male            1       72    1507
0-24 months   ki1114097-CMIN             PERU                           Female          0      433     929
0-24 months   ki1114097-CMIN             PERU                           Female          1       11     929
0-24 months   ki1114097-CMIN             PERU                           Male            0      465     929
0-24 months   ki1114097-CMIN             PERU                           Male            1       20     929
0-24 months   ki1114097-CONTENT          PERU                           Female          0      106     215
0-24 months   ki1114097-CONTENT          PERU                           Female          1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Male            0      105     215
0-24 months   ki1114097-CONTENT          PERU                           Male            1        4     215
0-24 months   ki1119695-PROBIT           BELARUS                        Female          0     8740   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Female          1        3   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Male            0     8130   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Male            1       24   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female          0     6534   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female          1      235   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male            0     6819   13935
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male            1      347   13935
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female          0      579    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female          1       56    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male            0      621    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male            1       93    1349
0-24 months   ki1135781-COHORTS          INDIA                          Female          0     3278    7402
0-24 months   ki1135781-COHORTS          INDIA                          Female          1      271    7402
0-24 months   ki1135781-COHORTS          INDIA                          Male            0     3462    7402
0-24 months   ki1135781-COHORTS          INDIA                          Male            1      391    7402
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female          0     1190    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female          1      241    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male            0     1295    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male            1      319    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         Female          0      412     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Female          1        9     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male            0      385     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male            1       34     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female          0    12182   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female          1     1045   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male            0    12361   26927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male            1     1339   26927
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female          0     2350    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female          1      374    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male            0     2214    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male            1      504    5442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female          0      129     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female          1        5     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male            0      125     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male            1        4     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female          0      113     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female          1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male            0      120     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male            1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          Female          0      130     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Female          1        8     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male            0      103     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male            1       10     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female          0      108     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female          1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male            0      125     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male            1        5     240
0-6 months    ki0047075b-MAL-ED          PERU                           Female          0      141     302
0-6 months    ki0047075b-MAL-ED          PERU                           Female          1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           Male            0      159     302
0-6 months    ki0047075b-MAL-ED          PERU                           Male            1        1     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female          0      155     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female          1        3     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male            0      152     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male            1        2     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          0      128     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          1        4     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            0      129     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            1        0     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female          0      171     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female          1       14     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male            0      166     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male            1       17     368
0-6 months    ki1000108-IRC              INDIA                          Female          0      173     409
0-6 months    ki1000108-IRC              INDIA                          Female          1       11     409
0-6 months    ki1000108-IRC              INDIA                          Male            0      211     409
0-6 months    ki1000108-IRC              INDIA                          Male            1       14     409
0-6 months    ki1000109-EE               PAKISTAN                       Female          0      164     379
0-6 months    ki1000109-EE               PAKISTAN                       Female          1       21     379
0-6 months    ki1000109-EE               PAKISTAN                       Male            0      162     379
0-6 months    ki1000109-EE               PAKISTAN                       Male            1       32     379
0-6 months    ki1000109-ResPak           PAKISTAN                       Female          0      123     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Female          1        9     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male            0      138     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male            1        8     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female          0      629    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female          1       54    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male            0      769    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male            1       52    1504
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female          0      202     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female          1       20     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male            0      182     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male            1       12     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female          0      282     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female          1       13     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male            0      295     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male            1       32     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female          0      318     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female          1       14     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male            0      352     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male            1       16     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female          0      375     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female          1        6     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male            0      366     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male            1       11     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          0     1180    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          1        4    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            0     1197    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            1       15    2396
0-6 months    ki1101329-Keneba           GAMBIA                         Female          0     1142    2433
0-6 months    ki1101329-Keneba           GAMBIA                         Female          1       29    2433
0-6 months    ki1101329-Keneba           GAMBIA                         Male            0     1221    2433
0-6 months    ki1101329-Keneba           GAMBIA                         Male            1       41    2433
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female          0      152     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female          1        2     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male            0      135     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male            1        6     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female          0      278     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female          1       10     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male            0      300     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male            1       14     602
0-6 months    ki1114097-CMIN             BANGLADESH                     Female          0      110     271
0-6 months    ki1114097-CMIN             BANGLADESH                     Female          1        8     271
0-6 months    ki1114097-CMIN             BANGLADESH                     Male            0      146     271
0-6 months    ki1114097-CMIN             BANGLADESH                     Male            1        7     271
0-6 months    ki1114097-CMIN             BRAZIL                         Female          0       62     119
0-6 months    ki1114097-CMIN             BRAZIL                         Female          1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male            0       57     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male            1        0     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female          0      471     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female          1        2     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male            0      487     964
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male            1        4     964
0-6 months    ki1114097-CMIN             PERU                           Female          0      320     699
0-6 months    ki1114097-CMIN             PERU                           Female          1        5     699
0-6 months    ki1114097-CMIN             PERU                           Male            0      368     699
0-6 months    ki1114097-CMIN             PERU                           Male            1        6     699
0-6 months    ki1114097-CONTENT          PERU                           Female          0      106     215
0-6 months    ki1114097-CONTENT          PERU                           Female          1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Male            0      109     215
0-6 months    ki1114097-CONTENT          PERU                           Male            1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        Female          0     8740   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Female          1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Male            0     8134   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Male            1       18   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female          0     6635   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female          1       78   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male            0     7038   13840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male            1       89   13840
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female          0      503    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female          1        4    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male            0      539    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male            1       17    1063
0-6 months    ki1135781-COHORTS          INDIA                          Female          0     3373    7127
0-6 months    ki1135781-COHORTS          INDIA                          Female          1       83    7127
0-6 months    ki1135781-COHORTS          INDIA                          Male            0     3569    7127
0-6 months    ki1135781-COHORTS          INDIA                          Male            1      102    7127
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female          0     1402    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female          1       29    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male            0     1570    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male            1       43    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         Female          0      129     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Female          1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male            0      143     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male            1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female          0    12686   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female          1      492   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male            0    13078   26820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male            1      564   26820
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female          0     2510    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female          1       52    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male            0     2447    5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male            1       83    5092
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female          0      104     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female          1       18     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male            0      100     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male            1       17     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female          0      101     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female          1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male            0      104     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male            1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Female          0      108     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Female          1       21     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Male            0       80     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Male            1       26     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female          0      100     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female          1        9     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male            0      119     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male            1        7     235
6-24 months   ki0047075b-MAL-ED          PERU                           Female          0      121     270
6-24 months   ki0047075b-MAL-ED          PERU                           Female          1        3     270
6-24 months   ki0047075b-MAL-ED          PERU                           Male            0      138     270
6-24 months   ki0047075b-MAL-ED          PERU                           Male            1        8     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female          0      124     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female          1        5     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male            0      116     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male            1       14     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          0      114     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          1       10     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            0      110     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            1       11     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female          0      165     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female          1       22     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male            0      138     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male            1       48     373
6-24 months   ki1000108-IRC              INDIA                          Female          0      160     410
6-24 months   ki1000108-IRC              INDIA                          Female          1       25     410
6-24 months   ki1000108-IRC              INDIA                          Male            0      186     410
6-24 months   ki1000108-IRC              INDIA                          Male            1       39     410
6-24 months   ki1000109-EE               PAKISTAN                       Female          0      120     373
6-24 months   ki1000109-EE               PAKISTAN                       Female          1       62     373
6-24 months   ki1000109-EE               PAKISTAN                       Male            0      121     373
6-24 months   ki1000109-EE               PAKISTAN                       Male            1       70     373
6-24 months   ki1000109-ResPak           PAKISTAN                       Female          0       96     230
6-24 months   ki1000109-ResPak           PAKISTAN                       Female          1       10     230
6-24 months   ki1000109-ResPak           PAKISTAN                       Male            0      105     230
6-24 months   ki1000109-ResPak           PAKISTAN                       Male            1       19     230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female          0      485    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female          1      139    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male            0      590    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male            1      175    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female          0      142     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female          1       69     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male            0      114     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male            1       76     401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female          0      206     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female          1       40     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male            0      222     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male            1       74     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female          0      261     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female          1       33     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male            0      278     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male            1       42     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female          0      343     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female          1       26     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male            0      324     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male            1       37     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          0      957    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          1       40    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            0      947    2017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            1       73    2017
6-24 months   ki1101329-Keneba           GAMBIA                         Female          0     1164    2735
6-24 months   ki1101329-Keneba           GAMBIA                         Female          1      160    2735
6-24 months   ki1101329-Keneba           GAMBIA                         Male            0     1169    2735
6-24 months   ki1101329-Keneba           GAMBIA                         Male            1      242    2735
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female          0      137     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female          1        5     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male            0      122     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male            1       13     277
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female          0     1467    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female          1      158    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male            0     1391    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male            1      249    3265
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female          0      194     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female          1       91     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male            0      206     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male            1       99     590
6-24 months   ki1114097-CMIN             BANGLADESH                     Female          0       69     251
6-24 months   ki1114097-CMIN             BANGLADESH                     Female          1       39     251
6-24 months   ki1114097-CMIN             BANGLADESH                     Male            0       96     251
6-24 months   ki1114097-CMIN             BANGLADESH                     Male            1       47     251
6-24 months   ki1114097-CMIN             BRAZIL                         Female          0       61     119
6-24 months   ki1114097-CMIN             BRAZIL                         Female          1        1     119
6-24 months   ki1114097-CMIN             BRAZIL                         Male            0       57     119
6-24 months   ki1114097-CMIN             BRAZIL                         Male            1        0     119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female          0      697    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female          1       48    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male            0      665    1481
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male            1       71    1481
6-24 months   ki1114097-CMIN             PERU                           Female          0      410     878
6-24 months   ki1114097-CMIN             PERU                           Female          1        7     878
6-24 months   ki1114097-CMIN             PERU                           Male            0      444     878
6-24 months   ki1114097-CMIN             PERU                           Male            1       17     878
6-24 months   ki1114097-CONTENT          PERU                           Female          0      106     215
6-24 months   ki1114097-CONTENT          PERU                           Female          1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Male            0      105     215
6-24 months   ki1114097-CONTENT          PERU                           Male            1        4     215
6-24 months   ki1119695-PROBIT           BELARUS                        Female          0     8596   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Female          1        2   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Male            0     7993   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Male            1        7   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female          0     5157   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female          1      163   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male            0     5101   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male            1      272   10693
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female          0      531    1218
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female          1       52    1218
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male            0      551    1218
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male            1       84    1218
6-24 months   ki1135781-COHORTS          INDIA                          Female          0     3081    6938
6-24 months   ki1135781-COHORTS          INDIA                          Female          1      240    6938
6-24 months   ki1135781-COHORTS          INDIA                          Male            0     3280    6938
6-24 months   ki1135781-COHORTS          INDIA                          Male            1      337    6938
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female          0     1101    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female          1      228    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male            0     1171    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male            1      308    2808
6-24 months   ki1148112-LCNI-5           MALAWI                         Female          0      408     826
6-24 months   ki1148112-LCNI-5           MALAWI                         Female          1        9     826
6-24 months   ki1148112-LCNI-5           MALAWI                         Male            0      375     826
6-24 months   ki1148112-LCNI-5           MALAWI                         Male            1       34     826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female          0     7839   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female          1      626   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male            0     7939   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male            1      876   17280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female          0     2374    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female          1      344    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male            0     2253    5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male            1      458    5429


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
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/1ab5e79f-fde3-49c1-b348-e9a6c31d6ff8/cc551d60-eda2-440b-bd64-0d5bf4d7c939/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1ab5e79f-fde3-49c1-b348-e9a6c31d6ff8/cc551d60-eda2-440b-bd64-0d5bf4d7c939/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1ab5e79f-fde3-49c1-b348-e9a6c31d6ff8/cc551d60-eda2-440b-bd64-0d5bf4d7c939/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1ab5e79f-fde3-49c1-b348-e9a6c31d6ff8/cc551d60-eda2-440b-bd64-0d5bf4d7c939/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1417910   0.0826153   0.2009668
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1550388   0.0924611   0.2176164
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.1811594   0.1167713   0.2455475
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.2566372   0.1759442   0.3373302
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1000000   0.0438203   0.1561797
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.0769231   0.0310212   0.1228249
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.0506329   0.0163916   0.0848742
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.0909091   0.0454321   0.1363861
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0909091   0.0417728   0.1400453
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0852713   0.0369838   0.1335588
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1604278   0.1077559   0.2130997
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.3010753   0.2350626   0.3670879
0-24 months   ki1000108-IRC              INDIA                          Female               NA                0.1783784   0.1231453   0.2336115
0-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.1911111   0.1396742   0.2425480
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.3513514   0.2824684   0.4202343
0-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.4072165   0.3379885   0.4764445
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.1212121   0.0654347   0.1769896
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.1643836   0.1041572   0.2246100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.2346939   0.1859778   0.2834100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.2297461   0.1908675   0.2686246
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.3452915   0.2828127   0.4077703
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.4000000   0.3311575   0.4688425
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.1621622   0.1201374   0.2041869
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.2713415   0.2231822   0.3195007
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.1234940   0.0880788   0.1589092
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1331522   0.0984161   0.1678882
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0787402   0.0516781   0.1058023
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.1087533   0.0773059   0.1402007
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0354730   0.0249347   0.0460112
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0635314   0.0497964   0.0772663
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.1259786   0.1086249   0.1433324
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.1692104   0.1502771   0.1881436
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.0432099   0.0118495   0.0745702
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.1045752   0.0560104   0.1531400
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0972308   0.0772323   0.1172293
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.1518293   0.1173990   0.1862596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.3229167   0.2688687   0.3769646
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.3184713   0.2668984   0.3700442
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.3559322   0.2693838   0.4424807
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.3267974   0.2523384   0.4012564
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0659631   0.0482868   0.0836393
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0961282   0.0750113   0.1172451
0-24 months   ki1114097-CMIN             PERU                           Female               NA                0.0247748   0.0103088   0.0392408
0-24 months   ki1114097-CMIN             PERU                           Male                 NA                0.0412371   0.0235315   0.0589427
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0347171   0.0303559   0.0390782
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0484231   0.0434529   0.0533933
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0881890   0.0661251   0.1102529
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.1302521   0.1055548   0.1549494
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.0763595   0.0676216   0.0850974
0-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.1014794   0.0919441   0.1110146
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.1684137   0.1490208   0.1878066
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.1976456   0.1782146   0.2170766
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.0213777   0.0075530   0.0352023
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.0811456   0.0549845   0.1073067
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0790051   0.0742046   0.0838055
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0977372   0.0922030   0.1032714
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.1372981   0.1231604   0.1514357
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.1854305   0.1684936   0.2023674
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.0579710   0.0189038   0.0970383
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.0884956   0.0360250   0.1409662
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.0756757   0.0375126   0.1138388
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.0928962   0.0507808   0.1350116
0-6 months    ki1000108-IRC              INDIA                          Female               NA                0.0597826   0.0254843   0.0940809
0-6 months    ki1000108-IRC              INDIA                          Male                 NA                0.0622222   0.0306205   0.0938240
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.1135135   0.0677419   0.1592851
0-6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.1649485   0.1126545   0.2172424
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.0681818   0.0251050   0.1112586
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.0547945   0.0178129   0.0917761
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.0790630   0.0583999   0.0997260
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.0633374   0.0359770   0.0906978
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.0900901   0.0523822   0.1277980
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.0618557   0.0279170   0.0957943
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0440678   0.0206276   0.0675080
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.0978593   0.0656292   0.1300894
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0421687   0.0205351   0.0638023
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.0434783   0.0226277   0.0643288
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0157480   0.0032386   0.0282575
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0291777   0.0121773   0.0461781
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.0247652   0.0158622   0.0336681
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.0324881   0.0227045   0.0422717
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.0347222   0.0135609   0.0558835
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.0445860   0.0217385   0.0674335
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.0677966   0.0223534   0.1132398
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.0457516   0.0125821   0.0789212
0-6 months    ki1114097-CMIN             PERU                           Female               NA                0.0153846   0.0019942   0.0287750
0-6 months    ki1114097-CMIN             PERU                           Male                 NA                0.0160428   0.0033004   0.0287852
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0116192   0.0090556   0.0141829
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0124877   0.0099095   0.0150660
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                0.0240162   0.0189116   0.0291208
0-6 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.0277853   0.0224682   0.0331025
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0202655   0.0129637   0.0275674
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0266584   0.0187961   0.0345207
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0373350   0.0339535   0.0407164
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0413429   0.0377519   0.0449340
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0202966   0.0146759   0.0259174
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0328063   0.0240478   0.0415649
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1475410   0.0844784   0.2106036
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1452991   0.0813103   0.2092880
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.1627907   0.0989480   0.2266334
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.2452830   0.1632012   0.3273648
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.0825688   0.0307896   0.1343480
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.0555556   0.0154743   0.0956368
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.0387597   0.0053864   0.0721330
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.1076923   0.0543015   0.1610831
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0806452   0.0326214   0.1286689
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0909091   0.0395815   0.1422367
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1176471   0.0714066   0.1638875
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.2580645   0.1950962   0.3210328
6-24 months   ki1000108-IRC              INDIA                          Female               NA                0.1351351   0.0858120   0.1844583
6-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.1733333   0.1238119   0.2228548
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.3406593   0.2717131   0.4096056
6-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.3664921   0.2980659   0.4349184
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.0943396   0.0385734   0.1501058
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.1532258   0.0896879   0.2167638
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.2227564   0.1770855   0.2684273
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.2287582   0.1964291   0.2610872
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.3270142   0.2636367   0.3903917
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.4000000   0.3302540   0.4697460
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.1626016   0.1164476   0.2087557
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.2500000   0.2006254   0.2993746
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.1122449   0.0761323   0.1483575
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1312500   0.0942225   0.1682775
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0704607   0.0443307   0.0965907
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.1024931   0.0711849   0.1338013
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0401204   0.0279361   0.0523046
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0715686   0.0557455   0.0873917
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.1208459   0.1032856   0.1384062
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.1715096   0.1518374   0.1911817
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.0352113   0.0048412   0.0655814
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.0962963   0.0464441   0.1461485
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0972308   0.0772323   0.1172293
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.1518293   0.1173990   0.1862596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.3192982   0.2651268   0.3734697
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.3245902   0.2719984   0.3771819
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.3611111   0.2703424   0.4518798
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.3286713   0.2515285   0.4058141
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0644295   0.0467936   0.0820654
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0964674   0.0751311   0.1178036
6-24 months   ki1114097-CMIN             PERU                           Female               NA                0.0167866   0.0044489   0.0291242
6-24 months   ki1114097-CMIN             PERU                           Male                 NA                0.0368764   0.0196632   0.0540895
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0306391   0.0260079   0.0352703
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0506235   0.0447614   0.0564856
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0891938   0.0660480   0.1123396
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.1322835   0.1059213   0.1586456
6-24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.0722674   0.0634604   0.0810744
6-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.0931711   0.0836977   0.1026446
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.1715576   0.1512854   0.1918297
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.2082488   0.1875509   0.2289467
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.0215827   0.0076268   0.0355387
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.0831296   0.0563576   0.1099016
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0739516   0.0680692   0.0798339
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0993761   0.0927626   0.1059895
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.1265636   0.1132025   0.1399248
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.1689414   0.1533255   0.1845572


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1482890   0.1052563   0.1913216
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2151394   0.1642023   0.2660766
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0875000   0.0516764   0.1233236
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0705128   0.0420601   0.0989655
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0881226   0.0536659   0.1225793
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3799472   0.3310169   0.4288776
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1438849   0.1025533   0.1852165
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0496661   0.0409652   0.0583670
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1483516   0.1354394   0.1612639
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0730159   0.0442400   0.1017917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1246554   0.1041227   0.1451882
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3205980   0.2832855   0.3579105
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3394834   0.2830004   0.3959663
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0809555   0.0671794   0.0947317
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0333692   0.0218140   0.0449244
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0417653   0.0384437   0.0450870
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1104522   0.0937191   0.1271852
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0894353   0.0829338   0.0959368
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0511905   0.0362780   0.0661030
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0885357   0.0846606   0.0924107
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1613377   0.1500062   0.1726692
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0717131   0.0397302   0.1036961
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.1398417   0.1048786   0.1748048
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.0611511   0.0329343   0.0893679
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.0769231   0.0512858   0.1025603
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0224274   0.0118796   0.0329753
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0287711   0.0221274   0.0354147
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0398671   0.0242254   0.0555088
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0553506   0.0280757   0.0826254
0-6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0157368   0.0065040   0.0249696
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120665   0.0102474   0.0138855
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0259576   0.0222658   0.0296495
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393736   0.0368903   0.0418569
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0265122   0.0211694   0.0318550
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0680851   0.0358110   0.1003592
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0733591   0.0415449   0.1051733
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0857143   0.0505889   0.1208396
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3538874   0.3052956   0.4024792
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1260870   0.0830938   0.1690801
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0560238   0.0459853   0.0660623
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1469835   0.1337108   0.1602563
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0649819   0.0359016   0.0940623
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1246554   0.1041227   0.1451882
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3220339   0.2842988   0.3597690
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3426295   0.2837999   0.4014590
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0803511   0.0665019   0.0942003
6-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0273349   0.0165432   0.0381265
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0406808   0.0369363   0.0444253
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1116585   0.0939639   0.1293530
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0831652   0.0766672   0.0896632
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0520581   0.0368996   0.0672166
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0869213   0.0822621   0.0915805
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1477252   0.1371297   0.1583206


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.0934313   0.6118463   1.954072
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.4166372   0.8813913   2.276924
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            0.7692308   0.3389391   1.745789
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.7954545   0.7742031   4.163839
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.9379845   0.4287655   2.051972
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.8767025   1.2645477   2.785195
0-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          Male                 Female            1.0713805   0.7108340   1.614802
0-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.1590008   0.8941017   1.502383
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            1.3561644   0.7531108   2.442113
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            0.9789180   0.8472717   1.131019
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.1584416   0.9024450   1.487057
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.6732724   1.2222302   2.290764
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.0782078   0.7317029   1.588804
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.3811671   0.8814189   2.164263
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.7909791   1.2402912   2.586172
0-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.3431669   1.1247503   1.603998
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            2.4201679   1.0224546   5.728580
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.5615352   1.1747233   2.075716
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.9862338   0.7813336   1.244868
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9181450   0.6579499   1.281238
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.4573031   1.0305395   2.060797
0-24 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             PERU                           Male                 Female            1.6644798   0.8063351   3.435908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.3947916   1.1859269   1.640441
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.4769658   1.0790361   2.021645
0-24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.3289678   1.1460682   1.541056
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.1735720   1.0086800   1.365419
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            3.7958101   1.8428332   7.818491
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.2371008   1.1438957   1.337900
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.3505684   1.1812585   1.544145
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            1.5265487   0.6221326   3.745746
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.2275566   0.6230691   2.418504
0-6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          Male                 Female            1.0408081   0.4837312   2.239429
0-6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.4531173   0.8700348   2.426972
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            0.8036530   0.3188379   2.025663
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            0.8011007   0.5844107   1.098136
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            0.6865979   0.3443476   1.369014
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            2.2206539   1.1878919   4.151307
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.0310559   0.5108488   2.081000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.8527851   0.6918149   4.962039
0-6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.3118476   0.8207603   2.096768
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.2840764   0.5791395   2.847073
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            0.6748366   0.2514142   1.811371
0-6 months    ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1114097-CMIN             PERU                           Male                 Female            1.0427807   0.3209642   3.387891
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.0747447   0.7944638   1.453906
0-6 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Male                 Female            1.1569416   0.8691647   1.540000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.3154542   0.8257676   2.095528
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.1073514   0.9774518   1.254514
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.6163423   1.1129969   2.347322
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            0.9848053   0.5331141   1.819201
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.5067385   0.8997863   2.523112
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            0.6728395   0.2586810   1.750082
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            2.7784615   1.0287410   7.504171
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.1272727   0.4961868   2.561019
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            2.1935484   1.3811233   3.483870
6-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          Male                 Female            1.2826667   0.8068876   2.038988
6-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.0758318   0.8168809   1.416870
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            1.6241935   0.7889505   3.343688
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.0269432   0.8842113   1.192715
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.2231884   0.9424820   1.587500
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.5375000   1.0880220   2.172664
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.1693182   0.7622510   1.793773
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.4546133   0.8996818   2.351831
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.7838480   1.2252277   2.597161
6-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.4192417   1.1793895   1.707872
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            2.7348148   1.0001144   7.478356
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.5615352   1.1747233   2.075716
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0165736   0.8039970   1.285355
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9101668   0.6453046   1.283740
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.4972543   1.0530799   2.128775
6-24 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             PERU                           Male                 Female            2.1967770   0.9197267   5.247025
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.6522513   1.3657819   1.998807
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.4831012   1.0692340   2.057163
6-24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.2892556   1.1000456   1.511010
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.2138714   1.0401948   1.416546
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            3.8516707   1.8703432   7.931896
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.3437993   1.2171713   1.483601
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.3348331   1.1652736   1.529065


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0064979   -0.0357541   0.0487500
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0339800   -0.0127282   0.0806883
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0125000   -0.0518236   0.0268236
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0198799   -0.0083074   0.0480672
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0027865   -0.0368381   0.0312651
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0701352    0.0274208   0.1128496
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0069875   -0.0344362   0.0484111
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0285959   -0.0214726   0.0786644
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0226728   -0.0205126   0.0658581
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0027045   -0.0211624   0.0157535
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0255219   -0.0179270   0.0689708
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0573891    0.0235200   0.0912582
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0050775   -0.0210040   0.0311589
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0149274   -0.0057351   0.0355898
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0141931    0.0054180   0.0229683
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0223730    0.0090585   0.0356875
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0298060    0.0015226   0.0580894
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0274247    0.0094190   0.0454303
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0023187   -0.0412852   0.0366478
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0164488   -0.0809294   0.0480318
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0149925    0.0012842   0.0287007
0-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0085944   -0.0033537   0.0205426
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0070482    0.0036460   0.0104505
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0222632    0.0046989   0.0398275
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0130757    0.0063374   0.0198141
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0154943    0.0009339   0.0300548
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0298128    0.0149155   0.0447101
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0095306    0.0060061   0.0130551
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0240397    0.0132862   0.0347931
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0137421   -0.0157688   0.0432530
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0085635   -0.0197129   0.0368398
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0013421   -0.0243144   0.0269986
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0263282   -0.0093393   0.0619956
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0070307   -0.0368575   0.0227960
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0085842   -0.0195386   0.0023702
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0131670   -0.0368644   0.0105303
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0282795    0.0072218   0.0493371
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0006885   -0.0151072   0.0164841
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0066794   -0.0038292   0.0171881
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0040059   -0.0028572   0.0108690
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0051449   -0.0111033   0.0213931
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0124461   -0.0442364   0.0193443
0-6 months    ki1114097-CMIN             PERU                           Female               NA                 0.0003522   -0.0095379   0.0102422
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0004472   -0.0014251   0.0023196
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0019414   -0.0018554   0.0057383
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0033875   -0.0022994   0.0090745
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0020386   -0.0004569   0.0045342
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0062155    0.0011817   0.0112494
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0010975   -0.0450786   0.0428837
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0372093   -0.0099894   0.0844081
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0144837   -0.0496344   0.0206670
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0345994    0.0027177   0.0664811
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0050691   -0.0296519   0.0397902
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0700205    0.0304159   0.1096251
6-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0209624   -0.0174382   0.0593630
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0132281   -0.0365300   0.0629861
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0317473   -0.0139888   0.0774835
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0033055   -0.0150769   0.0216879
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0345818   -0.0102133   0.0793768
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0477305    0.0106376   0.0848233
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0099049   -0.0170616   0.0368714
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0158407   -0.0043592   0.0360405
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0159034    0.0057810   0.0260259
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0261376    0.0125003   0.0397749
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0297707    0.0010939   0.0584475
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0274247    0.0094190   0.0454303
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0027357   -0.0362953   0.0417666
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0184816   -0.0863770   0.0494137
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0159216    0.0021408   0.0297024
6-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0105483   -0.0005912   0.0216878
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0100417    0.0062830   0.0138004
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0224646    0.0041352   0.0407941
6-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0108978    0.0041500   0.0176456
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0193256    0.0040509   0.0346004
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0304754    0.0153792   0.0455715
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0129697    0.0086512   0.0172883
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0211615    0.0112113   0.0311117


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0438194   -0.2878596   0.2900768
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1579442   -0.0874692   0.3479741
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.1428571   -0.6890371   0.2267059
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.2819333   -0.2275781   0.5799698
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0316206   -0.5001196   0.2905626
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3041910    0.0985387   0.4629274
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0376956   -0.2137593   0.2370565
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0752628   -0.0664211   0.1981226
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.1575758   -0.1994838   0.4083466
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0116577   -0.0938540   0.0643621
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0688268   -0.0560711   0.1789536
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.2613928    0.0933570   0.3982850
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0394913   -0.1862497   0.2222742
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1593656   -0.0898297   0.3515812
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2857711    0.0938431   0.4370479
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.1508106    0.0569005   0.2353695
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.4082125   -0.0795945   0.6756075
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.2200038    0.0768226   0.3409781
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0072323   -0.1364128   0.1072637
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0484525   -0.2566981   0.1252851
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1851940    0.0000941   0.3360287
0-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.2575559   -0.1853684   0.5349773
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1687583    0.0843099   0.2454185
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2015642    0.0284869   0.3438075
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.1462035    0.0681202   0.2177441
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0842505    0.0017156   0.1599617
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.5823897    0.2595443   0.7644715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.1076471    0.0674410   0.1461197
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1490020    0.0808418   0.2121078
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1916264   -0.3319346   0.5093844
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1016565   -0.3031943   0.3807362
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0219565   -0.5021362   0.3631942
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.1882713   -0.1070076   0.4047886
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.1149733   -0.7230096   0.2784919
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.1217989   -0.3112883   0.0403080
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.1711712   -0.5179939   0.0964114
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.3908851    0.0486800   0.6099935
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0160643   -0.4309641   0.3234424
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.2978231   -0.3287277   0.6289289
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.1392339   -0.1329176   0.3460086
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.1290509   -0.3859883   0.4526993
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.2248587   -0.9429342   0.2278282
0-6 months    ki1114097-CMIN             PERU                           Female               NA                 0.0223776   -0.8590920   0.4859074
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0370637   -0.1311902   0.1802914
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0747920   -0.0832440   0.2097719
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1432176   -0.1315075   0.3512407
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0517771   -0.0135911   0.1129295
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.2344407    0.0370276   0.3913833
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0074941   -0.3573778   0.2522020
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1860465   -0.0838864   0.3887549
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.2127294   -0.8438437   0.2023660
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.4716442   -0.1011487   0.7464831
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0591398   -0.4462082   0.3879042
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3731092    0.1371252   0.5445550
6-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.1342905   -0.1485419   0.3474745
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0373793   -0.1140182   0.1682015
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.2517892   -0.2019740   0.5342499
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0146221   -0.0711514   0.0935272
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0956365   -0.0371483   0.2114211
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.2269291    0.0317300   0.3827769
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0810884   -0.1678188   0.2769439
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1835506   -0.0829649   0.3844771
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2838693    0.0868997   0.4383496
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.1778269    0.0807283   0.2646694
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.4581377   -0.1228692   0.7385139
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.2200038    0.0768226   0.3409781
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0084949   -0.1204252   0.1225810
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0539406   -0.2719792   0.1267226
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1981501    0.0105667   0.3501702
6-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.3858913   -0.1383951   0.6687182
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2468417    0.1515353   0.3314425
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2011906    0.0220075   0.3475446
6-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.1310379    0.0465910   0.2080050
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1012432    0.0177855   0.1776096
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.5854107    0.2649791   0.7661505
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.1492124    0.0985827   0.1969983
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1432493    0.0740583   0.2072700
