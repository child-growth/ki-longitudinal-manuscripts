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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** birthwt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        birthwt                       wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ---------------------------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0       31    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       46    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                         0       12    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                         1       33    122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0        5     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1       16     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                         0        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                         1        2     24
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0       44    166
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       78    166
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                         0       20    166
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                         1       24    166
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0       13     90
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       60     90
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                         0        3     90
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                         1       14     90
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0        3     35
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1       23     35
0-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                         0        3     35
0-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                         1        6     35
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0       17     85
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       54     85
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                         0        1     85
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                         1       13     85
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0        6     39
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       31     39
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0        0     39
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1        2     39
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0       97    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1      173    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                         0       23    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                         1       31    324
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight              0      115    390
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight              1      174    390
0-24 months   ki1000108-IRC              INDIA                          Low birthweight                         0       45    390
0-24 months   ki1000108-IRC              INDIA                          Low birthweight                         1       56    390
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight              0       93    322
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight              1       94    322
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                         0       67    322
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                         1       68    322
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0        8     23
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1       10     23
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                         0        3     23
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                         1        2     23
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      316    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1      178    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                         0      185    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                         1      132    811
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0      104    408
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1      121    408
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                         0       93    408
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                         1       90    408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0       74    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       94    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                         0       55    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                         1       85    308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0       61    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1      102    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                         0       56    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                         1       91    310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      244    703
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      420    703
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0       19    703
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1       20    703
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0      313   1220
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      655   1220
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                         0      101   1220
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                         1      151   1220
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight              0      166    641
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight              1      219    641
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                         0      128    641
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                         1      128    641
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        2     12
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        5     12
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                         0        3     12
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                         1        2     12
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0      615   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1     3816   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                         0        0   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                         1        0   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0     1184   3608
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1     1293   3608
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                         0      460   3608
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                         1      671   3608
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0      134    320
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1      139    320
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                         0       21    320
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                         1       26    320
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight              0     1227   2516
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      343   2516
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                         0      645   2516
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                         1      301   2516
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0      524   1664
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      830   1664
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                         0      130   1664
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                         1      180   1664
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0     1668   6448
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1      971   6448
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                         0     2052   6448
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                         1     1757   6448
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0      779   1789
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      253   1789
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                         0      512   1789
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                         1      245   1789
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0       10     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       31     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                         0        3     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                         1       18     62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1       12     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                         0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                         1        2     15
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0       19     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       41     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                         0        6     80
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                         1       14     80
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0        6     45
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       29     45
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                         0        1     45
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                         1        9     45
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1        8     11
0-6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                         0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                         1        3     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0        8     34
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       19     34
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                         0        1     34
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                         1        6     34
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0        0     11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       10     11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0        0     11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1        1     11
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0       55    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1      115    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                         0       11    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                         1       20    201
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight              0       64    236
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight              1      113    236
0-6 months    ki1000108-IRC              INDIA                          Low birthweight                         0       22    236
0-6 months    ki1000108-IRC              INDIA                          Low birthweight                         1       37    236
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight              0       34    126
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight              1       45    126
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight                         0       21    126
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight                         1       26    126
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0        2     14
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1       10     14
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                         0        2     14
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                         1        0     14
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      102    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1       84    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                         0       63    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                         1       91    340
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0       29    217
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       79    217
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                         0       33    217
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                         1       76    217
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0       19    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       72    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                         0       21    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                         1       73    185
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0       13    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1       89    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                         0        8    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                         1       87    197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0       92    335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      223    335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0        8    335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1       12    335
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0       71    562
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      349    562
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                         0       27    562
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                         1      115    562
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight              0       52    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight              1       93    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                         0       52    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                         1       66    263
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        1      5
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        0      5
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                         0        2      5
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                         1        2      5
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0      488   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1     3775   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                         0        0   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                         1        0   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0      392   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1     1221   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                         0      242   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                         1      662   2517
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0       45    210
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1      135    210
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                         0        5    210
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                         1       25    210
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight              0      678   1718
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight              1      343   1718
0-6 months    ki1135781-COHORTS          INDIA                          Low birthweight                         0      396   1718
0-6 months    ki1135781-COHORTS          INDIA                          Low birthweight                         1      301   1718
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0      152    746
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      427    746
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                         0       44    746
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                         1      123    746
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0      584   4009
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1      971   4009
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                         0      697   4009
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                         1     1757   4009
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0      110    510
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      136    510
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                         0       91    510
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                         1      173    510
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              0       21     60
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight              1       15     60
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                         0        9     60
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                         1       15     60
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              0        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight              1        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                         0        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                         1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              0       25     86
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight              1       37     86
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                         0       14     86
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                         1       10     86
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              0        7     45
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight              1       31     45
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                         0        2     45
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                         1        5     45
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              0        3     24
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight              1       15     24
6-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                         0        3     24
6-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                         1        3     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              0        9     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight              1       35     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                         0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                         1        7     51
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0        6     28
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1       21     28
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0        0     28
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1        1     28
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              0       42    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight              1       58    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                         0       12    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                         1       11    123
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight              0       51    154
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight              1       61    154
6-24 months   ki1000108-IRC              INDIA                          Low birthweight                         0       23    154
6-24 months   ki1000108-IRC              INDIA                          Low birthweight                         1       19    154
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight              0       59    196
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight              1       49    196
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                         0       46    196
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                         1       42    196
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              0        6      9
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight              1        0      9
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                         0        1      9
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                         1        2      9
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              0      214    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight              1       94    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                         0      122    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                         1       41    471
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              0       75    191
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight              1       42    191
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                         0       60    191
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                         1       14    191
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              0       55    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight              1       22    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                         0       34    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                         1       12    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              0       48    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight              1       13    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                         0       48    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                         1        4    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              0      152    368
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight              1      197    368
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         0       11    368
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                         1        8    368
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              0      242    658
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight              1      306    658
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                         0       74    658
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                         1       36    658
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight              0      114    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight              1      126    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                         0       76    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                         1       62    378
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              0        1      7
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight              1        5      7
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                         0        1      7
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                         1        0      7
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              0      127    168
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight              1       41    168
6-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                         0        0    168
6-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                         1        0    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              0      792   1091
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight              1       72   1091
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                         0      218   1091
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                         1        9   1091
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              0       89    110
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight              1        4    110
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                         0       16    110
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                         1        1    110
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight              0      549    798
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight              1        0    798
6-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                         0      249    798
6-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                         1        0    798
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              0      372    918
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight              1      403    918
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                         0       86    918
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                         1       57    918
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              0     1084   2439
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight              1        0   2439
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                         0     1355   2439
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                         1        0   2439
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              0      669   1279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight              1      117   1279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                         0      421   1279
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                         1       72   1279


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
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/0ca8815d-f7d0-4293-ad1f-fc5599fdfed6/6cb3bb64-ae8c-49a7-bab6-cf597664ce57/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0ca8815d-f7d0-4293-ad1f-fc5599fdfed6/6cb3bb64-ae8c-49a7-bab6-cf597664ce57/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0ca8815d-f7d0-4293-ad1f-fc5599fdfed6/6cb3bb64-ae8c-49a7-bab6-cf597664ce57/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0ca8815d-f7d0-4293-ad1f-fc5599fdfed6/6cb3bb64-ae8c-49a7-bab6-cf597664ce57/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.5974026   0.4765758   0.7182294
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.7333333   0.6260841   0.8405826
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.6393443   0.5417637   0.7369248
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.5454545   0.3939530   0.6969561
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6407407   0.5781901   0.7032914
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.5740741   0.4523237   0.6958245
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.6020761   0.5399101   0.6642422
0-24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.5544554   0.4573997   0.6515112
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.5026738   0.4233327   0.5820149
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.5037037   0.4155315   0.5918759
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3603239   0.3138121   0.4068357
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.4164038   0.3631200   0.4696875
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5377778   0.4650271   0.6105285
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.4918033   0.4199858   0.5636208
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.5595238   0.4795726   0.6394750
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.6071429   0.5277702   0.6865156
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.6257669   0.5439802   0.7075535
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.6190476   0.5494076   0.6886877
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.6325301   0.5935887   0.6714715
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.5128205   0.3457617   0.6798793
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.6766529   0.6449388   0.7083670
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.5992063   0.5400263   0.6583864
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.5688312   0.5139016   0.6237607
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.5000000   0.4344731   0.5655269
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.5220024   0.5019378   0.5420670
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.5932803   0.5651104   0.6214502
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.5091575   0.4487028   0.5696122
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.5531915   0.4020134   0.7043696
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2184713   0.1974762   0.2394664
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.3181818   0.2891560   0.3472077
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6129985   0.5850793   0.6409178
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.5806452   0.5291124   0.6321779
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.3679424   0.3492826   0.3866022
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.4612759   0.4456314   0.4769205
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2451550   0.2169500   0.2733600
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.3236460   0.2908966   0.3563953
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.6833333   0.5637856   0.8028811
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.7000000   0.4899704   0.9100296
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6764706   0.6049173   0.7480239
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.6451613   0.4765413   0.8137813
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.6384181   0.5654105   0.7114257
0-6 months    ki1000108-IRC              INDIA                          Low birthweight              NA                0.6271186   0.5023586   0.7518787
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.5696203   0.4587908   0.6804497
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.5531915   0.4114927   0.6948903
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4516129   0.3784623   0.5247636
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.5909091   0.5137502   0.6680680
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7314815   0.6484211   0.8145419
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.6972477   0.6103945   0.7841009
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.7912088   0.7056184   0.8767992
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.7765957   0.6966465   0.8565450
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.8725490   0.8070954   0.9380026
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.9157895   0.8592287   0.9723502
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.7079365   0.6569927   0.7588803
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.6000000   0.3803796   0.8196204
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.8309524   0.7958497   0.8660550
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.8098592   0.7497663   0.8699520
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.6413793   0.5625859   0.7201727
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.5593220   0.4689361   0.6497080
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.7569746   0.7360762   0.7778730
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.7323009   0.7034201   0.7611817
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7500000   0.6868206   0.8131794
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.8333333   0.6990149   0.9676518
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3359452   0.3069652   0.3649251
0-6 months    ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.4318508   0.3950670   0.4686346
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.7374784   0.7014084   0.7735484
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.7365269   0.6703244   0.8027295
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.6244373   0.6003587   0.6485159
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.7159739   0.6981352   0.7338126
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.5528455   0.4906531   0.6150379
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.6553030   0.5979162   0.7126898
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.4166667   0.2336005   0.5997328
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.6250000   0.4536424   0.7963576
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.5967742   0.4556989   0.7378495
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.4166667   0.1900339   0.6432994
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.5800000   0.4772980   0.6827020
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.4782609   0.2652419   0.6912798
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.5446429   0.4458315   0.6434542
6-24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.4523810   0.2959171   0.6088448
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.4537037   0.3523253   0.5550821
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.4772727   0.3720019   0.5825435
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3051948   0.2519372   0.3584524
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.2515337   0.1844274   0.3186401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3589744   0.2689532   0.4489955
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1891892   0.1033707   0.2750077
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2857143   0.1838473   0.3875812
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.2608696   0.1258847   0.3958545
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.5644699   0.5109407   0.6179992
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.4210526   0.1645464   0.6775589
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.5583942   0.5139223   0.6028661
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.3272727   0.2328938   0.4216517
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.5250000   0.4560504   0.5939496
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.4492754   0.3599952   0.5385555
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0833333   0.0650219   0.1016448
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0396476   0.0139646   0.0653305
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5200000   0.4827597   0.5572403
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.3986014   0.3167614   0.4804414
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1488550   0.1239330   0.1737769
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.1460446   0.1158565   0.1762328


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6475410   0.5607680   0.7343140
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6144578   0.5320591   0.6968566
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5897436   0.5370721   0.6424150
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.5031056   0.4439609   0.5622503
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3822441   0.3470621   0.4174262
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5171569   0.4657250   0.5685888
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6258890   0.5879514   0.6638267
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.6606557   0.6326585   0.6886530
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5413417   0.4990070   0.5836763
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5443459   0.5279394   0.5607524
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5156250   0.4594779   0.5717721
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2559618   0.2388022   0.2731215
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6069712   0.5823178   0.6316245
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4230769   0.4110235   0.4351303
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2783678   0.2569102   0.2998254
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6875000   0.5835705   0.7914295
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6716418   0.6057305   0.7375531
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6355932   0.5725724   0.6986140
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5634921   0.4761607   0.6508235
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5147059   0.4610948   0.5683169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7142857   0.6541352   0.7744362
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7014925   0.6517566   0.7512285
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.8256228   0.7953169   0.8559287
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7481128   0.7311662   0.7650594
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7619048   0.7043195   0.8194900
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3748545   0.3519572   0.3977518
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7372654   0.7055895   0.7689413
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6804689   0.6660338   0.6949041
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.6058824   0.5634305   0.6483342
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5000000   0.3680930   0.6319070
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5465116   0.4258714   0.6671519
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5194805   0.4352979   0.6036631
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4642857   0.3910729   0.5374985
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2866242   0.2446853   0.3285631
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2931937   0.2273732   0.3590142
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5570652   0.5044805   0.6096499
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5197568   0.4787855   0.5607282
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4973545   0.4426760   0.5520330
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0742438   0.0587565   0.0897311
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5010893   0.4669869   0.5351918
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1477717   0.1285384   0.1670050


