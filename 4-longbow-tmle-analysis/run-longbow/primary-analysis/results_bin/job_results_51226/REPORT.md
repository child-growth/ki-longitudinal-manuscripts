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

agecat      studyid                    country                        birthwt                       wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         0      177     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         1       25     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                   0       24     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                   1       15     241
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         0      174     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         1        5     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   0        3     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   1        1     183
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         0      152     203
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         1       19     203
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                   0       18     203
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                   1       14     203
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         0      142     168
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         1       13     168
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                   0        6     168
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                   1        7     168
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight         0      260     279
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight         1        5     279
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                   0       13     279
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                   1        1     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         0      231     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         1       13     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                   0        9     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                   1        5     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0      112     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0        4     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         0       70      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         1        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                   0        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                   1        5      88
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight         0      234     343
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight         1       62     343
Birth       ki1000108-IRC              INDIA                          Low birth weight                   0       17     343
Birth       ki1000108-IRC              INDIA                          Low birth weight                   1       30     343
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight         0        1       1
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight         1        0       1
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                   0        0       1
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                   1        0       1
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         0        6       6
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                   0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                   1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         0      141     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                   0       14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                   1        9     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         0       16      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         1        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   1        2      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         0       18      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   0        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   1        3      23
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight         0     1277    1423
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight         1       20    1423
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                   0      118    1423
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                   1        8    1423
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0        4       8
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                   0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                   1        2       8
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight         0      100     111
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight         1        6     111
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                   0        3     111
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                   1        2     111
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight         0       10      10
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight         1        0      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                   0        0      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                   1        0      10
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         0        2       2
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         1        0       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                   0        0       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                   1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight         0    10936   13824
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight         1     2888   13824
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                   0        0   13824
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                   1        0   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         0    10392   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         1     1222   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                   0      464   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                   1      838   12916
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         0      540     756
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         1      162     756
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                   0       24     756
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                   1       30     756
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight         0     4632    6193
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight         1      546    6193
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                   0      465    6193
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                   1      550    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         0     2371    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         1      317    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                   0       77    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                   1      134    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         0    10716   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         1      322   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                   0     3487   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                   1     1184   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         0      525     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         1        9     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                   0      122     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                   1       27     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         0      181     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         1        6     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                   0       46     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                   1        2     235
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         0      198     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   0       10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         0      178     229
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         1       15     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                   0       33     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                   1        3     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         0      205     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         1        3     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                   0       21     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                   1        0     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight         0      253     270
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight         1        0     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                   0       17     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                   1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         0      232     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         1        6     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                   0       15     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                   1        1     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0      120     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        0     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0        6     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   1        0     126
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         0      289     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         1       36     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                   0       33     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                   1       10     368
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight         0      297     406
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight         1       41     406
6 months    ki1000108-IRC              INDIA                          Low birth weight                   0       55     406
6 months    ki1000108-IRC              INDIA                          Low birth weight                   1       13     406
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight         0      213     376
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight         1       31     376
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                   0      114     376
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                   1       18     376
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         0       14      17
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         1        1      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                   0        2      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                   1        0      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         0      893    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         1      108    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                   0      267    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                   1       56    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         0      109     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         1        9     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   0       53     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   1        7     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         0      433     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         1       10     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                   0      125     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                   1       14     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         0      534     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         1       11     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   0      160     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   1       10     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0     1861    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1       82    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0       63    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                   1        4    2010
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight         0     1485    1725
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight         1       86    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                   0      143    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                   1       11    1725
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                   0        1       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                   1        0       1
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight         0       99     104
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight         1        1     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                   0        4     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                   1        0     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight         0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight         1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                   0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                   1        0       2
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight         0       13      14
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight         1        0      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                   0        0      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                   1        1      14
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         0        2       2
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         1        0       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                   0        0       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                   1        0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight         0    15627   15757
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight         1      130   15757
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                   0        0   15757
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                   1        0   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         0     6985    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         1      217    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                   0      985    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                   1       47    8234
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         0      682     774
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         1       22     774
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                   0       67     774
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                   1        3     774
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight         0     4503    6252
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight         1      497    6252
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                   0      947    6252
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                   1      305    6252
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         0     2282    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         1      134    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                   0      224    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                   1       24    2664
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         0     9958   16712
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         1      678   16712
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                   0     5337   16712
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                   1      739   16712
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         0     2869    4045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         1      136    4045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                   0      959    4045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                   1       81    4045
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         0      149     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         1       16     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                   0       39     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                   1        4     208
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         0      158     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   0        8     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         0      169     220
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         1       16     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                   0       25     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                   1       10     220
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         0      198     221
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         1        3     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                   0       19     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                   1        1     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight         0      184     198
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight         1        2     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                   0       11     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                   1        1     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         0      223     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                   0       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                   1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0      102     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        1     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0        5     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   1        0     108
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         0      313     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         1       16     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                   0       36     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                   1        7     372
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight         0      319     407
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight         1       20     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                   0       57     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                   1       11     407
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         0       80     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         1        5     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   0       40     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   1       11     136
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         0      404     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         1       35     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                   0      109     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                   1       30     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         0      361     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         1       27     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   0      108     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   1       18     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0        6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                   1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight         0     1176    1436
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight         1      127    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                   0      111    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                   1       22    1436
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                   0        1       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                   1        0       1
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight         0        3       4
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight         1        0       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                   0        1       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                   1        0       4
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         0        2       2
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         1        0       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                   0        0       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                   1        0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight         0     3927    3971
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight         1       44    3971
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                   0        0    3971
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                   1        0    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         0      272     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         1       58     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                   0       73     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                   1       18     421
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         0      578     657
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         1       17     657
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                   0       53     657
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                   1        9     657
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight         0     3617    4821
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight         1      294    4821
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                   0      766    4821
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                   1      144    4821
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         0     2063    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         1      132    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                   0      183    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                   1       32    2410
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         0     4431    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         1      909    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                   0     2253    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                   1      962    8555
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         0     2444    3997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         1      500    3997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                   0      744    3997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                   1      309    3997


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
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/5565e37e-ca83-434a-bff2-9b552c978b01/7dfb50a7-9062-4334-9737-53ae61d1c458/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5565e37e-ca83-434a-bff2-9b552c978b01/7dfb50a7-9062-4334-9737-53ae61d1c458/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5565e37e-ca83-434a-bff2-9b552c978b01/7dfb50a7-9062-4334-9737-53ae61d1c458/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5565e37e-ca83-434a-bff2-9b552c978b01/7dfb50a7-9062-4334-9737-53ae61d1c458/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     Normal or high birthweight   NA                0.1245537   0.0789212   0.1701862
Birth       ki0047075b-MAL-ED          BANGLADESH     Low birth weight             NA                0.3782421   0.2183574   0.5381269
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.1104680   0.0633111   0.1576248
Birth       ki0047075b-MAL-ED          INDIA          Low birth weight             NA                0.4884216   0.3050435   0.6717996
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   NA                0.0838710   0.0401024   0.1276396
Birth       ki0047075b-MAL-ED          NEPAL          Low birth weight             NA                0.5384615   0.2666586   0.8102645
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   NA                0.0532787   0.0250439   0.0815135
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Low birth weight             NA                0.3571429   0.1056616   0.6086241
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.2092692   0.1628590   0.2556795
Birth       ki1000108-IRC              INDIA          Low birth weight             NA                0.6357829   0.4889089   0.7826569
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0154202   0.0087121   0.0221283
Birth       ki1101329-Keneba           GAMBIA         Low birth weight             NA                0.0634921   0.0208998   0.1060843
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.1055246   0.0999331   0.1111162
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             NA                0.6372914   0.6104368   0.6641460
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.2306858   0.1994954   0.2618761
Birth       ki1135781-COHORTS          GUATEMALA      Low birth weight             NA                0.6004341   0.4633342   0.7375339
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.1057415   0.0973608   0.1141223
Birth       ki1135781-COHORTS          INDIA          Low birth weight             NA                0.5423756   0.5115500   0.5732011
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.1183552   0.1061414   0.1305691
Birth       ki1135781-COHORTS          PHILIPPINES    Low birth weight             NA                0.6286557   0.5632675   0.6940438
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0292540   0.0258135   0.0326944
Birth       kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             NA                0.2514882   0.2377024   0.2652741
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0168539   0.0014406   0.0322673
Birth       kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             NA                0.1812081   0.1157680   0.2466481
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.1108150   0.0766293   0.1450008
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             NA                0.2546662   0.1251907   0.3841417
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.1211274   0.0862317   0.1560232
6 months    ki1000108-IRC              INDIA          Low birth weight             NA                0.1775703   0.0832883   0.2718524
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   NA                0.1278176   0.0857776   0.1698577
6 months    ki1000109-EE               PAKISTAN       Low birth weight             NA                0.1393315   0.0795329   0.1991302
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   NA                0.1077042   0.0770646   0.1383437
6 months    ki1000304b-SAS-CompFeed    INDIA          Low birth weight             NA                0.1742688   0.1426657   0.2058719
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0762712   0.0282445   0.1242979
6 months    ki1017093-NIH-Birth        BANGLADESH     Low birth weight             NA                0.1166667   0.0352091   0.1981243
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0224426   0.0085784   0.0363068
6 months    ki1017093b-PROVIDE         BANGLADESH     Low birth weight             NA                0.1028938   0.0529537   0.1528339
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0200164   0.0082022   0.0318306
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             NA                0.0589799   0.0234581   0.0945018
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0547675   0.0434987   0.0660363
6 months    ki1101329-Keneba           GAMBIA         Low birth weight             NA                0.0707208   0.0286655   0.1127762
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0300281   0.0260814   0.0339748
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             NA                0.0458313   0.0330794   0.0585832
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0991474   0.0908535   0.1074413
6 months    ki1135781-COHORTS          INDIA          Low birth weight             NA                0.2450292   0.2211716   0.2688867
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0553649   0.0462350   0.0644947
6 months    ki1135781-COHORTS          PHILIPPINES    Low birth weight             NA                0.0959537   0.0595684   0.1323390
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0632832   0.0582290   0.0683373
6 months    kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             NA                0.1230219   0.1136737   0.1323701
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0450512   0.0336567   0.0564456
6 months    kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             NA                0.0786724   0.0607678   0.0965769
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.0868920   0.0462657   0.1275183
24 months   ki0047075b-MAL-ED          INDIA          Low birth weight             NA                0.2890214   0.1343629   0.4436799
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.0486322   0.0253582   0.0719062
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             NA                0.1627907   0.0522989   0.2732825
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0592066   0.0341062   0.0843071
24 months   ki1000108-IRC              INDIA          Low birth weight             NA                0.1825532   0.0952394   0.2698670
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0588235   0.0086179   0.1090291
24 months   ki1017093-NIH-Birth        BANGLADESH     Low birth weight             NA                0.2156863   0.1023884   0.3289841
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0792469   0.0538838   0.1046100
24 months   ki1017093b-PROVIDE         BANGLADESH     Low birth weight             NA                0.2106410   0.1419259   0.2793562
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0694159   0.0440810   0.0947507
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             NA                0.1455329   0.0836682   0.2073975
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0974491   0.0813323   0.1135660
24 months   ki1101329-Keneba           GAMBIA         Low birth weight             NA                0.1543609   0.0926337   0.2160882
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.1752912   0.1341298   0.2164526
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             NA                0.1897914   0.1069101   0.2726727
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0285714   0.0151749   0.0419679
24 months   ki1135781-COHORTS          GUATEMALA      Low birth weight             NA                0.1451613   0.0574106   0.2329120
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0747496   0.0664959   0.0830033
24 months   ki1135781-COHORTS          INDIA          Low birth weight             NA                0.1635626   0.1395038   0.1876214
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0598764   0.0499247   0.0698281
24 months   ki1135781-COHORTS          PHILIPPINES    Low birth weight             NA                0.1569477   0.1089035   0.2049920
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.1694729   0.1582914   0.1806543
24 months   kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             NA                0.3027044   0.2857372   0.3196716
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.1694634   0.1527638   0.1861629
24 months   kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             NA                0.2937831   0.2613476   0.3262186


