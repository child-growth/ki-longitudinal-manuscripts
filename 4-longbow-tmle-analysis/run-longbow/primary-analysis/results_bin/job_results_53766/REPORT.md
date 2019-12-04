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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        birthwt                       pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ---------------------------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            0      186     245
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            1        8     245
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                       0       47     245
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                       1        4     245
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            0      206     218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            1        2     218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                       0       10     218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                       1        0     218
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            0      181     231
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            1       14     231
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                       0       31     231
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                       1        5     231
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            0      209     231
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            1        3     231
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                       0       19     231
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                       1        0     231
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            0      263     281
0-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            1        1     281
0-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                       0       17     281
0-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                       1        0     281
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            0      256     274
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            1        2     274
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                       0       16     274
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                       1        0     274
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0      181     190
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1        0     190
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                       0        9     190
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                       1        0     190
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            0      312     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            1       18     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                       0       38     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                       1        5     373
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            0      303     404
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            1       32     404
0-24 months   ki1000108-IRC              INDIA                          Low birthweight                       0       53     404
0-24 months   ki1000108-IRC              INDIA                          Low birthweight                       1       16     404
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            0      225     376
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            1       19     376
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                       0      118     376
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                       1       14     376
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            0       28      35
0-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            1        2      35
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                       0        4      35
0-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                       1        1      35
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            0      986    1356
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            1       48    1356
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                       0      258    1356
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                       1       64    1356
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            0      344     515
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            1       18     515
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                       0      124     515
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                       1       29     515
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            0      482     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            1        6     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                       0      144     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                       1        9     641
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            0      548     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            1       11     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                       0      156     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                       1       15     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0     2016    2143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1       52    2143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                       0       70    2143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                       1        5    2143
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            0     1219    1496
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            1       60    1496
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                       0      197    1496
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                       1       20    1496
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight            0      378     596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight            1       40     596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                       0      138     596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                       1       40     596
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            0        9      12
0-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            1        0      12
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                       0        3      12
0-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                       1        0      12
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            0        2       2
0-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            1        0       2
0-24 months   ki1114097-CONTENT          PERU                           Low birthweight                       0        0       2
0-24 months   ki1114097-CONTENT          PERU                           Low birthweight                       1        0       2
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            0    16422   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            1      159   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                       0        0   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                       1        0   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            0     8208    9501
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            1      110    9501
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                       0     1125    9501
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                       1       58    9501
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            0      706     795
0-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            1       17     795
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                       0       69     795
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                       1        3     795
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight            0     3998    5268
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight            1      281    5268
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                       0      763    5268
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                       1      226    5268
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            0     2409    2768
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            1      106    2768
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                       0      219    2768
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                       1       34    2768
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            0     8074   13429
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            1      237   13429
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                       0     4608   13429
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                       1      510   13429
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            0     3108    4435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            1      171    4435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                       0      976    4435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                       1      180    4435
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            0      188     245
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            1        6     245
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                       0       50     245
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                       1        1     245
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            0      207     218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            1        1     218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                       0       10     218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                       1        0     218
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            0      183     230
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            1       12     230
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                       0       30     230
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                       1        5     230
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            0      206     231
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            1        6     231
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                       0       18     231
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                       1        1     231
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight            0      264     281
0-6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight            1        0     281
0-6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                       0       17     281
0-6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                       1        0     281
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            0      256     273
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            1        2     273
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                       0       15     273
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                       1        0     273
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0      181     190
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1        0     190
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                       0        9     190
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                       1        0     190
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            0      276     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            1       40     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                       0       32     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                       1       10     358
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight            0      284     397
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight            1       46     397
0-6 months    ki1000108-IRC              INDIA                          Low birthweight                       0       50     397
0-6 months    ki1000108-IRC              INDIA                          Low birthweight                       1       17     397
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight            0      227     370
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight            1       14     370
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight                       0      118     370
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight                       1       11     370
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            0       27      34
0-6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            1        2      34
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                       0        3      34
0-6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                       1        2      34
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            0      118     166
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            1        4     166
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                       0       37     166
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                       1        7     166
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            0      479     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            1        7     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                       0      145     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                       1        7     638
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            0      200     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            1        3     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                       0       45     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                       1        2     250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0     1924    2040
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1       44    2040
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                       0       65    2040
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                       1        7    2040
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight            0     1177    1406
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight            1       25    1406
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                       0      185    1406
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                       1       19    1406
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight            0      368     566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight            1       29     566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                       0      136     566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                       1       33     566
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            0        9      12
0-6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            1        0      12
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                       0        3      12
0-6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                       1        0      12
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight            0        2       2
0-6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight            1        0       2
0-6 months    ki1114097-CONTENT          PERU                           Low birthweight                       0        0       2
0-6 months    ki1114097-CONTENT          PERU                           Low birthweight                       1        0       2
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight            0    12399   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight            1     1146   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                       0        0   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                       1        0   13545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            0      557     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            1       10     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                       0       61     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                       1        4     632
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            0      754     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            1       37     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                       0       47     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                       1       15     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            0       29      38
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            1        1      38
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                       0        7      38
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                       1        1      38
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            0      186     245
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight            1        8     245
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                       0       47     245
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                       1        4     245
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            0      206     218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight            1        2     218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                       0       10     218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                       1        0     218
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            0      181     231
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight            1       14     231
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                       0       31     231
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                       1        5     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            0      209     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight            1        3     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                       0       19     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                       1        0     231
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            0      263     281
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight            1        1     281
6-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                       0       17     281
6-24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                       1        0     281
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            0      256     274
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight            1        2     274
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                       0       16     274
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                       1        0     274
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0      181     190
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1        0     190
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                       0        9     190
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                       1        0     190
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            0      312     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight            1       18     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                       0       38     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                       1        5     373
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            0      303     404
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight            1       32     404
6-24 months   ki1000108-IRC              INDIA                          Low birthweight                       0       53     404
6-24 months   ki1000108-IRC              INDIA                          Low birthweight                       1       16     404
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            0      225     376
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight            1       19     376
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                       0      118     376
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight                       1       14     376
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            0       28      35
6-24 months   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight            1        2      35
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                       0        4      35
6-24 months   ki1000109-ResPak           PAKISTAN                       Low birthweight                       1        1      35
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            0      986    1356
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight            1       48    1356
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                       0      258    1356
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                       1       64    1356
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            0      344     515
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight            1       18     515
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                       0      124     515
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                       1       29     515
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            0      482     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight            1        6     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                       0      144     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                       1        9     641
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            0      548     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight            1       11     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                       0      156     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                       1       15     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            0     2016    2143
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight            1       52    2143
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                       0       70    2143
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                       1        5    2143
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            0     1219    1496
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight            1       60    1496
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                       0      197    1496
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                       1       20    1496
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight            0      378     596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight            1       40     596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                       0      138     596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                       1       40     596
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            0        9      12
6-24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight            1        0      12
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                       0        3      12
6-24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                       1        0      12
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            0        2       2
6-24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight            1        0       2
6-24 months   ki1114097-CONTENT          PERU                           Low birthweight                       0        0       2
6-24 months   ki1114097-CONTENT          PERU                           Low birthweight                       1        0       2
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            0    16422   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight            1      159   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                       0        0   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                       1        0   16581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            0     8208    9501
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight            1      110    9501
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                       0     1125    9501
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                       1       58    9501
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            0      706     795
6-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight            1       17     795
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                       0       69     795
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                       1        3     795
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight            0     3998    5268
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight            1      281    5268
6-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                       0      763    5268
6-24 months   ki1135781-COHORTS          INDIA                          Low birthweight                       1      226    5268
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            0     2409    2768
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight            1      106    2768
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                       0      219    2768
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                       1       34    2768
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            0     8074   13429
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight            1      237   13429
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                       0     4608   13429
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                       1      510   13429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            0     3108    4435
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight            1      171    4435
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                       0      976    4435
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                       1      180    4435


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
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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




