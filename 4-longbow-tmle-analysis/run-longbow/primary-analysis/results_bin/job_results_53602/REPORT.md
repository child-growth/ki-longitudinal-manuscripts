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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        birthwt                       swasted   n_cell       n
----------  -------------------------  -----------------------------  ---------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      172     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1        5     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     0       35     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     1        3     215
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0       60      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     0        2      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     1        0      62
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0       38      45
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1        0      45
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                     0        7      45
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                     1        0      45
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0       24      26
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                     0        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                     1        1      26
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      218     228
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        0     228
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                     0       10     228
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                     1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      115     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1        0     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     0        5     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     1        0     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      113     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        2     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0       76      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     0        9      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     1        1      86
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight          0      264     343
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight          1       32     343
Birth       ki1000108-IRC              INDIA                          Low birthweight                     0       25     343
Birth       ki1000108-IRC              INDIA                          Low birthweight                     1       22     343
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      135     177
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight          1        3     177
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                     0       36     177
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                     1        3     177
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       34      38
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        0      38
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                     0        4      38
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                     1        0      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      890    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1        4    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     0      184    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     1       25    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      412     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1        9     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     0      125     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     1       29     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      397     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1        4     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     0      122     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     1        9     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      536     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       18     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     0      124     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     1       29     707
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1212    1465
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1       61    1465
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                     0      150    1465
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                     1       42    1465
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          0      467     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          1        5     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     0      147     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     1       22     641
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0       14      19
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0      19
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                     0        4      19
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                     1        1      19
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
Birth       ki1114097-CONTENT          PERU                           Low birthweight                     0        0       2
Birth       ki1114097-CONTENT          PERU                           Low birthweight                     1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    12924   13830
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1      906   13830
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                     0        0   13830
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                     1        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11254   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      360   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     0      871   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     1      432   12917
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      660     756
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       42     756
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                     0       36     756
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                     1       18     756
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     5079    6193
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight          1       99    6193
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                     0      794    6193
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                     1      221    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2623    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       65    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     0      155    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     1       56    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    12553   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1       34   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     0     5112   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     1      315   18014
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     1755    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1        3    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     0      610    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     1       28    2396
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      186     238
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1        2     238
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     0       50     238
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     1        0     238
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      199     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     0       10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      187     227
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1        6     227
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                     0       34     227
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                     1        0     227
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      210     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        0     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                     0       19     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                     1        0     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      254     270
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        0     270
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                     0       16     270
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                     1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      235     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1        3     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     0       15     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     1        0     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      177     186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        9     186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0     186
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      315     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       10     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     0       41     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     1        2     368
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          0      318     402
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          1       16     402
6 months    ki1000108-IRC              INDIA                          Low birthweight                     0       63     402
6 months    ki1000108-IRC              INDIA                          Low birthweight                     1        5     402
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      236     374
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          1        7     374
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                     0      125     374
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                     1        6     374
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       28      34
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        1      34
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                     0        5      34
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                     1        0      34
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      978    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1       23    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     0      304    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     1       19    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      364     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1        3     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     0      148     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     1        3     518
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      458     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1        2     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     0      140     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     1        3     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      545     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     0      170     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     1932    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       11    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0       66    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        1    2010
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1132    1334
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1       14    1334
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                     0      183    1334
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                     1        5    1334
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          0      394     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          1        3     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     0      162     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     1        4     563
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        9      12
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0      12
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                     0        3      12
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                     1        0      12
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
6 months    ki1114097-CONTENT          PERU                           Low birthweight                     0        0       2
6 months    ki1114097-CONTENT          PERU                           Low birthweight                     1        0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    15742   15758
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1       16   15758
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                     0        0   15758
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                     1        0   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0     7337    8473
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1       68    8473
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     0     1057    8473
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     1       11    8473
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      701     774
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1        3     774
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                     0       70     774
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                     1        0     774
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     4893    6252
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      107    6252
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                     0     1156    6252
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                     1       96    6252
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2387    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       29    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     0      242    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     1        6    2664
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0     8258   14105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1       80   14105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     0     5649   14105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     1      118   14105
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     2988    4045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1       17    4045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     0     1029    4045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     1       11    4045
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      165     210
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1        0     210
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     0       45     210
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     1        0     210
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      160     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     0        8     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      184     218
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1        1     218
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                     0       32     218
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                     1        1     218
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      203     221
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        0     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                     0       18     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                     1        0     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      186     199
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        1     199
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                     0       11     199
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                     1        1     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      224     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1        0     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     0       13     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     1        0     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      154     162
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     162
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        8     162
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0     162
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      327     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     0       42     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     1        1     372
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          0      332     403
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          1        3     403
24 months   ki1000108-IRC              INDIA                          Low birthweight                     0       66     403
24 months   ki1000108-IRC              INDIA                          Low birthweight                     1        2     403
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          0       98     168
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          1        3     168
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                     0       66     168
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                     1        1     168
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      284     413
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1        2     413
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     0      119     413
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     1        8     413
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      437     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1        3     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     0      133     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     1        6     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      387     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     0      123     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     1        3     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0        6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0      890    1057
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1       15    1057
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                     0      146    1057
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                     1        6    1057
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          0      344     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          1       11     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     0      127     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     1        4     486
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        8      11
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0      11
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                     0        3      11
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                     1        0      11
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
24 months   ki1114097-CONTENT          PERU                           Low birthweight                     0        0       2
24 months   ki1114097-CONTENT          PERU                           Low birthweight                     1        0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0     3968    3972
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1        4    3972
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                     0        0    3972
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                     1        0    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0      312     431
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1       25     431
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     0       88     431
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     1        6     431
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      593     657
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1        2     657
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                     0       62     657
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                     1        0     657
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     3880    4821
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          1       31    4821
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                     0      890    4821
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                     1       20    4821
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2174    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       21    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     0      212    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     1        3    2410
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0     4134    7282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1       91    7282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     0     2870    7282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     1      187    7282
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     2888    3997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1       56    3997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     0      998    3997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     1       55    3997


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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

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
![](/tmp/0070f981-2cc9-4c48-b347-18aa3417e239/52a72db7-168a-4f2a-ac36-059afe88f486/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0070f981-2cc9-4c48-b347-18aa3417e239/52a72db7-168a-4f2a-ac36-059afe88f486/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0070f981-2cc9-4c48-b347-18aa3417e239/52a72db7-168a-4f2a-ac36-059afe88f486/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0070f981-2cc9-4c48-b347-18aa3417e239/52a72db7-168a-4f2a-ac36-059afe88f486/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC             INDIA         Normal or high birthweight   NA                0.1085244   0.0730080   0.1440408
Birth       ki1000108-IRC             INDIA         Low birthweight              NA                0.4410138   0.2929973   0.5890302
Birth       ki1017093-NIH-Birth       BANGLADESH    Normal or high birthweight   NA                0.0213777   0.0075492   0.0352061
Birth       ki1017093-NIH-Birth       BANGLADESH    Low birthweight              NA                0.1883117   0.1265102   0.2501132
Birth       ki1017093c-NIH-Crypto     BANGLADESH    Normal or high birthweight   NA                0.0326142   0.0178122   0.0474162
Birth       ki1017093c-NIH-Crypto     BANGLADESH    Low birthweight              NA                0.1832230   0.1199280   0.2465180
Birth       ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                0.0477621   0.0360049   0.0595193
Birth       ki1101329-Keneba          GAMBIA        Low birthweight              NA                0.2209477   0.1614606   0.2804349
Birth       ki1113344-GMS-Nepal       NEPAL         Normal or high birthweight   NA                0.0105932   0.0013501   0.0198363
Birth       ki1113344-GMS-Nepal       NEPAL         Low birthweight              NA                0.1301775   0.0794052   0.1809498
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                0.0310134   0.0278608   0.0341661
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Low birthweight              NA                0.3320424   0.3062676   0.3578171
Birth       ki1135781-COHORTS         GUATEMALA     Normal or high birthweight   NA                0.0595878   0.0420460   0.0771297
Birth       ki1135781-COHORTS         GUATEMALA     Low birthweight              NA                0.3100330   0.1776175   0.4424485
Birth       ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                0.0191362   0.0153977   0.0228748
Birth       ki1135781-COHORTS         INDIA         Low birthweight              NA                0.2178874   0.1924694   0.2433053
Birth       ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                0.0242166   0.0184039   0.0300294
Birth       ki1135781-COHORTS         PHILIPPINES   Low birthweight              NA                0.2623891   0.2025288   0.3222493
Birth       kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0027044   0.0015865   0.0038223
Birth       kiGH5241-JiVitA-3         BANGLADESH    Low birthweight              NA                0.0576073   0.0503009   0.0649138
6 months    ki1000108-IRC             INDIA         Normal or high birthweight   NA                0.0479042   0.0249721   0.0708362
6 months    ki1000108-IRC             INDIA         Low birthweight              NA                0.0735294   0.0114167   0.1356422
6 months    ki1000109-EE              PAKISTAN      Normal or high birthweight   NA                0.0288066   0.0077482   0.0498650
6 months    ki1000109-EE              PAKISTAN      Low birthweight              NA                0.0458015   0.0099545   0.0816486
6 months    ki1000304b-SAS-CompFeed   INDIA         Normal or high birthweight   NA                0.0231155   0.0137278   0.0325032
6 months    ki1000304b-SAS-CompFeed   INDIA         Low birthweight              NA                0.0587496   0.0396008   0.0778983
6 months    ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                0.0122164   0.0058540   0.0185788
6 months    ki1101329-Keneba          GAMBIA        Low birthweight              NA                0.0265957   0.0035874   0.0496041
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                0.0091522   0.0069828   0.0113216
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Low birthweight              NA                0.0107903   0.0043176   0.0172630
6 months    ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                0.0212751   0.0172777   0.0252725
6 months    ki1135781-COHORTS         INDIA         Low birthweight              NA                0.0767602   0.0619702   0.0915503
6 months    ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                0.0120033   0.0076601   0.0163465
6 months    ki1135781-COHORTS         PHILIPPINES   Low birthweight              NA                0.0241935   0.0050671   0.0433200
6 months    kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0093952   0.0071727   0.0116176
6 months    kiGH5241-JiVitA-3         BANGLADESH    Low birthweight              NA                0.0206127   0.0163053   0.0249201
6 months    kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0056562   0.0002881   0.0110243
6 months    kiGH5241-JiVitA-4         BANGLADESH    Low birthweight              NA                0.0105106   0.0023800   0.0186412
24 months   ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                0.0165746   0.0082527   0.0248965
24 months   ki1101329-Keneba          GAMBIA        Low birthweight              NA                0.0394737   0.0085037   0.0704436
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                0.0741840   0.0461713   0.1021967
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Low birthweight              NA                0.0638298   0.0143557   0.1133039
24 months   ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                0.0078681   0.0051032   0.0106331
24 months   ki1135781-COHORTS         INDIA         Low birthweight              NA                0.0230539   0.0129002   0.0332076
24 months   kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0211939   0.0164286   0.0259591
24 months   kiGH5241-JiVitA-3         BANGLADESH    Low birthweight              NA                0.0626188   0.0534994   0.0717381
24 months   kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0188192   0.0128865   0.0247519
24 months   kiGH5241-JiVitA-4         BANGLADESH    Low birthweight              NA                0.0534083   0.0390001   0.0678164


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC             INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.0660870   0.0457632   0.0864107
Birth       ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.0664781   0.0481022   0.0848539
Birth       ki1101329-Keneba          GAMBIA        NA                   NA                0.0703072   0.0572109   0.0834034
Birth       ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.0421217   0.0265597   0.0576837
Birth       ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0613145   0.0571772   0.0654519
Birth       ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       ki1135781-COHORTS         INDIA         NA                   NA                0.0516712   0.0461576   0.0571849
Birth       ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0193738   0.0169653   0.0217823
6 months    ki1000108-IRC             INDIA         NA                   NA                0.0522388   0.0304606   0.0740170
6 months    ki1000109-EE              PAKISTAN      NA                   NA                0.0347594   0.0161707   0.0533480
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0317221   0.0237601   0.0396840
6 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.0142429   0.0078820   0.0206038
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0093237   0.0072772   0.0113703
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0324696   0.0280758   0.0368634
6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0131381   0.0088134   0.0174629
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0140376   0.0118094   0.0162658
6 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0069221   0.0024171   0.0114272
24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.0198675   0.0114511   0.0282840
24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0719258   0.0475057   0.0963459
24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0105787   0.0076905   0.0134669
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0381763   0.0335656   0.0427871
24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0277708   0.0219080   0.0336336


### Parameter: RR


agecat      studyid                   country       intervention_level           baseline_level                  estimate     ci_lower    ci_upper
----------  ------------------------  ------------  ---------------------------  ---------------------------  -----------  -----------  ----------
Birth       ki1000108-IRC             INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1000108-IRC             INDIA         Low birthweight              Normal or high birthweight     4.0637309    2.5391564    6.503699
Birth       ki1017093-NIH-Birth       BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1017093-NIH-Birth       BANGLADESH    Low birthweight              Normal or high birthweight     8.8088023    4.2648085   18.194252
Birth       ki1017093c-NIH-Crypto     BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1017093c-NIH-Crypto     BANGLADESH    Low birthweight              Normal or high birthweight     5.6178924    3.1720969    9.949480
Birth       ki1101329-Keneba          GAMBIA        Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1101329-Keneba          GAMBIA        Low birthweight              Normal or high birthweight     4.6260063    3.2116343    6.663254
Birth       ki1113344-GMS-Nepal       NEPAL         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1113344-GMS-Nepal       NEPAL         Low birthweight              Normal or high birthweight    12.2887574    4.7253145   31.958414
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Low birthweight              Normal or high birthweight    10.7064082    9.4205695   12.167754
Birth       ki1135781-COHORTS         GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1135781-COHORTS         GUATEMALA     Low birthweight              Normal or high birthweight     5.2029571    3.0973495    8.739977
Birth       ki1135781-COHORTS         INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1135781-COHORTS         INDIA         Low birthweight              Normal or high birthweight    11.3861163    9.0694133   14.294601
Birth       ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1135781-COHORTS         PHILIPPINES   Low birthweight              Normal or high birthweight    10.8350726    7.7811506   15.087588
Birth       kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       kiGH5241-JiVitA-3         BANGLADESH    Low birthweight              Normal or high birthweight    21.3010061   13.9024785   32.636832
6 months    ki1000108-IRC             INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1000108-IRC             INDIA         Low birthweight              Normal or high birthweight     1.5349265    0.5813148    4.052880
6 months    ki1000109-EE              PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1000109-EE              PAKISTAN      Low birthweight              Normal or high birthweight     1.5899673    0.5448486    4.639814
6 months    ki1000304b-SAS-CompFeed   INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA         Low birthweight              Normal or high birthweight     2.5415674    1.4592849    4.426528
6 months    ki1101329-Keneba          GAMBIA        Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1101329-Keneba          GAMBIA        Low birthweight              Normal or high birthweight     2.1770517    0.7930960    5.976015
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Low birthweight              Normal or high birthweight     1.1789875    0.6186348    2.246902
6 months    ki1135781-COHORTS         INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS         INDIA         Low birthweight              Normal or high birthweight     3.6079862    2.7564558    4.722573
6 months    ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS         PHILIPPINES   Low birthweight              Normal or high birthweight     2.0155729    0.8449075    4.808259
6 months    kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    Low birthweight              Normal or high birthweight     2.1939703    1.6055857    2.997975
6 months    kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-4         BANGLADESH    Low birthweight              Normal or high birthweight     1.8582400    0.5430739    6.358353
24 months   ki1101329-Keneba          GAMBIA        Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1101329-Keneba          GAMBIA        Low birthweight              Normal or high birthweight     2.3815789    0.9382768    6.045037
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Low birthweight              Normal or high birthweight     0.8604255    0.3633053    2.037769
24 months   ki1135781-COHORTS         INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1135781-COHORTS         INDIA         Low birthweight              Normal or high birthweight     2.9300347    1.6679360    5.147142
24 months   kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    Low birthweight              Normal or high birthweight     2.9545717    2.2521512    3.876069
24 months   kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-4         BANGLADESH    Low birthweight              Normal or high birthweight     2.8379688    1.8870290    4.268120


### Parameter: PAR


agecat      studyid                   country       intervention_level           baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  ------------  ---------------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC             INDIA         Normal or high birthweight   NA                 0.0489101    0.0248414   0.0729787
Birth       ki1017093-NIH-Birth       BANGLADESH    Normal or high birthweight   NA                 0.0447093    0.0267021   0.0627165
Birth       ki1017093c-NIH-Crypto     BANGLADESH    Normal or high birthweight   NA                 0.0338639    0.0192035   0.0485243
Birth       ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                 0.0225451    0.0141575   0.0309326
Birth       ki1113344-GMS-Nepal       NEPAL         Normal or high birthweight   NA                 0.0315285    0.0173231   0.0457338
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                 0.0303011    0.0272696   0.0333326
Birth       ki1135781-COHORTS         GUATEMALA     Normal or high birthweight   NA                 0.0197772    0.0093434   0.0302110
Birth       ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.0325350    0.0279463   0.0371237
Birth       ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                 0.0175219    0.0126079   0.0224359
Birth       kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.0166694    0.0144150   0.0189238
6 months    ki1000108-IRC             INDIA         Normal or high birthweight   NA                 0.0043346   -0.0069046   0.0155739
6 months    ki1000109-EE              PAKISTAN      Normal or high birthweight   NA                 0.0059528   -0.0086328   0.0205383
6 months    ki1000304b-SAS-CompFeed   INDIA         Normal or high birthweight   NA                 0.0086066    0.0021532   0.0150600
6 months    ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                 0.0020265   -0.0013485   0.0054014
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                 0.0001716   -0.0006384   0.0009815
6 months    ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.0111945    0.0080873   0.0143017
6 months    ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                 0.0011348   -0.0006960   0.0029656
6 months    kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.0046424    0.0026898   0.0065950
6 months    kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                 0.0012659   -0.0012755   0.0038074
24 months   ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                 0.0032930   -0.0013440   0.0079299
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                -0.0022582   -0.0146646   0.0101481
24 months   ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.0027106    0.0008342   0.0045870
24 months   kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.0169825    0.0126984   0.0212665
24 months   kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                 0.0089516    0.0049315   0.0129718


### Parameter: PAF


agecat      studyid                   country       intervention_level           baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  ------------  ---------------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC             INDIA         Normal or high birthweight   NA                 0.3106694    0.1578657   0.4357471
Birth       ki1017093-NIH-Birth       BANGLADESH    Normal or high birthweight   NA                 0.6765221    0.4330886   0.8154245
Birth       ki1017093c-NIH-Crypto     BANGLADESH    Normal or high birthweight   NA                 0.5093993    0.3016016   0.6553700
Birth       ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                 0.3206654    0.2068259   0.4181662
Birth       ki1113344-GMS-Nepal       NEPAL         Normal or high birthweight   NA                 0.7485091    0.4487581   0.8852633
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                 0.4941915    0.4552872   0.5303171
Birth       ki1135781-COHORTS         GUATEMALA     Normal or high birthweight   NA                 0.2491931    0.1205065   0.3590504
Birth       ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.6296541    0.5648957   0.6847742
Birth       ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                 0.4198013    0.3181619   0.5062896
Birth       kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.8604074    0.7947123   0.9050791
6 months    ki1000108-IRC             INDIA         Normal or high birthweight   NA                 0.0829769   -0.1563338   0.2727607
6 months    ki1000109-EE              PAKISTAN      Normal or high birthweight   NA                 0.1712567   -0.3593562   0.4947495
6 months    ki1000304b-SAS-CompFeed   INDIA         Normal or high birthweight   NA                 0.2713120    0.0363882   0.4489625
6 months    ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                 0.1422798   -0.1195459   0.3428729
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                 0.0184000   -0.0723448   0.1014657
6 months    ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.3447690    0.2549233   0.4237806
6 months    ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                 0.0863765   -0.0608389   0.2131625
6 months    kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.3307125    0.1930971   0.4448579
6 months    kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                 0.1828812   -0.3266923   0.4967310
24 months   ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                 0.1657459   -0.0898431   0.3613943
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                -0.0313966   -0.2188193   0.1272054
24 months   ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.2562302    0.0734946   0.4029247
24 months   kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.4448428    0.3333695   0.5376757
24 months   kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                 0.3223395    0.1686969   0.4475857