### Parameter: E(Y)


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.1659751   0.1189041   0.2130461
Birth       ki0047075b-MAL-ED          INDIA          NA                   NA                0.1625616   0.1116803   0.2134428
Birth       ki0047075b-MAL-ED          NEPAL          NA                   NA                0.1190476   0.0699312   0.1681640
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.0697674   0.0386213   0.1009135
Birth       ki1000108-IRC              INDIA          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1101329-Keneba           GAMBIA         NA                   NA                0.0196767   0.0124580   0.0268954
Birth       ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1594921   0.1531776   0.1658066
Birth       ki1135781-COHORTS          GUATEMALA      NA                   NA                0.2539683   0.2229196   0.2850169
Birth       ki1135781-COHORTS          INDIA          NA                   NA                0.1769740   0.1674681   0.1864799
Birth       ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.0958686   0.0906699   0.1010673
Birth       kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0527086   0.0336587   0.0717585
6 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA          NA                   NA                0.1330049   0.0999328   0.1660771
6 months    ki1000109-EE               PAKISTAN       NA                   NA                0.1303191   0.0962457   0.1643926
6 months    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.1238671   0.0990601   0.1486741
6 months    ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.0898876   0.0477511   0.1320242
6 months    ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1101329-Keneba           GAMBIA         NA                   NA                0.0562319   0.0453575   0.0671062
6 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.0320622   0.0282569   0.0358675
6 months    ki1135781-COHORTS          INDIA          NA                   NA                0.1282790   0.1199892   0.1365687
6 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.0593093   0.0503382   0.0682804
6 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.0847894   0.0799656   0.0896132
6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0536465   0.0439582   0.0633347
24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.1181818   0.0754264   0.1609372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.0618280   0.0373207   0.0863352
24 months   ki1000108-IRC              INDIA          NA                   NA                0.0761671   0.0503644   0.1019698
24 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.1176471   0.0632979   0.1719962
24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba           GAMBIA         NA                   NA                0.1037604   0.0879825   0.1195384
24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1805226   0.1437387   0.2173065
24 months   ki1135781-COHORTS          GUATEMALA      NA                   NA                0.0395738   0.0246551   0.0544926
24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.0908525   0.0827390   0.0989661
24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.0680498   0.0579935   0.0781061
24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.2187025   0.2087401   0.2286649
24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2024018   0.1878193   0.2169843