### Parameter: RR


agecat        studyid                    country                        intervention_level           baseline_level                 estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    1.2275362   0.9559833   1.5762254
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    0.8531469   0.6214047   1.1713133
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    0.8959538   0.7094461   1.1314928
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    0.9209059   0.7516191   1.1283211
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.0020489   0.7918834   1.2679922
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    1.1556375   0.9635658   1.3859956
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    0.9145102   0.7493923   1.1160095
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    1.0851064   0.8938577   1.3172744
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    0.9892624   0.8323930   1.1756946
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    0.8107448   0.5819861   1.1294206
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    0.8855447   0.7937895   0.9879058
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    0.8789954   0.7468983   1.0344554
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.1365470   1.0691786   1.2081602
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    1.0864840   0.8065155   1.4636389
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.4564007   1.2756616   1.6627475
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    0.9472211   0.8572690   1.0466118
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    1.2536634   1.1794646   1.3325300
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    1.3201685   1.1326293   1.5387603
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    1.0243902   0.7238118   1.4497904
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    0.9537167   0.7193956   1.2643607
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    0.9823009   0.7808641   1.2357016
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    0.9711584   0.7040345   1.3396342
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    1.3084416   1.0626614   1.6110676
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    0.9531994   0.8053445   1.1281993
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    0.9815307   0.8453744   1.1396165
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    1.0495565   0.9523711   1.1566592
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    0.8475336   0.5836432   1.2307403
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    0.9746156   0.8948358   1.0615082
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    0.8720612   0.7118472   1.0683343
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    0.9674049   0.9219360   1.0151161
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    1.1111111   0.9263461   1.3327286
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.2854800   1.1387176   1.4511578
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    0.9987098   0.9015664   1.1063205
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    1.1465906   1.0951412   1.2004570
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    1.1853275   1.0278367   1.3669500
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    1.5000000   0.8938050   2.5173275
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    0.6981982   0.3859513   1.2630626
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    0.8245877   0.5106027   1.3316515
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    0.8306011   0.5619829   1.2276142
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.0519481   0.7684767   1.4399848
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    0.8241744   0.5991974   1.1336222
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    0.5270270   0.3137160   0.8853788
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    0.9130435   0.4870474   1.7116371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    0.7459257   0.4026578   1.3818315
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    0.5860963   0.4345297   0.7905301
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    0.8557626   0.6742362   1.0861618
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    0.4757710   0.2400633   0.9429098
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    0.7665412   0.6167333   0.9527381
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    0.9811203   0.7519426   1.2801469


