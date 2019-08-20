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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        sex       stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female          0      105     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female          1       26     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male            0      105     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male            1       21     257
Birth       ki0047075b-MAL-ED          BRAZIL                         Female          0       80     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Female          1       13     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Male            0       90     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Male            1        8     191
Birth       ki0047075b-MAL-ED          INDIA                          Female          0       95     206
Birth       ki0047075b-MAL-ED          INDIA                          Female          1       15     206
Birth       ki0047075b-MAL-ED          INDIA                          Male            0       78     206
Birth       ki0047075b-MAL-ED          INDIA                          Male            1       18     206
Birth       ki0047075b-MAL-ED          NEPAL                          Female          0       78     173
Birth       ki0047075b-MAL-ED          NEPAL                          Female          1        6     173
Birth       ki0047075b-MAL-ED          NEPAL                          Male            0       77     173
Birth       ki0047075b-MAL-ED          NEPAL                          Male            1       12     173
Birth       ki0047075b-MAL-ED          PERU                           Female          0      119     287
Birth       ki0047075b-MAL-ED          PERU                           Female          1       15     287
Birth       ki0047075b-MAL-ED          PERU                           Male            0      134     287
Birth       ki0047075b-MAL-ED          PERU                           Male            1       19     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female          0      119     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female          1       12     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male            0      115     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male            1       16     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          0       51     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          1       10     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            0       54     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            1        8     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female          0       40      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female          1        5      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male            0       34      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male            1       11      90
Birth       ki1000108-IRC              INDIA                          Female          0      156     388
Birth       ki1000108-IRC              INDIA                          Female          1       17     388
Birth       ki1000108-IRC              INDIA                          Male            0      187     388
Birth       ki1000108-IRC              INDIA                          Male            1       28     388
Birth       ki1000109-EE               PAKISTAN                       Female          0        0       2
Birth       ki1000109-EE               PAKISTAN                       Female          1        0       2
Birth       ki1000109-EE               PAKISTAN                       Male            0        1       2
Birth       ki1000109-EE               PAKISTAN                       Male            1        1       2
Birth       ki1000109-ResPak           PAKISTAN                       Female          0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       Female          1        1       7
Birth       ki1000109-ResPak           PAKISTAN                       Male            0        3       7
Birth       ki1000109-ResPak           PAKISTAN                       Male            1        1       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female          0       67     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female          1       17     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male            0       74     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male            1       29     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female          0       12      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female          1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male            0       15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male            1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female          0        9      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female          1        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male            0       13      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male            1        1      27
Birth       ki1101329-Keneba           GAMBIA                         Female          0      696    1541
Birth       ki1101329-Keneba           GAMBIA                         Female          1       42    1541
Birth       ki1101329-Keneba           GAMBIA                         Male            0      763    1541
Birth       ki1101329-Keneba           GAMBIA                         Male            1       40    1541
Birth       ki1114097-CMIN             BANGLADESH                     Female          0        5      13
Birth       ki1114097-CMIN             BANGLADESH                     Female          1        1      13
Birth       ki1114097-CMIN             BANGLADESH                     Male            0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     Male            1        5      13
Birth       ki1114097-CMIN             BRAZIL                         Female          0       56     115
Birth       ki1114097-CMIN             BRAZIL                         Female          1        3     115
Birth       ki1114097-CMIN             BRAZIL                         Male            0       54     115
Birth       ki1114097-CMIN             BRAZIL                         Male            1        2     115
Birth       ki1114097-CMIN             PERU                           Female          0        7      10
Birth       ki1114097-CMIN             PERU                           Female          1        0      10
Birth       ki1114097-CMIN             PERU                           Male            0        3      10
Birth       ki1114097-CMIN             PERU                           Male            1        0      10
Birth       ki1114097-CONTENT          PERU                           Female          0        2       2
Birth       ki1114097-CONTENT          PERU                           Female          1        0       2
Birth       ki1114097-CONTENT          PERU                           Male            0        0       2
Birth       ki1114097-CONTENT          PERU                           Male            1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Female          0     7168   13884
Birth       ki1119695-PROBIT           BELARUS                        Female          1        8   13884
Birth       ki1119695-PROBIT           BELARUS                        Male            0     6683   13884
Birth       ki1119695-PROBIT           BELARUS                        Male            1       25   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female          0     6071   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female          1      665   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male            0     6327   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male            1      767   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Female          0      383     852
Birth       ki1135781-COHORTS          GUATEMALA                      Female          1       21     852
Birth       ki1135781-COHORTS          GUATEMALA                      Male            0      419     852
Birth       ki1135781-COHORTS          GUATEMALA                      Male            1       29     852
Birth       ki1135781-COHORTS          INDIA                          Female          0     2845    6640
Birth       ki1135781-COHORTS          INDIA                          Female          1      350    6640
Birth       ki1135781-COHORTS          INDIA                          Male            0     3003    6640
Birth       ki1135781-COHORTS          INDIA                          Male            1      442    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    Female          0     1360    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Female          1       73    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Male            0     1503    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Male            1      114    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female          0     6555   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female          1     3064   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male            0     6720   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male            1     3274   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female          0      265     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female          1      135     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male            0      310     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male            1      112     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female          0      108     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female          1       15     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male            0       88     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male            1       30     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Female          0      101     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Female          1        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Male            0      102     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Male            1        4     209
6 months    ki0047075b-MAL-ED          INDIA                          Female          0      112     236
6 months    ki0047075b-MAL-ED          INDIA                          Female          1       18     236
6 months    ki0047075b-MAL-ED          INDIA                          Male            0       78     236
6 months    ki0047075b-MAL-ED          INDIA                          Male            1       28     236
6 months    ki0047075b-MAL-ED          NEPAL                          Female          0      108     236
6 months    ki0047075b-MAL-ED          NEPAL                          Female          1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          Male            0      116     236
6 months    ki0047075b-MAL-ED          NEPAL                          Male            1       10     236
6 months    ki0047075b-MAL-ED          PERU                           Female          0      109     273
6 months    ki0047075b-MAL-ED          PERU                           Female          1       17     273
6 months    ki0047075b-MAL-ED          PERU                           Male            0      104     273
6 months    ki0047075b-MAL-ED          PERU                           Male            1       43     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female          0      106     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female          1       20     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male            0       98     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male            1       30     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          0       96     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          1       30     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            0       93     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            1       28     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female          0      139     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female          1       47     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male            0      119     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male            1       64     369
6 months    ki1000108-IRC              INDIA                          Female          0      144     407
6 months    ki1000108-IRC              INDIA                          Female          1       39     407
6 months    ki1000108-IRC              INDIA                          Male            0      163     407
6 months    ki1000108-IRC              INDIA                          Male            1       61     407
6 months    ki1000109-EE               PAKISTAN                       Female          0       90     372
6 months    ki1000109-EE               PAKISTAN                       Female          1       92     372
6 months    ki1000109-EE               PAKISTAN                       Male            0       89     372
6 months    ki1000109-EE               PAKISTAN                       Male            1      101     372
6 months    ki1000109-ResPak           PAKISTAN                       Female          0       76     235
6 months    ki1000109-ResPak           PAKISTAN                       Female          1       35     235
6 months    ki1000109-ResPak           PAKISTAN                       Male            0       76     235
6 months    ki1000109-ResPak           PAKISTAN                       Male            1       48     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female          0      439    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female          1      170    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male            0      517    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male            1      210    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female          0      116     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female          1       85     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male            0      101     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male            1       78     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female          0      197     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female          1       48     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male            0      196     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male            1       96     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female          0      239     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female          1       37     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male            0      250     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male            1       57     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female          0      294     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female          1       68     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male            0      271     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male            1       82     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          0      935    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          1       68    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            0      897    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            1      129    2029
6 months    ki1101329-Keneba           GAMBIA                         Female          0      887    2089
6 months    ki1101329-Keneba           GAMBIA                         Female          1      124    2089
6 months    ki1101329-Keneba           GAMBIA                         Male            0      907    2089
6 months    ki1101329-Keneba           GAMBIA                         Male            1      171    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female          0      114     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female          1       39     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male            0       95     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male            1       51     299
6 months    ki1113344-GMS-Nepal        NEPAL                          Female          0      219     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Female          1       54     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Male            0      225     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Male            1       65     563
6 months    ki1114097-CMIN             BANGLADESH                     Female          0       75     243
6 months    ki1114097-CMIN             BANGLADESH                     Female          1       31     243
6 months    ki1114097-CMIN             BANGLADESH                     Male            0       75     243
6 months    ki1114097-CMIN             BANGLADESH                     Male            1       62     243
6 months    ki1114097-CMIN             BRAZIL                         Female          0       54     108
6 months    ki1114097-CMIN             BRAZIL                         Female          1        1     108
6 months    ki1114097-CMIN             BRAZIL                         Male            0       44     108
6 months    ki1114097-CMIN             BRAZIL                         Male            1        9     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female          0      391     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female          1       29     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male            0      381     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male            1       47     848
6 months    ki1114097-CMIN             PERU                           Female          0      274     637
6 months    ki1114097-CMIN             PERU                           Female          1       18     637
6 months    ki1114097-CMIN             PERU                           Male            0      320     637
6 months    ki1114097-CMIN             PERU                           Male            1       25     637
6 months    ki1114097-CONTENT          PERU                           Female          0      105     215
6 months    ki1114097-CONTENT          PERU                           Female          1        1     215
6 months    ki1114097-CONTENT          PERU                           Male            0       91     215
6 months    ki1114097-CONTENT          PERU                           Male            1       18     215
6 months    ki1119695-PROBIT           BELARUS                        Female          0     8003   15761
6 months    ki1119695-PROBIT           BELARUS                        Female          1      139   15761
6 months    ki1119695-PROBIT           BELARUS                        Male            0     6770   15761
6 months    ki1119695-PROBIT           BELARUS                        Male            1      849   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female          0     3484    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female          1      547    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male            0     3432    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male            1      832    8295
6 months    ki1135781-COHORTS          GUATEMALA                      Female          0      283     961
6 months    ki1135781-COHORTS          GUATEMALA                      Female          1      173     961
6 months    ki1135781-COHORTS          GUATEMALA                      Male            0      284     961
6 months    ki1135781-COHORTS          GUATEMALA                      Male            1      221     961
6 months    ki1135781-COHORTS          INDIA                          Female          0     2748    6860
6 months    ki1135781-COHORTS          INDIA                          Female          1      539    6860
6 months    ki1135781-COHORTS          INDIA                          Male            0     2840    6860
6 months    ki1135781-COHORTS          INDIA                          Male            1      733    6860
6 months    ki1135781-COHORTS          PHILIPPINES                    Female          0     1060    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Female          1      216    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Male            0     1076    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Male            1      356    2708
6 months    ki1148112-LCNI-5           MALAWI                         Female          0      298     839
6 months    ki1148112-LCNI-5           MALAWI                         Female          1      122     839
6 months    ki1148112-LCNI-5           MALAWI                         Male            0      232     839
6 months    ki1148112-LCNI-5           MALAWI                         Male            1      187     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female          0     6500   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female          1     1749   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male            0     6085   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male            1     2477   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female          0     1881    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female          1      526    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male            0     1730    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male            1      694    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female          0       60     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female          1       44     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male            0       54     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male            1       54     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Female          0       79     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Female          1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male            0       84     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male            1        6     169
24 months   ki0047075b-MAL-ED          INDIA                          Female          0       80     227
24 months   ki0047075b-MAL-ED          INDIA                          Female          1       42     227
24 months   ki0047075b-MAL-ED          INDIA                          Male            0       52     227
24 months   ki0047075b-MAL-ED          INDIA                          Male            1       53     227
24 months   ki0047075b-MAL-ED          NEPAL                          Female          0       81     228
24 months   ki0047075b-MAL-ED          NEPAL                          Female          1       25     228
24 months   ki0047075b-MAL-ED          NEPAL                          Male            0       98     228
24 months   ki0047075b-MAL-ED          NEPAL                          Male            1       24     228
24 months   ki0047075b-MAL-ED          PERU                           Female          0       67     201
24 months   ki0047075b-MAL-ED          PERU                           Female          1       24     201
24 months   ki0047075b-MAL-ED          PERU                           Male            0       60     201
24 months   ki0047075b-MAL-ED          PERU                           Male            1       50     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female          0       89     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female          1       29     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male            0       65     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male            1       55     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          0       33     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          1       73     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            0       28     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            1       80     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female          0       58     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female          1      128     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male            0       48     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male            1      138     372
24 months   ki1000108-IRC              INDIA                          Female          0      108     409
24 months   ki1000108-IRC              INDIA                          Female          1       77     409
24 months   ki1000108-IRC              INDIA                          Male            0      131     409
24 months   ki1000108-IRC              INDIA                          Male            1       93     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female          0       90     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female          1      105     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male            0      101     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male            1      133     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female          0      188     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female          1       90     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male            0      199     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male            1      100     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female          0      183     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female          1       77     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male            0      199     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male            1       55     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            1        1       6
24 months   ki1101329-Keneba           GAMBIA                         Female          0      558    1725
24 months   ki1101329-Keneba           GAMBIA                         Female          1      264    1725
24 months   ki1101329-Keneba           GAMBIA                         Male            0      590    1725
24 months   ki1101329-Keneba           GAMBIA                         Male            1      313    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          Female          0      128     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Female          1      105     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Male            0      148     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Male            1      118     499
24 months   ki1114097-CMIN             BANGLADESH                     Female          0       28     242
24 months   ki1114097-CMIN             BANGLADESH                     Female          1       76     242
24 months   ki1114097-CMIN             BANGLADESH                     Male            0       49     242
24 months   ki1114097-CMIN             BANGLADESH                     Male            1       89     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female          0      193     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female          1       79     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male            0      171     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male            1      108     551
24 months   ki1114097-CMIN             PERU                           Female          0      141     429
24 months   ki1114097-CMIN             PERU                           Female          1       58     429
24 months   ki1114097-CMIN             PERU                           Male            0      151     429
24 months   ki1114097-CMIN             PERU                           Male            1       79     429
24 months   ki1114097-CONTENT          PERU                           Female          0       80     164
24 months   ki1114097-CONTENT          PERU                           Female          1        3     164
24 months   ki1114097-CONTENT          PERU                           Male            0       63     164
24 months   ki1114097-CONTENT          PERU                           Male            1       18     164
24 months   ki1119695-PROBIT           BELARUS                        Female          0     2008    4035
24 months   ki1119695-PROBIT           BELARUS                        Female          1       73    4035
24 months   ki1119695-PROBIT           BELARUS                        Male            0     1683    4035
24 months   ki1119695-PROBIT           BELARUS                        Male            1      271    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female          0      110     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female          1      157     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male            0       49     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male            1      141     457
24 months   ki1135781-COHORTS          GUATEMALA                      Female          0      109    1073
24 months   ki1135781-COHORTS          GUATEMALA                      Female          1      405    1073
24 months   ki1135781-COHORTS          GUATEMALA                      Male            0      115    1073
24 months   ki1135781-COHORTS          GUATEMALA                      Male            1      444    1073
24 months   ki1135781-COHORTS          INDIA                          Female          0     1382    5340
24 months   ki1135781-COHORTS          INDIA                          Female          1     1163    5340
24 months   ki1135781-COHORTS          INDIA                          Male            0     1490    5340
24 months   ki1135781-COHORTS          INDIA                          Male            1     1305    5340
24 months   ki1135781-COHORTS          PHILIPPINES                    Female          0      458    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Female          1      700    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Male            0      479    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Male            1      808    2445
24 months   ki1148112-LCNI-5           MALAWI                         Female          0      174     579
24 months   ki1148112-LCNI-5           MALAWI                         Female          1      120     579
24 months   ki1148112-LCNI-5           MALAWI                         Male            0      149     579
24 months   ki1148112-LCNI-5           MALAWI                         Male            1      136     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female          0     2185    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female          1     1983    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male            0     2211    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male            1     2253    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female          0     1476    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female          1      900    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male            0     1412    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male            1      964    4752


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

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/59ef0314-72d9-48e3-8f75-8119f43997c5/5a04a669-5f2d-4de2-a28b-b64499482ca1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/59ef0314-72d9-48e3-8f75-8119f43997c5/5a04a669-5f2d-4de2-a28b-b64499482ca1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/59ef0314-72d9-48e3-8f75-8119f43997c5/5a04a669-5f2d-4de2-a28b-b64499482ca1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/59ef0314-72d9-48e3-8f75-8119f43997c5/5a04a669-5f2d-4de2-a28b-b64499482ca1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1984733   0.1300397   0.2669068
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1666667   0.1014673   0.2318660
Birth       ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.1397849   0.0691239   0.2104460
Birth       ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.0816327   0.0272807   0.1359846
Birth       ki0047075b-MAL-ED          INDIA                          Female               NA                0.1363636   0.0720766   0.2006506
Birth       ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1875000   0.1092325   0.2657675
Birth       ki0047075b-MAL-ED          NEPAL                          Female               NA                0.0714286   0.0161940   0.1266631
Birth       ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1348315   0.0636679   0.2059951
Birth       ki0047075b-MAL-ED          PERU                           Female               NA                0.1119403   0.0584632   0.1654174
Birth       ki0047075b-MAL-ED          PERU                           Male                 NA                0.1241830   0.0718352   0.1765308
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.0916031   0.0421110   0.1410951
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.1221374   0.0659576   0.1783172
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1639344   0.0706496   0.2572193
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1290323   0.0452456   0.2128190
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1111111   0.0187752   0.2034470
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.2444444   0.1181770   0.3707119
Birth       ki1000108-IRC              INDIA                          Female               NA                0.0982659   0.0538513   0.1426805
Birth       ki1000108-IRC              INDIA                          Male                 NA                0.1302326   0.0851871   0.1752780
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.2023810   0.0778767   0.3268852
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.2815534   0.2053981   0.3577087
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                0.0569106   0.0401907   0.0736305
Birth       ki1101329-Keneba           GAMBIA                         Male                 NA                0.0498132   0.0347607   0.0648657
Birth       ki1119695-PROBIT           BELARUS                        Female               NA                0.0011148   0.0002224   0.0020072
Birth       ki1119695-PROBIT           BELARUS                        Male                 NA                0.0037269   0.0011090   0.0063448
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0987233   0.0915996   0.1058469
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1081195   0.1008931   0.1153460
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0519802   0.0303211   0.0736393
Birth       ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0647321   0.0419344   0.0875299
Birth       ki1135781-COHORTS          INDIA                          Female               NA                0.1095462   0.0987156   0.1203767
Birth       ki1135781-COHORTS          INDIA                          Male                 NA                0.1283019   0.1171336   0.1394702
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0509421   0.0395558   0.0623283
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0705009   0.0580217   0.0829801
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.3185362   0.3086886   0.3283838
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.3275966   0.3171343   0.3380588
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.3375000   0.2866038   0.3883962
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.2654028   0.2165555   0.3142502
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1219512   0.0640016   0.1799009
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.2542373   0.1755092   0.3329654
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.1384615   0.0789638   0.1979593
6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.2641509   0.1800429   0.3482590
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                0.1349206   0.0751584   0.1946829
6 months    ki0047075b-MAL-ED          PERU                           Male                 NA                0.2925170   0.2188421   0.3661920
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.1587302   0.0947984   0.2226619
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.2343750   0.1608452   0.3079048
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2380952   0.1635758   0.3126147
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.2314050   0.1561090   0.3067009
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.2526882   0.1901530   0.3152233
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.3497268   0.2805398   0.4189137
6 months    ki1000108-IRC              INDIA                          Female               NA                0.2131148   0.1537103   0.2725192
6 months    ki1000108-IRC              INDIA                          Male                 NA                0.2723214   0.2139542   0.3306886
6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.5054945   0.4327600   0.5782290
6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.5315789   0.4605300   0.6026279
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.3153153   0.2286929   0.4019378
6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.3870968   0.3011818   0.4730118
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.2791461   0.2383117   0.3199805
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.2888583   0.2511097   0.3266070
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.4228856   0.3545000   0.4912712
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.4357542   0.3630183   0.5084901
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.1959184   0.1461724   0.2456643
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.3287671   0.2748357   0.3826986
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.1340580   0.0938273   0.1742886
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1856678   0.1421345   0.2292010
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1878453   0.1475813   0.2281093
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.2322946   0.1882106   0.2763787
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0677966   0.0522347   0.0833586
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1257310   0.1054390   0.1460230
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.1226508   0.1024254   0.1428763
6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.1586271   0.1368136   0.1804406
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.2549020   0.1857311   0.3240728
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.3493151   0.2718523   0.4267779
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1978022   0.1505079   0.2450965
6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.2241379   0.1760999   0.2721759
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.2924528   0.2056775   0.3792282
6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.4525547   0.3690350   0.5360745
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0690476   0.0447861   0.0933091
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.1098131   0.0801750   0.1394512
6 months    ki1114097-CMIN             PERU                           Female               NA                0.0616438   0.0340364   0.0892513
6 months    ki1114097-CMIN             PERU                           Male                 NA                0.0724638   0.0450855   0.0998420
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.0170720   0.0084697   0.0256743
6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.1114319   0.0907453   0.1321186
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1356983   0.1251256   0.1462711
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1951220   0.1832264   0.2070175
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.3793860   0.3348262   0.4239458
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.4376238   0.3943333   0.4809142
6 months    ki1135781-COHORTS          INDIA                          Female               NA                0.1639793   0.1513208   0.1766378
6 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.2051497   0.1919081   0.2183914
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.1692790   0.1486996   0.1898584
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.2486034   0.2262138   0.2709929
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                0.2904762   0.2470331   0.3339193
6 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                0.4463007   0.3986740   0.4939275
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.2120257   0.2019084   0.2221430
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.2893016   0.2784204   0.3001827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.2185293   0.1990224   0.2380362
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.2863036   0.2658832   0.3067240
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.4230769   0.3279011   0.5182528
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.5000000   0.4054780   0.5945220
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.3442623   0.2597662   0.4287584
24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.5047619   0.4089185   0.6006054
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.2358491   0.1548544   0.3168437
24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1967213   0.1260275   0.2674151
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.2637363   0.1729726   0.3544999
24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.4545455   0.3612624   0.5478285
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.2457627   0.1679172   0.3236082
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.4583333   0.3689969   0.5476698
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.6886792   0.6003255   0.7770330
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.7407407   0.6578982   0.8235833
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.6881720   0.6215095   0.7548346
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.7419355   0.6789670   0.8049040
24 months   ki1000108-IRC              INDIA                          Female               NA                0.4162162   0.3450983   0.4873342
24 months   ki1000108-IRC              INDIA                          Male                 NA                0.4151786   0.3505708   0.4797863
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.5384615   0.4684098   0.6085133
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.5683761   0.5048404   0.6319117
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.3237410   0.2686910   0.3787911
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.3344482   0.2809247   0.3879717
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.2961538   0.2406041   0.3517036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.2165354   0.1658331   0.2672378
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.3211679   0.2892389   0.3530969
24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.3466224   0.3155739   0.3776709
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.4506438   0.3866925   0.5145951
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.4436090   0.3838459   0.5033721
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.7307692   0.6453446   0.8161939
24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.6449275   0.5649217   0.7249334
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.2904412   0.2364427   0.3444396
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.3870968   0.3298902   0.4443034
24 months   ki1114097-CMIN             PERU                           Female               NA                0.2914573   0.2282454   0.3546692
24 months   ki1114097-CMIN             PERU                           Male                 NA                0.3434783   0.2820363   0.4049202
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0350793   0.0053426   0.0648160
24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.1386899   0.1016007   0.1757790
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.5880150   0.5289129   0.6471171
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.7421053   0.6798321   0.8043784
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.7879377   0.7525831   0.8232924
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.7942755   0.7607501   0.8278008
24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.4569745   0.4376191   0.4763298
24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.4669052   0.4484076   0.4854027
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.6044905   0.5763225   0.6326585
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.6278166   0.6014021   0.6542311
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.4081633   0.3519333   0.4643932
24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.4771930   0.4191541   0.5352318
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.4757678   0.4580901   0.4934454
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.5047043   0.4878118   0.5215968
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.3787879   0.3549551   0.4026207
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.4057239   0.3840803   0.4273675


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1828794   0.1355257   0.2302330
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1099476   0.0654669   0.1544284
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1601942   0.1099849   0.2104035
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1040462   0.0584174   0.1496751
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1184669   0.0810142   0.1559196
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1068702   0.0693890   0.1443514
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463415   0.0836232   0.2090597
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1777778   0.0983474   0.2572081
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2459893   0.1594019   0.3325767
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0532122   0.0420018   0.0644226
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.0023768   0.0010945   0.0036592
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035430   0.0984652   0.1086208
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586854   0.0428942   0.0744767
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1192771   0.1114807   0.1270735
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3231530   0.3154984   0.3308077
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1867220   0.1374205   0.2360234
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1949153   0.1442678   0.2455627
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2348178   0.1818480   0.2877876
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3531915   0.2919518   0.4144312
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0842059   0.1099785
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1412159   0.1262788   0.1561530
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3010033   0.2489243   0.3530824
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3827160   0.3214780   0.4439541
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0896226   0.0703861   0.1088591
6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0675039   0.0480051   0.0870027
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1662447   0.1582324   0.1742571
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1854227   0.1762253   0.1946201
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3682956   0.3356382   0.4009530
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513830   0.2432594   0.2595066
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2525357   0.2384780   0.2665934
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7149533   0.6543278   0.7755787
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3344928   0.3122213   0.3567642
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6818182   0.6230135   0.7406228
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3393829   0.2998111   0.3789548
24 months   ki1114097-CMIN             PERU                           NA                   NA                0.3193473   0.2751780   0.3635166
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6520788   0.6083612   0.6957964
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7912395   0.7669103   0.8155688
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4621723   0.4487989   0.4755457
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4421416   0.4016536   0.4826297
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907322   0.4775988   0.5038655
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3922559   0.3752678   0.4092440


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            0.8397436   0.4985161    1.4145366
Birth       ki0047075b-MAL-ED          BRAZIL                         Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Male                 Female            0.5839874   0.2531335    1.3472787
Birth       ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Male                 Female            1.3750000   0.7325470    2.5808925
Birth       ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Male                 Female            1.8876404   0.7401458    4.8141683
Birth       ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki0047075b-MAL-ED          PERU                           Male                 Female            1.1093682   0.5866501    2.0978394
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.3333333   0.6558091    2.7108160
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.7870968   0.3319399    1.8663662
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            2.2000000   0.8269410    5.8528967
Birth       ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1000108-IRC              INDIA                          Male                 Female            1.3253078   0.7501365    2.3414947
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.3912050   0.8440235    2.2931251
Birth       ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1101329-Keneba           GAMBIA                         Male                 Female            0.8752891   0.5742687    1.3340986
Birth       ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1119695-PROBIT           BELARUS                        Male                 Female            3.3430232   1.0702023   10.4427023
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.0951777   0.9925880    1.2083707
Birth       ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.2453231   0.7216722    2.1489393
Birth       ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          INDIA                          Male                 Female            1.1712129   1.0266626    1.3361154
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.3839429   1.0406261    1.8405245
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.0284436   0.9867723    1.0718747
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            0.7863788   0.6202058    0.9970748
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            2.0847458   1.1823047    3.6760110
6 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            1.9077568   1.1175167    3.2568068
6 months    ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED          PERU                           Male                 Female            2.1680672   1.3025083    3.6088181
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.4765625   0.8861928    2.4602286
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.9719008   0.6187953    1.5265002
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.3840251   1.0081960    1.8999535
6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1000108-IRC              INDIA                          Male                 Female            1.2778159   0.8990043    1.8162468
6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.0516018   0.8640952    1.2797969
6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.2276498   0.8623711    1.7476513
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.0347925   0.8081921    1.3249269
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.0304305   0.8167437    1.3000248
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.6780822   1.2403074    2.2703725
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.3849811   0.9463452    2.0269269
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.2366272   0.9287662    1.6465359
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.8545322   1.4007866    2.4552558
6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.2933225   1.0434142    1.6030863
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            1.3703899   0.9652653    1.9455463
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.1331418   0.8219281    1.5621929
6 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            1.5474453   1.0910909    2.1946722
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.5903964   1.0211381    2.4770016
6 months    ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1114097-CMIN             PERU                           Male                 Female            1.1755233   0.6542781    2.1120304
6 months    ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Male                 Female            6.5271860   4.3751854    9.7376804
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.4379097   1.3024669    1.5874370
6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.1535054   0.9893035    1.3449612
6 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          INDIA                          Male                 Female            1.2510708   1.1313083    1.3835116
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.4686013   1.2623998    1.7084840
6 months    ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Male                 Female            1.5364451   1.2785725    1.8463275
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.3644646   1.2910667    1.4420352
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.3101385   1.1680490    1.4695127
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.1818182   0.8809175    1.5854995
24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.4662132   1.0750513    1.9997009
24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            0.8340984   0.5073924    1.3711677
24 months   ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          PERU                           Male                 Female            1.7234848   1.1544895    2.5729122
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.8649425   1.2857113    2.7051257
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.0755961   0.9072637    1.2751607
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.0781250   0.9478437    1.2263135
24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1000108-IRC              INDIA                          Male                 Female            0.9975070   0.7916738    1.2568561
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.0555556   0.8891782    1.2530644
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.0330732   0.8179369    1.3047954
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            0.7311586   0.5416464    0.9869777
24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.0792560   0.9440794    1.2337877
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.9843895   0.8094442    1.1971459
24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.8825324   0.7442243    1.0465441
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.3327889   1.0510341    1.6900747
24 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1114097-CMIN             PERU                           Male                 Female            1.1784858   0.8896706    1.5610595
24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            3.9536111   1.8410558    8.4902594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.2620516   1.1071655    1.4386054
24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0080435   0.9478194    1.0720941
24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.0217315   0.9641609    1.0827397
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.0385881   0.9753883    1.1058828
24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.1691228   0.9728586    1.4049813
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.0608207   1.0131517    1.1107327
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.0711111   0.9909475    1.1577596


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0155939   -0.0619756    0.0307877
Birth       ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0298373   -0.0757638    0.0160892
Birth       ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0238305   -0.0234992    0.0711602
Birth       ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0326177   -0.0139674    0.0792028
Birth       ki0047075b-MAL-ED          PERU                           Female               NA                 0.0065266   -0.0333736    0.0464268
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0152672   -0.0222140    0.0527484
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0175930   -0.0808727    0.0456868
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0666667   -0.0127637    0.1460970
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.0177135   -0.0173758    0.0528027
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0436084   -0.0135659    0.1007826
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.0036984   -0.0154229    0.0080261
Birth       ki1119695-PROBIT           BELARUS                        Female               NA                 0.0012620   -0.0001347    0.0026587
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0048197   -0.0003858    0.0100253
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0067052   -0.0098353    0.0232458
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0097309    0.0016563    0.0178056
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0103694    0.0014066    0.0193322
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0046168   -0.0021948    0.0114283
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0370134   -0.0733074   -0.0007193
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0647708    0.0161810    0.1133605
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0564537    0.0094945    0.1034129
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.0848596    0.0329317    0.1367874
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0381202   -0.0112024    0.0874428
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0032774   -0.0551753    0.0486205
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0481248    0.0016089    0.0946408
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0325855   -0.0133389    0.0785098
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0133227   -0.0386262    0.0652716
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0378762   -0.0266636    0.1024160
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0052850   -0.0329570    0.0435270
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0060618   -0.0409704    0.0530940
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0722381    0.0319505    0.1125256
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0271770   -0.0041071    0.0584611
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0219449   -0.0075765    0.0514663
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0292956    0.0163032    0.0422879
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0185651    0.0031950    0.0339351
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0461014   -0.0048909    0.0970937
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0135655   -0.0211754    0.0483064
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0902632    0.0216286    0.1588978
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0205750    0.0011947    0.0399553
6 months    ki1114097-CMIN             PERU                           Female               NA                 0.0058601   -0.0152021    0.0269223
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0456144    0.0374380    0.0537908
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0305464    0.0223404    0.0387523
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0306036   -0.0020950    0.0633023
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0214434    0.0118898    0.0309971
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0419470    0.0257968    0.0580972
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0778194    0.0451965    0.1104423
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0393573    0.0324755    0.0462392
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0340064    0.0196705    0.0483424
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0391872   -0.0293436    0.1077181
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0742399    0.0142247    0.1342551
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0209368   -0.0785184    0.0366449
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.1044229    0.0319889    0.1768569
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1071785    0.0459203    0.1684366
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0262740   -0.0349502    0.0874982
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0268817   -0.0190499    0.0728134
24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0005683   -0.0531908    0.0520542
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0163170   -0.0352875    0.0679215
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0055484   -0.0342415    0.0453384
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0393445   -0.0766697   -0.0020193
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0133249   -0.0099966    0.0366463
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0037500   -0.0504100    0.0429100
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0489510   -0.1159080    0.0180059
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0489418    0.0089046    0.0889790
24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0278900   -0.0194351    0.0752151
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0501747    0.0328098    0.0675397
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0640638    0.0276951    0.1004325
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0033018   -0.0220820    0.0286855
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0051978   -0.0088160    0.0192116
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0122784   -0.0080533    0.0326101
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0339784   -0.0058981    0.0738549
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0149644    0.0033379    0.0265909
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0134680   -0.0016721    0.0286082


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0852688   -0.3703471    0.1405036
Birth       ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.2713774   -0.7520274    0.0774114
Birth       ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1487603   -0.2009250    0.3966243
Birth       ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.3134921   -0.2836107    0.6328379
Birth       ki0047075b-MAL-ED          PERU                           Female               NA                 0.0550922   -0.3490739    0.3381751
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1428571   -0.2861931    0.4287842
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.1202186   -0.6451622    0.2372243
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3750000   -0.2302253    0.6824769
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.1527296   -0.2076328    0.4055584
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.1772774   -0.1394315    0.4059560
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.0695023   -0.3136494    0.1292691
Birth       ki1119695-PROBIT           BELARUS                        Female               NA                 0.5309618   -0.1131432    0.8023643
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0465482   -0.0050327    0.0954818
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.1142574   -0.2155432    0.3545767
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0815826    0.0114984    0.1466980
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1691265    0.0113086    0.3017530
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0142867   -0.0069950    0.0351185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.1231781   -0.2516227   -0.0079149
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.3468835    0.0442256    0.5537009
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.2896321    0.0137618    0.4883360
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.3861111    0.1133503    0.5749623
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1936508   -0.0963623    0.4069487
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0139573   -0.2608972    0.1846208
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1599826   -0.0091293    0.3007543
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.1326230   -0.0752179    0.3002879
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0256790   -0.0798150    0.1208666
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.1072398   -0.0955096    0.2724657
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0185809   -0.1254116    0.1441501
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0141318   -0.1018500    0.1179053
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.2693878    0.1052978    0.4033833
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1685553   -0.0478135    0.3402450
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1046041   -0.0472906    0.2344686
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.3017293    0.1604994    0.4192000
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.1314657    0.0162327    0.2332011
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.1531590   -0.0336961    0.3062375
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0641795   -0.1153104    0.2147836
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.2358491    0.0339857    0.3955300
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.2295739   -0.0137103    0.4144714
6 months    ki1114097-CMIN             PERU                           Female               NA                 0.0868111   -0.2839030    0.3504852
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.7276606    0.6165750    0.8065625
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1837435    0.1334320    0.2311340
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0746449   -0.0087105    0.1511122
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.1156462    0.0627945    0.1655174
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1985882    0.1192247    0.2708006
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.2112960    0.1177306    0.2949388
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.1565632    0.1287690    0.1834707
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1346598    0.0759091    0.1896754
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0847724   -0.0765064    0.2218888
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1773943    0.0201636    0.3093948
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0974201   -0.4003325    0.1399679
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.2836353    0.0586862    0.4548275
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.3036723    0.1090061    0.4558074
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0367493   -0.0530436    0.1188856
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0375940   -0.0290190    0.0998948
24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0013672   -0.1363222    0.1175598
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0294118   -0.0682619    0.1181549
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0168497   -0.1117251    0.1305544
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.1532051   -0.3076999   -0.0169628
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0398361   -0.0324777    0.1070850
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0083912   -0.1183998    0.0907967
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0717949   -0.1754043    0.0226816
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1442081    0.0178857    0.2542825
24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0873345   -0.0734854    0.2240618
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.5885322    0.2572339    0.7720605
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0982455    0.0397339    0.1531918
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0041729   -0.0284321    0.0357443
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0112465   -0.0195461    0.0411091
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0199076   -0.0136310    0.0523365
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0768495   -0.0180328    0.1628886
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0304940    0.0064823    0.0539254
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0343348   -0.0052250    0.0723377
