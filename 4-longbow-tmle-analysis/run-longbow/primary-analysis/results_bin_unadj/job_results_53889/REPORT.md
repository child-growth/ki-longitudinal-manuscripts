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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female           0      113     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female           1        5     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male             0      109     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male             1        4     231
Birth       ki0047075b-MAL-ED          BRAZIL                         Female           0       32      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Female           1        2      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Male             0       30      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Male             1        1      65
Birth       ki0047075b-MAL-ED          INDIA                          Female           0       22      47
Birth       ki0047075b-MAL-ED          INDIA                          Female           1        1      47
Birth       ki0047075b-MAL-ED          INDIA                          Male             0       23      47
Birth       ki0047075b-MAL-ED          INDIA                          Male             1        1      47
Birth       ki0047075b-MAL-ED          NEPAL                          Female           0       16      27
Birth       ki0047075b-MAL-ED          NEPAL                          Female           1        1      27
Birth       ki0047075b-MAL-ED          NEPAL                          Male             0       10      27
Birth       ki0047075b-MAL-ED          NEPAL                          Male             1        0      27
Birth       ki0047075b-MAL-ED          PERU                           Female           0      114     233
Birth       ki0047075b-MAL-ED          PERU                           Female           1        2     233
Birth       ki0047075b-MAL-ED          PERU                           Male             0      115     233
Birth       ki0047075b-MAL-ED          PERU                           Male             1        2     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female           0       56     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female           1        2     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male             0       65     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male             1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female           0       63     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female           1        7     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male             0       52     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male             1        3     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female           0       45      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female           1        1      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male             0       43      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male             1        3      92
Birth       ki1000108-IRC              INDIA                          Female           0      166     388
Birth       ki1000108-IRC              INDIA                          Female           1        7     388
Birth       ki1000108-IRC              INDIA                          Male             0      206     388
Birth       ki1000108-IRC              INDIA                          Male             1        9     388
Birth       ki1000109-EE               PAKISTAN                       Female           0       99     240
Birth       ki1000109-EE               PAKISTAN                       Female           1       23     240
Birth       ki1000109-EE               PAKISTAN                       Male             0       93     240
Birth       ki1000109-EE               PAKISTAN                       Male             1       25     240
Birth       ki1000109-ResPak           PAKISTAN                       Female           0       19      42
Birth       ki1000109-ResPak           PAKISTAN                       Female           1        1      42
Birth       ki1000109-ResPak           PAKISTAN                       Male             0       21      42
Birth       ki1000109-ResPak           PAKISTAN                       Male             1        1      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female           0      543    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female           1       42    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male             0      618    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male             1       49    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female           0      277     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female           1        9     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male             0      312     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male             1       10     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female           0      255     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Female           1        1     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Male             0      280     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Male             1        3     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female           0      364     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female           1        4     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male             0      358     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male             1        6     732
Birth       ki1101329-Keneba           GAMBIA                         Female           0      724    1543
Birth       ki1101329-Keneba           GAMBIA                         Female           1       16    1543
Birth       ki1101329-Keneba           GAMBIA                         Male             0      790    1543
Birth       ki1101329-Keneba           GAMBIA                         Male             1       13    1543
Birth       ki1113344-GMS-Nepal        NEPAL                          Female           0      313     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Female           1       15     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Male             0      352     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Male             1       16     696
Birth       ki1114097-CMIN             BANGLADESH                     Female           0        9      26
Birth       ki1114097-CMIN             BANGLADESH                     Female           1        2      26
Birth       ki1114097-CMIN             BANGLADESH                     Male             0       11      26
Birth       ki1114097-CMIN             BANGLADESH                     Male             1        4      26
Birth       ki1114097-CONTENT          PERU                           Female           0        2       2
Birth       ki1114097-CONTENT          PERU                           Female           1        0       2
Birth       ki1114097-CONTENT          PERU                           Male             0        0       2
Birth       ki1114097-CONTENT          PERU                           Male             1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Female           0     7177   13890
Birth       ki1119695-PROBIT           BELARUS                        Female           1        2   13890
Birth       ki1119695-PROBIT           BELARUS                        Male             0     6708   13890
Birth       ki1119695-PROBIT           BELARUS                        Male             1        3   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female           0     6536   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female           1      217   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male             0     6897   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male             1      225   13875
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female           0     9856   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female           1     1187   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male             0    10151   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male             1     1261   22455
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female           0     1292    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female           1       97    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male             0     1298    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male             1      136    2823
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
6 months    ki0047075b-MAL-ED          PERU                           Female           0      124     273
6 months    ki0047075b-MAL-ED          PERU                           Female           1        2     273
6 months    ki0047075b-MAL-ED          PERU                           Male             0      139     273
6 months    ki0047075b-MAL-ED          PERU                           Male             1        8     273
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
6 months    ki1000109-EE               PAKISTAN                       Female           0      147     373
6 months    ki1000109-EE               PAKISTAN                       Female           1       35     373
6 months    ki1000109-EE               PAKISTAN                       Male             0      145     373
6 months    ki1000109-EE               PAKISTAN                       Male             1       46     373
6 months    ki1000109-ResPak           PAKISTAN                       Female           0       97     239
6 months    ki1000109-ResPak           PAKISTAN                       Female           1       18     239
6 months    ki1000109-ResPak           PAKISTAN                       Male             0       95     239
6 months    ki1000109-ResPak           PAKISTAN                       Male             1       29     239
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female           0      286     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female           1        2     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male             0      304     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male             1       12     604
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
6 months    ki1113344-GMS-Nepal        NEPAL                          Female           0      269     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Female           1        4     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Male             0      274     564
6 months    ki1113344-GMS-Nepal        NEPAL                          Male             1       17     564
6 months    ki1114097-CMIN             BANGLADESH                     Female           0       96     243
6 months    ki1114097-CMIN             BANGLADESH                     Female           1       10     243
6 months    ki1114097-CMIN             BANGLADESH                     Male             0      119     243
6 months    ki1114097-CMIN             BANGLADESH                     Male             1       18     243
6 months    ki1114097-CONTENT          PERU                           Female           0      106     215
6 months    ki1114097-CONTENT          PERU                           Female           1        0     215
6 months    ki1114097-CONTENT          PERU                           Male             0      105     215
6 months    ki1114097-CONTENT          PERU                           Male             1        4     215
6 months    ki1119695-PROBIT           BELARUS                        Female           0     8112   15761
6 months    ki1119695-PROBIT           BELARUS                        Female           1       30   15761
6 months    ki1119695-PROBIT           BELARUS                        Male             0     7406   15761
6 months    ki1119695-PROBIT           BELARUS                        Male             1      213   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female           0     4078    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female           1      123    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male             0     4240    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male             1      228    8669
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male             0     2249    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male             1      175    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female           0       91     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female           1       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male             0       93     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male             1       15     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Female           0       79     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Female           1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male             0       89     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male             1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          Female           0      110     227
24 months   ki0047075b-MAL-ED          INDIA                          Female           1       12     227
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
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male             0      104     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male             1       16     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female           0       76     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female           1       30     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male             0       68     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male             1       40     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female           0      136     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female           1       50     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male             0      110     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male             1       75     371
24 months   ki1000108-IRC              INDIA                          Female           0      171     409
24 months   ki1000108-IRC              INDIA                          Female           1       14     409
24 months   ki1000108-IRC              INDIA                          Male             0      197     409
24 months   ki1000108-IRC              INDIA                          Male             1       27     409
24 months   ki1000109-EE               PAKISTAN                       Female           0       56     167
24 months   ki1000109-EE               PAKISTAN                       Female           1       23     167
24 months   ki1000109-EE               PAKISTAN                       Male             0       52     167
24 months   ki1000109-EE               PAKISTAN                       Male             1       36     167
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female           0      151     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female           1       44     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male             0      183     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male             1       51     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female           0      258     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female           1       21     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male             0      268     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male             1       31     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female           0      241     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female           1       19     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male             0      237     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male             1       17     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female           0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female           1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male             0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male             1        1       6
24 months   ki1101329-Keneba           GAMBIA                         Female           0      762    1725
24 months   ki1101329-Keneba           GAMBIA                         Female           1       60    1725
24 months   ki1101329-Keneba           GAMBIA                         Male             0      823    1725
24 months   ki1101329-Keneba           GAMBIA                         Male             1       80    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          Female           0      205     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Female           1       23     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Male             0      230     488
24 months   ki1113344-GMS-Nepal        NEPAL                          Male             1       30     488
24 months   ki1114097-CMIN             BANGLADESH                     Female           0       76     242
24 months   ki1114097-CMIN             BANGLADESH                     Female           1       28     242
24 months   ki1114097-CMIN             BANGLADESH                     Male             0       98     242
24 months   ki1114097-CMIN             BANGLADESH                     Male             1       40     242
24 months   ki1114097-CONTENT          PERU                           Female           0       83     164
24 months   ki1114097-CONTENT          PERU                           Female           1        0     164
24 months   ki1114097-CONTENT          PERU                           Male             0       78     164
24 months   ki1114097-CONTENT          PERU                           Male             1        3     164
24 months   ki1119695-PROBIT           BELARUS                        Female           0     2063    4035
24 months   ki1119695-PROBIT           BELARUS                        Female           1       18    4035
24 months   ki1119695-PROBIT           BELARUS                        Male             0     1907    4035
24 months   ki1119695-PROBIT           BELARUS                        Male             1       47    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female           0      745    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female           1       63    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male             0      717    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male             1      115    1640
24 months   ki1135781-COHORTS          GUATEMALA                      Female           0      268    1070
24 months   ki1135781-COHORTS          GUATEMALA                      Female           1      244    1070
24 months   ki1135781-COHORTS          GUATEMALA                      Male             0      278    1070
24 months   ki1135781-COHORTS          GUATEMALA                      Male             1      280    1070
24 months   ki1135781-COHORTS          INDIA                          Female           0     1983    5337
24 months   ki1135781-COHORTS          INDIA                          Female           1      560    5337
24 months   ki1135781-COHORTS          INDIA                          Male             0     2135    5337
24 months   ki1135781-COHORTS          INDIA                          Male             1      659    5337
24 months   ki1135781-COHORTS          PHILIPPINES                    Female           0      832    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Female           1      326    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Male             0      906    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Male             1      381    2445
24 months   ki1148112-LCNI-5           MALAWI                         Female           0      269     579
24 months   ki1148112-LCNI-5           MALAWI                         Female           1       25     579
24 months   ki1148112-LCNI-5           MALAWI                         Male             0      240     579
24 months   ki1148112-LCNI-5           MALAWI                         Male             1       45     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female           0     3561    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female           1      607    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male             0     3724    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male             1      740    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female           0     2173    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female           1      203    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male             0     2126    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male             1      250    4752


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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/fd7d6f4c-1190-410a-9a88-bc1775598cbf/64ebd4b3-ae50-4515-b32c-8b7150a50ea7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fd7d6f4c-1190-410a-9a88-bc1775598cbf/64ebd4b3-ae50-4515-b32c-8b7150a50ea7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fd7d6f4c-1190-410a-9a88-bc1775598cbf/64ebd4b3-ae50-4515-b32c-8b7150a50ea7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fd7d6f4c-1190-410a-9a88-bc1775598cbf/64ebd4b3-ae50-4515-b32c-8b7150a50ea7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Female               NA                0.0404624    0.0110628   0.0698621
Birth       ki1000108-IRC              INDIA                          Male                 NA                0.0418605    0.0150561   0.0686648
Birth       ki1000109-EE               PAKISTAN                       Female               NA                0.1885246    0.1189747   0.2580745
Birth       ki1000109-EE               PAKISTAN                       Male                 NA                0.2118644    0.1379816   0.2857472
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.0717949    0.0533254   0.0902643
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.0734633    0.0428391   0.1040874
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0314685    0.0112189   0.0517182
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.0310559    0.0120933   0.0500186
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                0.0216216    0.0111390   0.0321043
Birth       ki1101329-Keneba           GAMBIA                         Male                 NA                0.0161893    0.0074576   0.0249210
Birth       ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.0457317    0.0231078   0.0683556
Birth       ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.0434783    0.0226276   0.0643289
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0321339    0.0279275   0.0363402
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0315922    0.0275299   0.0356546
Birth       ki1135781-COHORTS          INDIA                          Female               NA                0.0294210    0.0235611   0.0352809
Birth       ki1135781-COHORTS          INDIA                          Male                 NA                0.0325109    0.0265881   0.0384336
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0125611    0.0067939   0.0183283
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0173160    0.0109569   0.0236751
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.1074889    0.1010908   0.1138870
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.1104977    0.1041103   0.1168851
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0698344    0.0527540   0.0869148
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0948396    0.0784805   0.1111987
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.0752688    0.0373027   0.1132349
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1530055    0.1007772   0.2052337
6 months    ki1000108-IRC              INDIA                          Female               NA                0.0655738    0.0296655   0.1014820
6 months    ki1000108-IRC              INDIA                          Male                 NA                0.0758929    0.0411696   0.1106161
6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.1923077    0.1349731   0.2496423
6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.2408377    0.1801160   0.3015594
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.1565217    0.0899739   0.2230696
6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.2338710    0.1592112   0.3085308
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0292787    0.0241805   0.0343770
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0510295    0.0445767   0.0574824
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0721947    0.0617190   0.0826704
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1250000    0.0612886   0.1887114
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1388889    0.0735117   0.2042661
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.0983607    0.0453999   0.1513214
24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1714286    0.0991818   0.2436754
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.0932203    0.0406516   0.1457891
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.1333333    0.0723842   0.1942824
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2830189    0.1970633   0.3689744
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.3703704    0.2790823   0.4616584
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.2688172    0.2050174   0.3326170
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.4054054    0.3345613   0.4762495
24 months   ki1000108-IRC              INDIA                          Female               NA                0.0756757    0.0375178   0.1138335
24 months   ki1000108-IRC              INDIA                          Male                 NA                0.1205357    0.0778461   0.1632254
24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.2911392    0.1906616   0.3916169
24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.4090909    0.3060568   0.5121251
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.2256410    0.1669032   0.2843788
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.2179487    0.1649895   0.2709080
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0752688    0.0442848   0.1062528
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1036789    0.0690957   0.1382622
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0730769    0.0414107   0.1047431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0669291    0.0361668   0.0976914
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.0729927    0.0552050   0.0907804
24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.0885936    0.0700545   0.1071326
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1008772    0.0617452   0.1400092
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1153846    0.0765107   0.1542585
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.2692308    0.1838061   0.3546554
24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.2898551    0.2140023   0.3657079
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0086497   -0.0050679   0.0223673
24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0240532    0.0099844   0.0381220
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0779703    0.0594771   0.0964635
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1382212    0.1147624   0.1616799
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.4765625    0.4332804   0.5198446
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.5017921    0.4602870   0.5432972
24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.2202123    0.2041050   0.2363197
24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.2358626    0.2201194   0.2516057
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.2815199    0.2556112   0.3074285
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.2960373    0.2710916   0.3209830
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.0850340    0.0531224   0.1169456
24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.1578947    0.1155238   0.2002657
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.1456334    0.1339081   0.1573587
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.1657706    0.1542191   0.1773221
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0854377    0.0728600   0.0980154
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.1052189    0.0913610   0.1190767


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.0412371   0.0214268   0.0610475
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                0.2000000   0.1492882   0.2507118
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0726837   0.0523147   0.0930527
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0312500   0.0174085   0.0450915
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0187946   0.0120166   0.0255726
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0445402   0.0292033   0.0598772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0318559   0.0289336   0.0347781
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0310241   0.0268535   0.0351947
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1090180   0.1044666   0.1135695
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0825363   0.0708486   0.0942240
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2171582   0.1752594   0.2590570
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1966527   0.1461562   0.2471492
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0093642   0.0051724   0.0135561
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0335089   0.0257898   0.0412279
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0903010   0.0577597   0.1228423
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1152263   0.0749980   0.1554547
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0404891   0.0363397   0.0446385
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1290323   0.1078261   0.1502384
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0453353   0.0404119   0.0502586
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0846246   0.0657805   0.1034686
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0606746   0.0568229   0.0645262
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0560960   0.0493335   0.0628586
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1320755   0.0863920   0.1777589
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1321586   0.0880054   0.1763117
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1134454   0.0730697   0.1538211
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
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0161090   0.0034156   0.0288025
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
Birth       ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1000108-IRC              INDIA                          Male                 Female            1.0345515   0.3927774    2.724945
Birth       ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1000109-EE               PAKISTAN                       Male                 Female            1.1238025   0.6764252    1.867068
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.0232384   0.6669657    1.569821
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            0.9868875   0.4064570    2.396187
Birth       ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA                         Male                 Female            0.7487547   0.3625581    1.546328
Birth       ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.9507247   0.4773382    1.893579
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            0.9831450   0.8183278    1.181158
Birth       ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA                          Male                 Female            1.1050242   0.8436171    1.447432
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.3785474   0.7657469    2.481751
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.0279919   0.9466605    1.116311
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.3580641   1.0048366    1.835461
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            2.0327869   1.1055630    3.737664
6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          Male                 Female            1.1573661   0.5669775    2.362521
6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.2523560   0.8475302    1.850548
6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.4941756   0.8780078    2.542757
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.7428871   1.4054296    2.161372
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.8101322   1.4176020    2.311353
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.1111111   0.5551930    2.223673
24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.7428571   0.8796505    3.453134
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.4303029   0.6920929    2.955913
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3086420   0.8850152    1.935044
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.5081081   1.1231386    2.025031
24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          Male                 Female            1.5927934   0.8601118    2.949606
24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.4051383   0.9165738    2.154124
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            0.9659091   0.6765245    1.379078
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.3774486   0.8109155    2.339781
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            0.9158724   0.4869642    1.722554
24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.2137320   0.8802858    1.673485
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.1438127   0.6842522    1.912025
24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            1.0766046   0.7135702    1.624335
24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            2.7808200   0.7611424   10.159676
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.7727411   1.3242902    2.373053
24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0529408   0.9312247    1.190566
24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.0710687   0.9700916    1.182557
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.0515681   0.9282084    1.191322
24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.8568421   1.1706090    2.945358
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.1382733   1.0305977    1.257199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.2315271   1.0151150    1.494076


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.0007747   -0.0212710   0.0228204
Birth       ki1000109-EE               PAKISTAN                       Female               NA                 0.0114754   -0.0384352   0.0613860
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0008888   -0.0158081   0.0175858
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0002185   -0.0149110   0.0144739
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.0028271   -0.0099283   0.0042742
Birth       ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0011915   -0.0174592   0.0150762
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0002780   -0.0032797   0.0027236
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0016031   -0.0027197   0.0059260
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0025209   -0.0020312   0.0070730
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0015291   -0.0030346   0.0060928
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0127019    0.0005930   0.0248108
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0385523    0.0062848   0.0708199
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0056793   -0.0218167   0.0331753
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0248505   -0.0179844   0.0676854
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0401310   -0.0119906   0.0922526
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0104225   -0.0075697   0.0284147
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0028018   -0.0304044   0.0360080
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0080341   -0.0145656   0.0306337
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0100684   -0.0027617   0.0228985
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0023852   -0.0018425   0.0066128
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0087809    0.0008737   0.0166880
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0445494    0.0124061   0.0766926
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0208867   -0.0240016   0.0657750
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0117332    0.0082841   0.0151823
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0112104    0.0069656   0.0154551
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0303480    0.0082585   0.0524376
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0100447    0.0049557   0.0151338
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0150454    0.0065926   0.0234982
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0465293    0.0276959   0.0653627
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0184876    0.0147219   0.0222534
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0162124    0.0096722   0.0227526
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0070755   -0.0394387   0.0535896
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0337979   -0.0079087   0.0755046
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0202250   -0.0204372   0.0608873
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0440839   -0.0194666   0.1076345
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0681100    0.0200630   0.1161570
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0245688   -0.0068646   0.0560022
24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0621542   -0.0142091   0.1385174
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0041958   -0.0473359   0.0389443
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0146966   -0.0093511   0.0387442
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0030380   -0.0248561   0.0187801
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0081667   -0.0052877   0.0216211
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0077294   -0.0216656   0.0371243
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0117610   -0.0533975   0.0769194
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0074594    0.0016507   0.0132680
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0305663    0.0153419   0.0457906
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0131571   -0.0181244   0.0444386
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0081931   -0.0036000   0.0199862
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0076417   -0.0112922   0.0265756
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0358641    0.0095861   0.0621421
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0104139    0.0024967   0.0183310
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0098906    0.0007243   0.0190568


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.0187861   -0.6918250   0.4309218
Birth       ki1000109-EE               PAKISTAN                       Female               NA                 0.0573770   -0.2280362   0.2764562
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0122288   -0.2441854   0.2157986
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0069930   -0.6061694   0.3686625
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.1504194   -0.5925047   0.1689414
Birth       ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0267506   -0.4652363   0.2805142
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0087271   -0.1074907   0.0812289
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0516736   -0.0982336   0.1811187
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1671471   -0.1912679   0.4177263
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0140264   -0.0287322   0.0550077
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1538946   -0.0089907   0.2904848
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3387097    0.0060127   0.5600498
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0797060   -0.3983647   0.3943347
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.1144349   -0.1057249   0.2907589
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.2040703   -0.1060098   0.4272166
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.1087849   -0.0919101   0.2725918
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0197162   -0.2441156   0.2275989
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1232653   -0.2991140   0.4083170
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.3129954   -0.1934420   0.6045260
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2547095   -0.3396652   0.5853756
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.2620461   -0.0058231   0.4585768
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.4933430    0.0593408   0.7271049
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.1812668   -0.3110833   0.4887251
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.7610166    0.6415262   0.8406772
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2768734    0.1682878   0.3712825
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2351974    0.0475846   0.3858530
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.2215656    0.1035989   0.3240078
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.3086587    0.1207890   0.4563844
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.5498323    0.3147039   0.7042870
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.3047014    0.2428077   0.3615359
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.2890110    0.1671581   0.3930356
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0535714   -0.3725722   0.3474099
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.2557377   -0.1235163   0.5069708
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1782799   -0.2641609   0.4658719
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1347709   -0.0827086   0.3085661
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.2021505    0.0466718   0.3322722
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.2450890   -0.1333731   0.4971730
24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.1759279   -0.0708224   0.3658194
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0189474   -0.2336128   0.1583634
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1633581   -0.1477001   0.3901111
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0433761   -0.4060470   0.2257488
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.1006257   -0.0806339   0.2514817
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0711685   -0.2424188   0.3056062
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0418552   -0.2204509   0.2477850
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.4630540   -0.3655942   0.7888751
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2816220    0.1322530   0.4052794
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0268667   -0.0391724   0.0887089
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0358710   -0.0171551   0.0861327
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0264271   -0.0412992   0.0897484
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.2966472    0.0528494   0.4776912
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0667353    0.0145032   0.1161991
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1037528    0.0027547   0.1945220
