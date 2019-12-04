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




# Results Detail

## Results Plots
![](/tmp/b0803107-9805-4d80-96b5-4893d9267f9d/4ee7f29e-2e33-429d-a704-6951ce1e1ae7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b0803107-9805-4d80-96b5-4893d9267f9d/4ee7f29e-2e33-429d-a704-6951ce1e1ae7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b0803107-9805-4d80-96b5-4893d9267f9d/4ee7f29e-2e33-429d-a704-6951ce1e1ae7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b0803107-9805-4d80-96b5-4893d9267f9d/4ee7f29e-2e33-429d-a704-6951ce1e1ae7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.5892990   0.4680116   0.7105864
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.7067388   0.5951237   0.8183539
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.6327384   0.5349136   0.7305632
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.4948959   0.3434846   0.6463072
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6382790   0.5755683   0.7009897
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.5525154   0.4316896   0.6733413
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.6028425   0.5406937   0.6649913
0-24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.5472766   0.4485248   0.6460284
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.4946206   0.4129737   0.5762676
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.5043620   0.4150601   0.5936639
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3610932   0.3146302   0.4075563
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.4150308   0.3616581   0.4684036
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.5383631   0.4653293   0.6113969
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.4910656   0.4186791   0.5634520
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.5629831   0.4827006   0.6432656
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.6094948   0.5296726   0.6893169
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.6200280   0.5380694   0.7019866
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.6143617   0.5444024   0.6843209
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.6322894   0.5932904   0.6712883
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.5465125   0.3591280   0.7338970
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.6770702   0.6453580   0.7087823
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.5968197   0.5386432   0.6549961
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.5770287   0.5212938   0.6327636
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.4954205   0.4284600   0.5623811
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.5237681   0.5036989   0.5438372
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.5897860   0.5614959   0.6180762
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.5099504   0.4493869   0.5705140
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.5425571   0.3873193   0.6977950
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.2196216   0.1985994   0.2406437
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.3160961   0.2869677   0.3452244
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.6142707   0.5863517   0.6421896
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.5758425   0.5246353   0.6270497
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.3723599   0.3534954   0.3912244
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.4609067   0.4452140   0.4765994
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2460396   0.2177807   0.2742985
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.3258910   0.2931211   0.3586610
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.6833333   0.5637856   0.8028811
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.7000000   0.4899704   0.9100296
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6770039   0.6054196   0.7485882
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.6479284   0.4812805   0.8145763
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.6376012   0.5643200   0.7108823
0-6 months    ki1000108-IRC              INDIA                          Low birthweight              NA                0.6150687   0.4867262   0.7434111
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.5715835   0.4586926   0.6844744
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.5484983   0.3980292   0.6989674
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4523229   0.3786482   0.5259976
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.5914443   0.5140971   0.6687915
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7337542   0.6493586   0.8181497
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.6979420   0.6100812   0.7858028
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.7910920   0.7040390   0.8781449
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.7772780   0.6955719   0.8589842
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.8725490   0.8070954   0.9380026
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.9157895   0.8592287   0.9723502
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.7079365   0.6569927   0.7588803
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.6000000   0.3803796   0.8196204
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.8345529   0.7997952   0.8693105
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.7925241   0.7316352   0.8534130
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.6462776   0.5664228   0.7261324
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.5512130   0.4592254   0.6432005
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.7567398   0.7358214   0.7776582
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.7327426   0.7037984   0.7616868
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7500000   0.6868206   0.8131794
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.8333333   0.6990149   0.9676518
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3368873   0.3079257   0.3658489
0-6 months    ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.4357504   0.3988327   0.4726682
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.7390484   0.7029745   0.7751224
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.7422173   0.6763301   0.8081045
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.6270452   0.6029002   0.6511901
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.7153678   0.6974712   0.7332644
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.5514118   0.4888353   0.6139884
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.6522773   0.5948715   0.7096832
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.4166667   0.2336005   0.5997328
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.6250000   0.4536424   0.7963576
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.6160774   0.4720542   0.7601005
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.5553206   0.3433730   0.7672682
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.5778155   0.4748050   0.6808259
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.4534589   0.2306820   0.6762358
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.5441257   0.4449952   0.6432563
6-24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.4531353   0.2939392   0.6123313
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.4418232   0.3370379   0.5466084
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.4715487   0.3636835   0.5794139
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3054415   0.2521031   0.3587800
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.2546928   0.1870568   0.3223289
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3564895   0.2656160   0.4473629
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1855329   0.0981276   0.2729381
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2799607   0.1768611   0.3830602
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.2421921   0.1037441   0.3806400
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.5644699   0.5109407   0.6179992
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.4210526   0.1645464   0.6775589
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.5561204   0.5115565   0.6006843
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.3369525   0.2412783   0.4326268
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.5350565   0.4669699   0.6031431
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.4464862   0.3517012   0.5412713
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0833333   0.0650219   0.1016448
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0396476   0.0139646   0.0653305
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5191886   0.4818102   0.5565669
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.3942224   0.3102742   0.4781706
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1478141   0.1228736   0.1727547
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.1435473   0.1133078   0.1737868


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    1.1992872   0.9225563   1.5590265
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    0.7821492   0.5543933   1.1034719
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    0.8656331   0.6818216   1.0989980
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    0.9078268   0.7373739   1.1176820
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.0196946   0.8015432   1.2972189
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    1.1493730   0.9584254   1.3783632
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    0.9121457   0.7463669   1.1147463
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    1.0826165   0.8914512   1.3147758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    0.9908612   0.8312882   1.1810655
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    0.8643392   0.6100936   1.2245371
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    0.8814739   0.7915234   0.9816466
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    0.8585717   0.7268840   1.0141169
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    1.1260443   1.0590282   1.1973012
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    1.0639409   0.7800760   1.4511026
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.4392762   1.2603401   1.6436167
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    0.9374410   0.8485516   1.0356420
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    1.2377990   1.1646052   1.3155929
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    1.3245471   1.1368125   1.5432845
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    1.0243902   0.7238118   1.4497904
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    0.9570526   0.7254352   1.2626211
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    0.9646605   0.7596719   1.2249629
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    0.9596119   0.6841955   1.3458946
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    1.3075710   1.0607375   1.6118426
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    0.9511932   0.8015903   1.1287169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    0.9825382   0.8432732   1.1448024
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    1.0495565   0.9523711   1.1566592
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    0.8475336   0.5836432   1.2307403
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    0.9496391   0.8709230   1.0354698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    0.8529044   0.6926839   1.0501845
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    0.9682887   0.9226994   1.0161305
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    1.1111111   0.9263461   1.3327286
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    1.2934607   1.1463019   1.4595112
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    1.0042877   0.9077455   1.1110976
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    1.1408553   1.0897071   1.1944042
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    1.1829222   1.0245180   1.3658179
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    1.5000000   0.8938050   2.5173275
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    0.9013812   0.5715901   1.4214523
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    0.7847815   0.4648926   1.3247832
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    0.8327768   0.5603875   1.2375672
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.0672793   0.7686273   1.4819732
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    0.8338513   0.6066096   1.1462199
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    0.5204442   0.3036582   0.8919967
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    0.8650932   0.4368095   1.7133012
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    0.7459257   0.4026578   1.3818315
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    0.6058985   0.4512551   0.8135376
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    0.8344656   0.6508119   1.0699447
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    0.4757710   0.2400633   0.9429098
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    0.7593049   0.6064649   0.9506634
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    0.9711336   0.7410593   1.2726384


### Parameter: PAR


agecat        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0582420   -0.0051498    0.1216337
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0182806   -0.0673780    0.0308169
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0086494   -0.0316015    0.0143027
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0130989   -0.0433329    0.0171351
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0084849   -0.0428608    0.0598307
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0211509   -0.0064939    0.0487957
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0212062   -0.0673529    0.0249405
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0181858   -0.0338096    0.0701811
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0025527   -0.0490639    0.0541692
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0064003   -0.0160734    0.0032727
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0164144   -0.0299437   -0.0028852
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0356871   -0.0718902    0.0005161
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0205778    0.0096331    0.0315226
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0056746   -0.0185448    0.0298940
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0363403    0.0227367    0.0499439
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0072995   -0.0180865    0.0034875
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0507170    0.0360496    0.0653844
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0323282    0.0138312    0.0508252
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0041667   -0.0562660    0.0645993
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0053621   -0.0333181    0.0225939
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0020079   -0.0386815    0.0346656
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0080914   -0.0776760    0.0614932
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0623830    0.0131234    0.1116425
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0194685   -0.0812859    0.0423490
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0073082   -0.0687190    0.0541026
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0208520   -0.0209627    0.0626667
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0064440   -0.0201935    0.0073055
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0089301   -0.0261592    0.0082990
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0417148   -0.0972035    0.0137739
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0086269   -0.0214653    0.0042114
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0119048   -0.0096709    0.0334804
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0379672    0.0188239    0.0571105
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0017830   -0.0186281    0.0150621
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0534238    0.0349139    0.0719336
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0544705    0.0100970    0.0988440
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0833333   -0.0206788    0.1873455
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0695658   -0.1547390    0.0156074
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0168399   -0.0621017    0.0284219
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0246452   -0.0765242    0.0272338
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0224626   -0.0472360    0.0921611
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0188173   -0.0486804    0.0110457
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0632958   -0.1157257   -0.0108658
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0035379   -0.0679494    0.0608736
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0074047   -0.0214410    0.0066316
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0363636   -0.0554598   -0.0172673
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0377020   -0.0800754    0.0046714
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0090895   -0.0157410   -0.0024380
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0180992   -0.0327552   -0.0034432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0000424   -0.0152154    0.0151305


### Parameter: PAF


agecat        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.0899433   -0.0180106    0.1864492
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0297508   -0.1127469    0.0470550
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0137373   -0.0507498    0.0219714
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0222112   -0.0747112    0.0277242
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0168651   -0.0908915    0.1139778
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0553335   -0.0204637    0.1255006
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0410054   -0.1337501    0.0441525
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0312917   -0.0627972    0.1170509
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0041001   -0.0824347    0.0837169
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0102260   -0.0258225    0.0051335
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0248457   -0.0455028   -0.0045967
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0659234   -0.1351477   -0.0009206
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0378029    0.0174076    0.0577748
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0110052   -0.0370821    0.0568629
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1419754    0.0870562    0.1935909
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0120261   -0.0299100    0.0055472
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1198766    0.0843873    0.1539902
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.1161349    0.0465261    0.1806618
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                 0.0060606   -0.0858378    0.0901813
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0079836   -0.0504863    0.0327994
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0031592   -0.0625475    0.0529099
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0143594   -0.1456445    0.1018810
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1212012    0.0188302    0.2128913
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0272558   -0.1176898    0.0558610
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0093242   -0.0907603    0.0660319
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0233400   -0.0248250    0.0692414
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0091861   -0.0290217    0.0102672
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0108162   -0.0319078    0.0098442
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0690000   -0.1654016    0.0194273
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0115316   -0.0288498    0.0054951
0-6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0156250   -0.0132322    0.0436603
0-6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1012852    0.0487293    0.1509375
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0024184   -0.0255277    0.0201701
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0785102    0.0507484    0.1054601
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0899028    0.0130835    0.1607426
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                 0.1666667   -0.0861045    0.3606099
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.1272906   -0.2989594    0.0216907
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0300189   -0.1141306    0.0477428
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0474420   -0.1525030    0.0480418
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0483809   -0.1151200    0.1879090
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0656516   -0.1747700    0.0333313
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2158837   -0.4065544   -0.0510601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0127988   -0.2749021    0.1954194
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0132923   -0.0389212    0.0117043
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0699626   -0.1079740   -0.0332553
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0758051   -0.1651965    0.0067284
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1224280   -0.2127154   -0.0388625
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0361198   -0.0658420   -0.0072263
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0002872   -0.1084189    0.0972958
