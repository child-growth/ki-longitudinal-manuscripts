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

agecat      studyid                    country                        enstunt    sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0      210     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       38     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1        9     257
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0      170     191
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0       13     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        8     191
Birth       ki0047075b-MAL-ED          INDIA                          0                 0      173     206
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          1                 0       26     206
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        7     206
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0      155     173
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       12     173
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        6     173
Birth       ki0047075b-MAL-ED          PERU                           0                 0      253     287
Birth       ki0047075b-MAL-ED          PERU                           0                 1        0     287
Birth       ki0047075b-MAL-ED          PERU                           1                 0       26     287
Birth       ki0047075b-MAL-ED          PERU                           1                 1        8     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      234     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       26     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        2     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      105     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       12     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        6     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       74      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       13      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        3      90
Birth       ki1000108-IRC              INDIA                          0                 0      343     388
Birth       ki1000108-IRC              INDIA                          0                 1        0     388
Birth       ki1000108-IRC              INDIA                          1                 0       29     388
Birth       ki1000108-IRC              INDIA                          1                 1       16     388
Birth       ki1000109-EE               PAKISTAN                       0                 0        1       2
Birth       ki1000109-EE               PAKISTAN                       0                 1        0       2
Birth       ki1000109-EE               PAKISTAN                       1                 0        1       2
Birth       ki1000109-EE               PAKISTAN                       1                 1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       0                 0        5       7
Birth       ki1000109-ResPak           PAKISTAN                       0                 1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       1                 0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       1                 1        0       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 0      141     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 0       35     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 1       11     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 0       27      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0       22      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        1      27
Birth       ki1101329-Keneba           GAMBIA                         0                 0     1459    1541
Birth       ki1101329-Keneba           GAMBIA                         0                 1        0    1541
Birth       ki1101329-Keneba           GAMBIA                         1                 0       53    1541
Birth       ki1101329-Keneba           GAMBIA                         1                 1       29    1541
Birth       ki1114097-CMIN             BANGLADESH                     0                 0        7      13
Birth       ki1114097-CMIN             BANGLADESH                     0                 1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     1                 0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     1                 1        5      13
Birth       ki1114097-CMIN             BRAZIL                         0                 0      110     115
Birth       ki1114097-CMIN             BRAZIL                         0                 1        0     115
Birth       ki1114097-CMIN             BRAZIL                         1                 0        2     115
Birth       ki1114097-CMIN             BRAZIL                         1                 1        3     115
Birth       ki1114097-CMIN             PERU                           0                 0       10      10
Birth       ki1114097-CMIN             PERU                           0                 1        0      10
Birth       ki1114097-CMIN             PERU                           1                 0        0      10
Birth       ki1114097-CMIN             PERU                           1                 1        0      10
Birth       ki1114097-CONTENT          PERU                           0                 0        2       2
Birth       ki1114097-CONTENT          PERU                           0                 1        0       2
Birth       ki1114097-CONTENT          PERU                           1                 0        0       2
Birth       ki1114097-CONTENT          PERU                           1                 1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0                 0    13851   13884
Birth       ki1119695-PROBIT           BELARUS                        0                 1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        1                 0       28   13884
Birth       ki1119695-PROBIT           BELARUS                        1                 1        5   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                 0    12398   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                 1        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      991   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      441   13830
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0    13275   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1        0   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     4297   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2041   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0      575     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      183     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1       64     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      202     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0       31     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        8     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      188     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      195     236
6 months    ki0047075b-MAL-ED          INDIA                          0                 1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          1                 0       32     236
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        7     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      209     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       26     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        1     236
6 months    ki0047075b-MAL-ED          PERU                           0                 0      236     273
6 months    ki0047075b-MAL-ED          PERU                           0                 1        3     273
6 months    ki0047075b-MAL-ED          PERU                           1                 0       25     273
6 months    ki0047075b-MAL-ED          PERU                           1                 1        9     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      226     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       22     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        3     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      203     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        5     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       30     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        9     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      272     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       24     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       55     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       18     369
6 months    ki1000108-IRC              INDIA                          0                 0      343     407
6 months    ki1000108-IRC              INDIA                          0                 1       18     407
6 months    ki1000108-IRC              INDIA                          1                 0       35     407
6 months    ki1000108-IRC              INDIA                          1                 1       11     407
6 months    ki1000109-EE               PAKISTAN                       0                 0      224     372
6 months    ki1000109-EE               PAKISTAN                       0                 1       22     372
6 months    ki1000109-EE               PAKISTAN                       1                 0       54     372
6 months    ki1000109-EE               PAKISTAN                       1                 1       72     372
6 months    ki1000109-ResPak           PAKISTAN                       0                 0      146     235
6 months    ki1000109-ResPak           PAKISTAN                       0                 1       27     235
6 months    ki1000109-ResPak           PAKISTAN                       1                 0       45     235
6 months    ki1000109-ResPak           PAKISTAN                       1                 1       17     235
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      516     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        7     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0       53     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        7     583
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
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      499     563
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1        5     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       44     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       15     563
6 months    ki1114097-CMIN             BANGLADESH                     0                 0      147     243
6 months    ki1114097-CMIN             BANGLADESH                     0                 1        4     243
6 months    ki1114097-CMIN             BANGLADESH                     1                 0       68     243
6 months    ki1114097-CMIN             BANGLADESH                     1                 1       24     243
6 months    ki1114097-CMIN             BRAZIL                         0                 0      102     108
6 months    ki1114097-CMIN             BRAZIL                         0                 1        2     108
6 months    ki1114097-CMIN             BRAZIL                         1                 0        3     108
6 months    ki1114097-CMIN             BRAZIL                         1                 1        1     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                 0      744     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                 1        4     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                 0       86     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                 1       14     848
6 months    ki1114097-CMIN             PERU                           0                 0      600     637
6 months    ki1114097-CMIN             PERU                           0                 1        5     637
6 months    ki1114097-CMIN             PERU                           1                 0       29     637
6 months    ki1114097-CMIN             PERU                           1                 1        3     637
6 months    ki1114097-CONTENT          PERU                           0                 0      197     215
6 months    ki1114097-CONTENT          PERU                           0                 1        0     215
6 months    ki1114097-CONTENT          PERU                           1                 0       14     215
6 months    ki1114097-CONTENT          PERU                           1                 1        4     215
6 months    ki1119695-PROBIT           BELARUS                        0                 0    15408   15761
6 months    ki1119695-PROBIT           BELARUS                        0                 1      224   15761
6 months    ki1119695-PROBIT           BELARUS                        1                 0      110   15761
6 months    ki1119695-PROBIT           BELARUS                        1                 1       19   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     7208    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 1      238    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      741    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      108    8295
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0    11588   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      163   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     4203   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      857   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     3444    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       31    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     1117    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      239    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      162     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       24     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        9     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      152     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      173     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       17     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 0       26     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 1       11     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      200     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       21     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        5     228
24 months   ki0047075b-MAL-ED          PERU                           0                 0      167     201
24 months   ki0047075b-MAL-ED          PERU                           0                 1        7     201
24 months   ki0047075b-MAL-ED          PERU                           1                 0       19     201
24 months   ki0047075b-MAL-ED          PERU                           1                 1        8     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      193     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1       23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        3     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      132     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       49     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       13     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1       20     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      212     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       85     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       37     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       38     372
24 months   ki1000108-IRC              INDIA                          0                 0      332     409
24 months   ki1000108-IRC              INDIA                          0                 1       30     409
24 months   ki1000108-IRC              INDIA                          1                 0       36     409
24 months   ki1000108-IRC              INDIA                          1                 1       11     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0      298     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1       57     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0       38     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1       36     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      484     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       34     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0       44     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       15     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      425     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       19     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       54     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       16     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0                 0     1455    1725
24 months   ki1101329-Keneba           GAMBIA                         0                 1       94    1725
24 months   ki1101329-Keneba           GAMBIA                         1                 0      133    1725
24 months   ki1101329-Keneba           GAMBIA                         1                 1       43    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      412     499
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       36     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       33     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       18     499
24 months   ki1114097-CMIN             BANGLADESH                     0                 0      121     242
24 months   ki1114097-CMIN             BANGLADESH                     0                 1       32     242
24 months   ki1114097-CMIN             BANGLADESH                     1                 0       53     242
24 months   ki1114097-CMIN             BANGLADESH                     1                 1       36     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                 0      428     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                 1       22     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                 0       68     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                 1       33     551
24 months   ki1114097-CMIN             PERU                           0                 0      333     429
24 months   ki1114097-CMIN             PERU                           0                 1       10     429
24 months   ki1114097-CMIN             PERU                           1                 0       66     429
24 months   ki1114097-CMIN             PERU                           1                 1       20     429
24 months   ki1114097-CONTENT          PERU                           0                 0      146     164
24 months   ki1114097-CONTENT          PERU                           0                 1        1     164
24 months   ki1114097-CONTENT          PERU                           1                 0       15     164
24 months   ki1114097-CONTENT          PERU                           1                 1        2     164
24 months   ki1119695-PROBIT           BELARUS                        0                 0     3960    4035
24 months   ki1119695-PROBIT           BELARUS                        0                 1       64    4035
24 months   ki1119695-PROBIT           BELARUS                        1                 0       10    4035
24 months   ki1119695-PROBIT           BELARUS                        1                 1        1    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 0      269     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 1       87     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0       57     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       44     457
24 months   ki1135781-COHORTS          GUATEMALA                      0                 0      490    1073
24 months   ki1135781-COHORTS          GUATEMALA                      0                 1      252    1073
24 months   ki1135781-COHORTS          GUATEMALA                      1                 0      122    1073
24 months   ki1135781-COHORTS          GUATEMALA                      1                 1      209    1073
24 months   ki1135781-COHORTS          INDIA                          0                 0     4005    5340
24 months   ki1135781-COHORTS          INDIA                          0                 1      694    5340
24 months   ki1135781-COHORTS          INDIA                          1                 0      366    5340
24 months   ki1135781-COHORTS          INDIA                          1                 1      275    5340
24 months   ki1135781-COHORTS          PHILIPPINES                    0                 0     1696    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    0                 1      614    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0       60    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1       75    2445
24 months   ki1148112-LCNI-5           MALAWI                         0                 0      365     579
24 months   ki1148112-LCNI-5           MALAWI                         0                 1       12     579
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      147     579
24 months   ki1148112-LCNI-5           MALAWI                         1                 1       55     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     5452    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      509    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1834    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      837    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     3247    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      149    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     1068    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      288    4752


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
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
![](/tmp/649c6f85-7074-4ddf-b805-8f2d6056038c/37789112-eef1-4b10-a0e7-1eb114c4bad4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/649c6f85-7074-4ddf-b805-8f2d6056038c/37789112-eef1-4b10-a0e7-1eb114c4bad4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/649c6f85-7074-4ddf-b805-8f2d6056038c/37789112-eef1-4b10-a0e7-1eb114c4bad4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/649c6f85-7074-4ddf-b805-8f2d6056038c/37789112-eef1-4b10-a0e7-1eb114c4bad4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0240385   0.0031807   0.0448962
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2307692   0.0982698   0.3632687
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0805504   0.0493799   0.1117209
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2528169   0.1458909   0.3597429
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0511798   0.0284652   0.0738944
6 months    ki1000108-IRC              INDIA                          1                    NA                0.1972398   0.0678858   0.3265937
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0898849   0.0541229   0.1256469
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5685373   0.4809545   0.6561202
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1553804   0.1013297   0.2094312
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.2794720   0.1666166   0.3923275
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0364047   0.0219137   0.0508958
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2608152   0.2214477   0.3001826
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0331829   0.0167003   0.0496655
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2332767   0.1389940   0.3275594
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0133843   0.0035274   0.0232413
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1166667   0.0353685   0.1979649
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0178785   0.0073753   0.0283817
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1195145   0.0556921   0.1833370
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0058201   0.0023899   0.0092503
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0575540   0.0188270   0.0962809
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0210274   0.0145527   0.0275021
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1576052   0.1062805   0.2089300
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0099206   0.0012605   0.0185807
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2542373   0.1430313   0.3654433
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0143807   0.0090720   0.0196894
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1161200   0.0860037   0.1462363
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0320794   0.0280799   0.0360789
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1241798   0.1018747   0.1464850
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0686286   0.0511568   0.0861005
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4380511   0.3573613   0.5187408
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0213699   0.0177248   0.0250150
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2220114   0.1935603   0.2504624
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0392999   0.0317571   0.0468427
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1986949   0.1337226   0.2636672
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0141186   0.0117360   0.0165012
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1647576   0.1543386   0.1751767
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0090217   0.0052443   0.0127991
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1751359   0.1545055   0.1957664
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0949721   0.0519217   0.1380225
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2727273   0.1204165   0.4250381
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0896449   0.0486534   0.1306364
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3005787   0.1382555   0.4629020
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0402299   0.0109604   0.0694993
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2962963   0.1236301   0.4689625
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2683077   0.2033407   0.3332747
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5657079   0.3925735   0.7388424
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2880945   0.2364712   0.3397179
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5041334   0.3863884   0.6218785
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0824648   0.0541907   0.1107390
24 months   ki1000108-IRC              INDIA                          1                    NA                0.2233826   0.1126741   0.3340912
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1601347   0.1218793   0.1983901
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4881071   0.3722652   0.6039490
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0659077   0.0445942   0.0872211
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3316902   0.2198264   0.4435540
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0430292   0.0241417   0.0619167
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2036847   0.1026769   0.3046925
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0606643   0.0487567   0.0725719
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2547665   0.1887142   0.3208187
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0792587   0.0543281   0.1041894
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3338219   0.1893410   0.4783029
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2077609   0.1430319   0.2724900
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.4043209   0.3001759   0.5084660
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0491663   0.0291759   0.0691568
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3360735   0.2420236   0.4301233
24 months   ki1114097-CMIN             PERU                           0                    NA                0.0294213   0.0114890   0.0473536
24 months   ki1114097-CMIN             PERU                           1                    NA                0.2302639   0.1390110   0.3215167
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2474206   0.2028929   0.2919484
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4360872   0.3414272   0.5307473
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3383376   0.3043420   0.3723333
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6351569   0.5827599   0.6875539
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.1477402   0.1376133   0.1578671
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.4299173   0.3921789   0.4676557
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2655866   0.2475782   0.2835950
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5494957   0.4639193   0.6350721
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0318971   0.0140379   0.0497563
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.2725655   0.2099304   0.3352005
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0850726   0.0771785   0.0929668
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3149862   0.2959172   0.3340552
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0441233   0.0358132   0.0524334
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2119479   0.1868982   0.2369976


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0566802   0.0277850   0.0855754
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1872340   0.1372518   0.2372162
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0240137   0.0115761   0.0364514
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0093642   0.0051724   0.0135561
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0335089   0.0257898   0.0412279
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0355240   0.0202206   0.0508273
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0417119   0.0374091   0.0460146
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1290323   0.1078261   0.1502384
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0453353   0.0404119   0.0502586
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0606746   0.0568229   0.0645262
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0558890   0.0491390   0.0626391
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1226415   0.0783812   0.1669018
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1233480   0.0804760   0.1662200
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0746269   0.0382069   0.1110468
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
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  9.600000    3.391639   27.172702
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  3.138617    1.766752    5.575723
6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                  3.853858    1.747786    8.497734
6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                  6.325171    4.127146    9.693813
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  1.798631    1.056287    3.062685
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  7.164318    5.102892   10.058502
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  7.030025    3.700480   13.355360
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.716667    3.162480   24.025537
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  6.684817    3.022098   14.786675
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  9.888816    4.042664   24.189171
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                  7.495231    4.789627   11.729200
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 25.627119    9.652859   68.036752
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  8.074697    5.456263   11.949706
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  3.871013    3.111175    4.816425
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  6.382919    4.665253    8.732999
6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 10.388990    8.394406   12.857506
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.055861    3.461674    7.384212
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 11.669541    9.778941   13.925659
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 19.412688   12.543121   30.044550
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  2.871658    1.398788    5.895404
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  3.352993    1.653129    6.800779
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  7.365079    2.899635   18.707319
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  2.108430    1.428603    3.111765
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.749889    1.303989    2.348265
24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                  2.708824    1.479527    4.959508
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.048103    2.176575    4.268603
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  5.032650    3.143989    8.055871
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.733640    2.437813    9.191578
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                  4.199608    3.034455    5.812151
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  4.211799    2.464854    7.196878
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  1.946087    1.297606    2.918649
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.000000    1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  6.835442    4.169594   11.205713
24 months   ki1114097-CMIN             PERU                           0                    0                  1.000000    1.000000    1.000000
24 months   ki1114097-CMIN             PERU                           1                    0                  7.826433    3.779874   16.205051
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.762534    1.334569    2.327738
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.877287    1.648797    2.137441
24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  2.909954    2.605028    3.250573
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.068989    1.746408    2.451153
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  8.545148    4.661121   15.665665
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.702556    3.326019    4.121721
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  4.803535    3.836519    6.014293


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0326417    0.0094626   0.0558208
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0332707    0.0115506   0.0549909
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0200732    0.0047791   0.0353674
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.1628033    0.1235491   0.2020575
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0318536   -0.0014155   0.0651227
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0594036    0.0467850   0.0720223
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0319940    0.0161410   0.0478470
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0106294    0.0018240   0.0194348
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0142893    0.0048910   0.0236877
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0035441    0.0008206   0.0062676
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0124815    0.0074533   0.0175096
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0256033    0.0123778   0.0388288
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0010371    0.0002249   0.0018492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0096325    0.0072284   0.0120366
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0604036    0.0447810   0.0760262
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0239654    0.0202174   0.0277134
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0094445    0.0055089   0.0133802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0465560    0.0431256   0.0499863
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0468673    0.0405831   0.0531516
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0276694    0.0015425   0.0537964
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0337031    0.0067630   0.0606433
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0343970    0.0079419   0.0608520
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0541222    0.0219609   0.0862835
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0425506    0.0158175   0.0692837
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0177797    0.0026379   0.0329215
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0566485    0.0328707   0.0804264
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0190143    0.0065057   0.0315230
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0250642    0.0103420   0.0397864
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0187560    0.0116619   0.0258500
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0289577    0.0134341   0.0444812
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0732308    0.0268070   0.1196546
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0506522    0.0312336   0.0700708
24 months   ki1114097-CMIN             PERU                           0                    NA                0.0405088    0.0206373   0.0603802
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0392314    0.0156418   0.0628211
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0912989    0.0704157   0.1121821
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0337204    0.0284507   0.0389902
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0162130    0.0108126   0.0216133
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0838197    0.0595570   0.1080823
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0708588    0.0641712   0.0775464
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0478380    0.0400631   0.0556129


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5758929    0.1551277   0.7871076
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2923071    0.0928380   0.4479164
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2817177    0.0619380   0.4500049
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.6442853    0.5011485   0.7463515
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1701272   -0.0236075   0.3271945
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.6200255    0.4920449   0.7157610
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4908793    0.2616294   0.6489515
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4426386    0.0644328   0.6679536
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4442117    0.1529856   0.6353065
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3784740    0.0897894   0.5755986
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.3724823    0.2341248   0.4858451
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7207341    0.4071824   0.8684428
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0672648    0.0117531   0.1196584
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2309284    0.1762714   0.2819587
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4681280    0.3602074   0.5578445
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.5286260    0.4636960   0.5856950
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1937563    0.1155655   0.2650344
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7673060    0.7298284   0.7995849
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8385779    0.7623619   0.8903498
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2256124   -0.0032028   0.4022383
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.2732360    0.0402053   0.4496886
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4609195    0.0905879   0.6804444
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1678573    0.0627317   0.2611918
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1286897    0.0443397   0.2055947
24 months   ki1000108-IRC              INDIA                          0                    NA                0.1773633    0.0207681   0.3089164
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2613142    0.1499186   0.3581124
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2239037    0.0754446   0.3485241
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3680856    0.1538952   0.5280539
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2361607    0.1494614   0.3140223
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2675905    0.1257298   0.3864326
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2606155    0.0798507   0.4058687
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.5074430    0.3287265   0.6385789
24 months   ki1114097-CMIN             PERU                           0                    NA                0.5792754    0.3113809   0.7429505
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1368608    0.0511934   0.2147933
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2125027    0.1620120   0.2599512
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.1858278    0.1575193   0.2131851
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0575337    0.0382641   0.0764172
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.7243519    0.5441251   0.8333274
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4544227    0.4158899   0.4904136
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5201968    0.4433455   0.5864380