### Parameter: PAR


agecat        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0501384   -0.0121800    0.1124568
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0248864   -0.0733864    0.0236135
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0111111   -0.0342626    0.0120404
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0123325   -0.0423687    0.0177036
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0004318   -0.0492295    0.0500930
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0219203   -0.0057454    0.0495859
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0206209   -0.0664366    0.0251948
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0216450   -0.0299051    0.0731952
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0031862   -0.0541413    0.0477689
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0066411   -0.0162062    0.0029240
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0159972   -0.0298639   -0.0021304
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0274895   -0.0620070    0.0070279
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0223435    0.0114004    0.0332865
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0064675   -0.0175440    0.0304790
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0374905    0.0238868    0.0510942
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0060274   -0.0169242    0.0048694
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0551345    0.0407087    0.0695603
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0332128    0.0148255    0.0516000
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0041667   -0.0562660    0.0645993
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0048288   -0.0331811    0.0235235
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0028249   -0.0389987    0.0333490
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0061282   -0.0732603    0.0610039
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0630930    0.0144508    0.1117351
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0171958   -0.0775990    0.0432074
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0074250   -0.0669292    0.0520792
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0208520   -0.0209627    0.0626667
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0064440   -0.0201935    0.0073055
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0053296   -0.0229022    0.0122430
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0368166   -0.0908845    0.0172513
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0088617   -0.0216734    0.0039499
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0119048   -0.0096709    0.0334804
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0389093    0.0197808    0.0580379
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0002130   -0.0170900    0.0166640
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0560316    0.0376364    0.0744269
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0530368    0.0090065    0.0970672
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0833333   -0.0206788    0.1873455
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0502626   -0.1272978    0.0267727
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0190244   -0.0636579    0.0256091
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0251623   -0.0767850    0.0264603
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0105820   -0.0550327    0.0761967
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0185706   -0.0483109    0.0111697
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0657806   -0.1166472   -0.0149141
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0092915   -0.0726252    0.0540422
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0074047   -0.0214410    0.0066316
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0386373   -0.0579673   -0.0193073
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0276455   -0.0693577    0.0140667
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0090895   -0.0157410   -0.0024380
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0189107   -0.0333502   -0.0044711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0010833   -0.0161766    0.0140101


