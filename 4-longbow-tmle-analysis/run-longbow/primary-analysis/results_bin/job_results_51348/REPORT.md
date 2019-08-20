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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        sex       ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  -------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female              0       88     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female              1       46     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                0       88     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                1       41     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female              0      106     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female              1        7     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                0      108     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                1       12     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Female              0       73     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Female              1       65     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                0       60     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                1       53     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female              0       77     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female              1       33     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                0       94     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                1       36     240
0-24 months   ki0047075b-MAL-ED          PERU                           Female              0      133     302
0-24 months   ki0047075b-MAL-ED          PERU                           Female              1        9     302
0-24 months   ki0047075b-MAL-ED          PERU                           Male                0      143     302
0-24 months   ki0047075b-MAL-ED          PERU                           Male                1       17     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female              0      132     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female              1       26     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                0      119     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                1       35     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              0      114     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              1       18     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                0      115     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                1       14     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female              0       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female              1      118     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                0       75     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                1      111     373
0-24 months   ki1000108-IRC              INDIA                          Female              0       62     410
0-24 months   ki1000108-IRC              INDIA                          Female              1      123     410
0-24 months   ki1000108-IRC              INDIA                          Male                0       79     410
0-24 months   ki1000108-IRC              INDIA                          Male                1      146     410
0-24 months   ki1000109-EE               PAKISTAN                       Female              0       95     380
0-24 months   ki1000109-EE               PAKISTAN                       Female              1       90     380
0-24 months   ki1000109-EE               PAKISTAN                       Male                0       99     380
0-24 months   ki1000109-EE               PAKISTAN                       Male                1       96     380
0-24 months   ki1000109-ResPak           PAKISTAN                       Female              0       60     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Female              1       72     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                0       65     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                1       81     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female              0      400    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female              1      286    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                0      485    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                1      342    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female              0      122     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female              1      101     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                0       99     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                1       96     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female              0      160     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female              1      136     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                0      166     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                1      162     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female              0      217     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female              1      115     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                0      237     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                1      131     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female              0      264     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female              1      117     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                0      243     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                1      134     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              0      944    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              1      240    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                0      886    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                1      326    2396
0-24 months   ki1101329-Keneba           GAMBIA                         Female              0      935    2919
0-24 months   ki1101329-Keneba           GAMBIA                         Female              1      475    2919
0-24 months   ki1101329-Keneba           GAMBIA                         Male                0      892    2919
0-24 months   ki1101329-Keneba           GAMBIA                         Male                1      617    2919
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female              0      151     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female              1       11     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                0      133     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                1       20     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female              0     1295    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female              1      330    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                0     1214    3266
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                1      427    3266
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female              0      116     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female              1      172     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                0      130     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                1      184     602
0-24 months   ki1114097-CMIN             BANGLADESH                     Female              0       64     272
0-24 months   ki1114097-CMIN             BANGLADESH                     Female              1       55     272
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                0       84     272
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                1       69     272
0-24 months   ki1114097-CMIN             BRAZIL                         Female              0       56     119
0-24 months   ki1114097-CMIN             BRAZIL                         Female              1        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male                0       51     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male                1        6     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female              0      642    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female              1      116    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                0      581    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                1      168    1507
0-24 months   ki1114097-CMIN             PERU                           Female              0      413     929
0-24 months   ki1114097-CMIN             PERU                           Female              1       31     929
0-24 months   ki1114097-CMIN             PERU                           Male                0      443     929
0-24 months   ki1114097-CMIN             PERU                           Male                1       42     929
0-24 months   ki1114097-CONTENT          PERU                           Female              0      104     215
0-24 months   ki1114097-CONTENT          PERU                           Female              1        2     215
0-24 months   ki1114097-CONTENT          PERU                           Male                0      103     215
0-24 months   ki1114097-CONTENT          PERU                           Male                1        6     215
0-24 months   ki1119695-PROBIT           BELARUS                        Female              0     6716   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Female              1     2028   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Male                0     5846   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Male                1     2308   16898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female              0     5151   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female              1     1620   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                0     5516   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                1     1652   13939
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female              0      506    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female              1      129    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                0      500    1349
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                1      214    1349
0-24 months   ki1135781-COHORTS          INDIA                          Female              0     2389    7405
0-24 months   ki1135781-COHORTS          INDIA                          Female              1     1162    7405
0-24 months   ki1135781-COHORTS          INDIA                          Male                0     2571    7405
0-24 months   ki1135781-COHORTS          INDIA                          Male                1     1283    7405
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female              0      883    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female              1      548    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                0      933    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                1      681    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         Female              0      400     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Female              1       21     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                0      373     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                1       46     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female              0     9864   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female              1     3372   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                0    10138   26960
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                1     3586   26960
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female              0     1947    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female              1      778    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                0     1807    5443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                1      911    5443
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female              0      101     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female              1       33     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                0      103     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                1       26     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female              0      109     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female              1        4     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                0      110     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                1       10     233
0-6 months    ki0047075b-MAL-ED          INDIA                          Female              0       95     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Female              1       43     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                0       77     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                1       36     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female              0       91     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female              1       19     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                0      106     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                1       24     240
0-6 months    ki0047075b-MAL-ED          PERU                           Female              0      138     302
0-6 months    ki0047075b-MAL-ED          PERU                           Female              1        4     302
0-6 months    ki0047075b-MAL-ED          PERU                           Male                0      153     302
0-6 months    ki0047075b-MAL-ED          PERU                           Male                1        7     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female              0      144     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female              1       14     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                0      136     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                1       18     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              0      123     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              1        9     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                0      127     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                1        2     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female              0       83     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female              1      102     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                0       94     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                1       89     368
0-6 months    ki1000108-IRC              INDIA                          Female              0       86     410
0-6 months    ki1000108-IRC              INDIA                          Female              1       99     410
0-6 months    ki1000108-IRC              INDIA                          Male                0      101     410
0-6 months    ki1000108-IRC              INDIA                          Male                1      124     410
0-6 months    ki1000109-EE               PAKISTAN                       Female              0      135     380
0-6 months    ki1000109-EE               PAKISTAN                       Female              1       50     380
0-6 months    ki1000109-EE               PAKISTAN                       Male                0      142     380
0-6 months    ki1000109-EE               PAKISTAN                       Male                1       53     380
0-6 months    ki1000109-ResPak           PAKISTAN                       Female              0       79     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Female              1       53     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                0       91     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                1       55     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female              0      518    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female              1      166    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                0      656    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                1      165    1505
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female              0      179     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female              1       44     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                0      161     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                1       34     418
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female              0      191     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female              1      104     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                0      209     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                1      118     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female              0      246     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female              1       86     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                0      273     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                1       95     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female              0      286     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female              1       95     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                0      276     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                1      101     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              0     1044    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              1      140    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                0     1019    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                1      193    2396
0-6 months    ki1101329-Keneba           GAMBIA                         Female              0     1011    2437
0-6 months    ki1101329-Keneba           GAMBIA                         Female              1      164    2437
0-6 months    ki1101329-Keneba           GAMBIA                         Male                0     1038    2437
0-6 months    ki1101329-Keneba           GAMBIA                         Male                1      224    2437
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female              0      151     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female              1        3     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                0      134     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                1        7     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female              0      205     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female              1       83     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                0      219     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                1       95     602
0-6 months    ki1114097-CMIN             BANGLADESH                     Female              0       93     272
0-6 months    ki1114097-CMIN             BANGLADESH                     Female              1       26     272
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                0      129     272
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                1       24     272
0-6 months    ki1114097-CMIN             BRAZIL                         Female              0       57     119
0-6 months    ki1114097-CMIN             BRAZIL                         Female              1        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male                0       53     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male                1        4     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female              0      454     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female              1       19     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                0      464     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                1       29     966
0-6 months    ki1114097-CMIN             PERU                           Female              0      304     699
0-6 months    ki1114097-CMIN             PERU                           Female              1       21     699
0-6 months    ki1114097-CMIN             PERU                           Male                0      347     699
0-6 months    ki1114097-CMIN             PERU                           Male                1       27     699
0-6 months    ki1114097-CONTENT          PERU                           Female              0      104     215
0-6 months    ki1114097-CONTENT          PERU                           Female              1        2     215
0-6 months    ki1114097-CONTENT          PERU                           Male                0      107     215
0-6 months    ki1114097-CONTENT          PERU                           Male                1        2     215
0-6 months    ki1119695-PROBIT           BELARUS                        Female              0     6743   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Female              1     2000   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Male                0     5932   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Male                1     2220   16895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female              0     5425   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female              1     1290   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                0     5915   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                1     1217   13847
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female              0      427    1064
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female              1       80    1064
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                0      423    1064
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                1      134    1064
0-6 months    ki1135781-COHORTS          INDIA                          Female              0     2566    7128
0-6 months    ki1135781-COHORTS          INDIA                          Female              1      890    7128
0-6 months    ki1135781-COHORTS          INDIA                          Male                0     2767    7128
0-6 months    ki1135781-COHORTS          INDIA                          Male                1      905    7128
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female              0     1120    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female              1      311    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                0     1207    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                1      406    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         Female              0      127     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Female              1        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                0      141     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                1        2     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female              0    10832   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female              1     2360   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                0    11295   26863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                1     2376   26863
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female              0     2317    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female              1      247    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                0     2226    5096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                1      306    5096
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female              0       98     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female              1       24     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                0       98     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                1       20     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female              0       98     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female              1        3     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                0      103     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                1        3     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Female              0       96     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Female              1       33     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                0       75     235
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                1       31     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female              0       91     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female              1       18     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                0      108     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                1       18     235
6-24 months   ki0047075b-MAL-ED          PERU                           Female              0      119     270
6-24 months   ki0047075b-MAL-ED          PERU                           Female              1        5     270
6-24 months   ki0047075b-MAL-ED          PERU                           Male                0      134     270
6-24 months   ki0047075b-MAL-ED          PERU                           Male                1       12     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female              0      115     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female              1       14     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                0      108     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                1       22     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              0      111     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female              1       13     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                0      108     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                1       13     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female              0      142     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female              1       45     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                0      132     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                1       54     373
6-24 months   ki1000108-IRC              INDIA                          Female              0      127     410
6-24 months   ki1000108-IRC              INDIA                          Female              1       58     410
6-24 months   ki1000108-IRC              INDIA                          Male                0      156     410
6-24 months   ki1000108-IRC              INDIA                          Male                1       69     410
6-24 months   ki1000109-EE               PAKISTAN                       Female              0      122     375
6-24 months   ki1000109-EE               PAKISTAN                       Female              1       60     375
6-24 months   ki1000109-EE               PAKISTAN                       Male                0      129     375
6-24 months   ki1000109-EE               PAKISTAN                       Male                1       64     375
6-24 months   ki1000109-ResPak           PAKISTAN                       Female              0       64     230
6-24 months   ki1000109-ResPak           PAKISTAN                       Female              1       42     230
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                0       82     230
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                1       42     230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female              0      439    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female              1      185    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                0      525    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                1      240    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female              0      139     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female              1       73     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                0      120     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                1       70     402
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female              0      181     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female              1       65     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                0      201     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                1       94     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female              0      249     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female              1       45     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                0      267     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                1       54     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female              0      331     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female              1       38     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                0      303     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                1       58     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              0      862    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female              1      135    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                0      832    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                1      189    2018
6-24 months   ki1101329-Keneba           GAMBIA                         Female              0      946    2738
6-24 months   ki1101329-Keneba           GAMBIA                         Female              1      379    2738
6-24 months   ki1101329-Keneba           GAMBIA                         Male                0      924    2738
6-24 months   ki1101329-Keneba           GAMBIA                         Male                1      489    2738
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female              0      134     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female              1        8     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                0      120     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                1       15     277
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female              0     1295    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female              1      330    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                0     1214    3266
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                1      427    3266
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female              0      144     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female              1      141     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                0      167     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                1      138     590
6-24 months   ki1114097-CMIN             BANGLADESH                     Female              0       65     252
6-24 months   ki1114097-CMIN             BANGLADESH                     Female              1       43     252
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                0       90     252
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                1       54     252
6-24 months   ki1114097-CMIN             BRAZIL                         Female              0       60     119
6-24 months   ki1114097-CMIN             BRAZIL                         Female              1        2     119
6-24 months   ki1114097-CMIN             BRAZIL                         Male                0       55     119
6-24 months   ki1114097-CMIN             BRAZIL                         Male                1        2     119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female              0      647    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female              1       98    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                0      588    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                1      149    1482
6-24 months   ki1114097-CMIN             PERU                           Female              0      404     878
6-24 months   ki1114097-CMIN             PERU                           Female              1       13     878
6-24 months   ki1114097-CMIN             PERU                           Male                0      439     878
6-24 months   ki1114097-CMIN             PERU                           Male                1       22     878
6-24 months   ki1114097-CONTENT          PERU                           Female              0      106     215
6-24 months   ki1114097-CONTENT          PERU                           Female              1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Male                0      105     215
6-24 months   ki1114097-CONTENT          PERU                           Male                1        4     215
6-24 months   ki1119695-PROBIT           BELARUS                        Female              0     8565   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Female              1       33   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Male                0     7866   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Male                1      134   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female              0     4885   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female              1      434   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                0     4804   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                1      571   10694
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female              0      527    1220
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female              1       56    1220
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                0      539    1220
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                1       98    1220
6-24 months   ki1135781-COHORTS          INDIA                          Female              0     2957    6941
6-24 months   ki1135781-COHORTS          INDIA                          Female              1      366    6941
6-24 months   ki1135781-COHORTS          INDIA                          Male                0     3132    6941
6-24 months   ki1135781-COHORTS          INDIA                          Male                1      486    6941
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female              0      997    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female              1      332    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                0     1063    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                1      417    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         Female              0      398     826
6-24 months   ki1148112-LCNI-5           MALAWI                         Female              1       19     826
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                0      364     826
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                1       45     826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female              0     7172   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female              1     1295   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                0     7289   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                1     1542   17298
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female              0     2098    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female              1      621    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                0     1989    5430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                1      722    5430


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

* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/3626986b-f2e5-4815-9e54-005465939128/896c47e4-33e5-4dda-aab6-681861629db8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3626986b-f2e5-4815-9e54-005465939128/896c47e4-33e5-4dda-aab6-681861629db8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3626986b-f2e5-4815-9e54-005465939128/896c47e4-33e5-4dda-aab6-681861629db8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3626986b-f2e5-4815-9e54-005465939128/896c47e4-33e5-4dda-aab6-681861629db8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.3432836   0.2627386   0.4238285
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.3178295   0.2373242   0.3983347
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.0619469   0.0174052   0.1064886
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.1000000   0.0462086   0.1537914
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.4710145   0.3875668   0.5544622
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.4690265   0.3768308   0.5612223
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.3000000   0.2141840   0.3858160
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.2769231   0.1998407   0.3540054
0-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.0633803   0.0232398   0.1035208
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.1062500   0.0584222   0.1540778
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.1645570   0.1066497   0.2224642
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.2272727   0.1609791   0.2935663
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1363636   0.0777080   0.1950192
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1085271   0.0547485   0.1623058
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.6310160   0.5617637   0.7002683
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.5967742   0.5261825   0.6673659
0-24 months   ki1000108-IRC              INDIA                          Female               NA                0.6648649   0.5967614   0.7329683
0-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.6488889   0.5864443   0.7113334
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.4864865   0.4143681   0.5586048
0-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.4923077   0.4220455   0.5625699
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.5454545   0.4603581   0.6305510
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.5547945   0.4740337   0.6355553
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.4169096   0.3514103   0.4824089
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.4135429   0.3538555   0.4732304
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.4529148   0.3875037   0.5183259
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.4923077   0.4220539   0.5625614
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.4594595   0.4026412   0.5162778
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.4939024   0.4397526   0.5480523
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.3463855   0.2951666   0.3976044
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.3559783   0.3070233   0.4049332
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.3070866   0.2607374   0.3534358
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.3554377   0.3070897   0.4037856
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2027027   0.1797992   0.2256063
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.2689769   0.2440074   0.2939464
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.3368794   0.3122050   0.3615538
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.4088801   0.3840708   0.4336893
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.0679012   0.0290995   0.1067029
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.1307190   0.0772204   0.1842175
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.2030769   0.1735252   0.2326286
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.2602072   0.2146739   0.3057404
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.5972222   0.5405313   0.6539132
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.5859873   0.5314623   0.6405122
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.4621849   0.3724422   0.5519275
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.4509804   0.3719899   0.5299709
0-24 months   ki1114097-CMIN             BRAZIL                         Female               NA                0.0967742   0.0228711   0.1706773
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 NA                0.1052632   0.0252560   0.1852703
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.1530343   0.1273963   0.1786723
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.2242991   0.1944169   0.2541812
0-24 months   ki1114097-CMIN             PERU                           Female               NA                0.0698198   0.0461026   0.0935370
0-24 months   ki1114097-CMIN             PERU                           Male                 NA                0.0865979   0.0615544   0.1116415
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.2319305   0.1739465   0.2899144
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.2830513   0.2254845   0.3406180
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.2392556   0.2290934   0.2494178
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.2304688   0.2207192   0.2402183
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.2031496   0.1718443   0.2344550
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.2997199   0.2661033   0.3333365
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.3272318   0.3117983   0.3426652
0-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.3329009   0.3180219   0.3477799
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.3829490   0.3577588   0.4081391
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.4219331   0.3978352   0.4460309
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.0498812   0.0290736   0.0706889
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.1097852   0.0798337   0.1397367
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.2547597   0.2468612   0.2626583
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.2612941   0.2522387   0.2703494
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.2855046   0.2663454   0.3046638
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.3351729   0.3136603   0.3566855
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.2462687   0.1731824   0.3193549
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.2015504   0.1321925   0.2709083
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.3115942   0.2341672   0.3890212
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.3185841   0.2325057   0.4046624
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1727273   0.1019387   0.2435159
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1846154   0.1177813   0.2514495
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.0886076   0.0442258   0.1329894
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.1168831   0.0660590   0.1677072
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.5513514   0.4795851   0.6231176
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.4863388   0.4138249   0.5588527
0-6 months    ki1000108-IRC              INDIA                          Female               NA                0.5351351   0.4631757   0.6070945
0-6 months    ki1000108-IRC              INDIA                          Male                 NA                0.5511111   0.4860418   0.6161804
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.2702703   0.2061914   0.3343491
0-6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.2717949   0.2092703   0.3343194
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.4015152   0.3177388   0.4852915
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.3767123   0.2979709   0.4554538
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.2426901   0.1918941   0.2934861
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.2009744   0.1536074   0.2483414
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1973094   0.1450140   0.2496049
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.1743590   0.1210416   0.2276763
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.3525424   0.2979794   0.4071053
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.3608563   0.3087620   0.4129505
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.2590361   0.2118768   0.3061955
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.2581522   0.2134087   0.3028957
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.2493438   0.2058736   0.2928141
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.2679045   0.2231705   0.3126385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1182432   0.0998472   0.1366393
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1592409   0.1386370   0.1798449
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.1395745   0.1197556   0.1593933
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.1774960   0.1564112   0.1985809
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.2881944   0.2358421   0.3405468
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.3025478   0.2516969   0.3533987
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.2184874   0.1441075   0.2928673
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1568627   0.0991315   0.2145940
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0401691   0.0224645   0.0578737
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0588235   0.0380428   0.0796043
0-6 months    ki1114097-CMIN             PERU                           Female               NA                0.0646154   0.0378681   0.0913627
0-6 months    ki1114097-CMIN             PERU                           Male                 NA                0.0721925   0.0459444   0.0984406
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.2287544   0.1703908   0.2871181
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.2723258   0.2137866   0.3308650
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1921072   0.1826842   0.2015302
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1706394   0.1619083   0.1793705
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.1577909   0.1260442   0.1895377
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.2405745   0.2050611   0.2760879
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                0.2575231   0.2429437   0.2721026
0-6 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.2464597   0.2325200   0.2603994
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.2173305   0.1959583   0.2387027
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.2517049   0.2305220   0.2728878
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.1788963   0.1716605   0.1861321
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.1737986   0.1660872   0.1815099
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0963339   0.0830053   0.1096624
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.1208531   0.1060881   0.1356181
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1967213   0.1260353   0.2674074
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1694915   0.1016556   0.2373275
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.2558140   0.1803600   0.3312679
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.2924528   0.2056714   0.3792343
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1651376   0.0952836   0.2349916
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1428571   0.0816268   0.2040874
6-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.0403226   0.0056345   0.0750106
6-24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.0821918   0.0375576   0.1268260
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.1085271   0.0547477   0.1623066
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.1692308   0.1046510   0.2338105
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1048387   0.0508085   0.1588689
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1074380   0.0521486   0.1627274
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.2406417   0.1792911   0.3019923
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.2903226   0.2250027   0.3556425
6-24 months   ki1000108-IRC              INDIA                          Female               NA                0.3135135   0.2465811   0.3804459
6-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.3066667   0.2463425   0.3669908
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.3296703   0.2612829   0.3980578
6-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.3316062   0.2650978   0.3981147
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.3962264   0.3029117   0.4895411
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.3387097   0.2552276   0.4221918
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.2964744   0.2342539   0.3586948
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.3137255   0.2696597   0.3577913
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.3443396   0.2802992   0.4083800
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.3684211   0.2997461   0.4370960
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.2642276   0.2090779   0.3193773
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.3186441   0.2654236   0.3718645
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.1530612   0.1118717   0.1942507
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1682243   0.1272703   0.2091783
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1029810   0.0719489   0.1340132
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.1606648   0.1227577   0.1985719
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1354062   0.1141624   0.1566501
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1851126   0.1612834   0.2089418
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.2860377   0.2617006   0.3103748
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.3460722   0.3212635   0.3708809
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.0563380   0.0183455   0.0943306
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.1111111   0.0580020   0.1642202
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.2030769   0.1735252   0.2326286
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.2602072   0.2146739   0.3057404
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.4947368   0.4366417   0.5528320
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.4524590   0.3965522   0.5083658
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.3981481   0.3056428   0.4906535
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.3750000   0.2957707   0.4542293
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.1315436   0.1072649   0.1558223
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.2021710   0.1731658   0.2311761
6-24 months   ki1114097-CMIN             PERU                           Female               NA                0.0311751   0.0144852   0.0478650
6-24 months   ki1114097-CMIN             PERU                           Male                 NA                0.0477223   0.0282514   0.0671933
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0038381   0.0014221   0.0062541
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0167500   0.0124818   0.0210182
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0815943   0.0742373   0.0889513
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1062326   0.0979946   0.1144705
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0960549   0.0721260   0.1199838
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.1538462   0.1258161   0.1818762
6-24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.1101414   0.0994963   0.1207865
6-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.1343284   0.1232160   0.1454407
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.2498119   0.2265334   0.2730904
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.2817568   0.2588340   0.3046795
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.0455636   0.0255361   0.0655910
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.1100244   0.0796797   0.1403692
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.1529467   0.1448164   0.1610771
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.1746122   0.1657346   0.1834897
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.2283928   0.2110941   0.2456915
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.2663224   0.2459813   0.2866634


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3307985   0.2738270   0.3877700
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.0815451   0.0463297   0.1167604
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4701195   0.4082508   0.5319883
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2875000   0.2301200   0.3448800
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0860927   0.0544044   0.1177810
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1955128   0.1514355   0.2395901
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1226054   0.0827384   0.1624724
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6139410   0.5644682   0.6634139
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4894737   0.4391465   0.5398008
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5503597   0.4917777   0.6089417
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4150694   0.3581204   0.4720184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2362270   0.2192156   0.2532385
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3741007   0.3565437   0.3916578
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0984127   0.0654659   0.1313595
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2317820   0.2038933   0.2596707
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5913621   0.5520608   0.6306634
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.4558824   0.3965849   0.5151798
0-24 months   ki1114097-CMIN             BRAZIL                         NA                   NA                0.1008403   0.0465100   0.1551707
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1884539   0.1687026   0.2082051
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0785791   0.0612667   0.0958915
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2565984   0.1993515   0.3138454
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2347371   0.2277008   0.2417734
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2542624   0.2310170   0.2775078
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3301823   0.3194703   0.3408943
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0797619   0.0614297   0.0980941
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2580861   0.2516266   0.2645455
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3103068   0.2959008   0.3247129
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2243346   0.1738240   0.2748452
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3147410   0.2571729   0.3723092
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1791667   0.1305478   0.2277856
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1025641   0.0688457   0.1362825
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5190217   0.4679041   0.5701394
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2710526   0.2263016   0.3158037
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3884892   0.3310908   0.4458876
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2199336   0.1753445   0.2645227
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1866029   0.1492099   0.2239959
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1389816   0.1251275   0.1528358
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1592121   0.1446830   0.1737413
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1838235   0.1377071   0.2299400
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0496894   0.0359791   0.0633998
0-6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0686695   0.0499086   0.0874305
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2497780   0.1917926   0.3077635
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1810500   0.1746363   0.1874638
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2011278   0.1770312   0.2252244
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2518238   0.2417465   0.2619011
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1763020   0.1706791   0.1819248
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1085165   0.0986819   0.1183510
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1833333   0.1342773   0.2323893
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0629630   0.0339366   0.0919893
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1389961   0.0967835   0.1812087
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1061224   0.0674772   0.1447677
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3652174   0.3028556   0.4275792
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1605550   0.1445335   0.1765765
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3170197   0.2995873   0.3344522
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0830325   0.0504792   0.1155858
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2317820   0.2038933   0.2596707
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3849206   0.3247254   0.4451159
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1666667   0.1476863   0.1856470
6-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0398633   0.0269154   0.0528113
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0100615   0.0072668   0.0128561
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0939779   0.0884472   0.0995086
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1262295   0.1075861   0.1448729
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1227489   0.1150285   0.1304693
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0774818   0.0592383   0.0957254
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1640074   0.1578946   0.1701202
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2473297   0.2337864   0.2608729


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            0.9258510   0.6555299   1.3076447
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female            1.6142857   0.6576516   3.9624605
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            0.9957794   0.7642538   1.2974442
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            0.9230769   0.6192940   1.3758749
0-24 months   ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 Female            1.6763889   0.7707729   3.6460540
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.3811189   0.8744328   2.1814018
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.7958656   0.4129182   1.5339651
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            0.9457354   0.8048081   1.1113400
0-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Male                 Female            0.9759711   0.8480055   1.1232469
0-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.0119658   0.8237531   1.2431817
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            1.0171233   0.8216851   1.2590465
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            0.9919246   0.8767694   1.1222044
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.0869764   0.8872468   1.3316675
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.0749641   0.9112130   1.2681425
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.0276938   0.8397796   1.2576567
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.1574509   0.9446300   1.4182193
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3269527   1.1464272   1.5359052
0-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.2137282   1.1036081   1.3348363
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            1.9251337   0.9532409   3.8879362
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.2813233   1.0353343   1.5857577
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.9811880   0.8590618   1.1206758
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9757576   0.7512340   1.2673852
0-24 months   ki1114097-CMIN             BRAZIL                         Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 Female            1.0877193   0.3703294   3.1948128
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.4656784   1.1832589   1.8155055
0-24 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             PERU                           Male                 Female            1.2403060   0.7939284   1.9376543
0-24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            1.2204143   1.1207735   1.3289136
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            0.9632740   0.9072256   1.0227851
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.4753653   1.2193404   1.7851479
0-24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.0173245   0.9533233   1.0856224
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.1017997   1.0098796   1.2020865
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            2.2009319   1.3370206   3.6230565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.0256490   0.9826228   1.0705592
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.1739669   1.0696664   1.2884374
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            0.8184167   0.5195455   1.2892152
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            1.0224326   0.7082938   1.4758965
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                 Female            1.0688259   0.6186204   1.8466717
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.3191095   0.6795425   2.5606197
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            0.8820851   0.7236907   1.0751472
0-6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Male                 Female            1.0298541   0.8611118   1.2316630
0-6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.0056410   0.7227249   1.3993068
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            0.9382269   0.6983024   1.2605854
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            0.8281115   0.6823139   1.0050632
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            0.8836830   0.5895922   1.3244674
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.0235827   0.8283347   1.2648528
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            0.9965875   0.7750828   1.2813942
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.0744381   0.8439980   1.3677962
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3467232   1.1000143   1.6487635
0-6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.2716942   1.0567714   1.5303272
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0498043   0.8196479   1.3445885
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            0.7179487   0.4348736   1.1852878
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.4643963   0.8324239   2.5761593
0-6 months    ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             PERU                           Male                 Female            1.1172651   0.6439938   1.9383438
0-6 months    ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 Female            1.1904723   1.0996952   1.2887427
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            0.8882507   0.8274706   0.9534953
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.5246409   1.1879364   1.9567798
0-6 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Male                 Female            0.9570390   0.8834353   1.0367750
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.1581663   1.0175563   1.3182063
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            0.9715044   0.9185582   1.0275026
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.2545234   1.0406522   1.5123487
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            0.8615819   0.5031593   1.4753249
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.1432247   0.7523610   1.7371484
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            0.8650794   0.4737236   1.5797445
6-24 months   ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           Male                 Female            2.0383562   0.7369877   5.6376729
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.5593407   0.8342821   2.9145336
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.0247934   0.4946938   2.1229324
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.2064516   0.8586934   1.6950469
6-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Male                 Female            0.9781609   0.7317039   1.3076312
6-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.0058722   0.7537533   1.3423209
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            0.8548387   0.6079020   1.2020839
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.0581876   0.8543714   1.3106256
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.0699351   0.8222447   1.3922389
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.2059452   0.9230635   1.5755187
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.0990654   0.7645838   1.5798722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.5601399   1.0640249   2.2875749
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3670911   1.1159917   1.6746882
6-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.2098830   1.0824927   1.3522649
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            1.9722222   0.8629302   4.5075028
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.2813233   1.0353343   1.5857577
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.9145448   0.7712146   1.0845130
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9418605   0.6880208   1.2893521
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.5369119   1.2165331   1.9416637
6-24 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             PERU                           Male                 Female            1.5307859   0.7808825   3.0008428
6-24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            4.3641364   2.4472797   7.7823906
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.3019608   1.1559769   1.4663804
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.6016483   1.1763308   2.1807448
6-24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.2195987   1.0739069   1.3850559
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.1278757   0.9966397   1.2763927
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            2.4147471   1.4371800   4.0572533
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.1416534   1.0616214   1.2277188
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.1660718   1.0487223   1.2965524


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0124851   -0.0683637    0.0433935
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0195982   -0.0164535    0.0556498
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0008950   -0.0568786    0.0550886
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0125000   -0.0749993    0.0499993
0-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0227124   -0.0104566    0.0558815
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0309559   -0.0126311    0.0745428
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0137583   -0.0531262    0.0256096
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0170750   -0.0664177    0.0322677
0-24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0087673   -0.0594794    0.0419448
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0029872   -0.0486819    0.0546562
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0049052   -0.0567108    0.0665211
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0018402   -0.0298699    0.0261894
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0183771   -0.0264430    0.0631971
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0181046   -0.0231745    0.0593838
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0050430   -0.0322064    0.0422925
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0240480   -0.0093078    0.0574037
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0335243    0.0163336    0.0507151
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0372213    0.0190857    0.0553569
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0305115   -0.0017759    0.0627988
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0287051    0.0040767    0.0533335
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0058601   -0.0468893    0.0351691
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0063025   -0.0735551    0.0609501
0-24 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0040661   -0.0481096    0.0562419
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0354196    0.0157679    0.0550712
0-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0087593   -0.0092558    0.0267744
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0246679    0.0158922    0.0334437
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0045186   -0.0117609    0.0027237
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0511128    0.0266641    0.0755616
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0029505   -0.0082071    0.0141082
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0206635    0.0021728    0.0391542
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0298807    0.0115766    0.0481847
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0033263   -0.0023132    0.0089658
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0248022    0.0104347    0.0391697
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0219341   -0.0714292    0.0275611
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0031468   -0.0489779    0.0552715
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0064394   -0.0462994    0.0591782
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0139565   -0.0193853    0.0472984
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0323296   -0.0831727    0.0185135
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0087673   -0.0444789    0.0620136
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0007824   -0.0451601    0.0467249
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0130259   -0.0734248    0.0473729
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0227565   -0.0462543    0.0007413
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0107065   -0.0455640    0.0241509
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0043708   -0.0352902    0.0440318
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0004647   -0.0346402    0.0337107
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0092314   -0.0217992    0.0402619
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0207384    0.0067422    0.0347346
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0196377    0.0046337    0.0346416
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0074866   -0.0305855    0.0455587
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0346639   -0.0877513    0.0184236
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0095203   -0.0044247    0.0234653
0-6 months    ki1114097-CMIN             PERU                           Female               NA                 0.0040541   -0.0159989    0.0241072
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0210236    0.0127841    0.0292631
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0110572   -0.0176761   -0.0044382
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0433369    0.0182768    0.0683970
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                -0.0056994   -0.0160914    0.0046926
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0182148    0.0022579    0.0341717
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0025943   -0.0076165    0.0024279
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0121826    0.0021791    0.0221862
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0133880   -0.0615877    0.0348118
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0165265   -0.0353971    0.0684500
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0119461   -0.0617718    0.0378796
6-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0226404   -0.0080284    0.0533092
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0304690   -0.0118757    0.0728137
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0012837   -0.0368962    0.0394637
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0247738   -0.0199841    0.0695317
6-24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0037574   -0.0532065    0.0456917
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0009963   -0.0481004    0.0500931
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0310090   -0.0986142    0.0365962
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0095012   -0.0258746    0.0448769
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0113818   -0.0330149    0.0557785
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0296725   -0.0121814    0.0715265
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0079144   -0.0224088    0.0382376
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0285258    0.0042094    0.0528423
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0251488    0.0089606    0.0413369
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0309820    0.0130118    0.0489521
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0266945   -0.0052936    0.0586826
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0287051    0.0040767    0.0533335
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0218555   -0.0635701    0.0198592
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0132275   -0.0828403    0.0563852
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0351230    0.0162267    0.0540194
6-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0086883   -0.0047880    0.0221645
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0062234    0.0043417    0.0081050
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0123836    0.0068274    0.0179399
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0301746    0.0108635    0.0494858
6-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0126074    0.0045812    0.0206337
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0168310   -0.0003923    0.0340544
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0319183    0.0137816    0.0500550
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0110607    0.0049832    0.0171382
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0189369    0.0058112    0.0320626


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0377423   -0.2211919    0.1181492
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.2403354   -0.3405176    0.5695018
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0019037   -0.1283536    0.1103755
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0434783   -0.2851358    0.1527379
0-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.2638137   -0.2245139    0.5573996
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1583316   -0.0947119    0.3528839
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.1122159   -0.4825519    0.1656115
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0278122   -0.1114851    0.0495618
0-24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0133628   -0.0936981    0.0610716
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0061029   -0.1052690    0.1062524
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0089127   -0.1096179    0.1147817
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0044335   -0.0742351    0.0608325
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0389930   -0.0610371    0.1295926
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0379104   -0.0525748    0.1206170
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0143501   -0.0975541    0.1148448
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0726229   -0.0337586    0.1680569
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1419158    0.0663361    0.2113773
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0994954    0.0496708    0.1467077
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.3100358   -0.0873332    0.5621852
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.1238451    0.0160540    0.2198277
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0099095   -0.0817356    0.0571474
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0138249   -0.1726286    0.1234727
0-24 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0403226   -0.6447988    0.4400648
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1879483    0.0780028    0.2847831
0-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.1114711   -0.1486364    0.3126774
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0961345    0.0547009    0.1357519
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0192495   -0.0505719    0.0111390
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2010239    0.0997479    0.2909065
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0089361   -0.0254390    0.0421588
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0511964    0.0042435    0.0959353
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.3746233    0.1186042    0.5562765
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0128884   -0.0091585    0.0344536
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0799281    0.0327288    0.1248242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0977738   -0.3416487    0.1017713
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0099982   -0.1702700    0.1624979
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0359408   -0.3081716    0.2895350
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1360759   -0.2550130    0.4052932
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0622895   -0.1651797    0.0315151
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0161193   -0.0868290    0.1093159
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0028864   -0.1818683    0.1587594
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0335297   -0.2013323    0.1108341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.1034699   -0.2174700   -0.0001445
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0573761   -0.2614757    0.1137013
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0122461   -0.1053687    0.1173464
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0017972   -0.1430826    0.1220252
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0357009   -0.0920634    0.1485176
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1492168    0.0432093    0.2434792
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.1233428    0.0243533    0.2122888
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0253199   -0.1123251    0.1459320
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.1885714   -0.5131746    0.0663985
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1915962   -0.1374390    0.4254490
0-6 months    ki1114097-CMIN             PERU                           Female               NA                 0.0590385   -0.2828489    0.3098107
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0841692    0.0454558    0.1213125
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0610725   -0.0982331   -0.0251693
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2154694    0.0823388    0.3292860
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                -0.0226323   -0.0647400    0.0178101
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0773303    0.0071211    0.1425749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0147152   -0.0436475    0.0134150
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1122652    0.0156005    0.1994378
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0730253   -0.3704602    0.1598564
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0606831   -0.1505472    0.2331334
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0779817   -0.4569313    0.2024027
6-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.3595825   -0.3146490    0.6880274
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.2192076   -0.1453372    0.4677229
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0120968   -0.4218892    0.3136225
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0933398   -0.0916882    0.2470078
6-24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0121302   -0.1850465    0.1355549
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0030131   -0.1570911    0.1409640
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0849057   -0.2869120    0.0853918
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0310520   -0.0931873    0.1411717
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0319963   -0.1012200    0.1490972
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1009613   -0.0531659    0.2325325
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0491651   -0.1589991    0.2199416
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.2169151    0.0126612    0.3789143
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1566366    0.0504642    0.2509373
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0977289    0.0392699    0.1526308
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.3214942   -0.1648763    0.6047905
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.1238451    0.0160540    0.2198277
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0462177   -0.1383412    0.0384504
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0343643   -0.2320150    0.1315776
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.2107383    0.0908324    0.3148303
6-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.2179514   -0.1942077    0.4878612
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.6185340    0.3956736    0.7592091
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1317719    0.0710370    0.1885359
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2390457    0.0735173    0.3750002
6-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.1027092    0.0351378    0.1655485
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0631220   -0.0037103    0.1255043
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.4119454    0.1520837    0.5921671
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0674400    0.0298382    0.1035845
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0765653    0.0224732    0.1276641