### Parameter: RR


agecat      studyid                    country        intervention_level           baseline_level                 estimate    ci_lower    ci_upper
----------  -------------------------  -------------  ---------------------------  ---------------------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH     Low birth weight             Normal or high birthweight     3.036780   1.7297809    5.331329
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          INDIA          Low birth weight             Normal or high birthweight     4.421386   2.4864714    7.862007
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          NEPAL          Low birth weight             Normal or high birthweight     6.420118   3.1061893   13.269610
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Low birth weight             Normal or high birthweight     6.703297   2.7768391   16.181775
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1000108-IRC              INDIA          Low birth weight             Normal or high birthweight     3.038110   2.2045107    4.186920
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA         Low birth weight             Normal or high birthweight     4.117460   1.8509561    9.159309
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             Normal or high birthweight     6.039267   5.6439359    6.462288
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          GUATEMALA      Low birth weight             Normal or high birthweight     2.602822   1.9956579    3.394712
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA          Low birth weight             Normal or high birthweight     5.129258   4.6524973    5.654874
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES    Low birth weight             Normal or high birthweight     5.311600   4.5880009    6.149323
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             Normal or high birthweight     8.596716   7.5508733    9.787415
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             Normal or high birthweight    10.751677   4.0151639   28.790496
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             Normal or high birthweight     2.298120   1.2670652    4.168178
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA          Low birth weight             Normal or high birthweight     1.465980   0.8002939    2.685385
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN       Low birth weight             Normal or high birthweight     1.090081   0.6342514    1.873510
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA          Low birth weight             Normal or high birthweight     1.618032   1.1875026    2.204650
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH     Low birth weight             Normal or high birthweight     1.529630   0.5973901    3.916648
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH     Low birth weight             Normal or high birthweight     4.584753   2.0893301   10.060623
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             Normal or high birthweight     2.946574   1.2695716    6.838762
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA         Low birth weight             Normal or high birthweight     1.291292   0.6887940    2.420804
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             Normal or high birthweight     1.526279   1.1219294    2.076358
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA          Low birth weight             Normal or high birthweight     2.471363   2.1738647    2.809574
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES    Low birth weight             Normal or high birthweight     1.733116   1.1462062    2.620550
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             Normal or high birthweight     1.943990   1.7492184    2.160449
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             Normal or high birthweight     1.746290   1.2419412    2.455453
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA          Low birth weight             Normal or high birthweight     3.326213   1.6387839    6.751160
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             Normal or high birthweight     3.347384   1.4589101    7.680376
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA          Low birth weight             Normal or high birthweight     3.083323   1.6240763    5.853715
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH     Low birth weight             Normal or high birthweight     3.666667   1.3459409    9.988882
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH     Low birth weight             Normal or high birthweight     2.658034   1.6810403    4.202841
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             Normal or high birthweight     2.096535   1.1965218    3.673531
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA         Low birth weight             Normal or high birthweight     1.584016   1.0275273    2.441887
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             Normal or high birthweight     1.082721   0.6589783    1.778942
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA      Low birth weight             Normal or high birthweight     5.080645   2.3641232   10.918617
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA          Low birth weight             Normal or high birthweight     2.188140   1.8211497    2.629084
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES    Low birth weight             Normal or high birthweight     2.621196   1.8508713    3.712125
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             Normal or high birthweight     1.786153   1.6428103    1.942002
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             Normal or high birthweight     1.733608   1.4906160    2.016212