# Results Detail

## Results Plots
![](/tmp/54002bbf-7a02-4262-b6e3-ad2a6dbd2cb1/cc233321-ff18-4c4b-a059-e71bd3042fb6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/54002bbf-7a02-4262-b6e3-ad2a6dbd2cb1/cc233321-ff18-4c4b-a059-e71bd3042fb6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/54002bbf-7a02-4262-b6e3-ad2a6dbd2cb1/cc233321-ff18-4c4b-a059-e71bd3042fb6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/54002bbf-7a02-4262-b6e3-ad2a6dbd2cb1/cc233321-ff18-4c4b-a059-e71bd3042fb6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0717949   0.0354836   0.1081062
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.1388889   0.0256743   0.2521034
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0545455   0.0300112   0.0790798
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1162791   0.0203379   0.2122203
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0962938   0.0646735   0.1279141
0-24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.2383839   0.1392705   0.3374973
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0779509   0.0442566   0.1116451
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.1069836   0.0540416   0.1599256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0460416   0.0306269   0.0614562
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.2038099   0.1482359   0.2593839
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0501708   0.0276561   0.0726854
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1918518   0.1293572   0.2543463
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0122951   0.0025102   0.0220800
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.0588235   0.0215112   0.0961359
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0196878   0.0081605   0.0312151
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.0858623   0.0431158   0.1286087
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0251451   0.0183956   0.0318946
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.0666667   0.0102001   0.1231333
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0472769   0.0355213   0.0590324
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.0964905   0.0553402   0.1376408
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0929048   0.0649188   0.1208907
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.2315154   0.1694222   0.2936087
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0131036   0.0106536   0.0155537
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0513301   0.0389206   0.0637397
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0653736   0.0579489   0.0727983
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.2309916   0.2047888   0.2571944
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0418467   0.0340084   0.0496849
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.1398808   0.0977651   0.1819965
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0284252   0.0242486   0.0326018
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.1002570   0.0911211   0.1093929
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0517517   0.0428791   0.0606243
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.1579805   0.1341702   0.1817907
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0615385   0.0277352   0.0953417
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.1428571   0.0266754   0.2590389
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1265128   0.0897813   0.1632443
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.2057682   0.0736995   0.3378369
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1395245   0.1020601   0.1769890
0-6 months    ki1000108-IRC              INDIA                          Low birthweight              NA                0.2487312   0.1433025   0.3541600
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0577743   0.0281733   0.0873752
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.0830379   0.0341405   0.1319353
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0144033   0.0038022   0.0250044
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.0460526   0.0127057   0.0793996
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0223577   0.0158242   0.0288912
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.0972222   0.0287741   0.1656703
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0209385   0.0128055   0.0290716
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.0918816   0.0517553   0.1320079
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0713796   0.0458678   0.0968914
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.2005921   0.1406292   0.2605550
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0468115   0.0320751   0.0615478
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.2519858   0.1414483   0.3625234
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0717949   0.0354836   0.1081062
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.1388889   0.0256743   0.2521034
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0545455   0.0300112   0.0790798
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1162791   0.0203379   0.2122203
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0954027   0.0637759   0.1270295
6-24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.2105435   0.1067192   0.3143678
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0777349   0.0439045   0.1115652
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.1051489   0.0517086   0.1585892
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0460416   0.0306269   0.0614562
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.2038099   0.1482359   0.2593839
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0501727   0.0277279   0.0726175
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1930853   0.1305518   0.2556189
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0122951   0.0025102   0.0220800
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.0588235   0.0215112   0.0961359
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0194852   0.0079707   0.0309997
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.0824379   0.0398708   0.1250049
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0251451   0.0183956   0.0318946
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.0666667   0.0102001   0.1231333
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0471027   0.0353912   0.0588141
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.0960341   0.0564123   0.1356559
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0936192   0.0654595   0.1217789
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.2320879   0.1705683   0.2936074
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0130912   0.0106408   0.0155417
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.0518161   0.0393367   0.0642955
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0653999   0.0579797   0.0728201
6-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.2312819   0.2050769   0.2574869
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0418927   0.0340457   0.0497397
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.1402141   0.0980492   0.1823791
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0283994   0.0241863   0.0326125
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.0996112   0.0905176   0.1087048
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0517480   0.0428736   0.0606224
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.1583988   0.1346048   0.1821929


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0822511   0.0467438   0.1177583
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1188119   0.0872211   0.1504026
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0877660   0.0591276   0.1164044
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0825959   0.0584656   0.1067261
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0912621   0.0663660   0.1161582
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234009   0.0116889   0.0351130
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0265982   0.0197841   0.0334124
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0534759   0.0420715   0.0648803
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1342282   0.1068369   0.1616195
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176823   0.0150321   0.0203326
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0962415   0.0882767   0.1042062
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0505780   0.0424131   0.0587430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0556259   0.0512873   0.0599644
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0791432   0.0700117   0.0882747
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0739130   0.0400273   0.1077988
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1586902   0.1227025   0.1946778
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.0675676   0.0419574   0.0931778
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0219436   0.0105669   0.0333202
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0250000   0.0182234   0.0317766
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0312945   0.0221903   0.0403986
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1095406   0.0837882   0.1352931
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0822511   0.0467438   0.1177583
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1188119   0.0872211   0.1504026
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0877660   0.0591276   0.1164044
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0825959   0.0584656   0.1067261
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0912621   0.0663660   0.1161582
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234009   0.0116889   0.0351130
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0265982   0.0197841   0.0334124
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0534759   0.0420715   0.0648803
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1342282   0.1068369   0.1616195
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176823   0.0150321   0.0203326
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0962415   0.0882767   0.1042062
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0505780   0.0424131   0.0587430
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0556259   0.0512873   0.0599644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0791432   0.0700117   0.0882747


### Parameter: RR


agecat        studyid                    country                        intervention_level           baseline_level                estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ---------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    1.934524   0.7412333    5.048859
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    2.131783   0.8329568    5.455864
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    2.475590   1.4570368    4.206170
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.372449   0.7108282    2.649891
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    4.426651   3.3980360    5.766636
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    3.823975   2.1954357    6.660538
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    4.784314   1.7291761   13.237320
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    4.361194   2.0213421    9.409596
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    2.651282   1.0903832    6.446630
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    2.040967   1.2456920    3.343960
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    2.491965   1.6642706    3.731298
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    3.917241   2.8857362    5.317455
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    3.533406   3.0098324    4.148058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    3.342698   2.3461871    4.762464
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    3.527048   2.9753900    4.180987
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    3.052664   2.4283337    3.837512
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    2.321429   0.8700394    6.194008
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    1.626461   0.8048002    3.286997
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    1.782706   1.0788435    2.945786
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.437282   0.6570165    3.144184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    3.197368   1.1386341    8.978446
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    4.348485   2.0290167    9.319451
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    4.388157   2.4468674    7.869622
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    2.810216   1.7641758    4.476490
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    5.382991   3.1363146    9.239058
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    1.934524   0.7412333    5.048859
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    2.131783   0.8329568    5.455864
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    2.206891   1.2175611    4.000103
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    1.352661   0.6919993    2.644064
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    4.426651   3.3980360    5.766636
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    3.848413   2.2143841    6.688216
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    4.784314   1.7291761   13.237320
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    4.230796   1.9326670    9.261622
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    2.651282   1.0903832    6.446630
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    2.038824   1.2593679    3.300706
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    2.479062   1.6589156    3.704678
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    3.958075   2.9174569    5.369867
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    3.536427   3.0132183    4.150485
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    3.346983   2.3499018    4.767133
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    3.507506   2.9543519    4.164229
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    3.060965   2.4357515    3.846659


### Parameter: PAR


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0104562   -0.0083379   0.0292503
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0071167   -0.0044739   0.0187074
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0225181    0.0038405   0.0411957
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0098151   -0.0122111   0.0318413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0365543    0.0232327   0.0498760
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0410914    0.0206416   0.0615411
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0111059    0.0017713   0.0204404
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0159287    0.0054126   0.0264447
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0014532   -0.0005632   0.0034695
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0061991    0.0002110   0.0121872
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0413234    0.0205372   0.0621096
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0045787    0.0029983   0.0061591
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0308678    0.0254832   0.0362525
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0087314    0.0047129   0.0127499
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0272007    0.0233882   0.0310132
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0273915    0.0205926   0.0341904
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0123746   -0.0064230   0.0311721
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0131520   -0.0030410   0.0293450
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0191657   -0.0000520   0.0383833
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0097933   -0.0101321   0.0297187
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0075403   -0.0008617   0.0159423
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0026423    0.0001425   0.0051420
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0103559    0.0042912   0.0164206
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0381610    0.0181850   0.0581371
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0141498    0.0056011   0.0226986
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0104562   -0.0083379   0.0292503
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0071167   -0.0044739   0.0187074
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0234091    0.0048112   0.0420071
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0100311   -0.0120906   0.0321527
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0365543    0.0232327   0.0498760
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0410894    0.0206631   0.0615157
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0111059    0.0017713   0.0204404
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0161313    0.0056006   0.0266619
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0014532   -0.0005632   0.0034695
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0063733    0.0004138   0.0123327
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0406090    0.0197503   0.0614676
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0045911    0.0030100   0.0061722
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0308416    0.0254636   0.0362195
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0086853    0.0046643   0.0127064
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0272264    0.0234039   0.0310490
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0273952    0.0205920   0.0341984


### Parameter: PAF


agecat        studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1271255   -0.1267794   0.3238163
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1154150   -0.0878688   0.2807123
0-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1895273    0.0243739   0.3267236
0-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1118325   -0.1751660   0.3287404
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4425683    0.3400317   0.5291742
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4502564    0.2214861   0.6118014
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.4745902    0.0290084   0.7156973
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.4472275    0.1397686   0.6447962
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0546337   -0.0229578   0.1263399
0-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1159228   -0.0008334   0.2190584
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.3078594    0.1462018   0.4389088
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2589422    0.1732174   0.3357786
0-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3207331    0.2683851   0.3693355
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1726315    0.0939698   0.2444639
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.4889936    0.4249829   0.5458787
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3461008    0.2626907   0.4200748
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1674208   -0.1161918   0.3789704
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0941682   -0.0275150   0.2014411
0-6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1207741   -0.0066730   0.2320862
0-6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1449410   -0.2009604   0.3912157
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3436214   -0.1023367   0.6091640
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1056911    0.0043545   0.1967136
0-6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3309182    0.1379776   0.4806742
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.3483733    0.1575163   0.4959935
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.2321116    0.0932816   0.3496850
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1271255   -0.1267794   0.3238163
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1154150   -0.0878688   0.2807123
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1970270    0.0322982   0.3337146
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1142936   -0.1744846   0.3320680
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.4425683    0.3400317   0.5291742
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4502351    0.2223298   0.6113501
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.4745902    0.0290084   0.7156973
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.4529159    0.1445521   0.6501236
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0546337   -0.0229578   0.1263399
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1191799    0.0031494   0.2217048
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.3025368    0.1399005   0.4344202
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2596441    0.1738643   0.3365171
6-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3204603    0.2681951   0.3689928
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1717216    0.0929527   0.2436501
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.4894565    0.4248699   0.5467900
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3461470    0.2626795   0.4201657
