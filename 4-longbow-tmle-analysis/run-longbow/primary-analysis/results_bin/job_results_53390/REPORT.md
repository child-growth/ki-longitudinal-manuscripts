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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female          0       94     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female          1       24     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male            0       93     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male            1       20     231
Birth       ki0047075b-MAL-ED          BRAZIL                         Female          0       28      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Female          1        6      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Male            0       28      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Male            1        3      65
Birth       ki0047075b-MAL-ED          INDIA                          Female          0       20      47
Birth       ki0047075b-MAL-ED          INDIA                          Female          1        3      47
Birth       ki0047075b-MAL-ED          INDIA                          Male            0       17      47
Birth       ki0047075b-MAL-ED          INDIA                          Male            1        7      47
Birth       ki0047075b-MAL-ED          NEPAL                          Female          0       15      27
Birth       ki0047075b-MAL-ED          NEPAL                          Female          1        2      27
Birth       ki0047075b-MAL-ED          NEPAL                          Male            0       10      27
Birth       ki0047075b-MAL-ED          NEPAL                          Male            1        0      27
Birth       ki0047075b-MAL-ED          PERU                           Female          0      105     233
Birth       ki0047075b-MAL-ED          PERU                           Female          1       11     233
Birth       ki0047075b-MAL-ED          PERU                           Male            0      102     233
Birth       ki0047075b-MAL-ED          PERU                           Male            1       15     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female          0       54     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female          1        4     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male            0       59     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male            1        6     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          0       53     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          1       17     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            0       49     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            1        6     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female          0       41      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female          1        5      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male            0       34      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male            1       12      92
Birth       ki1000108-IRC              INDIA                          Female          0      156     388
Birth       ki1000108-IRC              INDIA                          Female          1       17     388
Birth       ki1000108-IRC              INDIA                          Male            0      187     388
Birth       ki1000108-IRC              INDIA                          Male            1       28     388
Birth       ki1000109-EE               PAKISTAN                       Female          0       72     240
Birth       ki1000109-EE               PAKISTAN                       Female          1       50     240
Birth       ki1000109-EE               PAKISTAN                       Male            0       68     240
Birth       ki1000109-EE               PAKISTAN                       Male            1       50     240
Birth       ki1000109-ResPak           PAKISTAN                       Female          0       15      42
Birth       ki1000109-ResPak           PAKISTAN                       Female          1        5      42
Birth       ki1000109-ResPak           PAKISTAN                       Male            0       13      42
Birth       ki1000109-ResPak           PAKISTAN                       Male            1        9      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female          0      433    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female          1      152    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male            0      470    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male            1      197    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female          0      246     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female          1       40     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male            0      265     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male            1       57     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female          0      238     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female          1       18     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Male            0      253     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Male            1       30     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female          0      318     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female          1       50     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male            0      313     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male            1       51     732
Birth       ki1101329-Keneba           GAMBIA                         Female          0      697    1543
Birth       ki1101329-Keneba           GAMBIA                         Female          1       43    1543
Birth       ki1101329-Keneba           GAMBIA                         Male            0      763    1543
Birth       ki1101329-Keneba           GAMBIA                         Male            1       40    1543
Birth       ki1113344-GMS-Nepal        NEPAL                          Female          0      272     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Female          1       56     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Male            0      302     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Male            1       66     696
Birth       ki1114097-CMIN             BANGLADESH                     Female          0        9      26
Birth       ki1114097-CMIN             BANGLADESH                     Female          1        2      26
Birth       ki1114097-CMIN             BANGLADESH                     Male            0        8      26
Birth       ki1114097-CMIN             BANGLADESH                     Male            1        7      26
Birth       ki1114097-CONTENT          PERU                           Female          0        2       2
Birth       ki1114097-CONTENT          PERU                           Female          1        0       2
Birth       ki1114097-CONTENT          PERU                           Male            0        0       2
Birth       ki1114097-CONTENT          PERU                           Male            1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Female          0     7171   13890
Birth       ki1119695-PROBIT           BELARUS                        Female          1        8   13890
Birth       ki1119695-PROBIT           BELARUS                        Male            0     6686   13890
Birth       ki1119695-PROBIT           BELARUS                        Male            1       25   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female          0     6086   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female          1      667   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male            0     6355   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male            1      767   13875
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female          0     7481   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female          1     3562   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male            0     7587   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male            1     3825   22455
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female          0      968    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female          1      421    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male            0      998    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male            1      436    2823
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female          0      109     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female          1       14     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male            0       88     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male            1       30     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Female          0      101     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Female          1        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Male            0      102     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Male            1        4     209
6 months    ki0047075b-MAL-ED          INDIA                          Female          0      113     236
6 months    ki0047075b-MAL-ED          INDIA                          Female          1       17     236
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
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          0       95     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          1       31     247
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
6 months    ki1000109-EE               PAKISTAN                       Female          0      102     373
6 months    ki1000109-EE               PAKISTAN                       Female          1       80     373
6 months    ki1000109-EE               PAKISTAN                       Male            0       88     373
6 months    ki1000109-EE               PAKISTAN                       Male            1      103     373
6 months    ki1000109-ResPak           PAKISTAN                       Female          0       77     239
6 months    ki1000109-ResPak           PAKISTAN                       Female          1       38     239
6 months    ki1000109-ResPak           PAKISTAN                       Male            0       76     239
6 months    ki1000109-ResPak           PAKISTAN                       Male            1       48     239
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female          0      250     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female          1       38     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male            0      258     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male            1       58     604
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
6 months    ki1113344-GMS-Nepal        NEPAL                          Female          0      217     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Female          1       56     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Male            0      225     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Male            1       66     564
6 months    ki1114097-CMIN             BANGLADESH                     Female          0       75     243
6 months    ki1114097-CMIN             BANGLADESH                     Female          1       31     243
6 months    ki1114097-CMIN             BANGLADESH                     Male            0       75     243
6 months    ki1114097-CMIN             BANGLADESH                     Male            1       62     243
6 months    ki1114097-CONTENT          PERU                           Female          0      105     215
6 months    ki1114097-CONTENT          PERU                           Female          1        1     215
6 months    ki1114097-CONTENT          PERU                           Male            0       91     215
6 months    ki1114097-CONTENT          PERU                           Male            1       18     215
6 months    ki1119695-PROBIT           BELARUS                        Female          0     8003   15761
6 months    ki1119695-PROBIT           BELARUS                        Female          1      139   15761
6 months    ki1119695-PROBIT           BELARUS                        Male            0     6770   15761
6 months    ki1119695-PROBIT           BELARUS                        Male            1      849   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female          0     3643    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female          1      558    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male            0     3614    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male            1      854    8669
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male            0     1729    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male            1      695    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female          0       58     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female          1       46     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male            0       53     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male            1       55     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Female          0       79     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Female          1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male            0       83     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male            1        7     169
24 months   ki0047075b-MAL-ED          INDIA                          Female          0       78     227
24 months   ki0047075b-MAL-ED          INDIA                          Female          1       44     227
24 months   ki0047075b-MAL-ED          INDIA                          Male            0       52     227
24 months   ki0047075b-MAL-ED          INDIA                          Male            1       53     227
24 months   ki0047075b-MAL-ED          NEPAL                          Female          0       80     228
24 months   ki0047075b-MAL-ED          NEPAL                          Female          1       26     228
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
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          0       32     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female          1       74     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            0       27     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male            1       81     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female          0       58     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female          1      128     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male            0       47     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male            1      138     371
24 months   ki1000108-IRC              INDIA                          Female          0      108     409
24 months   ki1000108-IRC              INDIA                          Female          1       77     409
24 months   ki1000108-IRC              INDIA                          Male            0      129     409
24 months   ki1000108-IRC              INDIA                          Male            1       95     409
24 months   ki1000109-EE               PAKISTAN                       Female          0       28     167
24 months   ki1000109-EE               PAKISTAN                       Female          1       51     167
24 months   ki1000109-EE               PAKISTAN                       Male            0       21     167
24 months   ki1000109-EE               PAKISTAN                       Male            1       67     167
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female          0       90     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female          1      105     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male            0       95     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male            1      139     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female          0      189     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female          1       90     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male            0      199     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male            1      100     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female          0      183     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female          1       77     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male            0      199     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male            1       55     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male            1        1       6
24 months   ki1101329-Keneba           GAMBIA                         Female          0      556    1725
24 months   ki1101329-Keneba           GAMBIA                         Female          1      266    1725
24 months   ki1101329-Keneba           GAMBIA                         Male            0      588    1725
24 months   ki1101329-Keneba           GAMBIA                         Male            1      315    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          Female          0      127     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Female          1      101     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Male            0      142     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Male            1      118     488
24 months   ki1114097-CMIN             BANGLADESH                     Female          0       28     242
24 months   ki1114097-CMIN             BANGLADESH                     Female          1       76     242
24 months   ki1114097-CMIN             BANGLADESH                     Male            0       49     242
24 months   ki1114097-CMIN             BANGLADESH                     Male            1       89     242
24 months   ki1114097-CONTENT          PERU                           Female          0       80     164
24 months   ki1114097-CONTENT          PERU                           Female          1        3     164
24 months   ki1114097-CONTENT          PERU                           Male            0       63     164
24 months   ki1114097-CONTENT          PERU                           Male            1       18     164
24 months   ki1119695-PROBIT           BELARUS                        Female          0     2008    4035
24 months   ki1119695-PROBIT           BELARUS                        Female          1       73    4035
24 months   ki1119695-PROBIT           BELARUS                        Male            0     1683    4035
24 months   ki1119695-PROBIT           BELARUS                        Male            1      271    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female          0      575    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female          1      233    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male            0      496    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male            1      336    1640
24 months   ki1135781-COHORTS          GUATEMALA                      Female          0       99    1070
24 months   ki1135781-COHORTS          GUATEMALA                      Female          1      413    1070
24 months   ki1135781-COHORTS          GUATEMALA                      Male            0      103    1070
24 months   ki1135781-COHORTS          GUATEMALA                      Male            1      455    1070
24 months   ki1135781-COHORTS          INDIA                          Female          0     1199    5337
24 months   ki1135781-COHORTS          INDIA                          Female          1     1344    5337
24 months   ki1135781-COHORTS          INDIA                          Male            0     1282    5337
24 months   ki1135781-COHORTS          INDIA                          Male            1     1512    5337
24 months   ki1135781-COHORTS          PHILIPPINES                    Female          0      456    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Female          1      702    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Male            0      466    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Male            1      821    2445
24 months   ki1148112-LCNI-5           MALAWI                         Female          0      173     579
24 months   ki1148112-LCNI-5           MALAWI                         Female          1      121     579
24 months   ki1148112-LCNI-5           MALAWI                         Male            0      148     579
24 months   ki1148112-LCNI-5           MALAWI                         Male            1      137     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female          0     2183    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female          1     1985    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male            0     2210    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male            1     2254    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female          0     1456    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female          1      920    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male            0     1391    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male            1      985    4752


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/fab47928-cfad-40ae-89c1-44df312ee1a5/2087197c-c42d-46d5-af92-cdea5b03f130/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fab47928-cfad-40ae-89c1-44df312ee1a5/2087197c-c42d-46d5-af92-cdea5b03f130/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fab47928-cfad-40ae-89c1-44df312ee1a5/2087197c-c42d-46d5-af92-cdea5b03f130/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fab47928-cfad-40ae-89c1-44df312ee1a5/2087197c-c42d-46d5-af92-cdea5b03f130/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.2033898   0.1306057   0.2761740
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1769912   0.1064684   0.2475139
Birth       ki0047075b-MAL-ED          PERU                           Female               NA                0.0948276   0.0413975   0.1482577
Birth       ki0047075b-MAL-ED          PERU                           Male                 NA                0.1282051   0.0674967   0.1889136
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2428571   0.1419998   0.3437145
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1090909   0.0263687   0.1918131
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1086957   0.0182555   0.1991358
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.2608696   0.1332802   0.3884590
Birth       ki1000108-IRC              INDIA                          Female               NA                0.0982659   0.0538513   0.1426805
Birth       ki1000108-IRC              INDIA                          Male                 NA                0.1302326   0.0851871   0.1752780
Birth       ki1000109-EE               PAKISTAN                       Female               NA                0.4098361   0.3223848   0.4972874
Birth       ki1000109-EE               PAKISTAN                       Male                 NA                0.4237288   0.3343836   0.5130740
Birth       ki1000109-ResPak           PAKISTAN                       Female               NA                0.2500000   0.0579269   0.4420731
Birth       ki1000109-ResPak           PAKISTAN                       Male                 NA                0.4090909   0.2011501   0.6170317
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.2598291   0.2083613   0.3112968
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.2953523   0.2739619   0.3167428
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.1398601   0.0996298   0.1800905
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1770186   0.1352950   0.2187423
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0703125   0.0389640   0.1016610
Birth       ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1060071   0.0701072   0.1419069
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1358696   0.1008370   0.1709021
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.1401099   0.1044278   0.1757920
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                0.0581081   0.0412468   0.0749694
Birth       ki1101329-Keneba           GAMBIA                         Male                 NA                0.0498132   0.0347607   0.0648657
Birth       ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1707317   0.1299817   0.2114817
Birth       ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1793478   0.1401227   0.2185729
Birth       ki1119695-PROBIT           BELARUS                        Female               NA                0.0011144   0.0002241   0.0020046
Birth       ki1119695-PROBIT           BELARUS                        Male                 NA                0.0037252   0.0011077   0.0063427
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0987709   0.0916547   0.1058871
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1076945   0.1004947   0.1148942
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0519802   0.0303211   0.0736393
Birth       ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0647321   0.0419344   0.0875299
Birth       ki1135781-COHORTS          INDIA                          Female               NA                0.1095462   0.0987156   0.1203767
Birth       ki1135781-COHORTS          INDIA                          Male                 NA                0.1283019   0.1171336   0.1394702
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0509421   0.0395558   0.0623283
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0705009   0.0580217   0.0829801
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.3225573   0.3129793   0.3321352
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.3351735   0.3253489   0.3449981
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.3030958   0.2739962   0.3321953
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.3040446   0.2759434   0.3321458
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1138211   0.0575779   0.1700644
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.2542373   0.1755092   0.3329654
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.1307692   0.0726903   0.1888482
6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.2641509   0.1800429   0.3482590
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                0.1349206   0.0751584   0.1946829
6 months    ki0047075b-MAL-ED          PERU                           Male                 NA                0.2925170   0.2188421   0.3661920
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.1587302   0.0947984   0.2226619
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.2343750   0.1608452   0.3079048
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2460317   0.1706761   0.3213874
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.2314050   0.1561090   0.3067009
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.2526882   0.1901530   0.3152233
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.3497268   0.2805398   0.4189137
6 months    ki1000108-IRC              INDIA                          Female               NA                0.2131148   0.1537103   0.2725192
6 months    ki1000108-IRC              INDIA                          Male                 NA                0.2723214   0.2139542   0.3306886
6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.4395604   0.3673551   0.5117657
6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.5392670   0.4684821   0.6100520
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.3304348   0.2442860   0.4165835
6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.3870968   0.3011848   0.4730087
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.2791461   0.2383117   0.3199805
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.2888583   0.2511097   0.3266070
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.4228856   0.3545000   0.4912712
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.4357542   0.3630183   0.5084901
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.1959184   0.1461724   0.2456643
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.3287671   0.2748357   0.3826986
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.1319444   0.0928261   0.1710628
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1835443   0.1408273   0.2262613
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1878453   0.1475813   0.2281093
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.2322946   0.1882106   0.2763787
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0677966   0.0522347   0.0833586
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1257310   0.1054390   0.1460230
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.1226508   0.1024254   0.1428763
6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.1586271   0.1368136   0.1804406
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.2549020   0.1857311   0.3240728
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.3493151   0.2718523   0.4267779
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.2051282   0.1571865   0.2530699
6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.2268041   0.1786474   0.2749609
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.2924528   0.2056775   0.3792282
6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.4525547   0.3690350   0.5360745
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.0170720   0.0084697   0.0256743
6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.1114319   0.0907453   0.1321186
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1328255   0.1225621   0.1430889
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1911370   0.1796071   0.2026669
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.2867162   0.2662867   0.3071456
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.4423077   0.3466285   0.5379869
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.5092593   0.4147535   0.6037651
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.3606557   0.2752591   0.4460524
24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.5047619   0.4089185   0.6006054
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.2452830   0.1631958   0.3273702
24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1967213   0.1260275   0.2674151
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.2637363   0.1729726   0.3544999
24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.4545455   0.3612624   0.5478285
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.2457627   0.1679172   0.3236082
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.4583333   0.3689969   0.5476698
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.6981132   0.6105146   0.7857118
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.7500000   0.6681434   0.8318566
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.6881720   0.6215092   0.7548349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.7459459   0.6831307   0.8087612
24 months   ki1000108-IRC              INDIA                          Female               NA                0.4162162   0.3450983   0.4873342
24 months   ki1000108-IRC              INDIA                          Male                 NA                0.4241071   0.3593087   0.4889055
24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.6455696   0.5397720   0.7513672
24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.7613636   0.6720382   0.8506891
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.5384615   0.4684098   0.6085133
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.5940171   0.5310229   0.6570113
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.3225806   0.2676809   0.3774803
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.3344482   0.2809247   0.3879716
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.2961538   0.2406041   0.3517036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.2165354   0.1658331   0.2672378
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.3236010   0.2916087   0.3555932
24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.3488372   0.3177425   0.3799319
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.4429825   0.3784388   0.5075261
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.4538462   0.3932676   0.5144247
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.7307692   0.6453446   0.8161939
24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.6449275   0.5649217   0.7249334
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0350793   0.0053426   0.0648160
24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.1386899   0.1016007   0.1757790
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.2883663   0.2571217   0.3196110
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.4038462   0.3704954   0.4371969
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.8066406   0.7724160   0.8408653
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.8154122   0.7832071   0.8476172
24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.5285096   0.5091062   0.5479131
24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.5411596   0.5226810   0.5596382
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.6062176   0.5780711   0.6343642
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.6379176   0.6116553   0.6641800
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.4115646   0.3552634   0.4678659
24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.4807018   0.4226457   0.5387578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.4762476   0.4585532   0.4939420
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.5049283   0.4880538   0.5218028
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.3872054   0.3634126   0.4109982
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.4145623   0.3928801   0.4362445


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1904762   0.1397281   0.2412242
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1115880   0.0710726   0.1521034
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1840000   0.1157989   0.2522011
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1847826   0.1050392   0.2645260
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                0.4166667   0.3541635   0.4791698
Birth       ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3333333   0.1890388   0.4776279
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2787540   0.2475949   0.3099131
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1595395   0.1304091   0.1886699
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0537913   0.0425309   0.0650518
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1752874   0.1470202   0.2035545
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.0023758   0.0010936   0.0036580
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1033514   0.0982859   0.1084168
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586854   0.0428942   0.0744767
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1192771   0.1114807   0.1270735
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3289690   0.3216017   0.3363364
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3035778   0.2836422   0.3235133
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1825726   0.1336978   0.2314474
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1906780   0.1404524   0.2409036
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2388664   0.1855834   0.2921494
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.4906166   0.4398159   0.5414174
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3598326   0.2988570   0.4208083
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0842059   0.1099785
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1412159   0.1262788   0.1561530
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3010033   0.2489243   0.3530824
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2163121   0.1823021   0.2503220
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3827160   0.3214780   0.4439541
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1628792   0.1551057   0.1706527
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1854227   0.1762253   0.1946201
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3682956   0.3356382   0.4009530
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513830   0.2432594   0.2595066
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2527427   0.2386864   0.2667990
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2192982   0.1654718   0.2731246
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7242991   0.6642873   0.7843108
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7169811   0.6710815   0.7628807
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7065868   0.6373214   0.7758523
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3368116   0.3145020   0.3591212
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4487705   0.4045970   0.4929440
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6818182   0.6230135   0.7406228
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3469512   0.3239068   0.3699956
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8112150   0.7877559   0.8346740
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5351321   0.5217497   0.5485145
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6229039   0.6036892   0.6421186
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4455959   0.4050760   0.4861157
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4910797   0.4779658   0.5041936
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4008838   0.3839145   0.4178532


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            0.8702065   0.5093674    1.4866661
Birth       ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki0047075b-MAL-ED          PERU                           Male                 Female            1.3519813   0.6476342    2.8223548
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.4491979   0.1892182    1.0663810
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            2.4000000   0.9142206    6.3004486
Birth       ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1000108-IRC              INDIA                          Male                 Female            1.3253078   0.7501365    2.3414947
Birth       ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1000109-EE               PAKISTAN                       Male                 Female            1.0338983   0.7659419    1.3955963
Birth       ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1000109-ResPak           PAKISTAN                       Male                 Female            1.6363636   0.6513286    4.1111135
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.1367178   0.9537376    1.3548039
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.2656832   0.8726070    1.8358253
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.5076561   0.8612908    2.6390934
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.0312088   0.7177200    1.4816245
Birth       ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1101329-Keneba           GAMBIA                         Male                 Female            0.8572504   0.5638506    1.3033210
Birth       ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0504658   0.7599544    1.4520325
Birth       ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1119695-PROBIT           BELARUS                        Male                 Female            3.3429258   1.0716555   10.4279337
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.0903459   0.9882780    1.2029553
Birth       ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.2453231   0.7216722    2.1489393
Birth       ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          INDIA                          Male                 Female            1.1712129   1.0266626    1.3361154
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.3839429   1.0406261    1.8405245
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.0391131   0.9999554    1.0798043
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.0031306   0.8763765    1.1482177
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            2.2336562   1.2466877    4.0019807
6 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            2.0199778   1.1695372    3.4888248
6 months    ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED          PERU                           Male                 Female            2.1680672   1.3025083    3.6088181
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.4765625   0.8861928    2.4602286
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.9405492   0.6016052    1.4704539
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.3840251   1.0081960    1.8999535
6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1000108-IRC              INDIA                          Male                 Female            1.2778159   0.8990043    1.8162468
6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.2268325   0.9941832    1.5139241
6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.1714771   0.8318352    1.6497962
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.0347925   0.8081921    1.3249269
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.0304305   0.8167437    1.3000248
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.6780822   1.2403074    2.2703725
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.3910726   0.9542421    2.0278742
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.2366272   0.9287662    1.6465359
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.8545322   1.4007866    2.4552558
6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.2933225   1.0434142    1.6030863
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            1.3703899   0.9652653    1.9455463
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.1056701   0.8062906    1.5162106
6 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            1.5474453   1.0910909    2.1946722
6 months    ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Male                 Female            6.5271860   4.3751854    9.7376804
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.4390079   1.3046387    1.5872163
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.3120263   1.1697378    1.4716229
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.1513688   0.8658356    1.5310644
24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.3995671   1.0331902    1.8958640
24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            0.8020177   0.4908170    1.3105340
24 months   ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          PERU                           Male                 Female            1.7234848   1.1544895    2.5729122
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.8649425   1.2857113    2.7051257
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.0743243   0.9097258    1.2687040
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.0839527   0.9533816    1.2324062
24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1000108-IRC              INDIA                          Male                 Female            1.0189587   0.8102320    1.2814563
24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.1793672   0.9640893    1.4427160
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.1031746   0.9327198    1.3047801
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.0367893   0.8207922    1.3096275
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            0.7311586   0.5416464    0.9869777
24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.0779857   0.9436305    1.2314704
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0245240   0.8408251    1.2483564
24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.8825324   0.7442243    1.0465441
24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            3.9536111   1.8410558    8.4902594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.4004622   1.2220969    1.6048600
24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0108742   0.9539437    1.0712023
24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.0239352   0.9738626    1.0765824
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.0522915   0.9889781    1.1196581
24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.1679861   0.9731648    1.4018093
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.0602223   1.0125216    1.1101702
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.0706522   0.9920963    1.1554282


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0129136   -0.0625191    0.0366918
Birth       ki0047075b-MAL-ED          PERU                           Female               NA                 0.0167604   -0.0239059    0.0574267
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0588571   -0.1174295   -0.0002848
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0760870   -0.0036564    0.1558303
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.0177135   -0.0173758    0.0528027
Birth       ki1000109-EE               PAKISTAN                       Female               NA                 0.0068306   -0.0546444    0.0683057
Birth       ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0833333   -0.0669254    0.2335920
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0189249   -0.0055893    0.0434391
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0196793   -0.0110519    0.0504106
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0187413   -0.0063280    0.0438106
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0021086   -0.0227577    0.0269749
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.0043168   -0.0160814    0.0074478
Birth       ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0045556   -0.0253520    0.0344633
Birth       ki1119695-PROBIT           BELARUS                        Female               NA                 0.0012614   -0.0001346    0.0026575
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0045804   -0.0006162    0.0097771
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0067052   -0.0098353    0.0232458
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0097309    0.0016563    0.0178056
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0103694    0.0014066    0.0193322
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0064118   -0.0000069    0.0128304
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0004820   -0.0203468    0.0213108
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0687515    0.0205528    0.1169502
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0599087    0.0132228    0.1065947
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.0848596    0.0329317    0.1367874
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0381202   -0.0112024    0.0874428
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0071653   -0.0593585    0.0450278
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0481248    0.0016089    0.0946408
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0325855   -0.0133389    0.0785098
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0510562   -0.0009680    0.1030803
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0293979   -0.0338280    0.0926237
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0052850   -0.0329570    0.0435270
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0060618   -0.0409704    0.0530940
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0722381    0.0319505    0.1125256
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0269960   -0.0033775    0.0573694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0219449   -0.0075765    0.0514663
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0292956    0.0163032    0.0422879
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0185651    0.0031950    0.0339351
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0461014   -0.0048909    0.0970937
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0111839   -0.0238879    0.0462556
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0902632    0.0216286    0.1588978
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0456144    0.0374380    0.0537908
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0300537    0.0220743    0.0380331
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0306036   -0.0020950    0.0633023
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0214434    0.0118898    0.0309971
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0419470    0.0257968    0.0580972
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0778194    0.0451965    0.1104423
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0393573    0.0324755    0.0462392
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0342134    0.0198682    0.0485586
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0341074   -0.0345518    0.1027666
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0666570    0.0065450    0.1267691
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0259848   -0.0840377    0.0320682
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.1044229    0.0319889    0.1768569
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1071785    0.0459203    0.1684366
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0261859   -0.0344205    0.0867922
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0288091   -0.0169598    0.0745780
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0043217   -0.0483724    0.0570158
24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0610172   -0.0124738    0.1345082
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0303030   -0.0211510    0.0817570
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0061391   -0.0335268    0.0458050
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0393445   -0.0766697   -0.0020193
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0132106   -0.0101513    0.0365725
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0057880   -0.0413763    0.0529524
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0489510   -0.1159080    0.0180059
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0501747    0.0328098    0.0675397
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0585849    0.0352326    0.0819372
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0045743   -0.0199345    0.0290832
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0066225   -0.0074060    0.0206509
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0166863   -0.0035870    0.0369595
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0340312   -0.0058760    0.0739385
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0148321    0.0031833    0.0264809
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0136785   -0.0014822    0.0288391


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0677966   -0.3623330    0.1630610
Birth       ki0047075b-MAL-ED          PERU                           Female               NA                 0.1501989   -0.2999145    0.4444543
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.3198758   -0.6683729   -0.0441743
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.4117647   -0.1686957    0.7039257
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.1527296   -0.2076328    0.4055584
Birth       ki1000109-EE               PAKISTAN                       Female               NA                 0.0163934   -0.1427964    0.1534084
Birth       ki1000109-ResPak           PAKISTAN                       Female               NA                 0.2500000   -0.3620717    0.5870261
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0678912   -0.0304014    0.1568073
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1233509   -0.0909794    0.2955745
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.2104492   -0.1207991    0.4437983
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0152820   -0.1824650    0.1799591
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.0802507   -0.3219778    0.1172759
Birth       ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0259896   -0.1604515    0.1824766
Birth       ki1119695-PROBIT           BELARUS                        Female               NA                 0.5309552   -0.1120994    0.8021732
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0443191   -0.0072702    0.0932661
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.1142574   -0.2155432    0.3545767
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0815826    0.0114984    0.1466980
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1691265    0.0113086    0.3017530
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0194905   -0.0002038    0.0387970
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0015877   -0.0694379    0.0678963
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.3765706    0.0694258    0.5823393
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.3141880    0.0336441    0.5132869
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.3861111    0.1133503    0.5749623
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1936508   -0.0963623    0.4069487
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0299973   -0.2733625    0.1668559
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1599826   -0.0091293    0.3007543
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.1326230   -0.0752179    0.3002879
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.1040653   -0.0089497    0.2044213
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0816987   -0.1119674    0.2416349
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0185809   -0.1254116    0.1441501
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0141318   -0.1018500    0.1179053
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.2693878    0.1052978    0.4033833
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1698495   -0.0428292    0.3391537
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1046041   -0.0472906    0.2344686
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.3017293    0.1604994    0.4192000
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.1314657    0.0162327    0.2332011
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.1531590   -0.0336961    0.3062375
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0517024   -0.1250028    0.2006524
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.2358491    0.0339857    0.3955300
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.7276606    0.6165750    0.8065625
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1845153    0.1346007    0.2315509
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0746449   -0.0087105    0.1511122
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.1156462    0.0627945    0.1655174
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1985882    0.1192247    0.2708006
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.2112960    0.1177306    0.2949388
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.1565632    0.1287690    0.1834707
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1353686    0.0766283    0.1903720
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0715918   -0.0845985    0.2052895
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1559912    0.0023107    0.2859993
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.1184906   -0.4164108    0.1167667
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.2836353    0.0586862    0.4548275
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.3036723    0.1090061    0.4558074
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0361534   -0.0514994    0.1164994
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0401811   -0.0260388    0.1021272
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0102766   -0.1233051    0.1279729
24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0863549   -0.0251110    0.1857005
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0532787   -0.0418267    0.1397022
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0186757   -0.1097239    0.1322190
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.1532051   -0.3076999   -0.0169628
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0392226   -0.0327031    0.1061388
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0128975   -0.0980032    0.1125970
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0717949   -0.1754043    0.0226816
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.5885322    0.2572339    0.7720605
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1688563    0.0988671    0.2334095
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0056389   -0.0250408    0.0354003
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0123754   -0.0141929    0.0382476
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0267879   -0.0063328    0.0588185
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0763724   -0.0178164    0.1618450
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0302030    0.0061611    0.0536634
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0341207   -0.0046167    0.0713645
