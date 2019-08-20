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
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enstunt    stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      210     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1       47     257
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0      170     191
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1       21     191
Birth       ki0047075b-MAL-ED          INDIA                          0                0      173     206
Birth       ki0047075b-MAL-ED          INDIA                          0                1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          1                0        0     206
Birth       ki0047075b-MAL-ED          INDIA                          1                1       33     206
Birth       ki0047075b-MAL-ED          NEPAL                          0                0      155     173
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          1                1       18     173
Birth       ki0047075b-MAL-ED          PERU                           0                0      253     287
Birth       ki0047075b-MAL-ED          PERU                           0                1        0     287
Birth       ki0047075b-MAL-ED          PERU                           1                0        0     287
Birth       ki0047075b-MAL-ED          PERU                           1                1       34     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      234     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       28     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      105     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       18     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       74      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1       16      90
Birth       ki1000108-IRC              INDIA                          0                0      343     388
Birth       ki1000108-IRC              INDIA                          0                1        0     388
Birth       ki1000108-IRC              INDIA                          1                0        0     388
Birth       ki1000108-IRC              INDIA                          1                1       45     388
Birth       ki1000109-EE               PAKISTAN                       0                0        1       2
Birth       ki1000109-EE               PAKISTAN                       0                1        0       2
Birth       ki1000109-EE               PAKISTAN                       1                0        0       2
Birth       ki1000109-EE               PAKISTAN                       1                1        1       2
Birth       ki1000109-ResPak           PAKISTAN                       0                0        5       7
Birth       ki1000109-ResPak           PAKISTAN                       0                1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       1                0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       1                1        2       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                0      141     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1       46     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0       27      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0       22      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        5      27
Birth       ki1101329-Keneba           GAMBIA                         0                0     1459    1541
Birth       ki1101329-Keneba           GAMBIA                         0                1        0    1541
Birth       ki1101329-Keneba           GAMBIA                         1                0        0    1541
Birth       ki1101329-Keneba           GAMBIA                         1                1       82    1541
Birth       ki1114097-CMIN             BANGLADESH                     0                0        7      13
Birth       ki1114097-CMIN             BANGLADESH                     0                1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     1                0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     1                1        6      13
Birth       ki1114097-CMIN             BRAZIL                         0                0      110     115
Birth       ki1114097-CMIN             BRAZIL                         0                1        0     115
Birth       ki1114097-CMIN             BRAZIL                         1                0        0     115
Birth       ki1114097-CMIN             BRAZIL                         1                1        5     115
Birth       ki1114097-CMIN             PERU                           0                0       10      10
Birth       ki1114097-CMIN             PERU                           0                1        0      10
Birth       ki1114097-CMIN             PERU                           1                0        0      10
Birth       ki1114097-CMIN             PERU                           1                1        0      10
Birth       ki1114097-CONTENT          PERU                           0                0        2       2
Birth       ki1114097-CONTENT          PERU                           0                1        0       2
Birth       ki1114097-CONTENT          PERU                           1                0        0       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0                0    13851   13884
Birth       ki1119695-PROBIT           BELARUS                        0                1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        1                0        0   13884
Birth       ki1119695-PROBIT           BELARUS                        1                1       33   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0    12398   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1     1432   13830
Birth       ki1135781-COHORTS          GUATEMALA                      0                0      802     852
Birth       ki1135781-COHORTS          GUATEMALA                      0                1        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      1                0        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      1                1       50     852
Birth       ki1135781-COHORTS          INDIA                          0                0     5848    6640
Birth       ki1135781-COHORTS          INDIA                          0                1        0    6640
Birth       ki1135781-COHORTS          INDIA                          1                0        0    6640
Birth       ki1135781-COHORTS          INDIA                          1                1      792    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    0                0     2863    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    0                1        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1      187    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0    13275   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0        0   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     6338   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0      575     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      247     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      180     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1       23     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      184     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       19     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        2     209
6 months    ki0047075b-MAL-ED          INDIA                          0                0      169     236
6 months    ki0047075b-MAL-ED          INDIA                          0                1       28     236
6 months    ki0047075b-MAL-ED          INDIA                          1                0       21     236
6 months    ki0047075b-MAL-ED          INDIA                          1                1       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      207     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                1       10     236
6 months    ki0047075b-MAL-ED          PERU                           0                0      200     273
6 months    ki0047075b-MAL-ED          PERU                           0                1       39     273
6 months    ki0047075b-MAL-ED          PERU                           1                0       13     273
6 months    ki0047075b-MAL-ED          PERU                           1                1       21     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      188     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       41     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       16     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        9     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      175     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       33     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       14     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       25     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      227     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1       69     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       31     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       42     369
6 months    ki1000108-IRC              INDIA                          0                0      287     407
6 months    ki1000108-IRC              INDIA                          0                1       74     407
6 months    ki1000108-IRC              INDIA                          1                0       20     407
6 months    ki1000108-IRC              INDIA                          1                1       26     407
6 months    ki1000109-EE               PAKISTAN                       0                0      162     372
6 months    ki1000109-EE               PAKISTAN                       0                1       84     372
6 months    ki1000109-EE               PAKISTAN                       1                0       17     372
6 months    ki1000109-EE               PAKISTAN                       1                1      109     372
6 months    ki1000109-ResPak           PAKISTAN                       0                0      118     235
6 months    ki1000109-ResPak           PAKISTAN                       0                1       55     235
6 months    ki1000109-ResPak           PAKISTAN                       1                0       34     235
6 months    ki1000109-ResPak           PAKISTAN                       1                1       28     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0      819    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1      153    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      137    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1      227    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0      201     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1       31     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0       16     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1      132     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0      365     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1       87     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       28     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       57     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      460     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1       63     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0       29     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       31     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      517     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1       96     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0       48     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       54     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1754    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1      136    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       78    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       61    2029
6 months    ki1101329-Keneba           GAMBIA                         0                0     1685    2089
6 months    ki1101329-Keneba           GAMBIA                         0                1      207    2089
6 months    ki1101329-Keneba           GAMBIA                         1                0      109    2089
6 months    ki1101329-Keneba           GAMBIA                         1                1       88    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                0      202     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                1       26     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0        7     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1       64     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      431     563
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1       73     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       13     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1       46     563
6 months    ki1114097-CMIN             BANGLADESH                     0                0      123     243
6 months    ki1114097-CMIN             BANGLADESH                     0                1       28     243
6 months    ki1114097-CMIN             BANGLADESH                     1                0       27     243
6 months    ki1114097-CMIN             BANGLADESH                     1                1       65     243
6 months    ki1114097-CMIN             BRAZIL                         0                0       95     108
6 months    ki1114097-CMIN             BRAZIL                         0                1        9     108
6 months    ki1114097-CMIN             BRAZIL                         1                0        3     108
6 months    ki1114097-CMIN             BRAZIL                         1                1        1     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                0      724     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                1       24     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                0       48     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                1       52     848
6 months    ki1114097-CMIN             PERU                           0                0      578     637
6 months    ki1114097-CMIN             PERU                           0                1       27     637
6 months    ki1114097-CMIN             PERU                           1                0       16     637
6 months    ki1114097-CMIN             PERU                           1                1       16     637
6 months    ki1114097-CONTENT          PERU                           0                0      185     215
6 months    ki1114097-CONTENT          PERU                           0                1       12     215
6 months    ki1114097-CONTENT          PERU                           1                0       11     215
6 months    ki1114097-CONTENT          PERU                           1                1        7     215
6 months    ki1119695-PROBIT           BELARUS                        0                0    14691   15761
6 months    ki1119695-PROBIT           BELARUS                        0                1      941   15761
6 months    ki1119695-PROBIT           BELARUS                        1                0       82   15761
6 months    ki1119695-PROBIT           BELARUS                        1                1       47   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     6412    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1     1034    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0      504    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      345    8295
6 months    ki1135781-COHORTS          GUATEMALA                      0                0      551     961
6 months    ki1135781-COHORTS          GUATEMALA                      0                1      258     961
6 months    ki1135781-COHORTS          GUATEMALA                      1                0       16     961
6 months    ki1135781-COHORTS          GUATEMALA                      1                1      136     961
6 months    ki1135781-COHORTS          INDIA                          0                0     5269    6860
6 months    ki1135781-COHORTS          INDIA                          0                1      779    6860
6 months    ki1135781-COHORTS          INDIA                          1                0      319    6860
6 months    ki1135781-COHORTS          INDIA                          1                1      493    6860
6 months    ki1135781-COHORTS          PHILIPPINES                    0                0     2082    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    0                1      470    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0       54    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1      102    2708
6 months    ki1148112-LCNI-5           MALAWI                         0                0      530     839
6 months    ki1148112-LCNI-5           MALAWI                         0                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         1                0        0     839
6 months    ki1148112-LCNI-5           MALAWI                         1                1      309     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    10318   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1     1433   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     2267   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     2793   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     3065    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1      410    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0      546    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      810    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      106     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       73     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        8     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       25     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      148     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        5     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                0      119     227
24 months   ki0047075b-MAL-ED          INDIA                          0                1       71     227
24 months   ki0047075b-MAL-ED          INDIA                          1                0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1       24     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      168     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                1       34     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       11     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                1       15     228
24 months   ki0047075b-MAL-ED          PERU                           0                0      117     201
24 months   ki0047075b-MAL-ED          PERU                           0                1       57     201
24 months   ki0047075b-MAL-ED          PERU                           1                0       10     201
24 months   ki0047075b-MAL-ED          PERU                           1                1       17     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      141     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       75     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       13     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        9     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       59     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1      122     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       31     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0       90     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1      207     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       16     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       59     372
24 months   ki1000108-IRC              INDIA                          0                0      219     409
24 months   ki1000108-IRC              INDIA                          0                1      143     409
24 months   ki1000108-IRC              INDIA                          1                0       20     409
24 months   ki1000108-IRC              INDIA                          1                1       27     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      178     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1      177     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       13     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       61     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      361     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1      157     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0       26     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       33     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       98     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0       36     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       34     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0                0     1084    1725
24 months   ki1101329-Keneba           GAMBIA                         0                1      465    1725
24 months   ki1101329-Keneba           GAMBIA                         1                0       64    1725
24 months   ki1101329-Keneba           GAMBIA                         1                1      112    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      260     499
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1      188     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       16     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       35     499
24 months   ki1114097-CMIN             BANGLADESH                     0                0       61     242
24 months   ki1114097-CMIN             BANGLADESH                     0                1       92     242
24 months   ki1114097-CMIN             BANGLADESH                     1                0       16     242
24 months   ki1114097-CMIN             BANGLADESH                     1                1       73     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                0      350     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                1      100     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0       14     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1       87     551
24 months   ki1114097-CMIN             PERU                           0                0      280     429
24 months   ki1114097-CMIN             PERU                           0                1       63     429
24 months   ki1114097-CMIN             PERU                           1                0       12     429
24 months   ki1114097-CMIN             PERU                           1                1       74     429
24 months   ki1114097-CONTENT          PERU                           0                0      133     164
24 months   ki1114097-CONTENT          PERU                           0                1       14     164
24 months   ki1114097-CONTENT          PERU                           1                0       10     164
24 months   ki1114097-CONTENT          PERU                           1                1        7     164
24 months   ki1119695-PROBIT           BELARUS                        0                0     3684    4035
24 months   ki1119695-PROBIT           BELARUS                        0                1      340    4035
24 months   ki1119695-PROBIT           BELARUS                        1                0        7    4035
24 months   ki1119695-PROBIT           BELARUS                        1                1        4    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0      141     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1      215     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0       18     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       83     457
24 months   ki1135781-COHORTS          GUATEMALA                      0                0      214    1073
24 months   ki1135781-COHORTS          GUATEMALA                      0                1      528    1073
24 months   ki1135781-COHORTS          GUATEMALA                      1                0       10    1073
24 months   ki1135781-COHORTS          GUATEMALA                      1                1      321    1073
24 months   ki1135781-COHORTS          INDIA                          0                0     2712    5340
24 months   ki1135781-COHORTS          INDIA                          0                1     1987    5340
24 months   ki1135781-COHORTS          INDIA                          1                0      160    5340
24 months   ki1135781-COHORTS          INDIA                          1                1      481    5340
24 months   ki1135781-COHORTS          PHILIPPINES                    0                0      923    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    0                1     1387    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0       14    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1      121    2445
24 months   ki1148112-LCNI-5           MALAWI                         0                0      275     579
24 months   ki1148112-LCNI-5           MALAWI                         0                1      102     579
24 months   ki1148112-LCNI-5           MALAWI                         1                0       48     579
24 months   ki1148112-LCNI-5           MALAWI                         1                1      154     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     3632    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1     2329    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      764    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     1907    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     2408    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      988    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0      480    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      876    4752


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/df5d016c-4e57-4780-b744-90361303edfb/5e621de8-5c23-4ca1-8b24-0f64d37fe2dc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/df5d016c-4e57-4780-b744-90361303edfb/5e621de8-5c23-4ca1-8b24-0f64d37fe2dc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/df5d016c-4e57-4780-b744-90361303edfb/5e621de8-5c23-4ca1-8b24-0f64d37fe2dc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/df5d016c-4e57-4780-b744-90361303edfb/5e621de8-5c23-4ca1-8b24-0f64d37fe2dc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1085085   0.0654172   0.1515999
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.5765046   0.4148630   0.7381462
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1426625   0.0935035   0.1918215
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.4589176   0.2957873   0.6220478
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.1646253   0.1175919   0.2116587
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.6330258   0.4662016   0.7998501
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1790393   0.1292860   0.2287927
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3600000   0.1714720   0.5485280
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1581734   0.1084500   0.2078967
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6403234   0.4834811   0.7971656
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2328832   0.1845489   0.2812176
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5694351   0.4489267   0.6899435
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2070799   0.1652180   0.2489419
6 months    ki1000108-IRC              INDIA                          1                    NA                0.5365801   0.3972068   0.6759533
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.3435970   0.2839683   0.4032257
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.8652206   0.8047479   0.9256933
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.3147908   0.2449783   0.3846034
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.4542420   0.3251312   0.5833529
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1560294   0.1364616   0.1755972
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6275947   0.5932493   0.6619401
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1341916   0.0900936   0.1782896
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.8902693   0.8397761   0.9407624
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1933564   0.1569742   0.2297385
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6464767   0.5462294   0.7467241
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1195457   0.0917255   0.1473658
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5138904   0.3809070   0.6468738
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1567882   0.1279845   0.1855919
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5316195   0.4317453   0.6314936
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0722902   0.0606331   0.0839472
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4345044   0.3508082   0.5182006
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1089410   0.0948847   0.1229973
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.4563836   0.3839688   0.5287984
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1140351   0.0727079   0.1553623
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.9014084   0.8319497   0.9708672
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1432732   0.1127123   0.1738342
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7897510   0.6795328   0.8999693
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1838371   0.1219392   0.2457351
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.7031445   0.6100600   0.7962290
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0320545   0.0194147   0.0446942
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.5137815   0.4129160   0.6146470
6 months    ki1114097-CMIN             PERU                           0                    NA                0.0447760   0.0282747   0.0612772
6 months    ki1114097-CMIN             PERU                           1                    NA                0.4938512   0.3065110   0.6811913
6 months    ki1114097-CONTENT          PERU                           0                    NA                0.0609137   0.0274374   0.0943900
6 months    ki1114097-CONTENT          PERU                           1                    NA                0.3888889   0.1631549   0.6146229
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0604376   0.0464198   0.0744554
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.2570325   0.2162706   0.2977945
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1391187   0.1312647   0.1469727
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4015713   0.3685511   0.4345914
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3182768   0.2860806   0.3504730
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.9046349   0.8593305   0.9499393
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1287740   0.1203320   0.1372160
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.6082704   0.5750126   0.6415282
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1840970   0.1690615   0.1991325
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6571113   0.5816964   0.7325261
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1225931   0.1157493   0.1294369
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5487847   0.5338889   0.5636806
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1180825   0.1049929   0.1311721
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5971240   0.5663438   0.6279042
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4078212   0.3356591   0.4799834
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7575758   0.6110146   0.9041369
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.3763720   0.3072749   0.4454691
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.6435332   0.4900493   0.7970171
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1669675   0.1151852   0.2187497
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.5621697   0.3670186   0.7573208
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3297356   0.2595232   0.3999481
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6325026   0.4351237   0.8298815
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3472222   0.2835981   0.4108464
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.4090909   0.2032075   0.6149743
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6970130   0.6442703   0.7497556
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7761510   0.6800671   0.8722349
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3963501   0.3457301   0.4469701
24 months   ki1000108-IRC              INDIA                          1                    NA                0.5588276   0.4131210   0.7045341
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4984796   0.4463380   0.5506212
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.8359183   0.7462175   0.9256191
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3028366   0.2631817   0.3424915
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5051939   0.3710624   0.6393255
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2204897   0.1819331   0.2590464
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5231582   0.4052373   0.6410790
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2997966   0.2769611   0.3226322
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6413697   0.5694449   0.7132945
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4204399   0.3745724   0.4663074
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6725769   0.5283554   0.8167983
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6052540   0.5269831   0.6835249
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.8252415   0.7437291   0.9067539
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.2233985   0.1848661   0.2619308
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.8624328   0.7919444   0.9329212
24 months   ki1114097-CMIN             PERU                           0                    NA                0.1838921   0.1427525   0.2250318
24 months   ki1114097-CMIN             PERU                           1                    NA                0.8572746   0.7824429   0.9321063
24 months   ki1114097-CONTENT          PERU                           0                    NA                0.0952381   0.0476399   0.1428362
24 months   ki1114097-CONTENT          PERU                           1                    NA                0.4117647   0.1770978   0.6464316
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6040516   0.5530919   0.6550113
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.8254631   0.7493180   0.9016083
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7126841   0.6799670   0.7454013
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.9688853   0.9496789   0.9880918
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.4235222   0.4094327   0.4376118
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.7459197   0.7126607   0.7791787
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6001696   0.5801750   0.6201642
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.9087621   0.8592882   0.9582359
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.2689451   0.2238629   0.3140274
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.7658813   0.7059368   0.8258258
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3913538   0.3758915   0.4068160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7174742   0.6978724   0.7370760
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2908396   0.2725776   0.3091016
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6469547   0.6158691   0.6780404


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
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
6 months    ki1114097-CONTENT          PERU                           NA                   NA                0.0883721   0.0503437   0.1264005
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1662447   0.1582324   0.1742571
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1854227   0.1762253   0.1946201
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513830   0.2432594   0.2595066
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2525357   0.2384780   0.2665934
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
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
24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1280488   0.0767522   0.1793453
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6520788   0.6083612   0.6957964
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7912395   0.7669103   0.8155688
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4621723   0.4487989   0.4755457
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4421416   0.4016536   0.4826297
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907322   0.4775988   0.5038655
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3922559   0.3752678   0.4092440


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  5.312988    3.2667426    8.640976
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  3.216805    1.9599999    5.279508
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                  3.845252    2.6134694    5.657601
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  2.010732    1.1114293    3.637696
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  4.048238    2.7145276    6.037231
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.445153    1.8161067    3.292082
6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                  2.591174    1.8657315    3.598686
6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                  2.518126    2.0881008    3.036712
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  1.442996    1.0056540    2.070532
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  4.022285    3.5761399    4.524089
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.634314    4.7531743    9.259942
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.343447    2.6235305    4.260914
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  4.298695    3.0337683    6.091031
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  3.390686    2.6065414    4.410729
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  6.010559    4.6755388    7.726772
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                  4.189273    3.4153474    5.138571
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  7.904659    5.4572418   11.449672
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  5.512203    4.2731168    7.110590
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                  3.824823    2.6699998    5.479129
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 16.028397   10.3148299   24.906810
6 months    ki1114097-CMIN             PERU                           0                    0                  1.000000    1.0000000    1.000000
6 months    ki1114097-CMIN             PERU                           1                    0                 11.029378    6.4958881   18.726797
6 months    ki1114097-CONTENT          PERU                           0                    0                  1.000000    1.0000000    1.000000
6 months    ki1114097-CONTENT          PERU                           1                    0                  6.384259    2.8705001   14.199186
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  4.252861    3.3324837    5.427432
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.886537    2.6126940    3.189082
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  2.842290    2.5388642    3.181978
6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                  4.723551    4.3379060    5.143481
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  3.569375    3.1007220    4.108863
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.476472    4.2248290    4.743105
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.056837    4.4599184    5.733647
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  1.857617    1.4292039    2.414450
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  1.709833    1.2670245    2.307397
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  3.366942    2.1111477    5.369732
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  1.918211    1.3137061    2.800881
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  1.178182    0.6896176    2.012873
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.113539    0.9626484    1.288080
24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                  1.409934    1.0546060    1.884983
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  1.676936    1.4431312    1.948619
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  1.668206    1.2401401    2.244031
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  2.372710    1.7844842    3.154834
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                  2.139349    1.8684067    2.449582
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  1.599698    1.2581684    2.033936
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  1.363463    1.1586488    1.604482
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  3.860514    3.1903837    4.671402
24 months   ki1114097-CMIN             PERU                           0                    0                  1.000000    1.0000000    1.000000
24 months   ki1114097-CMIN             PERU                           1                    0                  4.661834    3.6652466    5.929395
24 months   ki1114097-CONTENT          PERU                           0                    0                  1.000000    1.0000000    1.000000
24 months   ki1114097-CONTENT          PERU                           1                    0                  4.323529    2.0260059    9.226482
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.366544    1.2057762    1.548747
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.359488    1.2931919    1.429182
24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  1.761229    1.6667097    1.861109
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.514175    1.4205157    1.614011
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  2.847723    2.3652331    3.428638
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  1.833314    1.7512321    1.919243
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  2.224438    2.0579743    2.404367


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0782134    0.0436462   0.1127807
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0522527    0.0209759   0.0835295
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.0551549    0.0281615   0.0821483
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0178111   -0.0024971   0.0381193
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0766445    0.0429963   0.1102927
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0679298    0.0394559   0.0964037
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0386203    0.0183647   0.0588760
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.1752202    0.1369973   0.2134431
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0384007   -0.0003439   0.0771453
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1284017    0.1118628   0.1449406
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2947557    0.2493405   0.3401710
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0748001    0.0527187   0.0968815
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0416893    0.0251024   0.0582762
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0530020    0.0356307   0.0703733
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0248020    0.0178607   0.0317432
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0322749    0.0243766   0.0401732
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1869683    0.1443605   0.2295760
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0680945    0.0482973   0.0878917
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1988789    0.1461726   0.2515853
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0575682    0.0418318   0.0733045
6 months    ki1114097-CMIN             PERU                           0                    NA                0.0227279    0.0110611   0.0343948
6 months    ki1114097-CONTENT          PERU                           0                    NA                0.0274584    0.0048058   0.0501110
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0022488    0.0010275   0.0034701
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0271260    0.0232519   0.0310002
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0917128    0.0754549   0.1079707
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0566488    0.0511770   0.0621206
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0271290    0.0211101   0.0331480
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1287899    0.1231119   0.1344679
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1344532    0.1230614   0.1458450
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0544429    0.0237941   0.0850918
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0421302    0.0122733   0.0719871
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0479448    0.0193750   0.0765146
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0384236    0.0082035   0.0686437
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0057190   -0.0143305   0.0257684
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0180408   -0.0043736   0.0404552
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0192978    0.0009681   0.0376276
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0562989    0.0352148   0.0773830
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0264528    0.0113700   0.0415356
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0363196    0.0175610   0.0550782
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0346961    0.0256757   0.0437165
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0264539    0.0107653   0.0421424
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0765642    0.0332818   0.1198465
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1159845    0.0910423   0.1409267
24 months   ki1114097-CMIN             PERU                           0                    NA                0.1354552    0.1046772   0.1662331
24 months   ki1114097-CONTENT          PERU                           0                    NA                0.0328107    0.0039066   0.0617148
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0480272    0.0262774   0.0697769
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0785554    0.0647916   0.0923192
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0386500    0.0335421   0.0437580
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0165993    0.0124934   0.0207053
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1731965    0.1406144   0.2057786
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0993784    0.0912990   0.1074578
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1014163    0.0906211   0.1122115


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4188765    0.2361050   0.5579176
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2680792    0.1009899   0.4041134
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.2509549    0.1259363   0.3580919
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0904803   -0.0172293   0.1867851
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3263997    0.1812477   0.4458185
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2258206    0.1277588   0.3128578
6 months    ki1000108-IRC              INDIA                          0                    NA                0.1571847    0.0729707   0.2337485
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.3377302    0.2562293   0.4103003
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1087247   -0.0081456   0.2120467
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4514334    0.3935973   0.5037534
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.6871606    0.5846012   0.7643988
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2789419    0.1965247   0.3529051
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2585624    0.1575859   0.3474354
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2526429    0.1705962   0.3265733
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2554478    0.1882654   0.3170700
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.2285499    0.1747467   0.2788454
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.6211501    0.4925719   0.7171476
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.3221612    0.2323573   0.4014592
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.5196514    0.3733419   0.6318011
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.6423398    0.5067369   0.7406641
6 months    ki1114097-CMIN             PERU                           0                    NA                0.3366908    0.1734500   0.4676920
6 months    ki1114097-CONTENT          PERU                           0                    NA                0.3107133    0.0459028   0.5020255
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0358742    0.0138428   0.0574135
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1631693    0.1404734   0.1852659
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2236953    0.1826441   0.2626848
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.3055115    0.2782306   0.3317613
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1284359    0.1003287   0.1556651
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5123254    0.4927704   0.5311265
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5324126    0.4905097   0.5708692
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1177745    0.0476933   0.1826983
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1006691    0.0257134   0.1698581
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2230902    0.0858752   0.3397085
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.1043668    0.0183268   0.1828656
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0162037   -0.0422806   0.0714063
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0252300   -0.0068067   0.0562472
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0464283    0.0011477   0.0896562
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1014800    0.0614020   0.1398466
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0803331    0.0334509   0.1249414
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1414263    0.0666727   0.2101926
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1037275    0.0764298   0.1302185
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0591950    0.0231471   0.0939126
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1122941    0.0441087   0.1756157
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3417511    0.2678754   0.4081722
24 months   ki1114097-CMIN             PERU                           0                    NA                0.4241626    0.3292710   0.5056294
24 months   ki1114097-CONTENT          PERU                           0                    NA                0.2562358    0.0179802   0.4366864
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0736524    0.0387512   0.1072864
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0992814    0.0801671   0.1179985
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0836269    0.0723560   0.0947609
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0269134    0.0201198   0.0336599
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.3917218    0.3137855   0.4608065
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2025105    0.1849550   0.2196878
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2585462    0.2304139   0.2856501
