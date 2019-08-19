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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        sex       wasted   n_cell       n
----------  -------------------------  -----------------------------  -------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female         0       98     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female         1       21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male           0      103     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male           1       19     241
Birth       ki0047075b-MAL-ED          BRAZIL                         Female         0       84     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Female         1        2     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Male           0       93     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Male           1        4     183
Birth       ki0047075b-MAL-ED          INDIA                          Female         0       88     203
Birth       ki0047075b-MAL-ED          INDIA                          Female         1       20     203
Birth       ki0047075b-MAL-ED          INDIA                          Male           0       82     203
Birth       ki0047075b-MAL-ED          INDIA                          Male           1       13     203
Birth       ki0047075b-MAL-ED          NEPAL                          Female         0       68     168
Birth       ki0047075b-MAL-ED          NEPAL                          Female         1       14     168
Birth       ki0047075b-MAL-ED          NEPAL                          Male           0       80     168
Birth       ki0047075b-MAL-ED          NEPAL                          Male           1        6     168
Birth       ki0047075b-MAL-ED          PERU                           Female         0      125     279
Birth       ki0047075b-MAL-ED          PERU                           Female         1        2     279
Birth       ki0047075b-MAL-ED          PERU                           Male           0      148     279
Birth       ki0047075b-MAL-ED          PERU                           Male           1        4     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female         0      119     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female         1        9     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male           0      121     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male           1        9     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female         0       57     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female         1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male           0       59     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male           1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female         0       37      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female         1        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male           0       37      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male           1        5      88
Birth       ki1000108-IRC              INDIA                          Female         0      106     343
Birth       ki1000108-IRC              INDIA                          Female         1       42     343
Birth       ki1000108-IRC              INDIA                          Male           0      145     343
Birth       ki1000108-IRC              INDIA                          Male           1       50     343
Birth       ki1000109-EE               PAKISTAN                       Female         0        0       1
Birth       ki1000109-EE               PAKISTAN                       Female         1        0       1
Birth       ki1000109-EE               PAKISTAN                       Male           0        1       1
Birth       ki1000109-EE               PAKISTAN                       Male           1        0       1
Birth       ki1000109-ResPak           PAKISTAN                       Female         0        2       6
Birth       ki1000109-ResPak           PAKISTAN                       Female         1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       Male           0        4       6
Birth       ki1000109-ResPak           PAKISTAN                       Male           1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female         0       66     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female         1        5     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male           0       89     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male           1        6     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female         0       11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female         1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male           0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male           1        6      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female         0        8      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female         1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male           0       12      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male           1        2      23
Birth       ki1101329-Keneba           GAMBIA                         Female         0      677    1423
Birth       ki1101329-Keneba           GAMBIA                         Female         1       19    1423
Birth       ki1101329-Keneba           GAMBIA                         Male           0      718    1423
Birth       ki1101329-Keneba           GAMBIA                         Male           1        9    1423
Birth       ki1114097-CMIN             BANGLADESH                     Female         0        4       8
Birth       ki1114097-CMIN             BANGLADESH                     Female         1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     Male           0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     Male           1        2       8
Birth       ki1114097-CMIN             BRAZIL                         Female         0       53     111
Birth       ki1114097-CMIN             BRAZIL                         Female         1        4     111
Birth       ki1114097-CMIN             BRAZIL                         Male           0       50     111
Birth       ki1114097-CMIN             BRAZIL                         Male           1        4     111
Birth       ki1114097-CMIN             PERU                           Female         0        7      10
Birth       ki1114097-CMIN             PERU                           Female         1        0      10
Birth       ki1114097-CMIN             PERU                           Male           0        3      10
Birth       ki1114097-CMIN             PERU                           Male           1        0      10
Birth       ki1114097-CONTENT          PERU                           Female         0        2       2
Birth       ki1114097-CONTENT          PERU                           Female         1        0       2
Birth       ki1114097-CONTENT          PERU                           Male           0        0       2
Birth       ki1114097-CONTENT          PERU                           Male           1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Female         0     5644   13824
Birth       ki1119695-PROBIT           BELARUS                        Female         1     1498   13824
Birth       ki1119695-PROBIT           BELARUS                        Male           0     5292   13824
Birth       ki1119695-PROBIT           BELARUS                        Male           1     1390   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female         0     5127   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female         1     1094   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male           0     5729   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male           1      966   12916
Birth       ki1135781-COHORTS          GUATEMALA                      Female         0      285     756
Birth       ki1135781-COHORTS          GUATEMALA                      Female         1       75     756
Birth       ki1135781-COHORTS          GUATEMALA                      Male           0      279     756
Birth       ki1135781-COHORTS          GUATEMALA                      Male           1      117     756
Birth       ki1135781-COHORTS          INDIA                          Female         0     2417    6193
Birth       ki1135781-COHORTS          INDIA                          Female         1      535    6193
Birth       ki1135781-COHORTS          INDIA                          Male           0     2680    6193
Birth       ki1135781-COHORTS          INDIA                          Male           1      561    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Female         0     1159    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Female         1      201    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Male           0     1289    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Male           1      250    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female         0     6659   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female         1      753   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male           0     7544   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male           1      753   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female         0      299     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female         1       15     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male           0      348     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male           1       21     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female         0      117     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female         1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male           0      116     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male           1        2     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Female         0      102     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Female         1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Male           0      106     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Male           1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          Female         0      119     236
6 months    ki0047075b-MAL-ED          INDIA                          Female         1       11     236
6 months    ki0047075b-MAL-ED          INDIA                          Male           0       99     236
6 months    ki0047075b-MAL-ED          INDIA                          Male           1        7     236
6 months    ki0047075b-MAL-ED          NEPAL                          Female         0      109     236
6 months    ki0047075b-MAL-ED          NEPAL                          Female         1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          Male           0      123     236
6 months    ki0047075b-MAL-ED          NEPAL                          Male           1        3     236
6 months    ki0047075b-MAL-ED          PERU                           Female         0      126     273
6 months    ki0047075b-MAL-ED          PERU                           Female         1        0     273
6 months    ki0047075b-MAL-ED          PERU                           Male           0      147     273
6 months    ki0047075b-MAL-ED          PERU                           Male           1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female         0      124     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female         1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male           0      123     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male           1        5     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female         0      125     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female         1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male           0      121     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male           1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female         0      165     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female         1       21     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male           0      157     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male           1       25     368
6 months    ki1000108-IRC              INDIA                          Female         0      161     408
6 months    ki1000108-IRC              INDIA                          Female         1       23     408
6 months    ki1000108-IRC              INDIA                          Male           0      193     408
6 months    ki1000108-IRC              INDIA                          Male           1       31     408
6 months    ki1000109-EE               PAKISTAN                       Female         0      162     376
6 months    ki1000109-EE               PAKISTAN                       Female         1       20     376
6 months    ki1000109-EE               PAKISTAN                       Male           0      165     376
6 months    ki1000109-EE               PAKISTAN                       Male           1       29     376
6 months    ki1000109-ResPak           PAKISTAN                       Female         0      101     235
6 months    ki1000109-ResPak           PAKISTAN                       Female         1       10     235
6 months    ki1000109-ResPak           PAKISTAN                       Male           0      108     235
6 months    ki1000109-ResPak           PAKISTAN                       Male           1       16     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female         0      531    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female         1       79    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male           0      637    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male           1       87    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female         0      173     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female         1       29     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male           0      138     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male           1       40     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female         0      232     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female         1       13     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male           0      270     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male           1       21     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female         0      266     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female         1       10     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male           0      292     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male           1       14     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female         0      351     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female         1       11     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male           0      343     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male           1       10     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         0      971    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         1       32    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           0      970    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           1       55    2028
6 months    ki1101329-Keneba           GAMBIA                         Female         0      954    2089
6 months    ki1101329-Keneba           GAMBIA                         Female         1       57    2089
6 months    ki1101329-Keneba           GAMBIA                         Male           0     1014    2089
6 months    ki1101329-Keneba           GAMBIA                         Male           1       64    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female         0      153     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female         1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male           0      142     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male           1        4     299
6 months    ki1113344-GMS-Nepal        NEPAL                          Female         0      253     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Female         1       20     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Male           0      259     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Male           1       31     563
6 months    ki1114097-CMIN             BANGLADESH                     Female         0       96     243
6 months    ki1114097-CMIN             BANGLADESH                     Female         1        9     243
6 months    ki1114097-CMIN             BANGLADESH                     Male           0      126     243
6 months    ki1114097-CMIN             BANGLADESH                     Male           1       12     243
6 months    ki1114097-CMIN             BRAZIL                         Female         0       55     108
6 months    ki1114097-CMIN             BRAZIL                         Female         1        0     108
6 months    ki1114097-CMIN             BRAZIL                         Male           0       52     108
6 months    ki1114097-CMIN             BRAZIL                         Male           1        1     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female         0      413     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female         1        7     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male           0      402     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male           1       27     849
6 months    ki1114097-CMIN             PERU                           Female         0      289     636
6 months    ki1114097-CMIN             PERU                           Female         1        3     636
6 months    ki1114097-CMIN             PERU                           Male           0      337     636
6 months    ki1114097-CMIN             PERU                           Male           1        7     636
6 months    ki1114097-CONTENT          PERU                           Female         0      106     215
6 months    ki1114097-CONTENT          PERU                           Female         1        0     215
6 months    ki1114097-CONTENT          PERU                           Male           0      109     215
6 months    ki1114097-CONTENT          PERU                           Male           1        0     215
6 months    ki1119695-PROBIT           BELARUS                        Female         0     8118   15757
6 months    ki1119695-PROBIT           BELARUS                        Female         1       20   15757
6 months    ki1119695-PROBIT           BELARUS                        Male           0     7509   15757
6 months    ki1119695-PROBIT           BELARUS                        Male           1      110   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female         0     3910    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female         1      110    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male           0     4089    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male           1      155    8264
6 months    ki1135781-COHORTS          GUATEMALA                      Female         0      449     963
6 months    ki1135781-COHORTS          GUATEMALA                      Female         1        7     963
6 months    ki1135781-COHORTS          GUATEMALA                      Male           0      482     963
6 months    ki1135781-COHORTS          GUATEMALA                      Male           1       25     963
6 months    ki1135781-COHORTS          INDIA                          Female         0     2868    6850
6 months    ki1135781-COHORTS          INDIA                          Female         1      416    6850
6 months    ki1135781-COHORTS          INDIA                          Male           0     3117    6850
6 months    ki1135781-COHORTS          INDIA                          Male           1      449    6850
6 months    ki1135781-COHORTS          PHILIPPINES                    Female         0     1215    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Female         1       60    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Male           0     1330    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Male           1      101    2706
6 months    ki1148112-LCNI-5           MALAWI                         Female         0      413     839
6 months    ki1148112-LCNI-5           MALAWI                         Female         1        7     839
6 months    ki1148112-LCNI-5           MALAWI                         Male           0      412     839
6 months    ki1148112-LCNI-5           MALAWI                         Male           1        7     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female         0     7591   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female         1      643   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male           0     7772   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male           1      778   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female         0     2287    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female         1      121    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male           0     2271    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male           1      154    4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female         0       91     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female         1       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male           0      100     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male           1        8     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Female         0       77     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Female         1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male           0       89     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male           1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          Female         0      110     227
24 months   ki0047075b-MAL-ED          INDIA                          Female         1       12     227
24 months   ki0047075b-MAL-ED          INDIA                          Male           0       90     227
24 months   ki0047075b-MAL-ED          INDIA                          Male           1       15     227
24 months   ki0047075b-MAL-ED          NEPAL                          Female         0      105     228
24 months   ki0047075b-MAL-ED          NEPAL                          Female         1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          Male           0      118     228
24 months   ki0047075b-MAL-ED          NEPAL                          Male           1        4     228
24 months   ki0047075b-MAL-ED          PERU                           Female         0       91     201
24 months   ki0047075b-MAL-ED          PERU                           Female         1        0     201
24 months   ki0047075b-MAL-ED          PERU                           Male           0      107     201
24 months   ki0047075b-MAL-ED          PERU                           Male           1        3     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female         0      117     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female         1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male           0      120     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male           1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female         0      105     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female         1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male           0      105     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male           1        3     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female         0      177     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female         1        9     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male           0      172     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male           1       14     372
24 months   ki1000108-IRC              INDIA                          Female         0      171     409
24 months   ki1000108-IRC              INDIA                          Female         1       14     409
24 months   ki1000108-IRC              INDIA                          Male           0      207     409
24 months   ki1000108-IRC              INDIA                          Male           1       17     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female         0      177     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female         1       18     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male           0      198     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male           1       35     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female         0      247     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female         1       31     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male           0      266     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male           1       34     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female         0      245     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female         1       15     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male           0      224     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male           1       30     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Female         0      743    1726
24 months   ki1101329-Keneba           GAMBIA                         Female         1       80    1726
24 months   ki1101329-Keneba           GAMBIA                         Male           0      792    1726
24 months   ki1101329-Keneba           GAMBIA                         Male           1      111    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          Female         0      194     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Female         1       38     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Male           0      213     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Male           1       53     498
24 months   ki1114097-CMIN             BANGLADESH                     Female         0       96     243
24 months   ki1114097-CMIN             BANGLADESH                     Female         1        8     243
24 months   ki1114097-CMIN             BANGLADESH                     Male           0      122     243
24 months   ki1114097-CMIN             BANGLADESH                     Male           1       17     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female         0      266     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female         1        6     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male           0      262     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male           1       17     551
24 months   ki1114097-CMIN             PERU                           Female         0      199     429
24 months   ki1114097-CMIN             PERU                           Female         1        0     429
24 months   ki1114097-CMIN             PERU                           Male           0      228     429
24 months   ki1114097-CMIN             PERU                           Male           1        2     429
24 months   ki1114097-CONTENT          PERU                           Female         0       83     164
24 months   ki1114097-CONTENT          PERU                           Female         1        0     164
24 months   ki1114097-CONTENT          PERU                           Male           0       81     164
24 months   ki1114097-CONTENT          PERU                           Male           1        0     164
24 months   ki1119695-PROBIT           BELARUS                        Female         0     2031    3971
24 months   ki1119695-PROBIT           BELARUS                        Female         1       16    3971
24 months   ki1119695-PROBIT           BELARUS                        Male           0     1896    3971
24 months   ki1119695-PROBIT           BELARUS                        Male           1       28    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female         0      218     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female         1       38     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male           0      129     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male           1       38     423
24 months   ki1135781-COHORTS          GUATEMALA                      Female         0      494    1082
24 months   ki1135781-COHORTS          GUATEMALA                      Female         1       22    1082
24 months   ki1135781-COHORTS          GUATEMALA                      Male           0      538    1082
24 months   ki1135781-COHORTS          GUATEMALA                      Male           1       28    1082
24 months   ki1135781-COHORTS          INDIA                          Female         0     2326    5291
24 months   ki1135781-COHORTS          INDIA                          Female         1      195    5291
24 months   ki1135781-COHORTS          INDIA                          Male           0     2480    5291
24 months   ki1135781-COHORTS          INDIA                          Male           1      290    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    Female         0     1090    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Female         1       68    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Male           0     1192    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Male           1       99    2449
24 months   ki1148112-LCNI-5           MALAWI                         Female         0      280     563
24 months   ki1148112-LCNI-5           MALAWI                         Female         1        6     563
24 months   ki1148112-LCNI-5           MALAWI                         Male           0      273     563
24 months   ki1148112-LCNI-5           MALAWI                         Male           1        4     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female         0     3299    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female         1      853    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male           0     3426    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male           1     1025    8603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female         0     1958    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female         1      409    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male           0     1857    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male           1      511    4735


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/fc295234-fad2-4844-8a42-e0cea734feac/96b2fe9e-2763-4cc7-8289-a8c9c7df0eb0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fc295234-fad2-4844-8a42-e0cea734feac/96b2fe9e-2763-4cc7-8289-a8c9c7df0eb0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fc295234-fad2-4844-8a42-e0cea734feac/96b2fe9e-2763-4cc7-8289-a8c9c7df0eb0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fc295234-fad2-4844-8a42-e0cea734feac/96b2fe9e-2763-4cc7-8289-a8c9c7df0eb0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1764706    0.1078344   0.2451068
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1557377    0.0912604   0.2202150
Birth       ki0047075b-MAL-ED          INDIA                          Female               NA                0.1851852    0.1117438   0.2586266
Birth       ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1368421    0.0675612   0.2061230
Birth       ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1707317    0.0890467   0.2524167
Birth       ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.0697674    0.0157645   0.1237704
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.0703125    0.0259341   0.1146909
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.0692308    0.0255097   0.1129518
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1956522    0.0803559   0.3109484
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1190476    0.0205464   0.2175489
Birth       ki1000108-IRC              INDIA                          Female               NA                0.2837838    0.2110448   0.3565227
Birth       ki1000108-IRC              INDIA                          Male                 NA                0.2564103    0.1950342   0.3177863
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.0704225    0.0075950   0.1332501
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.0631579    0.0304805   0.0958353
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                0.0272989    0.0151885   0.0394092
Birth       ki1101329-Keneba           GAMBIA                         Male                 NA                0.0123796    0.0043392   0.0204201
Birth       ki1119695-PROBIT           BELARUS                        Female               NA                0.2097452    0.1449538   0.2745366
Birth       ki1119695-PROBIT           BELARUS                        Male                 NA                0.2080216    0.1412059   0.2748372
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1758560    0.1663955   0.1853165
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1442868    0.1358696   0.1527040
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                0.2083333    0.1663541   0.2503126
Birth       ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.2954545    0.2504882   0.3404209
Birth       ki1135781-COHORTS          INDIA                          Female               NA                0.1812331    0.1673360   0.1951302
Birth       ki1135781-COHORTS          INDIA                          Male                 NA                0.1730947    0.1600687   0.1861208
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.1477941    0.1289292   0.1666590
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.1624431    0.1440116   0.1808747
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.1015920    0.0944705   0.1087135
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0907557    0.0839462   0.0975652
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0477707    0.0239199   0.0716215
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0569106    0.0279943   0.0858268
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.0846154    0.0366724   0.1325584
6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.0660377    0.0186596   0.1134159
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1129032    0.0673603   0.1584462
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1373626    0.0872841   0.1874412
6 months    ki1000108-IRC              INDIA                          Female               NA                0.1250000    0.0771556   0.1728444
6 months    ki1000108-IRC              INDIA                          Male                 NA                0.1383929    0.0931168   0.1836689
6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.1098901    0.0643922   0.1553881
6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.1494845    0.0992428   0.1997263
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.0900901    0.0367136   0.1434666
6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.1290323    0.0699015   0.1881630
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.1295082    0.0978682   0.1611482
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.1201657    0.0919943   0.1483372
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1435644    0.0951454   0.1919833
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.2247191    0.1633203   0.2861179
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0530612    0.0249668   0.0811556
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.0721649    0.0424068   0.1019231
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0362319    0.0141671   0.0582966
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.0457516    0.0223204   0.0691828
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0303867    0.0126922   0.0480813
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0283286    0.0110090   0.0456482
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0319043    0.0210253   0.0427833
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0536585    0.0398599   0.0674572
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.0563798    0.0421586   0.0706010
6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.0593692    0.0452590   0.0734794
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.0732601    0.0423240   0.1041962
6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1068966    0.0713033   0.1424898
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.0857143    0.0320585   0.1393701
6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.0869565    0.0398479   0.1340652
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0166667    0.0044162   0.0289172
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0629371    0.0399431   0.0859310
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.0024576    0.0012470   0.0036682
6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.0144376    0.0114971   0.0173781
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0273632    0.0223198   0.0324065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0365221    0.0308782   0.0421661
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0153509    0.0040608   0.0266410
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0493097    0.0304534   0.0681659
6 months    ki1135781-COHORTS          INDIA                          Female               NA                0.1266748    0.1152982   0.1380514
6 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.1259114    0.1150221   0.1368007
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0470588    0.0354329   0.0586847
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0705800    0.0573074   0.0838526
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                0.0166667    0.0044161   0.0289173
6 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                0.0167064    0.0044269   0.0289860
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0780908    0.0717612   0.0844205
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0909942    0.0843404   0.0976479
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0502492    0.0399207   0.0605777
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0635052    0.0496998   0.0773105
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1250000    0.0612886   0.1887114
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.0740741    0.0245651   0.1235831
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.0983607    0.0453999   0.1513214
24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1428571    0.0757777   0.2099366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.0483871    0.0175075   0.0792667
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.0752688    0.0373031   0.1132345
24 months   ki1000108-IRC              INDIA                          Female               NA                0.0756757    0.0375178   0.1138335
24 months   ki1000108-IRC              INDIA                          Male                 NA                0.0758929    0.0411699   0.1106159
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0923077    0.0516328   0.1329826
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1502146    0.1042854   0.1961438
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.1115108    0.0744780   0.1485436
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1133333    0.0774310   0.1492357
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0576923    0.0293236   0.0860610
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.1181102    0.0783815   0.1578390
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.0972053    0.0769605   0.1174502
24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.1229236    0.1015013   0.1443459
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1637931    0.1161231   0.2114631
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1992481    0.1511985   0.2472977
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.0769231    0.0256046   0.1282416
24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1223022    0.0677231   0.1768812
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0220588    0.0045883   0.0395293
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0609319    0.0328380   0.0890258
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0078163   -0.0005326   0.0161652
24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0145530    0.0064496   0.0226564
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1484375    0.1048339   0.1920411
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.2275449    0.1638838   0.2912060
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0426357    0.0251956   0.0600758
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0494700    0.0315971   0.0673428
24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.0773503    0.0669210   0.0877795
24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.1046931    0.0932908   0.1160955
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0587219    0.0451781   0.0722658
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0766847    0.0621669   0.0912026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.2054432    0.1916267   0.2192596
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.2302853    0.2168044   0.2437663
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.1727926    0.1548868   0.1906983
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.2157939    0.1958679   0.2357200


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1659751   0.1189041   0.2130461
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1625616   0.1116803   0.2134428
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1190476   0.0699312   0.1681640
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0697674   0.0386213   0.1009135
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1590909   0.0822335   0.2359483
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0662651   0.0346192   0.0979109
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0196767   0.0124580   0.0268954
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2089120   0.1435514   0.2742726
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1594921   0.1531776   0.1658066
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2539683   0.2229196   0.2850169
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1769740   0.1674681   0.1864799
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0958686   0.0906699   0.1010673
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0527086   0.0336587   0.0717585
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0762712   0.0423347   0.1102077
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.1303191   0.0962457   0.1643926
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1106383   0.0704470   0.1508296
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0634328   0.0427791   0.0840865
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0428994   0.0340782   0.0517206
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0579225   0.0479029   0.0679420
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0905861   0.0668565   0.1143158
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0864198   0.0510184   0.1218211
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0400471   0.0268506   0.0532437
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0082503   0.0066012   0.0098994
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0320668   0.0282681   0.0358654
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0332295   0.0219033   0.0445557
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1262774   0.1184108   0.1341439
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0166865   0.0080138   0.0253592
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0846640   0.0798626   0.0894653
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0569005   0.0480577   0.0657432
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0990566   0.0587480   0.1393652
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1189427   0.0767376   0.1611478
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0618280   0.0373207   0.0863352
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1106605   0.0958563   0.1254646
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1827309   0.1487560   0.2167058
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1028807   0.0646041   0.1411572
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0417423   0.0250277   0.0584569
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0110803   0.0050506   0.0171100
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1796690   0.1430402   0.2162979
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0462107   0.0336957   0.0587258
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0916651   0.0838893   0.0994409
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2182959   0.2084450   0.2281469
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1942978   0.1810880   0.2075076


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            0.8825137   0.5000589   1.5574774
Birth       ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Male                 Female            0.7389474   0.3884280   1.4057770
Birth       ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Male                 Female            0.4086379   0.1644915   1.0151586
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            0.9846154   0.4031861   2.4045162
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            0.6084656   0.2203305   1.6803408
Birth       ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          Male                 Female            0.9035409   0.6362644   1.2830925
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            0.8968421   0.3112976   2.5837843
Birth       ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         Male                 Female            0.4534858   0.2065259   0.9957559
Birth       ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS                        Male                 Female            0.9917823   0.9239610   1.0645819
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            0.8204827   0.7578894   0.8882454
Birth       ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.4181818   1.1017034   1.8255727
Birth       ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Male                 Female            0.9550946   0.8578005   1.0634241
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.0991178   0.9265609   1.3038106
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            0.8933349   0.8111881   0.9838006
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.1913279   0.5832681   2.4332931
6 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            0.7804460   0.3128329   1.9470327
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.2166405   0.7063646   2.0955385
6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          Male                 Female            1.1071429   0.6691564   1.8318068
6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.3603093   0.7980647   2.3186609
6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.4322581   0.6772113   3.0291330
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            0.9278621   0.7165881   1.2014267
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.5652848   1.0141181   2.4160069
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.3600317   0.6951705   2.6607662
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.2627451   0.5698283   2.7982556
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            0.9322689   0.4007363   2.1688209
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.6818598   1.0972578   2.5779287
6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.0530222   0.7446014   1.4891937
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.4591379   0.8522160   2.4982909
6 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            1.0144928   0.4433175   2.3215769
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            3.7762234   1.6618017   8.5809656
6 months    ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Male                 Female            5.8746551   3.5580588   9.6995511
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.3347185   1.0493758   1.6976506
6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            3.2121724   1.4021433   7.3587713
6 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Male                 Female            0.9939735   0.8774592   1.1259594
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.4998253   1.0995162   2.0458779
6 months    ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Male                 Female            1.0023866   0.3544801   2.8345146
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.1652346   1.0500593   1.2930428
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.2638051   0.9436829   1.6925211
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            0.5925926   0.2556906   1.3734018
24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.4523809   0.7109062   2.9672134
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.5555555   0.6896222   3.5088098
24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          Male                 Female            1.0028699   0.5076315   1.9812561
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.6273246   0.9518022   2.7822856
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.0163441   0.6422696   1.6082893
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            2.0472441   1.1283180   3.7145630
24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.2645764   0.9638431   1.6591428
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.2164622   0.8335850   1.7752004
24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            1.5899281   0.7125184   3.5477976
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            2.7622461   1.1047446   6.9065767
24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            1.8618763   0.5763037   6.0152023
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.5329341   1.0217537   2.2998567
24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.1602955   0.6722790   2.0025699
24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.3534944   1.1381060   1.6096454
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.3058960   0.9689879   1.7599440
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.1209199   1.0272790   1.2230966
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.2488611   1.0849037   1.4375969


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0104955   -0.0581853    0.0371944
Birth       ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0226236   -0.0699892    0.0247420
Birth       ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0516841   -0.1023919   -0.0009762
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0005451   -0.0319353    0.0308452
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0365613   -0.1093817    0.0362592
Birth       ki1000108-IRC              INDIA                          Female               NA                -0.0155622   -0.0696886    0.0385642
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0041575   -0.0459545    0.0376395
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.0076221   -0.0150588   -0.0001854
Birth       ki1119695-PROBIT           BELARUS                        Female               NA                -0.0008331   -0.0079412    0.0062749
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0163639   -0.0229333   -0.0097944
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0456349    0.0132631    0.0780068
Birth       ki1135781-COHORTS          INDIA                          Female               NA                -0.0042591   -0.0142278    0.0057096
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0077768   -0.0062272    0.0217807
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0057234   -0.0106141   -0.0008327
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0049379   -0.0153606    0.0252364
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0083442   -0.0386416    0.0219532
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0120968   -0.0214040    0.0455976
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0073529   -0.0288174    0.0435233
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0204290   -0.0146005    0.0554586
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0205482   -0.0215582    0.0626546
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0050704   -0.0226541    0.0125133
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0380146    0.0011610    0.0748682
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0103716   -0.0118615    0.0326048
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0050052   -0.0119212    0.0219317
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0010161   -0.0132406    0.0112084
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0109951    0.0021015    0.0198888
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0015426   -0.0087956    0.0118808
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0173261   -0.0070049    0.0416570
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0007055   -0.0398436    0.0412545
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0233804    0.0101237    0.0366371
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0057927    0.0043546    0.0072308
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0047036    0.0008153    0.0085920
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0178786    0.0062582    0.0294990
6 months    ki1135781-COHORTS          INDIA                          Female               NA                -0.0003974   -0.0085956    0.0078008
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0124386    0.0030973    0.0217798
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0000199   -0.0086425    0.0086823
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0065731    0.0021120    0.0110342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0066513   -0.0018105    0.0151132
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0259434   -0.0671910    0.0153042
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0205821   -0.0190565    0.0602206
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0134409   -0.0110664    0.0379481
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0001189   -0.0281367    0.0283746
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0315241   -0.0019868    0.0650349
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0009460   -0.0258253    0.0277172
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0298563    0.0055913    0.0541214
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0134551   -0.0019773    0.0288876
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0189378   -0.0172484    0.0551240
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0259576   -0.0169891    0.0689042
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0196835    0.0028533    0.0365137
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0032640   -0.0021315    0.0086595
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0312315    0.0005454    0.0619177
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0035751   -0.0094895    0.0166396
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0143148    0.0062166    0.0224131
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0094692   -0.0010033    0.0199416
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0128528    0.0030751    0.0226305
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0215052    0.0079027    0.0351077


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0632353   -0.3927150    0.1882982
Birth       ki0047075b-MAL-ED          INDIA                          Female               NA                -0.1391695   -0.4688420    0.1165101
Birth       ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.4341463   -0.8984361   -0.0834053
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0078125   -0.5749281    0.3550905
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.2298137   -0.7738559    0.1473706
Birth       ki1000108-IRC              INDIA                          Female               NA                -0.0580200   -0.2802766    0.1256528
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0627401   -0.9005328    0.4057369
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.3873666   -0.7878067   -0.0766186
Birth       ki1119695-PROBIT           BELARUS                        Female               NA                -0.0039880   -0.0387915    0.0296495
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.1025999   -0.1444478   -0.0622822
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.1796875    0.0427658    0.2970241
Birth       ki1135781-COHORTS          INDIA                          Female               NA                -0.0240660   -0.0819638    0.0307336
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0499886   -0.0443592    0.1358129
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0597005   -0.1120862   -0.0097825
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0936836   -0.3745868    0.4024318
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.1094017   -0.5835655    0.2227842
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0967742   -0.2139570    0.3279689
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0555556   -0.2610451    0.2926698
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.1567616   -0.1565966    0.3852212
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.1857242   -0.2917932    0.4867250
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0407466   -0.1917474    0.0911216
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.2093557   -0.0178728    0.3858580
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1635054   -0.2663850    0.4474641
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1213768   -0.3977427    0.4476961
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0345962   -0.5466254    0.3079196
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2563001    0.0255628    0.4324010
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0266327   -0.1691999    0.1896647
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.1912663   -0.1218159    0.4169718
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0081633   -0.5918005    0.3819953
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.5838235    0.2004115    0.7833850
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.7021192    0.5456766    0.8046920
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1466817    0.0177453    0.2586932
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.5380345    0.1164870    0.7584505
6 months    ki1135781-COHORTS          INDIA                          Female               NA                -0.0031472   -0.0702161    0.0597187
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.2090610    0.0388458    0.3491320
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0011905   -0.6795943    0.4060349
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0776378    0.0235318    0.1287458
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1168937   -0.0401353    0.2502161
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.2619048   -0.7414183    0.0855709
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1730419   -0.2307731    0.4443657
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.2173913   -0.2846822    0.5232468
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0015693   -0.4503533    0.3126752
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.2545718   -0.0629791    0.4772586
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0084117   -0.2606463    0.2200451
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.3410256    0.0185972    0.5575240
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.1215894   -0.0286773    0.2499054
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.1036377   -0.1172699    0.2808673
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.2523077   -0.2913943    0.5671006
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.4715473   -0.0415146    0.7318691
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.2945774   -0.4794758    0.6636505
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1738281   -0.0129997    0.3261992
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0773643   -0.2524913    0.3203493
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.1561645    0.0639467    0.2392973
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1388622   -0.0278481    0.2785331
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0588778    0.0129465    0.1026717
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1106817    0.0382890    0.1776251