### Parameter: PAF


agecat        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0774289   -0.0279567    0.1720105
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0405014   -0.1224266    0.0354441
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0176471   -0.0549828    0.0183674
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0209117   -0.0730536    0.0286965
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0008583   -0.1028980    0.0948536
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0573462   -0.0185558    0.1275920
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0398736   -0.1319418    0.0447060
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0372439   -0.0561121    0.1223477
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0051178   -0.0902868    0.0733982
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0106106   -0.0260358    0.0045826
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0242141   -0.0454056   -0.0034521
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0507803   -0.1166004    0.0111598
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0410465    0.0206444    0.0610235
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0125430   -0.0351219    0.0580130
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1464691    0.0915335    0.1980827
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0099302   -0.0280076    0.0078293
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1303180    0.0953912    0.1638962
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1193125    0.0500687    0.1835089
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0060606   -0.0858378    0.0901813
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0071895   -0.0503118    0.0341623
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0044444   -0.0629979    0.0508837
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0108754   -0.1373048    0.1014994
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1225806    0.0215427    0.2131852
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0240741   -0.1123659    0.0572098
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0094733   -0.0882840    0.0636301
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0233400   -0.0248250    0.0692414
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0091861   -0.0290217    0.0102672
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0064553   -0.0279662    0.0146055
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0608979   -0.1547017    0.0252857
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0118455   -0.0291278    0.0051466
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0156250   -0.0132322    0.0436603
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1037985    0.0512573    0.1534300
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0002889   -0.0234440    0.0223423
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0823427    0.0547379    0.1091413
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0875365    0.0113883    0.1578194
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1666667   -0.0861045    0.3606099
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0919698   -0.2448070    0.0421021
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0339130   -0.1168578    0.0428717
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0484375   -0.1530013    0.0466436
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0227920   -0.1295792    0.1546096
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0647908   -0.1734438    0.0338017
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2243590   -0.4088987   -0.0639906
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0336134   -0.2906790    0.1722522
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0132923   -0.0389212    0.0117043
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0743373   -0.1129352   -0.0370780
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0555851   -0.1430804    0.0252130
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1224280   -0.2127154   -0.0388625
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0377391   -0.0670357   -0.0092469
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0073307   -0.1147906    0.0897707