### Parameter: PAR


agecat      studyid                    country        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     Normal or high birthweight   NA                0.0414214    0.0126492   0.0701936
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.0520936    0.0193392   0.0848480
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   NA                0.0351767    0.0070128   0.0633405
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   NA                0.0164888    0.0003830   0.0325945
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0589523    0.0335325   0.0843722
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0042565    0.0003733   0.0081398
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0539675    0.0501021   0.0578329
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0232825    0.0117839   0.0347810
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0712325    0.0646501   0.0778149
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0372157    0.0303992   0.0440321
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0666146    0.0619792   0.0712501
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0358547    0.0204662   0.0512432
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.0141850   -0.0016840   0.0300539
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0118775   -0.0050944   0.0288494
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   NA                0.0025015   -0.0230107   0.0280138
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   NA                0.0161629    0.0047167   0.0276092
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0136165   -0.0183822   0.0456151
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0187945    0.0060839   0.0315051
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0093542    0.0004170   0.0182913
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0014644   -0.0022848   0.0052136
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0020341    0.0003596   0.0037085
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0291316    0.0238888   0.0343744
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0039445    0.0003767   0.0075123
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0215062    0.0178059   0.0252065
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0085953    0.0031654   0.0140253
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.0312898    0.0049446   0.0576350
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.0131957   -0.0003746   0.0267661
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0169604    0.0012677   0.0326531
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0588235    0.0106190   0.1070281
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0332098    0.0148794   0.0515402
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0181328    0.0016668   0.0345987
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0063113    0.0001524   0.0124702
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0052314   -0.0147138   0.0251765
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0110024    0.0022289   0.0197759
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0161029    0.0112984   0.0209075
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0081734    0.0037351   0.0126117
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0492297    0.0417138   0.0567455
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0329384    0.0231129   0.0427640


