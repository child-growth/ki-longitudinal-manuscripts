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

**Intervention Variable:** enstunt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enstunt    sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0      187     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       35     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1        9     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0       56      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        0      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0        6      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        3      65
Birth       ki0047075b-MAL-ED          INDIA                          0                 0       37      47
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        0      47
Birth       ki0047075b-MAL-ED          INDIA                          1                 0        8      47
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        2      47
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       25      27
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0        1      27
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        1      27
Birth       ki0047075b-MAL-ED          PERU                           0                 0      207     233
Birth       ki0047075b-MAL-ED          PERU                           0                 1        0     233
Birth       ki0047075b-MAL-ED          PERU                           1                 0       22     233
Birth       ki0047075b-MAL-ED          PERU                           1                 1        4     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      113     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        8     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        2     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      102     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       13     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1       10     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       75      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       13      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        4      92
Birth       ki1000108-IRC              INDIA                          0                 0      343     388
Birth       ki1000108-IRC              INDIA                          0                 1        0     388
Birth       ki1000108-IRC              INDIA                          1                 0       29     388
Birth       ki1000108-IRC              INDIA                          1                 1       16     388
Birth       ki1000109-EE               PAKISTAN                       0                 0      140     240
Birth       ki1000109-EE               PAKISTAN                       0                 1        0     240
Birth       ki1000109-EE               PAKISTAN                       1                 0       52     240
Birth       ki1000109-EE               PAKISTAN                       1                 1       48     240
Birth       ki1000109-ResPak           PAKISTAN                       0                 0       28      42
Birth       ki1000109-ResPak           PAKISTAN                       0                 1        0      42
Birth       ki1000109-ResPak           PAKISTAN                       1                 0       12      42
Birth       ki1000109-ResPak           PAKISTAN                       1                 1        2      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 0      903    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 1        0    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 0      258    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 1       91    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 0      511     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 1        0     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0       78     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1       19     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 0      491     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                 1        0     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 0       44     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      631     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       91     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       10     732
Birth       ki1101329-Keneba           GAMBIA                         0                 0     1460    1543
Birth       ki1101329-Keneba           GAMBIA                         0                 1        0    1543
Birth       ki1101329-Keneba           GAMBIA                         1                 0       54    1543
Birth       ki1101329-Keneba           GAMBIA                         1                 1       29    1543
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 0      574     696
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 1        0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 0       91     696
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 1       31     696
Birth       ki1114097-CMIN             BANGLADESH                     0                 0       17      26
Birth       ki1114097-CMIN             BANGLADESH                     0                 1        0      26
Birth       ki1114097-CMIN             BANGLADESH                     1                 0        3      26
Birth       ki1114097-CMIN             BANGLADESH                     1                 1        6      26
Birth       ki1114097-CONTENT          PERU                           0                 0        2       2
Birth       ki1114097-CONTENT          PERU                           0                 1        0       2
Birth       ki1114097-CONTENT          PERU                           1                 0        0       2
Birth       ki1114097-CONTENT          PERU                           1                 1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0                 0    13857   13890
Birth       ki1119695-PROBIT           BELARUS                        0                 1        0   13890
Birth       ki1119695-PROBIT           BELARUS                        1                 0       28   13890
Birth       ki1119695-PROBIT           BELARUS                        1                 1        5   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                 0    12441   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                 1        0   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      992   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      442   13875
Birth       ki1135781-COHORTS          GUATEMALA                      0                 0      802     852
Birth       ki1135781-COHORTS          GUATEMALA                      0                 1        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      1                 0       39     852
Birth       ki1135781-COHORTS          GUATEMALA                      1                 1       11     852
Birth       ki1135781-COHORTS          INDIA                          0                 0     5848    6640
Birth       ki1135781-COHORTS          INDIA                          0                 1        0    6640
Birth       ki1135781-COHORTS          INDIA                          1                 0      586    6640
Birth       ki1135781-COHORTS          INDIA                          1                 1      206    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    0                 0     2863    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    0                 1        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1                 0      141    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1                 1       46    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0    15068   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1        0   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     4939   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2448   22455
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1966    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      624    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1      233    2823
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      202     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0       31     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        8     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      184     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       25     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      196     236
6 months    ki0047075b-MAL-ED          INDIA                          0                 1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          1                 0       31     236
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        7     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      208     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       27     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        1     236
6 months    ki0047075b-MAL-ED          PERU                           0                 0      237     273
6 months    ki0047075b-MAL-ED          PERU                           0                 1        2     273
6 months    ki0047075b-MAL-ED          PERU                           1                 0       26     273
6 months    ki0047075b-MAL-ED          PERU                           1                 1        8     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      224     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       24     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        3     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      203     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        5     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       30     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        9     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      270     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       24     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       57     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       18     369
6 months    ki1000108-IRC              INDIA                          0                 0      340     407
6 months    ki1000108-IRC              INDIA                          0                 1       18     407
6 months    ki1000108-IRC              INDIA                          1                 0       38     407
6 months    ki1000108-IRC              INDIA                          1                 1       11     407
6 months    ki1000109-EE               PAKISTAN                       0                 0      200     373
6 months    ki1000109-EE               PAKISTAN                       0                 1        9     373
6 months    ki1000109-EE               PAKISTAN                       1                 0       92     373
6 months    ki1000109-EE               PAKISTAN                       1                 1       72     373
6 months    ki1000109-ResPak           PAKISTAN                       0                 0      146     239
6 months    ki1000109-ResPak           PAKISTAN                       0                 1       27     239
6 months    ki1000109-ResPak           PAKISTAN                       1                 0       46     239
6 months    ki1000109-ResPak           PAKISTAN                       1                 1       20     239
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 0      936    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 1       36    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 0      272    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 1       92    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 0      232     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0       94     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 1       54     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 0      437     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 1       15     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 0       65     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 1       20     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      536     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        7     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0       54     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        7     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      602     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       11     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       90     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       12     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1879    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       11    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      131    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        8    2029
6 months    ki1101329-Keneba           GAMBIA                         0                 0     1852    2089
6 months    ki1101329-Keneba           GAMBIA                         0                 1       40    2089
6 months    ki1101329-Keneba           GAMBIA                         1                 0      167    2089
6 months    ki1101329-Keneba           GAMBIA                         1                 1       30    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                 0      228     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                 1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 0       44     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 1       27     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      467     564
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1        6     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       76     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       15     564
6 months    ki1114097-CMIN             BANGLADESH                     0                 0      147     243
6 months    ki1114097-CMIN             BANGLADESH                     0                 1        4     243
6 months    ki1114097-CMIN             BANGLADESH                     1                 0       68     243
6 months    ki1114097-CMIN             BANGLADESH                     1                 1       24     243
6 months    ki1114097-CONTENT          PERU                           0                 0      197     215
6 months    ki1114097-CONTENT          PERU                           0                 1        0     215
6 months    ki1114097-CONTENT          PERU                           1                 0       14     215
6 months    ki1114097-CONTENT          PERU                           1                 1        4     215
6 months    ki1119695-PROBIT           BELARUS                        0                 0    15408   15761
6 months    ki1119695-PROBIT           BELARUS                        0                 1      224   15761
6 months    ki1119695-PROBIT           BELARUS                        1                 0      110   15761
6 months    ki1119695-PROBIT           BELARUS                        1                 1       19   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     7551    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 1      244    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      767    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      107    8669
6 months    ki1135781-COHORTS          GUATEMALA                      0                 0      754     961
6 months    ki1135781-COHORTS          GUATEMALA                      0                 1       55     961
6 months    ki1135781-COHORTS          GUATEMALA                      1                 0       83     961
6 months    ki1135781-COHORTS          GUATEMALA                      1                 1       69     961
6 months    ki1135781-COHORTS          INDIA                          0                 0     5919    6860
6 months    ki1135781-COHORTS          INDIA                          0                 1      129    6860
6 months    ki1135781-COHORTS          INDIA                          1                 0      630    6860
6 months    ki1135781-COHORTS          INDIA                          1                 1      182    6860
6 months    ki1135781-COHORTS          PHILIPPINES                    0                 0     2452    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    0                 1      100    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1                 0      124    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1                 1       32    2708
6 months    ki1148112-LCNI-5           MALAWI                         0                 0      530     839
6 months    ki1148112-LCNI-5           MALAWI                         0                 1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      238     839
6 months    ki1148112-LCNI-5           MALAWI                         1                 1       71     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0    11548   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      159   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     4243   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      861   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     3443    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       32    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     1117    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      239    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      161     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       23     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       10     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      149     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       19     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      172     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       19     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 0       25     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 1       11     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      199     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        5     228
24 months   ki0047075b-MAL-ED          PERU                           0                 0      167     201
24 months   ki0047075b-MAL-ED          PERU                           0                 1        7     201
24 months   ki0047075b-MAL-ED          PERU                           1                 0       19     201
24 months   ki0047075b-MAL-ED          PERU                           1                 1        8     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      191     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1       23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       20     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        4     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      131     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       50     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       13     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1       20     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      209     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       85     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       37     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       40     371
24 months   ki1000108-IRC              INDIA                          0                 0      328     409
24 months   ki1000108-IRC              INDIA                          0                 1       30     409
24 months   ki1000108-IRC              INDIA                          1                 0       40     409
24 months   ki1000108-IRC              INDIA                          1                 1       11     409
24 months   ki1000109-EE               PAKISTAN                       0                 0       77     167
24 months   ki1000109-EE               PAKISTAN                       0                 1       23     167
24 months   ki1000109-EE               PAKISTAN                       1                 0       31     167
24 months   ki1000109-EE               PAKISTAN                       1                 1       36     167
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0      296     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1       59     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0       38     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1       36     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      481     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       37     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0       45     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       15     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      424     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       20     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       54     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       16     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0                 0     1452    1725
24 months   ki1101329-Keneba           GAMBIA                         0                 1       97    1725
24 months   ki1101329-Keneba           GAMBIA                         1                 0      133    1725
24 months   ki1101329-Keneba           GAMBIA                         1                 1       43    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      376     488
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       30     488
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       59     488
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       23     488
24 months   ki1114097-CMIN             BANGLADESH                     0                 0      121     242
24 months   ki1114097-CMIN             BANGLADESH                     0                 1       32     242
24 months   ki1114097-CMIN             BANGLADESH                     1                 0       53     242
24 months   ki1114097-CMIN             BANGLADESH                     1                 1       36     242
24 months   ki1114097-CONTENT          PERU                           0                 0      146     164
24 months   ki1114097-CONTENT          PERU                           0                 1        1     164
24 months   ki1114097-CONTENT          PERU                           1                 0       15     164
24 months   ki1114097-CONTENT          PERU                           1                 1        2     164
24 months   ki1119695-PROBIT           BELARUS                        0                 0     3960    4035
24 months   ki1119695-PROBIT           BELARUS                        0                 1       64    4035
24 months   ki1119695-PROBIT           BELARUS                        1                 0       10    4035
24 months   ki1119695-PROBIT           BELARUS                        1                 1        1    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     1283    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 1      123    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      179    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       55    1640
24 months   ki1135781-COHORTS          GUATEMALA                      0                 0      447    1070
24 months   ki1135781-COHORTS          GUATEMALA                      0                 1      293    1070
24 months   ki1135781-COHORTS          GUATEMALA                      1                 0       99    1070
24 months   ki1135781-COHORTS          GUATEMALA                      1                 1      231    1070
24 months   ki1135781-COHORTS          INDIA                          0                 0     3799    5337
24 months   ki1135781-COHORTS          INDIA                          0                 1      897    5337
24 months   ki1135781-COHORTS          INDIA                          1                 0      319    5337
24 months   ki1135781-COHORTS          INDIA                          1                 1      322    5337
24 months   ki1135781-COHORTS          PHILIPPINES                    0                 0     1681    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    0                 1      629    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0       57    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1       78    2445
24 months   ki1148112-LCNI-5           MALAWI                         0                 0      365     579
24 months   ki1148112-LCNI-5           MALAWI                         0                 1       12     579
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      144     579
24 months   ki1148112-LCNI-5           MALAWI                         1                 1       58     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     5435    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      507    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1850    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      840    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     3237    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      159    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     1062    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      294    4752


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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/f7caf514-0bc7-47c6-b13e-cd058a1baccc/2d70172f-0ffa-4c49-aca9-70bfc126bfb1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f7caf514-0bc7-47c6-b13e-cd058a1baccc/2d70172f-0ffa-4c49-aca9-70bfc126bfb1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f7caf514-0bc7-47c6-b13e-cd058a1baccc/2d70172f-0ffa-4c49-aca9-70bfc126bfb1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f7caf514-0bc7-47c6-b13e-cd058a1baccc/2d70172f-0ffa-4c49-aca9-70bfc126bfb1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0240385   0.0031807   0.0448962
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2307692   0.0982698   0.3632687
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0808983   0.0495188   0.1122779
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2439883   0.1440974   0.3438791
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0513651   0.0284753   0.0742550
6 months    ki1000108-IRC              INDIA                          1                    NA                0.1953798   0.0737055   0.3170541
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0430622   0.0155042   0.0706202
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.4390244   0.3629698   0.5150790
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1538576   0.0999384   0.2077769
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3140018   0.1993348   0.4286688
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0364047   0.0219137   0.0508958
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2608152   0.2214477   0.3001826
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0329600   0.0164951   0.0494249
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2349638   0.1413016   0.3286260
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0128913   0.0033954   0.0223873
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1147541   0.0347045   0.1948037
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0178775   0.0073488   0.0284063
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1101701   0.0468441   0.1734962
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0058201   0.0023899   0.0092503
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0575540   0.0188270   0.0962809
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0210867   0.0145940   0.0275794
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1619866   0.1110752   0.2128980
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0126850   0.0025907   0.0227793
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1648352   0.0885353   0.2411350
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0143812   0.0090749   0.0196876
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1177713   0.0873417   0.1482009
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0314158   0.0275497   0.0352819
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1198997   0.0982174   0.1415821
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0683551   0.0509556   0.0857545
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4423437   0.3620390   0.5226484
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0213116   0.0176693   0.0249538
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2213937   0.1930079   0.2497794
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0392844   0.0317463   0.0468225
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1975237   0.1329620   0.2620854
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0138464   0.0114561   0.0162366
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1646737   0.1542853   0.1750622
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0093030   0.0055221   0.0130839
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1758096   0.1549363   0.1966828
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1004552   0.0562940   0.1446163
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3151927   0.1538129   0.4765724
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0985173   0.0559355   0.1410990
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3164776   0.1566003   0.4763549
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0402299   0.0109604   0.0694993
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2962963   0.1236301   0.4689625
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2719516   0.2065221   0.3373812
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5340914   0.3757269   0.6924560
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2920595   0.2397793   0.3443398
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5068464   0.3934752   0.6202176
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0831429   0.0546263   0.1116595
24 months   ki1000108-IRC              INDIA                          1                    NA                0.2025977   0.0946213   0.3105740
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.2310972   0.1475853   0.3146091
24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.5270729   0.4052684   0.6488774
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1660320   0.1272208   0.2048432
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4990347   0.3838021   0.6142674
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0713492   0.0491228   0.0935757
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2333296   0.1201473   0.3465118
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0456146   0.0262563   0.0649730
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2353412   0.1359726   0.3347099
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0625898   0.0505092   0.0746704
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2524123   0.1878699   0.3169547
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0742095   0.0487276   0.0996915
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2636130   0.1658970   0.3613290
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2091070   0.1443497   0.2738643
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.4094053   0.3053835   0.5134271
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0880348   0.0732561   0.1028135
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2299873   0.1755525   0.2844221
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3932797   0.3581787   0.4283808
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7042188   0.6541757   0.7542620
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.1909727   0.1797488   0.2021967
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.5005243   0.4625103   0.5385382
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2724127   0.2542684   0.2905569
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5622887   0.4784877   0.6460898
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0316932   0.0138789   0.0495075
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.2907687   0.2265216   0.3550158
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0848989   0.0770024   0.0927953
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3134062   0.2945121   0.3323003
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0470755   0.0384910   0.0556601
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2176190   0.1924071   0.2428310


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0566802   0.0277850   0.0855754
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2171582   0.1752594   0.2590570
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1966527   0.1461562   0.2471492
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0231788   0.0111688   0.0351888
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0093642   0.0051724   0.0135561
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0335089   0.0257898   0.0412279
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0372340   0.0215945   0.0528736
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0404891   0.0363397   0.0446385
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1290323   0.1078261   0.1502384
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0453353   0.0404119   0.0502586
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0606746   0.0568229   0.0645262
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0560960   0.0493335   0.0628586
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1320755   0.0863920   0.1777589
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1321586   0.0880054   0.1763117
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0746269   0.0382069   0.1110468
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3271028   0.2640978   0.3901078
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3369272   0.2887662   0.3850883
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3532934   0.2805798   0.4260070
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2214452   0.1821080   0.2607825
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0700389   0.0479542   0.0921236
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0811594   0.0682689   0.0940499
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1086066   0.0809724   0.1362407
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2809917   0.2242434   0.3377401
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1085366   0.0934775   0.1235957
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4897196   0.4597530   0.5196862
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2284055   0.2171416   0.2396694
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2891616   0.2711872   0.3071359
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1208981   0.0943206   0.1474756
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1560473   0.1472898   0.1648047
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0953283   0.0857752   0.1048814


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  9.600000    3.391639   27.172702
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  3.015986    1.715975    5.300877
6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                  3.803745    1.770567    8.171658
6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 10.195121    5.253625   19.784529
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  2.040859    1.229471    3.387723
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  7.164318    5.102892   10.058502
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  7.128753    3.764031   13.501250
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.901639    3.227583   24.550630
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  6.162490    2.704503   14.041867
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  9.888816    4.042664   24.189171
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                  7.681937    4.950726   11.919898
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 12.994506    5.175442   32.626618
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  8.189232    5.562107   12.057215
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  3.816543    3.067066    4.749165
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  6.471266    4.737104    8.840271
6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 10.388429    8.391924   12.859917
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.028046    3.443393    7.341957
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 11.892909    9.929944   14.243916
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 18.898116   12.351156   28.915414
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  3.137645    1.596751    6.165527
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  3.212408    1.649565    6.255931
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  7.365079    2.899635   18.707319
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  1.963921    1.341094    2.875998
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.735421    1.304163    2.309288
24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                  2.436741    1.287843    4.610583
24 months   ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                  2.280742    1.480039    3.514625
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.005654    2.164748    4.173214
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.270246    1.836427    5.823544
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  5.159336    2.838203    9.378732
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                  4.032802    2.927054    5.556267
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.552280    2.145690    5.880950
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  1.957874    1.309990    2.926184
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.612459    1.955781    3.489625
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.790631    1.597966    2.006524
24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  2.620920    2.382300    2.883441
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.064106    1.754212    2.428747
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  9.174486    5.011669   16.795042
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.691524    3.317041    4.108285
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  4.622764    3.711256    5.758145


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0326417   0.0094626   0.0558208
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0329228   0.0112055   0.0546402
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0198879   0.0045579   0.0352180
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.1740960   0.1333052   0.2148868
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0427951   0.0076081   0.0779821
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0594036   0.0467850   0.0720223
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0322169   0.0163878   0.0480460
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0102875   0.0017857   0.0187892
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0142903   0.0048733   0.0237073
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0035441   0.0008206   0.0062676
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0124222   0.0073940   0.0174503
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0245491   0.0112983   0.0377998
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0010366   0.0002229   0.0018502
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0090733   0.0067818   0.0113648
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0606772   0.0450875   0.0762669
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0240237   0.0202749   0.0277725
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0094601   0.0055228   0.0133973
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0468282   0.0433847   0.0502717
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0467930   0.0405121   0.0530740
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0316203   0.0043481   0.0588925
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0336413   0.0068053   0.0604774
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0343970   0.0079419   0.0608520
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0551512   0.0220945   0.0882079
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0448677   0.0175438   0.0721916
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0171016   0.0017981   0.0324052
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.1221962   0.0584165   0.1859760
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0554132   0.0317612   0.0790652
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0186162   0.0061429   0.0310895
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0244243   0.0097342   0.0391143
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0185696   0.0114874   0.0256518
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0343970   0.0163095   0.0524846
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0718847   0.0254429   0.1183266
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0205018   0.0121646   0.0288390
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0964399   0.0757778   0.1171020
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0374328   0.0319588   0.0429068
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0167489   0.0113774   0.0221204
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0892049   0.0643905   0.1140194
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0711484   0.0644933   0.0778036
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0482528   0.0403403   0.0561652


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5758929   0.1551277   0.7871076
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2892504   0.0889054   0.4455405
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2791171   0.0574416   0.4486579
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.8017012   0.6399535   0.8907852
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.2176175   0.0230876   0.3734111
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.6200255   0.4920449   0.7157610
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4942992   0.2653073   0.6519180
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4438306   0.0662412   0.6687320
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4442418   0.1516501   0.6359201
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3784740   0.0897894   0.5755986
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.3707129   0.2320303   0.4843517
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6593174   0.3347627   0.8255290
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0672317   0.0116971   0.1196457
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2240927   0.1703286   0.2743728
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4702483   0.3628988   0.5595098
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.5299121   0.4650040   0.5869452
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1940750   0.1158930   0.2653433
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7717926   0.7339980   0.8042173
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8341591   0.7588152   0.8859662
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2394108   0.0191764   0.4101937
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.2545527   0.0385404   0.4220333
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4609195   0.0905879   0.6804444
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1686050   0.0621376   0.2629861
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1331673   0.0483458   0.2104287
24 months   ki1000108-IRC              INDIA                          0                    NA                0.1705991   0.0115258   0.3040730
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.3458775   0.1436106   0.5003719
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2502344   0.1414468   0.3452375
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2069259   0.0660130   0.3265790
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3487243   0.1402595   0.5066418
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2288041   0.1438811   0.3053031
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.3167124   0.1494878   0.4510579
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2558250   0.0751970   0.4011736
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1888930   0.1124348   0.2587647
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1969288   0.1527553   0.2387991
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.1638873   0.1402628   0.1868626
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0579223   0.0392381   0.0762431
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.7378520   0.5644337   0.8422248
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4559414   0.4175556   0.4917974
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5061747   0.4301779   0.5720358
