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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        sex       ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               0      121     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               1       13     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 0      121     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 1        8     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               0      112     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 0      117     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 1        3     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               0      125     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               1       13     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 0      102     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 1       11     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               0      107     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 0      124     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 1        6     240
0-24 months   ki0047075b-MAL-ED          PERU                           Female               0      141     302
0-24 months   ki0047075b-MAL-ED          PERU                           Female               1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 0      158     302
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 1        2     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               0      154     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               1        4     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 0      144     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 1       10     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               0      130     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               1        2     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 0      124     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 1        5     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               0      141     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               1       46     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 0      137     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 1       49     373
0-24 months   ki1000108-IRC              INDIA                          Female               0      123     410
0-24 months   ki1000108-IRC              INDIA                          Female               1       62     410
0-24 months   ki1000108-IRC              INDIA                          Male                 0      147     410
0-24 months   ki1000108-IRC              INDIA                          Male                 1       78     410
0-24 months   ki1000109-EE               PAKISTAN                       Female               0      158     380
0-24 months   ki1000109-EE               PAKISTAN                       Female               1       27     380
0-24 months   ki1000109-EE               PAKISTAN                       Male                 0      159     380
0-24 months   ki1000109-EE               PAKISTAN                       Male                 1       36     380
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               0      106     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               1       26     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 0      103     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 1       43     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               0      591    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               1       95    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 0      699    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 1      128    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               0      187     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               1       36     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 0      160     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 1       35     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               0      257     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               1       39     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 0      269     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 1       59     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               0      317     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               1       15     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 0      341     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 1       27     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               0      346     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               1       35     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 0      346     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 1       31     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0     1118    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1       66    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0     1120    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1       92    2396
0-24 months   ki1101329-Keneba           GAMBIA                         Female               0     1240    2919
0-24 months   ki1101329-Keneba           GAMBIA                         Female               1      170    2919
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 0     1238    2919
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 1      271    2919
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               0      162     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 0      150     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 1        3     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               0     1565    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               1       60    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 0     1536    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 1      105    3266
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               0      217     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               1       71     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 0      229     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 1       85     602
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               0      101     272
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               1       18     272
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 0      129     272
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 1       24     272
0-24 months   ki1114097-CMIN             BRAZIL                         Female               0       61     119
0-24 months   ki1114097-CMIN             BRAZIL                         Female               1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 0       57     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 1        0     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               0      725    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               1       33    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 0      701    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 1       48    1507
0-24 months   ki1114097-CMIN             PERU                           Female               0      438     929
0-24 months   ki1114097-CMIN             PERU                           Female               1        6     929
0-24 months   ki1114097-CMIN             PERU                           Male                 0      473     929
0-24 months   ki1114097-CMIN             PERU                           Male                 1       12     929
0-24 months   ki1114097-CONTENT          PERU                           Female               0      106     215
0-24 months   ki1114097-CONTENT          PERU                           Female               1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Male                 0      109     215
0-24 months   ki1114097-CONTENT          PERU                           Male                 1        0     215
0-24 months   ki1119695-PROBIT           BELARUS                        Female               0     8163   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Female               1      581   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 0     7426   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 1      728   16898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               0     6173   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               1      598   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 0     6490   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 1      678   13939
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               0      599    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               1       36    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 0      653    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 1       61    1349
0-24 months   ki1135781-COHORTS          INDIA                          Female               0     3185    7405
0-24 months   ki1135781-COHORTS          INDIA                          Female               1      366    7405
0-24 months   ki1135781-COHORTS          INDIA                          Male                 0     3444    7405
0-24 months   ki1135781-COHORTS          INDIA                          Male                 1      410    7405
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               0     1274    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               1      157    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 0     1389    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 1      225    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               0      418     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               1        3     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 0      413     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 1        6     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               0    12464   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               1      772   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 0    12853   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 1      871   26960
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               0     2579    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               1      146    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 0     2521    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 1      197    5443
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               0      125     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               1        9     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 0      122     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 1        7     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               0      113     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 0      118     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 1        2     233
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               0      126     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               1       12     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 0      105     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 1        8     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               0      107     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                 0      126     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                 1        4     240
0-6 months    ki0047075b-MAL-ED          PERU                           Female               0      142     302
0-6 months    ki0047075b-MAL-ED          PERU                           Female               1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           Male                 0      159     302
0-6 months    ki0047075b-MAL-ED          PERU                           Male                 1        1     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               0      158     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 0      149     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 1        5     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               0      131     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 0      127     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 1        2     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               0      145     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               1       40     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 0      153     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 1       30     368
0-6 months    ki1000108-IRC              INDIA                          Female               0      130     410
0-6 months    ki1000108-IRC              INDIA                          Female               1       55     410
0-6 months    ki1000108-IRC              INDIA                          Male                 0      154     410
0-6 months    ki1000108-IRC              INDIA                          Male                 1       71     410
0-6 months    ki1000109-EE               PAKISTAN                       Female               0      175     380
0-6 months    ki1000109-EE               PAKISTAN                       Female               1       10     380
0-6 months    ki1000109-EE               PAKISTAN                       Male                 0      178     380
0-6 months    ki1000109-EE               PAKISTAN                       Male                 1       17     380
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               0      114     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               1       18     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 0      121     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 1       25     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               0      635    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               1       49    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 0      770    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 1       51    1505
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               0      214     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               1        9     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 0      184     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 1       11     418
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               0      270     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               1       25     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 0      296     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 1       31     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               0      322     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               1       10     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 0      349     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 1       19     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               0      354     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               1       27     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 0      354     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 1       23     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0     1154    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1       30    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0     1163    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1       49    2396
0-6 months    ki1101329-Keneba           GAMBIA                         Female               0     1119    2437
0-6 months    ki1101329-Keneba           GAMBIA                         Female               1       56    2437
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 0     1179    2437
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 1       83    2437
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               0      154     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 0      140     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 1        1     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               0      266     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               1       22     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 0      280     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 1       34     602
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               0      113     272
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               1        6     272
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 0      145     272
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 1        8     272
0-6 months    ki1114097-CMIN             BRAZIL                         Female               0       61     119
0-6 months    ki1114097-CMIN             BRAZIL                         Female               1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male                 0       57     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male                 1        0     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               0      467     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               1        6     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 0      484     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 1        9     966
0-6 months    ki1114097-CMIN             PERU                           Female               0      319     699
0-6 months    ki1114097-CMIN             PERU                           Female               1        6     699
0-6 months    ki1114097-CMIN             PERU                           Male                 0      366     699
0-6 months    ki1114097-CMIN             PERU                           Male                 1        8     699
0-6 months    ki1114097-CONTENT          PERU                           Female               0      106     215
0-6 months    ki1114097-CONTENT          PERU                           Female               1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Male                 0      109     215
0-6 months    ki1114097-CONTENT          PERU                           Male                 1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        Female               0     8169   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Female               1      574   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 0     7441   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 1      711   16895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               0     6258   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               1      457   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 0     6638   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 1      494   13847
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               0      481    1064
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               1       26    1064
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 0      516    1064
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 1       41    1064
0-6 months    ki1135781-COHORTS          INDIA                          Female               0     3198    7128
0-6 months    ki1135781-COHORTS          INDIA                          Female               1      258    7128
0-6 months    ki1135781-COHORTS          INDIA                          Male                 0     3400    7128
0-6 months    ki1135781-COHORTS          INDIA                          Male                 1      272    7128
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               0     1340    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               1       91    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 0     1493    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 1      120    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               0      129     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                 0      143     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                 1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               0    12626   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               1      566   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 0    13128   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 1      543   26863
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               0     2515    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               1       49    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 0     2470    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 1       62    5096
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               0      118     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               1        4     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 0      117     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 1        1     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               0      100     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 0      105     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               0      128     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 0      102     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 1        4     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               0      109     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 0      124     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 1        2     235
6-24 months   ki0047075b-MAL-ED          PERU                           Female               0      123     270
6-24 months   ki0047075b-MAL-ED          PERU                           Female               1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           Male                 0      145     270
6-24 months   ki0047075b-MAL-ED          PERU                           Male                 1        1     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               0      125     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               1        4     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 0      125     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 1        5     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               0      123     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 0      118     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 1        3     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               0      178     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               1        9     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 0      165     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 1       21     373
6-24 months   ki1000108-IRC              INDIA                          Female               0      172     410
6-24 months   ki1000108-IRC              INDIA                          Female               1       13     410
6-24 months   ki1000108-IRC              INDIA                          Male                 0      212     410
6-24 months   ki1000108-IRC              INDIA                          Male                 1       13     410
6-24 months   ki1000109-EE               PAKISTAN                       Female               0      164     375
6-24 months   ki1000109-EE               PAKISTAN                       Female               1       18     375
6-24 months   ki1000109-EE               PAKISTAN                       Male                 0      172     375
6-24 months   ki1000109-EE               PAKISTAN                       Male                 1       21     375
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               0       96     230
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               1       10     230
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 0      101     230
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 1       23     230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               0      573    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               1       51    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 0      682    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 1       83    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               0      185     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               1       27     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 0      166     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 1       24     402
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               0      231     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               1       15     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 0      263     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 1       32     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               0      289     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               1        5     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 0      313     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 1        8     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               0      360     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               1        9     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 0      350     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 1       11     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0      960    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1       37    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0      975    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1       46    2018
6-24 months   ki1101329-Keneba           GAMBIA                         Female               0     1203    2738
6-24 months   ki1101329-Keneba           GAMBIA                         Female               1      122    2738
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 0     1214    2738
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 1      199    2738
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               0      142     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 0      133     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 1        2     277
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               0     1565    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               1       60    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 0     1536    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 1      105    3266
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               0      230     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               1       55     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 0      247     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 1       58     590
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               0       96     252
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               1       12     252
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 0      127     252
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 1       17     252
6-24 months   ki1114097-CMIN             BRAZIL                         Female               0       62     119
6-24 months   ki1114097-CMIN             BRAZIL                         Female               1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         Male                 0       57     119
6-24 months   ki1114097-CMIN             BRAZIL                         Male                 1        0     119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               0      718    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               1       27    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 0      697    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 1       40    1482
6-24 months   ki1114097-CMIN             PERU                           Female               0      416     878
6-24 months   ki1114097-CMIN             PERU                           Female               1        1     878
6-24 months   ki1114097-CMIN             PERU                           Male                 0      457     878
6-24 months   ki1114097-CMIN             PERU                           Male                 1        4     878
6-24 months   ki1114097-CONTENT          PERU                           Female               0      106     215
6-24 months   ki1114097-CONTENT          PERU                           Female               1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Male                 0      109     215
6-24 months   ki1114097-CONTENT          PERU                           Male                 1        0     215
6-24 months   ki1119695-PROBIT           BELARUS                        Female               0     8591   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Female               1        7   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 0     7981   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 1       19   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               0     5171   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               1      148   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 0     5175   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 1      200   10694
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               0      573    1220
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               1       10    1220
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 0      617    1220
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 1       20    1220
6-24 months   ki1135781-COHORTS          INDIA                          Female               0     3211    6941
6-24 months   ki1135781-COHORTS          INDIA                          Female               1      112    6941
6-24 months   ki1135781-COHORTS          INDIA                          Male                 0     3474    6941
6-24 months   ki1135781-COHORTS          INDIA                          Male                 1      144    6941
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               0     1255    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               1       74    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 0     1366    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 1      114    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               0      414     826
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               1        3     826
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                 0      403     826
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                 1        6     826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               0     8252   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               1      215   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 0     8493   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 1      338   17298
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               0     2619    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               1      100    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 0     2572    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 1      139    5430


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/2bc53f9a-4e29-4afb-a88c-d30faa867120/6cb3cae6-840c-487f-9ced-6b34dd7857fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2bc53f9a-4e29-4afb-a88c-d30faa867120/6cb3cae6-840c-487f-9ced-6b34dd7857fc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2bc53f9a-4e29-4afb-a88c-d30faa867120/6cb3cae6-840c-487f-9ced-6b34dd7857fc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2bc53f9a-4e29-4afb-a88c-d30faa867120/6cb3cae6-840c-487f-9ced-6b34dd7857fc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.0970149    0.0468058   0.1472240
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.0620155    0.0203162   0.1037148
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.0942029    0.0453688   0.1430370
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.0973451    0.0425813   0.1521089
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.2459893    0.1841795   0.3077991
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.2634409    0.2000510   0.3268307
0-24 months   ki1000108-IRC              INDIA                          Female               NA                0.3351351    0.2670317   0.4032386
0-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.3466667    0.2844065   0.4089269
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.1459459    0.0950043   0.1968876
0-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.1846154    0.1300876   0.2391432
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.1969697    0.1290009   0.2649385
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.2945205    0.2204485   0.3685926
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.1384840    0.1126625   0.1643055
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.1547763    0.1144403   0.1951123
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1614350    0.1130865   0.2097835
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.1794872    0.1255597   0.2334147
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.1317568    0.0931949   0.1703186
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1798780    0.1382786   0.2214775
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0451807    0.0228230   0.0675384
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.0733696    0.0467104   0.1000287
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0918635    0.0628421   0.1208850
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0822281    0.0544795   0.1099768
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0557432    0.0426724   0.0688141
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0759076    0.0609938   0.0908214
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.1205674    0.1035682   0.1375666
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.1795891    0.1602190   0.1989593
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0369231    0.0259852   0.0478610
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.0639854    0.0442101   0.0837606
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.2465278    0.1967106   0.2963450
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.2707006    0.2215146   0.3198867
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.1512605    0.0867658   0.2157553
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1568627    0.0991315   0.2145940
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0435356    0.0290040   0.0580673
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0640854    0.0465406   0.0816303
0-24 months   ki1114097-CMIN             PERU                           Female               NA                0.0135135    0.0027682   0.0242589
0-24 months   ki1114097-CMIN             PERU                           Male                 NA                0.0247423    0.0109101   0.0385744
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0664456    0.0369275   0.0959637
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0892813    0.0533569   0.1252058
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0883178    0.0815588   0.0950768
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0945871    0.0878121   0.1013620
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0566929    0.0386995   0.0746863
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0854342    0.0649233   0.1059450
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.1030696    0.0930685   0.1130706
0-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.1063830    0.0966480   0.1161179
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.1097135    0.0935180   0.1259090
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.1394052    0.1225044   0.1563060
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0583258    0.0541463   0.0625052
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0634655    0.0586366   0.0682943
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0535780    0.0438961   0.0632599
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0724798    0.0618616   0.0830979
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.0671642    0.0247028   0.1096256
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.0542636    0.0150966   0.0934305
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.0869565    0.0398510   0.1340621
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.0707965    0.0234119   0.1181810
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.2162162    0.1568150   0.2756174
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1639344    0.1102228   0.2176461
0-6 months    ki1000108-IRC              INDIA                          Female               NA                0.2972973    0.2313535   0.3632411
0-6 months    ki1000108-IRC              INDIA                          Male                 NA                0.3155556    0.2547569   0.3763542
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.0540541    0.0214267   0.0866814
0-6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.0871795    0.0475332   0.1268258
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.1363636    0.0777149   0.1950123
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.1712329    0.1100170   0.2324487
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.0716374    0.0524452   0.0908296
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.0621194    0.0318939   0.0923448
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.0403587    0.0144981   0.0662194
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.0564103    0.0239896   0.0888309
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0847458    0.0529392   0.1165523
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.0948012    0.0630250   0.1265775
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0301205    0.0117221   0.0485189
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.0516304    0.0290061   0.0742548
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0708661    0.0450833   0.0966490
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0610080    0.0368317   0.0851842
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0253378    0.0163847   0.0342910
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0404290    0.0293380   0.0515201
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.0476596    0.0354756   0.0598436
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.0657686    0.0520899   0.0794473
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.0763889    0.0456865   0.1070913
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1082803    0.0738823   0.1426782
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.0504202    0.0110341   0.0898062
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.0522876    0.0169498   0.0876254
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0126850    0.0025944   0.0227756
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0182556    0.0064321   0.0300791
0-6 months    ki1114097-CMIN             PERU                           Female               NA                0.0184615    0.0038160   0.0331071
0-6 months    ki1114097-CMIN             PERU                           Male                 NA                0.0213904    0.0067168   0.0360640
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.0656525    0.0359518   0.0953532
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.0872179    0.0512374   0.1231983
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0680566    0.0620328   0.0740804
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0692653    0.0633724   0.0751582
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0512821    0.0320733   0.0704908
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0736086    0.0519123   0.0953049
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                0.0746528    0.0658895   0.0834161
0-6 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.0740741    0.0656028   0.0825453
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0635919    0.0509465   0.0762373
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0743955    0.0615873   0.0872037
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0429048    0.0389983   0.0468113
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0397191    0.0358031   0.0436351
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0191108    0.0129599   0.0252616
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0244866    0.0180146   0.0309585
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.0481283    0.0174099   0.0788468
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1129032    0.0673611   0.1584453
6-24 months   ki1000108-IRC              INDIA                          Female               NA                0.0702703    0.0333932   0.1071474
6-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.0577778    0.0272536   0.0883020
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.0989011    0.0554722   0.1423300
6-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.1088083    0.0648171   0.1527995
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.0943396    0.0385734   0.1501058
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.1854839    0.1169214   0.2540463
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.0817308    0.0697377   0.0937238
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.1084967    0.0723635   0.1446300
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1273585    0.0824268   0.1722902
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.1263158    0.0790205   0.1736111
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0609756    0.0310462   0.0909051
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1084746    0.0729548   0.1439943
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0170068    0.0022152   0.0317984
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.0249221    0.0078550   0.0419893
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0243902    0.0086403   0.0401402
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0304709    0.0127284   0.0482134
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0371113    0.0253745   0.0488481
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0450539    0.0323277   0.0577801
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.0920755    0.0765045   0.1076465
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.1408351    0.1226946   0.1589756
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0369231    0.0259852   0.0478610
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.0639854    0.0442101   0.0837606
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1929825    0.1471266   0.2388383
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1901639    0.1460852   0.2342427
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.1111111    0.0517226   0.1704996
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1180556    0.0652482   0.1708629
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0362416    0.0228169   0.0496663
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0542741    0.0379120   0.0706362
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0008141   -0.0000441   0.0016724
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0023750    0.0009037   0.0038463
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0278248    0.0234046   0.0322450
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0372093    0.0321491   0.0422695
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0171527    0.0066088   0.0276965
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0313972    0.0178492   0.0449452
6-24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.0337045    0.0275681   0.0398409
6-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.0398010    0.0334305   0.0461715
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0556810    0.0433506   0.0680113
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0770270    0.0634404   0.0906136
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0253927    0.0217197   0.0290657
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0382743    0.0340317   0.0425169
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0367782    0.0288976   0.0446589
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0512726    0.0422513   0.0602938


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0798479   0.0470264   0.1126695
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0956175   0.0591654   0.1320697
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2546917   0.2104174   0.2989660
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1657895   0.1283487   0.2032302
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2482014   0.1973315   0.2990714
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1473893   0.1184132   0.1763654
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1698565   0.1338154   0.2058975
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1570513   0.1284803   0.1856223
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0659432   0.0560037   0.0758828
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1510791   0.1380852   0.1640731
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0505205   0.0383088   0.0627322
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2591362   0.2241059   0.2941665
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1544118   0.1113905   0.1974330
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0537492   0.0423591   0.0651392
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0193757   0.0105071   0.0282442
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0774648   0.0450418   0.1098878
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0915417   0.0867542   0.0963292
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0719051   0.0581146   0.0856956
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1047941   0.0978174   0.1117707
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0609421   0.0574707   0.0644136
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0630167   0.0560702   0.0699632
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0608365   0.0318931   0.0897799
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0796813   0.0461133   0.1132493
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1902174   0.1500638   0.2303710
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.0710526   0.0451875   0.0969177
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1546763   0.1120937   0.1972588
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0664452   0.0425975   0.0902929
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.0478469   0.0273607   0.0683330
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0329716   0.0258203   0.0401229
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0570373   0.0478278   0.0662468
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0930233   0.0698010   0.1162455
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0514706   0.0251638   0.0777774
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0155280   0.0077271   0.0233288
0-6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0200286   0.0096353   0.0304219
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0760580   0.0435003   0.1086157
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0686791   0.0644666   0.0728917
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0629699   0.0483675   0.0775723
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0743547   0.0682639   0.0804454
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0412835   0.0383098   0.0442573
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0217818   0.0173355   0.0262281
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0634146   0.0397960   0.0870333
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1040000   0.0730627   0.1349373
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1434783   0.0980744   0.1888821
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1268657   0.0942904   0.1594410
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0868762   0.0631205   0.1106318
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0211382   0.0097604   0.0325160
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0411298   0.0324631   0.0497965
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1172389   0.1051866   0.1292911
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0505205   0.0383088   0.0627322
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1915254   0.1597467   0.2233042
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1150794   0.0756007   0.1545580
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0452092   0.0346279   0.0557905
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0015665   0.0007872   0.0023457
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0325416   0.0291786   0.0359047
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0245902   0.0158961   0.0332842
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0368823   0.0324481   0.0413165
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319690   0.0290813   0.0348568
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0440147   0.0381801   0.0498493


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            0.6392367   0.2736265    1.493362
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.0333560   0.4808572    2.220669
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.0709444   0.7562665    1.516558
0-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Male                 Female            1.0344086   0.7886984    1.356667
0-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.2649573   0.8007532    1.998265
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            1.4952582   0.9756035    2.291707
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.1176478   0.8732350    1.430470
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.1118234   0.7274394    1.699318
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.3652283   0.9401692    1.982460
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.6239130   0.8788991    3.000451
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            0.8951118   0.5637941    1.421131
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3617362   1.0028496    1.849056
0-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.4895334   1.2472549    1.778874
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.7329372   1.1929166    2.517419
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0980533   0.8367643    1.440933
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            1.0370370   0.5904417    1.821426
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.4720232   0.9559377    2.266730
0-24 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1114097-CMIN             PERU                           Male                 Female            1.8309278   0.6926779    4.839618
0-24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            1.3436764   1.1929878    1.513399
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.0709848   0.9644075    1.189340
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.5069639   1.0122142    2.243537
0-24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.0321474   0.9032697    1.179413
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.2706296   1.0496880    1.538076
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.0881203   0.9896320    1.196410
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.3527901   1.0644025    1.719313
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            0.8079242   0.3094995    2.109023
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            0.8141593   0.3441560    1.926032
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            0.7581967   0.4944083    1.162728
0-6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Male                 Female            1.0614141   0.7911998    1.423914
0-6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.6128205   0.7574772    3.434018
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.2557078   0.7177944    2.196732
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            0.8671356   0.6194303    1.213896
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.3977208   0.5910162    3.305533
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.1186544   0.6763280    1.850268
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.7141304   0.8082833    3.635165
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            0.8608901   0.5027044    1.474289
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.5955996   1.0201066    2.495757
0-6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.3799666   0.9925249    1.918650
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.4174870   0.8492324    2.365983
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            1.0370370   0.3691436    2.913354
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.4391481   0.5159528    4.014218
0-6 months    ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1114097-CMIN             PERU                           Male                 Female            1.1586453   0.4059548    3.306917
0-6 months    ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 Female            1.3284769   1.1821765    1.492883
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.0177601   0.9001754    1.150704
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.4353680   0.8911742    2.311873
0-6 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Male                 Female            0.9922481   0.8422590    1.168947
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.1698902   0.8993202    1.521864
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            0.9257501   0.8183731    1.047216
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.2812973   0.8437920    1.945649
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            2.3458781   1.1025415    4.991326
6-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Male                 Female            0.8222222   0.3904725    1.731362
6-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.1001727   0.6056670    1.998425
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            1.9661289   0.9791083    3.948147
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.3274894   1.0125872    1.740322
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            0.9918129   0.5929358    1.659021
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.7789831   0.9860981    3.209398
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.4654205   0.4843969    4.433260
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.2493075   0.5236592    2.980505
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.2140191   0.7944542    1.855163
6-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.5295616   1.2366451    1.891859
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.7329372   1.1929166    2.517419
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.9853949   0.7070448    1.373326
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            1.0625000   0.5292213    2.133146
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.4975627   0.9288972    2.414362
6-24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            2.9171780   0.7942809   10.714002
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.3372722   1.0849284    1.648309
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.8304551   0.8637468    3.879107
6-24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.1808813   0.9266712    1.504828
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.3833638   1.0422777    1.836070
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.5072938   1.2613582    1.801181
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.3941018   1.0494409    1.851957


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0171670   -0.0492501   0.0149161
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0014146   -0.0316192   0.0344484
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0087024   -0.0354561   0.0528609
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0063283   -0.0443127   0.0569693
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0198435   -0.0184984   0.0581854
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0512317   -0.0018757   0.1043392
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0089053   -0.0115075   0.0293181
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0084215   -0.0253776   0.0422205
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0252945   -0.0045812   0.0551703
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0148193   -0.0035018   0.0331404
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0047923   -0.0247656   0.0151810
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0102000    0.0001605   0.0202395
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0305118    0.0171460   0.0438775
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0135974    0.0038513   0.0233436
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0126084   -0.0239198   0.0491366
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0031513   -0.0455393   0.0518419
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0102135   -0.0011210   0.0215481
0-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0058622   -0.0032892   0.0150135
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0110192    0.0058080   0.0162304
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0032239   -0.0016976   0.0081454
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0152122    0.0007506   0.0296738
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0017245   -0.0055395   0.0089885
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0157381    0.0033196   0.0281566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0026164   -0.0003376   0.0055703
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0094387    0.0020613   0.0168162
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0063277   -0.0346728   0.0220174
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0072752   -0.0373718   0.0228213
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0259988   -0.0659129   0.0139153
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0100198   -0.0392106   0.0592501
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0169986   -0.0094025   0.0433997
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0183126   -0.0262575   0.0628827
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0051922   -0.0163823   0.0059978
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0074881   -0.0118738   0.0268501
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0052864   -0.0183533   0.0289261
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0113081   -0.0040429   0.0266591
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0049031   -0.0224857   0.0126795
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0076338    0.0004173   0.0148503
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0093778   -0.0001151   0.0188706
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0166344   -0.0074485   0.0407173
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0010504   -0.0287146   0.0308154
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0028430   -0.0050919   0.0107778
0-6 months    ki1114097-CMIN             PERU                           Female               NA                 0.0015671   -0.0095260   0.0126601
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0104055    0.0053324   0.0154785
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0006225   -0.0037178   0.0049629
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0116879   -0.0034967   0.0268724
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                -0.0002981   -0.0065770   0.0059808
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0057248   -0.0038146   0.0152642
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0016212   -0.0042065   0.0009640
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0026710   -0.0017793   0.0071213
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0323006    0.0047104   0.0598908
6-24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0068556   -0.0331333   0.0194220
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0050989   -0.0267200   0.0369178
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0491386    0.0011294   0.0971479
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0147415   -0.0021727   0.0316558
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0004928   -0.0313257   0.0303400
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0259005    0.0004946   0.0513065
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0041314   -0.0076610   0.0159238
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0030070   -0.0087274   0.0147414
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0040185   -0.0047422   0.0127792
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0251634    0.0127921   0.0375347
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0135974    0.0038513   0.0233436
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0014570   -0.0343382   0.0314241
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0039683   -0.0414456   0.0493821
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0089676   -0.0015676   0.0195028
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0007523   -0.0001181   0.0016227
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0047168    0.0013386   0.0080951
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0074375   -0.0015350   0.0164101
6-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0031778   -0.0014333   0.0077890
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0112468    0.0015718   0.0209217
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0065763    0.0037751   0.0093776
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0072365    0.0011267   0.0133463


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.2149964   -0.6804648   0.1215428
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0147947   -0.3989531   0.3061744
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0341683   -0.1557072   0.1928484
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0185328   -0.1415647   0.1561776
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.1196911   -0.1434632   0.3222836
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.2064119   -0.0365638   0.3924330
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0604205   -0.0824248   0.1844147
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0495800   -0.1715599   0.2289782
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1610590   -0.0505121   0.3300201
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.2469879   -0.1178132   0.4927353
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0550386   -0.3109276   0.1509017
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1546784   -0.0102469   0.2926793
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.2019588    0.1097726   0.2845988
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.2691469    0.0799006   0.4194689
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0486556   -0.1032248   0.1796268
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0204082   -0.3515419   0.2899960
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1900225   -0.0462955   0.3729652
0-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.3025526   -0.3336882   0.6352724
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.1422482    0.0841391   0.1966704
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0352177   -0.0200442   0.0874858
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2115594   -0.0128720   0.3862614
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0164561   -0.0553548   0.0833806
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1254514    0.0212291   0.2185758
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0429318   -0.0064369   0.0898789
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1497815    0.0245846   0.2589090
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.1040112   -0.6802334   0.2746003
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0913043   -0.5403737   0.2268466
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.1366795   -0.3660167   0.0541548
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0326040   -0.1416051   0.1802288
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.2392392   -0.2250504   0.5275648
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.1183932   -0.2206931   0.3632875
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0781433   -0.2821570   0.0934083
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.1565022   -0.3545774   0.4747524
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0587167   -0.2436898   0.2875923
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.2729539   -0.1902155   0.5558821
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0743307   -0.3760524   0.1612336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2315258   -0.0143708   0.4178140
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.1644145   -0.0174172   0.3137495
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.1788194   -0.1211255   0.3985174
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0204082   -0.7676208   0.4571233
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1830867   -0.5118839   0.5585988
0-6 months    ki1114097-CMIN             PERU                           Female               NA                 0.0782417   -0.6784091   0.4937836
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.1368098    0.0796507   0.1904190
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0090646   -0.0561894   0.0702869
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.1856104   -0.0904069   0.3917588
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                -0.0040094   -0.0921069   0.0769814
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0825890   -0.0654680   0.2100720
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0392709   -0.1039385   0.0216086
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1226265   -0.1079797   0.3052361
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.4016043   -0.0167467   0.6478204
6-24 months   ki1000108-IRC              INDIA                          Female               NA                -0.1081081   -0.6081781   0.2364629
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0490279   -0.3114969   0.3104460
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.3424814   -0.0707491   0.5962353
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.1528057   -0.0041406   0.2852214
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0038846   -0.2788621   0.2119680
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.2981318   -0.0495656   0.5306449
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1954474   -0.5902927   0.5929649
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1097561   -0.4362491   0.4481917
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0977027   -0.1413761   0.2867028
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.2146335    0.1037978   0.3117619
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.2691469    0.0799006   0.4194689
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0076075   -0.1947780   0.1502414
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0344828   -0.4528045   0.3583283
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1983572   -0.0663277   0.3973418
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.4802637   -0.3414576   0.7986326
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1449477    0.0357252   0.2417988
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.3024585   -0.1511525   0.5773244
6-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0861608   -0.0473602   0.2026602
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1680435    0.0121271   0.2993515
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.2057090    0.1143333   0.2876572
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1644110    0.0147314   0.2913516