### Parameter: PAF


agecat      studyid                    country        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     Normal or high birthweight   NA                0.2495640    0.0683329   0.3955415
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.3204546    0.1114057   0.4803231
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   NA                0.2954839    0.0513552   0.4767873
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   NA                0.2363388   -0.0032827   0.4187297
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.2197897    0.1229501   0.3059367
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.2163234    0.0124121   0.3781323
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.3383708    0.3167267   0.3593292
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0916747    0.0458329   0.1353141
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.4025025    0.3694432   0.4338285
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.2392200    0.1978137   0.2784889
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.6948533    0.6618015   0.7246751
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.6802434    0.3252840   0.8484632
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.1134796   -0.0197426   0.2292973
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0893013   -0.0461561   0.2072195
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   NA                0.0191953   -0.1973988   0.1966103
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   NA                0.1304859    0.0197826   0.2286867
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.1514831   -0.2818005   0.4383049
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.4557668    0.1302793   0.6594426
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.3184878   -0.0214090   0.5452763
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0260417   -0.0428189   0.0903552
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0634413    0.0102283   0.1137933
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.2270954    0.1872789   0.2649613
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0665065    0.0051292   0.1240973
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.2536425    0.2111233   0.2938699
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.1602215    0.0461363   0.2606618
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.2647598    0.0272952   0.4442527
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.2134267   -0.0199247   0.3933890
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.2226740    0.0033846   0.3937123
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.5000000   -0.0044188   0.7510999
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.2953120    0.1268780   0.4312534
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.2071163    0.0044378   0.3685331
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0608259    0.0001630   0.1178081
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0289790   -0.0879593   0.1333484
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.2780220    0.0514908   0.4504510
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.1772424    0.1246314   0.2266913
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.1201092    0.0545038   0.1811624
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.2250987    0.1905637   0.2581602
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.1627379    0.1125725   0.2100675
