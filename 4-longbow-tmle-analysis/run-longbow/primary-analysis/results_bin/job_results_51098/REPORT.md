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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        sex       sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female           0      126     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female           1        5     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male             0      122     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male             1        4     257
Birth       ki0047075b-MAL-ED          BRAZIL                         Female           0       87     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Female           1        6     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Male             0       96     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Male             1        2     191
Birth       ki0047075b-MAL-ED          INDIA                          Female           0      107     206
Birth       ki0047075b-MAL-ED          INDIA                          Female           1        3     206
Birth       ki0047075b-MAL-ED          INDIA                          Male             0       92     206
Birth       ki0047075b-MAL-ED          INDIA                          Male             1        4     206
Birth       ki0047075b-MAL-ED          NEPAL                          Female           0       83     173
Birth       ki0047075b-MAL-ED          NEPAL                          Female           1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          Male             0       84     173
Birth       ki0047075b-MAL-ED          NEPAL                          Male             1        5     173
Birth       ki0047075b-MAL-ED          PERU                           Female           0      129     287
Birth       ki0047075b-MAL-ED          PERU                           Female           1        5     287
Birth       ki0047075b-MAL-ED          PERU                           Male             0      150     287
Birth       ki0047075b-MAL-ED          PERU                           Male             1        3     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female           0      129     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female           1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male             0      131     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male             1        0     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female           0       58     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female           1        3     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male             0       59     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male             1        3     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female           0       44      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female           1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male             0       43      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male             1        2      90
Birth       ki1000108-IRC              INDIA                          Female           0      166     388
Birth       ki1000108-IRC              INDIA                          Female           1        7     388
Birth       ki1000108-IRC              INDIA                          Male             0      206     388
Birth       ki1000108-IRC              INDIA                          Male             1        9     388
Birth       ki1000109-EE               PAKISTAN                       Female           0        0       2
Birth       ki1000109-EE               PAKISTAN                       Female           1        0       2
Birth       ki1000109-EE               PAKISTAN                       Male             0        2       2
Birth       ki1000109-EE               PAKISTAN                       Male             1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       Female           0        3       7
Birth       ki1000109-ResPak           PAKISTAN                       Female           1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       Male             0        4       7
Birth       ki1000109-ResPak           PAKISTAN                       Male             1        0       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female           0       77     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female           1        7     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male             0       99     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male             1        4     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female           0       12      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female           1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male             0       16      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male             1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female           0       12      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female           1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male             0       14      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male             1        0      27
Birth       ki1101329-Keneba           GAMBIA                         Female           0      722    1541
Birth       ki1101329-Keneba           GAMBIA                         Female           1       16    1541
Birth       ki1101329-Keneba           GAMBIA                         Male             0      790    1541
Birth       ki1101329-Keneba           GAMBIA                         Male             1       13    1541
Birth       ki1114097-CMIN             BANGLADESH                     Female           0        5      13
Birth       ki1114097-CMIN             BANGLADESH                     Female           1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     Male             0        3      13
Birth       ki1114097-CMIN             BANGLADESH                     Male             1        4      13
Birth       ki1114097-CMIN             BRAZIL                         Female           0       58     115
Birth       ki1114097-CMIN             BRAZIL                         Female           1        1     115
Birth       ki1114097-CMIN             BRAZIL                         Male             0       54     115
Birth       ki1114097-CMIN             BRAZIL                         Male             1        2     115
Birth       ki1114097-CMIN             PERU                           Female           0        7      10
Birth       ki1114097-CMIN             PERU                           Female           1        0      10
Birth       ki1114097-CMIN             PERU                           Male             0        3      10
Birth       ki1114097-CMIN             PERU                           Male             1        0      10
Birth       ki1114097-CONTENT          PERU                           Female           0        2       2
Birth       ki1114097-CONTENT          PERU                           Female           1        0       2
Birth       ki1114097-CONTENT          PERU                           Male             0        0       2
Birth       ki1114097-CONTENT          PERU                           Male             1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Female           0     7174   13884
Birth       ki1119695-PROBIT           BELARUS                        Female           1        2   13884
Birth       ki1119695-PROBIT           BELARUS                        Male             0     6705   13884
Birth       ki1119695-PROBIT           BELARUS                        Male             1        3   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female           0     6520   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female           1      216   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male             0     6869   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male             1      225   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Female           0      400     852
Birth       ki1135781-COHORTS          GUATEMALA                      Female           1        4     852
Birth       ki1135781-COHORTS          GUATEMALA                      Male             0      441     852
Birth       ki1135781-COHORTS          GUATEMALA                      Male             1        7     852
Birth       ki1135781-COHORTS          INDIA                          Female           0     3101    6640
Birth       ki1135781-COHORTS          INDIA                          Female           1       94    6640
Birth       ki1135781-COHORTS          INDIA                          Male             0     3333    6640
Birth       ki1135781-COHORTS          INDIA                          Male             1      112    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    Female           0     1415    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Female           1       18    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Male             0     1589    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Male             1       28    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female           0     8629   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female           1      990   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male             0     8943   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male             1     1051   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female           0      371     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female           1       29     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male             0      387     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male             1       35     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female           0      120     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female           1        3     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male             0      113     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male             1        5     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Female           0      103     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Female           1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Male             0      106     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Male             1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          Female           0      127     236
6 months    ki0047075b-MAL-ED          INDIA                          Female           1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          Male             0      100     236
6 months    ki0047075b-MAL-ED          INDIA                          Male             1        6     236
6 months    ki0047075b-MAL-ED          NEPAL                          Female           0      110     236
6 months    ki0047075b-MAL-ED          NEPAL                          Female           1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Male             0      125     236
6 months    ki0047075b-MAL-ED          NEPAL                          Male             1        1     236
6 months    ki0047075b-MAL-ED          PERU                           Female           0      123     273
6 months    ki0047075b-MAL-ED          PERU                           Female           1        3     273
6 months    ki0047075b-MAL-ED          PERU                           Male             0      138     273
6 months    ki0047075b-MAL-ED          PERU                           Male             1        9     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female           0      123     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female           1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male             0      125     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male             1        3     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female           0      123     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female           1        3     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male             0      110     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male             1       11     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female           0      172     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female           1       14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male             0      155     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male             1       28     369
6 months    ki1000108-IRC              INDIA                          Female           0      171     407
6 months    ki1000108-IRC              INDIA                          Female           1       12     407
6 months    ki1000108-IRC              INDIA                          Male             0      207     407
6 months    ki1000108-IRC              INDIA                          Male             1       17     407
6 months    ki1000109-EE               PAKISTAN                       Female           0      140     372
6 months    ki1000109-EE               PAKISTAN                       Female           1       42     372
6 months    ki1000109-EE               PAKISTAN                       Male             0      138     372
6 months    ki1000109-EE               PAKISTAN                       Male             1       52     372
6 months    ki1000109-ResPak           PAKISTAN                       Female           0       96     235
6 months    ki1000109-ResPak           PAKISTAN                       Female           1       15     235
6 months    ki1000109-ResPak           PAKISTAN                       Male             0       95     235
6 months    ki1000109-ResPak           PAKISTAN                       Male             1       29     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female           0      557    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female           1       52    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male             0      651    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male             1       76    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female           0      173     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female           1       28     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male             0      153     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male             1       26     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female           0      231     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female           1       14     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male             0      271     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male             1       21     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female           0      274     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female           1        2     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male             0      295     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male             1       12     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female           0      354     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female           1        8     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male             0      338     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male             1       15     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female           0      996    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female           1        7    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male             0     1014    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male             1       12    2029
6 months    ki1101329-Keneba           GAMBIA                         Female           0      986    2089
6 months    ki1101329-Keneba           GAMBIA                         Female           1       25    2089
6 months    ki1101329-Keneba           GAMBIA                         Male             0     1033    2089
6 months    ki1101329-Keneba           GAMBIA                         Male             1       45    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female           0      146     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female           1        7     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male             0      126     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male             1       20     299
6 months    ki1113344-GMS-Nepal        NEPAL                          Female           0      269     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Female           1        4     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Male             0      274     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Male             1       16     563
6 months    ki1114097-CMIN             BANGLADESH                     Female           0       96     243
6 months    ki1114097-CMIN             BANGLADESH                     Female           1       10     243
6 months    ki1114097-CMIN             BANGLADESH                     Male             0      119     243
6 months    ki1114097-CMIN             BANGLADESH                     Male             1       18     243
6 months    ki1114097-CMIN             BRAZIL                         Female           0       54     108
6 months    ki1114097-CMIN             BRAZIL                         Female           1        1     108
6 months    ki1114097-CMIN             BRAZIL                         Male             0       51     108
6 months    ki1114097-CMIN             BRAZIL                         Male             1        2     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female           0      419     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female           1        1     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male             0      411     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male             1       17     848
6 months    ki1114097-CMIN             PERU                           Female           0      291     637
6 months    ki1114097-CMIN             PERU                           Female           1        1     637
6 months    ki1114097-CMIN             PERU                           Male             0      338     637
6 months    ki1114097-CMIN             PERU                           Male             1        7     637
6 months    ki1114097-CONTENT          PERU                           Female           0      106     215
6 months    ki1114097-CONTENT          PERU                           Female           1        0     215
6 months    ki1114097-CONTENT          PERU                           Male             0      105     215
6 months    ki1114097-CONTENT          PERU                           Male             1        4     215
6 months    ki1119695-PROBIT           BELARUS                        Female           0     8112   15761
6 months    ki1119695-PROBIT           BELARUS                        Female           1       30   15761
6 months    ki1119695-PROBIT           BELARUS                        Male             0     7406   15761
6 months    ki1119695-PROBIT           BELARUS                        Male             1      213   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female           0     3910    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female           1      121    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male             0     4039    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male             1      225    8295
6 months    ki1135781-COHORTS          GUATEMALA                      Female           0      411     961
6 months    ki1135781-COHORTS          GUATEMALA                      Female           1       45     961
6 months    ki1135781-COHORTS          GUATEMALA                      Male             0      426     961
6 months    ki1135781-COHORTS          GUATEMALA                      Male             1       79     961
6 months    ki1135781-COHORTS          INDIA                          Female           0     3171    6860
6 months    ki1135781-COHORTS          INDIA                          Female           1      116    6860
6 months    ki1135781-COHORTS          INDIA                          Male             0     3378    6860
6 months    ki1135781-COHORTS          INDIA                          Male             1      195    6860
6 months    ki1135781-COHORTS          PHILIPPINES                    Female           0     1233    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Female           1       43    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Male             0     1343    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Male             1       89    2708
6 months    ki1148112-LCNI-5           MALAWI                         Female           0      404     839
6 months    ki1148112-LCNI-5           MALAWI                         Female           1       16     839
6 months    ki1148112-LCNI-5           MALAWI                         Male             0      364     839
6 months    ki1148112-LCNI-5           MALAWI                         Male             1       55     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female           0     7901   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female           1      348   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male             0     7890   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male             1      672   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female           0     2311    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female           1       96    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male             0     2250    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male             1      174    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female           0       93     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female           1       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male             0       93     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male             1       15     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Female           0       79     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Female           1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male             0       89     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male             1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          Female           0      112     227
24 months   ki0047075b-MAL-ED          INDIA                          Female           1       10     227
24 months   ki0047075b-MAL-ED          INDIA                          Male             0       87     227
24 months   ki0047075b-MAL-ED          INDIA                          Male             1       18     227
24 months   ki0047075b-MAL-ED          NEPAL                          Female           0      106     228
24 months   ki0047075b-MAL-ED          NEPAL                          Female           1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Male             0      115     228
24 months   ki0047075b-MAL-ED          NEPAL                          Male             1        7     228
24 months   ki0047075b-MAL-ED          PERU                           Female           0       87     201
24 months   ki0047075b-MAL-ED          PERU                           Female           1        4     201
24 months   ki0047075b-MAL-ED          PERU                           Male             0       99     201
24 months   ki0047075b-MAL-ED          PERU                           Male             1       11     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female           0      107     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female           1       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male             0      105     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male             1       15     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female           0       76     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female           1       30     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male             0       69     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male             1       39     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female           0      137     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female           1       49     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male             0      112     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male             1       74     372
24 months   ki1000108-IRC              INDIA                          Female           0      171     409
24 months   ki1000108-IRC              INDIA                          Female           1       14     409
24 months   ki1000108-IRC              INDIA                          Male             0      197     409
24 months   ki1000108-IRC              INDIA                          Male             1       27     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female           0      152     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female           1       43     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male             0      184     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male             1       50     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female           0      258     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female           1       20     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male             0      270     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male             1       29     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female           0      241     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female           1       19     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male             0      238     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male             1       16     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female           0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female           1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male             0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male             1        1       6
24 months   ki1101329-Keneba           GAMBIA                         Female           0      763    1725
24 months   ki1101329-Keneba           GAMBIA                         Female           1       59    1725
24 months   ki1101329-Keneba           GAMBIA                         Male             0      825    1725
24 months   ki1101329-Keneba           GAMBIA                         Male             1       78    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          Female           0      209     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Female           1       24     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Male             0      236     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Male             1       30     499
24 months   ki1114097-CMIN             BANGLADESH                     Female           0       76     242
24 months   ki1114097-CMIN             BANGLADESH                     Female           1       28     242
24 months   ki1114097-CMIN             BANGLADESH                     Male             0       98     242
24 months   ki1114097-CMIN             BANGLADESH                     Male             1       40     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female           0      246     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female           1       26     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male             0      250     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male             1       29     551
24 months   ki1114097-CMIN             PERU                           Female           0      189     429
24 months   ki1114097-CMIN             PERU                           Female           1       10     429
24 months   ki1114097-CMIN             PERU                           Male             0      210     429
24 months   ki1114097-CMIN             PERU                           Male             1       20     429
24 months   ki1114097-CONTENT          PERU                           Female           0       83     164
24 months   ki1114097-CONTENT          PERU                           Female           1        0     164
24 months   ki1114097-CONTENT          PERU                           Male             0       78     164
24 months   ki1114097-CONTENT          PERU                           Male             1        3     164
24 months   ki1119695-PROBIT           BELARUS                        Female           0     2063    4035
24 months   ki1119695-PROBIT           BELARUS                        Female           1       18    4035
24 months   ki1119695-PROBIT           BELARUS                        Male             0     1907    4035
24 months   ki1119695-PROBIT           BELARUS                        Male             1       47    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female           0      215     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female           1       52     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male             0      111     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male             1       79     457
24 months   ki1135781-COHORTS          GUATEMALA                      Female           0      299    1073
24 months   ki1135781-COHORTS          GUATEMALA                      Female           1      215    1073
24 months   ki1135781-COHORTS          GUATEMALA                      Male             0      313    1073
24 months   ki1135781-COHORTS          GUATEMALA                      Male             1      246    1073
24 months   ki1135781-COHORTS          INDIA                          Female           0     2105    5340
24 months   ki1135781-COHORTS          INDIA                          Female           1      440    5340
24 months   ki1135781-COHORTS          INDIA                          Male             0     2266    5340
24 months   ki1135781-COHORTS          INDIA                          Male             1      529    5340
24 months   ki1135781-COHORTS          PHILIPPINES                    Female           0      840    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Female           1      318    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Male             0      916    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Male             1      371    2445
24 months   ki1148112-LCNI-5           MALAWI                         Female           0      271     579
24 months   ki1148112-LCNI-5           MALAWI                         Female           1       23     579
24 months   ki1148112-LCNI-5           MALAWI                         Male             0      241     579
24 months   ki1148112-LCNI-5           MALAWI                         Male             1       44     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female           0     3561    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female           1      607    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male             0     3725    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male             1      739    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female           0     2179    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female           1      197    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male             0     2136    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male             1      240    4752


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/d2de2c26-f349-4ae2-a107-83d2cbcd6e79/0b40fb00-d9fd-4385-b708-b3ad1f945a53/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d2de2c26-f349-4ae2-a107-83d2cbcd6e79/0b40fb00-d9fd-4385-b708-b3ad1f945a53/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d2de2c26-f349-4ae2-a107-83d2cbcd6e79/0b40fb00-d9fd-4385-b708-b3ad1f945a53/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d2de2c26-f349-4ae2-a107-83d2cbcd6e79/0b40fb00-d9fd-4385-b708-b3ad1f945a53/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Female               NA                0.0404624    0.0110628   0.0698621
Birth       ki1000108-IRC              INDIA                          Male                 NA                0.0418605    0.0150561   0.0686648
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                0.0216802    0.0111695   0.0321910
Birth       ki1101329-Keneba           GAMBIA                         Male                 NA                0.0161893    0.0074575   0.0249210
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0320665    0.0278591   0.0362739
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0317169    0.0276388   0.0357951
Birth       ki1135781-COHORTS          INDIA                          Female               NA                0.0294210    0.0235611   0.0352809
Birth       ki1135781-COHORTS          INDIA                          Male                 NA                0.0325109    0.0265881   0.0384336
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0125611    0.0067939   0.0183283
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0173160    0.0109569   0.0236751
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.1029213    0.0964395   0.1094031
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.1051631    0.0986179   0.1117083
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0725000    0.0413989   0.1036011
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0829384    0.0521250   0.1137518
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.0752688    0.0373027   0.1132349
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1530055    0.1007772   0.2052337
6 months    ki1000108-IRC              INDIA                          Female               NA                0.0655738    0.0296655   0.1014820
6 months    ki1000108-IRC              INDIA                          Male                 NA                0.0758929    0.0411696   0.1106161
6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.2307692    0.1694758   0.2920627
6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.2736842    0.2102033   0.3371652
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.1351351    0.0714012   0.1988691
6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.2338710    0.1592085   0.3085334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.0853859    0.0651040   0.1056678
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.1045392    0.0770585   0.1320199
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1393035    0.0913712   0.1872358
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.1452514    0.0935654   0.1969374
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0571429    0.0280508   0.0862349
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.0719178    0.0422577   0.1015779
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0220994    0.0069452   0.0372537
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0424929    0.0214360   0.0635498
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0069791    0.0018258   0.0121323
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0116959    0.0051156   0.0182762
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.0247280    0.0151531   0.0343029
6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.0417440    0.0298019   0.0536861
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.0457516    0.0125879   0.0789154
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.1369863    0.0811204   0.1928522
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.0943396    0.0385799   0.1500993
6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1313869    0.0747013   0.1880724
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.0036846    0.0012090   0.0061602
6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.0279564    0.0191549   0.0367579
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0300174    0.0247495   0.0352852
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0527674    0.0460565   0.0594782
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0986842    0.0712966   0.1260718
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.1564356    0.1247359   0.1881354
6 months    ki1135781-COHORTS          INDIA                          Female               NA                0.0352905    0.0289823   0.0415988
6 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.0545760    0.0471273   0.0620246
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0336991    0.0237960   0.0436021
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0621508    0.0496440   0.0746577
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                0.0380952    0.0197770   0.0564135
6 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                0.1312649    0.0989117   0.1636182
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0421869    0.0376669   0.0467069
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0784863    0.0724771   0.0844956
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0398837    0.0318206   0.0479468
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0717822    0.0613414   0.0822229
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1057692    0.0465227   0.1650157
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1388889    0.0735117   0.2042661
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.0819672    0.0331834   0.1307511
24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1714286    0.0991818   0.2436754
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.0932203    0.0406516   0.1457891
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.1250000    0.0657033   0.1842967
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2830189    0.1970633   0.3689744
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.3611111    0.2703110   0.4519112
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.2634409    0.2000507   0.3268310
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.3978495    0.3274145   0.4682844
24 months   ki1000108-IRC              INDIA                          Female               NA                0.0756757    0.0375178   0.1138335
24 months   ki1000108-IRC              INDIA                          Male                 NA                0.1205357    0.0778461   0.1632254
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.2205128    0.1622544   0.2787713
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.2136752    0.1610947   0.2662557
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0719424    0.0415418   0.1023431
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.0969900    0.0634163   0.1305636
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0730769    0.0414107   0.1047431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0629921    0.0330854   0.0928989
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.0717762    0.0541258   0.0894266
24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.0863787    0.0680507   0.1047068
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1030043    0.0639356   0.1420730
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1127820    0.0747299   0.1508340
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.2692308    0.1838061   0.3546554
24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.2898551    0.2140023   0.3657079
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0955882    0.0606144   0.1305621
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.1039427    0.0680996   0.1397857
24 months   ki1114097-CMIN             PERU                           Female               NA                0.0502513    0.0198630   0.0806395
24 months   ki1114097-CMIN             PERU                           Male                 NA                0.0869565    0.0504989   0.1234141
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0086497   -0.0050679   0.0223673
24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0240532    0.0099844   0.0381220
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1947566    0.1472036   0.2423095
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.4157895    0.3456329   0.4859461
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.4182879    0.3756240   0.4609519
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.4400716    0.3989023   0.4812408
24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.1728880    0.1581950   0.1875810
24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.1892665    0.1747430   0.2037901
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.2746114    0.2488999   0.3003229
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.2882673    0.2635157   0.3130189
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.0782313    0.0475092   0.1089534
24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.1543860    0.1124013   0.1963707
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.1456334    0.1339081   0.1573587
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.1655466    0.1539910   0.1771022
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0829125    0.0704757   0.0953492
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.1010101    0.0874177   0.1146025


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.0412371   0.0214268   0.0610475
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0188189   0.0120322   0.0256057
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0318872   0.0289588   0.0348156
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0310241   0.0268535   0.0351947
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1040636   0.0993965   0.1087307
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0778589   0.0559066   0.0998111
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1872340   0.1372518   0.2372162
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0093642   0.0051724   0.0135561
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0335089   0.0257898   0.0412279
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0903010   0.0577597   0.1228423
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1152263   0.0749980   0.1554547
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0417119   0.0374091   0.0460146
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1290323   0.1078261   0.1502384
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0453353   0.0404119   0.0502586
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0846246   0.0657805   0.1034686
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0606746   0.0568229   0.0645262
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0558890   0.0491390   0.0626391
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1226415   0.0783812   0.1669018
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1233480   0.0804760   0.1662200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1092437   0.0695290   0.1489584
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3224299   0.2596598   0.3852000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0794203   0.0666566   0.0921840
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1082164   0.0809323   0.1355005
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2809917   0.2242434   0.3377401
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0998185   0.0747668   0.1248702
24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0699301   0.0457690   0.0940911
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0161090   0.0034156   0.0288025
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2866521   0.2451477   0.3281565
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4296365   0.4000034   0.4592696
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1814607   0.1711228   0.1917985
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2817996   0.2639639   0.2996353
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1157168   0.0896385   0.1417950
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1559314   0.1471744   0.1646884
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0919613   0.0825825   0.1013401


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1000108-IRC              INDIA                          Male                 Female            1.0345515   0.3927774    2.724945
Birth       ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA                         Male                 Female            0.7467310   0.3615816    1.542134
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            0.9890988   0.8231077    1.188564
Birth       ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA                          Male                 Female            1.1050242   0.8436171    1.447432
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.3785474   0.7657469    2.481751
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.0217817   0.9362844    1.115086
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.1439778   0.6499795    2.013425
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            2.0327869   1.1055630    3.737664
6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          Male                 Female            1.1573661   0.5669775    2.362521
6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.1859649   0.8335417    1.687393
6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.7306452   0.9791926    3.058778
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.2243149   0.8718166    1.719337
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.0426975   0.6356040    1.710527
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.2585616   0.6536222    2.423384
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.9228045   0.8250949    4.480912
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.6758563   0.6623364    4.240284
6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.6881262   1.0430949    2.732033
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            2.9941291   1.3033526    6.878268
6 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            1.3927007   0.6699697    2.895079
6 months    ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        Male                 Female            7.5873737   4.7754362   12.055075
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.7578943   1.4153618    2.183323
6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.5852145   1.1242170    2.235249
6 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          Male                 Female            1.5464764   1.2350118    1.936491
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.8442900   1.2916635    2.633353
6 months    ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5           MALAWI                         Male                 Female            3.4457041   2.0072916    5.914874
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.8604418   1.6352467    2.116649
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.7997886   1.4093482    2.298395
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.3131313   0.6317544    2.729405
24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            2.0914286   1.0086172    4.336703
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.3409090   0.6417466    2.801786
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.2759259   0.8601761    1.892621
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.5102041   1.1202028    2.035985
24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          Male                 Female            1.5927934   0.8601118    2.949606
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            0.9689922   0.6753373    1.390336
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.3481605   0.7807438    2.327955
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            0.8619975   0.4532586    1.639328
24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.2034461   0.8696998    1.665267
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0949248   0.6590517    1.819069
24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            1.0766046   0.7135702    1.624335
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.0874000   0.6577158    1.797796
24 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             PERU                           Male                 Female            1.7304348   0.8290479    3.611859
24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            2.7808200   0.7611424   10.159676
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            2.1349190   1.5866639    2.872618
24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0520780   0.9160955    1.208246
24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.0947349   0.9762946    1.227544
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.0497280   0.9244950    1.191925
24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.9734554   1.2239819    3.181849
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.1367351   1.0291030    1.255624
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.2182741   0.9997485    1.484565


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.0007747   -0.0212710   0.0228204
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.0028613   -0.0099830   0.0042605
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0001793   -0.0031849   0.0028263
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0016031   -0.0027197   0.0059260
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0025209   -0.0020312   0.0070730
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0011423   -0.0034897   0.0057744
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0053589   -0.0170384   0.0277561
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0385523    0.0062848   0.0708199
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0056793   -0.0218167   0.0331753
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0219189   -0.0232039   0.0670418
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0520989   -0.0000828   0.1042806
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0104225   -0.0075697   0.0284147
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0028018   -0.0304044   0.0360080
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0080341   -0.0145656   0.0306337
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0100684   -0.0027617   0.0228985
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0023852   -0.0018425   0.0066128
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0087809    0.0008737   0.0166880
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0445494    0.0124061   0.0766926
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0208867   -0.0240016   0.0657750
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0117332    0.0082841   0.0151823
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0116945    0.0073021   0.0160869
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0303480    0.0082585   0.0524376
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0100447    0.0049557   0.0151338
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0150454    0.0065926   0.0234982
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0465293    0.0276959   0.0653627
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0184876    0.0147219   0.0222534
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0160054    0.0094819   0.0225288
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0168723   -0.0281300   0.0618745
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0413808    0.0006404   0.0821212
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0160234   -0.0239827   0.0560294
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0394110   -0.0239067   0.1027288
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0672043    0.0193335   0.1150751
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0245688   -0.0068646   0.0560022
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0037296   -0.0465369   0.0390777
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0129796   -0.0105130   0.0364721
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0049835   -0.0265120   0.0165449
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0076441   -0.0056803   0.0209686
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0052121   -0.0238630   0.0342873
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0117610   -0.0533975   0.0769194
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0042303   -0.0211297   0.0295902
24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0196788   -0.0058258   0.0451834
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0074594    0.0016507   0.0132680
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0918955    0.0552675   0.1285235
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0113486   -0.0195457   0.0422429
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0085727   -0.0022430   0.0193883
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0071882   -0.0115999   0.0259763
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0374855    0.0116901   0.0632809
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0102980    0.0023770   0.0182191
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0090488   -0.0000013   0.0180990


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.0187861   -0.6918250   0.4309218
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.1520419   -0.5947466   0.1677672
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0056232   -0.1044369   0.0843497
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0516736   -0.0982336   0.1811187
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1671471   -0.1912679   0.4177263
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0109772   -0.0345395   0.0544914
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0688281   -0.2686768   0.3165469
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3387097    0.0060127   0.5600498
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0797060   -0.3983647   0.3943347
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0867430   -0.1101822   0.2487375
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.2782555   -0.0521068   0.5048838
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.1087849   -0.0919101   0.2725918
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0197162   -0.2441156   0.2275989
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1232653   -0.2991140   0.4083170
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.3129954   -0.1934420   0.6045260
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2547095   -0.3396652   0.5853756
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.2620461   -0.0058231   0.4585768
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.4933430    0.0593408   0.7271049
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.1812668   -0.3110833   0.4887251
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.7610166    0.6415262   0.8406772
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2803640    0.1713436   0.3750414
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2351974    0.0475846   0.3858530
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.2215656    0.1035989   0.3240078
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.3086587    0.1207890   0.4563844
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.5498323    0.3147039   0.7042870
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.3047014    0.2428077   0.3615359
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.2863777    0.1642881   0.3906311
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1375740   -0.3158776   0.4347661
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.3354801   -0.0644825   0.5851630
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1466753   -0.3059463   0.4424250
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1222313   -0.0975496   0.2980018
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.2032520    0.0452483   0.3351074
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.2450890   -0.1333731   0.4971730
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0172043   -0.2351267   0.1622684
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1528410   -0.1707534   0.3869944
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0731868   -0.4398645   0.2001123
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0962491   -0.0873786   0.2488673
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0481640   -0.2619862   0.2820907
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0418552   -0.2204509   0.2477850
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0423797   -0.2483430   0.2653969
24 months   ki1114097-CMIN             PERU                           Female               NA                 0.2814070   -0.1743712   0.5602959
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.4630540   -0.3655942   0.7888751
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.3205821    0.1846750   0.4338348
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0264144   -0.0482273   0.0957411
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0472425   -0.0142270   0.1049865
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0255082   -0.0434923   0.0899460
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.3239415    0.0737703   0.5065424
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0660420    0.0137490   0.1155623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0983982   -0.0051545   0.1912827
